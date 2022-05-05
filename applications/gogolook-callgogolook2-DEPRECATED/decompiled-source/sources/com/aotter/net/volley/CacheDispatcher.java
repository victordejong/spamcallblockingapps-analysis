package com.aotter.net.volley;

import android.os.Process;
import com.aotter.net.volley.Cache;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {
    public static final boolean DEBUG = VolleyLog.DEBUG;
    public final Cache mCache;
    public final BlockingQueue<Request<?>> mCacheQueue;
    public final ResponseDelivery mDelivery;
    public final BlockingQueue<Request<?>> mNetworkQueue;
    public volatile boolean mQuit = false;

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.mCacheQueue = blockingQueue;
        this.mNetworkQueue = blockingQueue2;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        BlockingQueue<Request<?>> blockingQueue;
        if (DEBUG) {
            VolleyLog.m36306v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.mCache.initialize();
        while (true) {
            try {
                final Request<?> take = this.mCacheQueue.take();
                take.addMarker("cache-queue-take");
                if (take.isCanceled()) {
                    take.finish("cache-discard-canceled");
                } else {
                    Cache.Entry entry = this.mCache.get(take.getCacheKey());
                    if (entry == null) {
                        take.addMarker("cache-miss");
                        blockingQueue = this.mNetworkQueue;
                    } else if (entry.isExpired()) {
                        take.addMarker("cache-hit-expired");
                        take.setCacheEntry(entry);
                        blockingQueue = this.mNetworkQueue;
                    } else {
                        take.addMarker("cache-hit");
                        Response<?> parseNetworkResponse = take.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
                        take.addMarker("cache-hit-parsed");
                        if (!entry.refreshNeeded()) {
                            this.mDelivery.postResponse(take, parseNetworkResponse);
                        } else {
                            take.addMarker("cache-hit-refresh-needed");
                            take.setCacheEntry(entry);
                            parseNetworkResponse.intermediate = true;
                            this.mDelivery.postResponse(take, parseNetworkResponse, new Runnable() { // from class: com.aotter.net.volley.CacheDispatcher.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        CacheDispatcher.this.mNetworkQueue.put(take);
                                    } catch (InterruptedException e) {
                                    }
                                }
                            });
                        }
                    }
                    blockingQueue.put(take);
                }
            } catch (InterruptedException e) {
                if (this.mQuit) {
                    return;
                }
            }
        }
    }
}

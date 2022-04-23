package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Stats.class */
public class Stats {
    public static final int BITMAP_DECODE_FINISHED = 2;
    public static final int BITMAP_TRANSFORMED_FINISHED = 3;
    public static final int CACHE_HIT = 0;
    public static final int CACHE_MISS = 1;
    public static final int DOWNLOAD_FINISHED = 4;
    public static final String STATS_THREAD_NAME = "Picasso-Stats";
    public long averageDownloadSize;
    public long averageOriginalBitmapSize;
    public long averageTransformedBitmapSize;
    public final Cache cache;
    public long cacheHits;
    public long cacheMisses;
    public int downloadCount;
    public final Handler handler;
    public int originalBitmapCount;
    public final HandlerThread statsThread;
    public long totalDownloadSize;
    public long totalOriginalBitmapSize;
    public long totalTransformedBitmapSize;
    public int transformedBitmapCount;

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/Stats$StatsHandler.class */
    public static class StatsHandler extends Handler {
        public final Stats stats;

        public StatsHandler(Looper looper, Stats stats) {
            super(looper);
            this.stats = stats;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            int i = message.what;
            if (i == 0) {
                this.stats.performCacheHit();
            } else if (i == 1) {
                this.stats.performCacheMiss();
            } else if (i == 2) {
                this.stats.performBitmapDecoded(message.arg1);
            } else if (i == 3) {
                this.stats.performBitmapTransformed(message.arg1);
            } else if (i != 4) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.Stats.StatsHandler.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new AssertionError("Unhandled stats message." + message.what);
                    }
                });
            } else {
                this.stats.performDownloadFinished((Long) message.obj);
            }
        }
    }

    public Stats(Cache cache) {
        this.cache = cache;
        HandlerThread handlerThread = new HandlerThread(STATS_THREAD_NAME, 10);
        this.statsThread = handlerThread;
        handlerThread.start();
        Utils.flushStackLocalLeaks(this.statsThread.getLooper());
        this.handler = new StatsHandler(this.statsThread.getLooper(), this);
    }

    public static long getAverage(int i, long j) {
        return j / i;
    }

    private void processBitmap(Bitmap bitmap, int i) {
        int bitmapBytes = Utils.getBitmapBytes(bitmap);
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(i, bitmapBytes, 0));
    }

    public StatsSnapshot createSnapshot() {
        return new StatsSnapshot(this.cache.maxSize(), this.cache.size(), this.cacheHits, this.cacheMisses, this.totalDownloadSize, this.totalOriginalBitmapSize, this.totalTransformedBitmapSize, this.averageDownloadSize, this.averageOriginalBitmapSize, this.averageTransformedBitmapSize, this.downloadCount, this.originalBitmapCount, this.transformedBitmapCount, System.currentTimeMillis());
    }

    public void dispatchBitmapDecoded(Bitmap bitmap) {
        processBitmap(bitmap, 2);
    }

    public void dispatchBitmapTransformed(Bitmap bitmap) {
        processBitmap(bitmap, 3);
    }

    public void dispatchCacheHit() {
        this.handler.sendEmptyMessage(0);
    }

    public void dispatchCacheMiss() {
        this.handler.sendEmptyMessage(1);
    }

    public void dispatchDownloadFinished(long j) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    public void performBitmapDecoded(long j) {
        int i = this.originalBitmapCount + 1;
        this.originalBitmapCount = i;
        long j2 = this.totalOriginalBitmapSize + j;
        this.totalOriginalBitmapSize = j2;
        this.averageOriginalBitmapSize = getAverage(i, j2);
    }

    public void performBitmapTransformed(long j) {
        this.transformedBitmapCount++;
        long j2 = this.totalTransformedBitmapSize + j;
        this.totalTransformedBitmapSize = j2;
        this.averageTransformedBitmapSize = getAverage(this.originalBitmapCount, j2);
    }

    public void performCacheHit() {
        this.cacheHits++;
    }

    public void performCacheMiss() {
        this.cacheMisses++;
    }

    public void performDownloadFinished(Long l) {
        this.downloadCount++;
        long longValue = this.totalDownloadSize + l.longValue();
        this.totalDownloadSize = longValue;
        this.averageDownloadSize = getAverage(this.downloadCount, longValue);
    }

    public void shutdown() {
        this.statsThread.quit();
    }
}

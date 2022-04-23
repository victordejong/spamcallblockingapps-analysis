package com.verizon.ads.support;

import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.verizon.ads.Logger;
import com.verizon.ads.utils.ThreadUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/TimedMemoryCache.class */
public class TimedMemoryCache<O> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35609a = Logger.getInstance(TimedMemoryCache.class);

    /* renamed from: b  reason: collision with root package name */
    private static long f35610b = 10000;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, CacheItem> f35611c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f35612d = new AtomicInteger(0);
    private final AtomicBoolean e = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/TimedMemoryCache$CacheItem.class */
    public static class CacheItem<T> {

        /* renamed from: a  reason: collision with root package name */
        T f35614a;

        /* renamed from: b  reason: collision with root package name */
        long f35615b;

        CacheItem(T t, Long l) {
            Long l2 = l;
            if (l == null) {
                if (Logger.isLogLevelEnabled(3)) {
                    TimedMemoryCache.f35609a.d("Cached item timeout is null, setting to default: 60000");
                }
                l2 = Long.valueOf((long) Constants.MINUTE_IN_MILLIS);
            }
            this.f35614a = t;
            this.f35615b = System.currentTimeMillis() + l2.longValue();
        }

        public String toString() {
            return "CacheItem{cachedObject=" + this.f35614a + ", itemTimeout=" + this.f35615b + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        for (Map.Entry<String, CacheItem> entry : this.f35611c.entrySet()) {
            String key = entry.getKey();
            CacheItem value = entry.getValue();
            if (value != null) {
                a(key, value, j);
            } else if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f35609a;
                logger.d("Attempted to remove CacheItem with ID <" + key + "> but item was null");
            }
        }
    }

    private boolean a(String str, CacheItem cacheItem, long j) {
        if (j <= cacheItem.f35615b && j != -1) {
            return false;
        }
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35609a;
            logger.d("Removed CacheItem\n\t:Checked time: " + j + "\n\tID: " + str + "\n\tItem: " + cacheItem);
        }
        this.f35611c.remove(str);
        return true;
    }

    public static void setCleanerDelay(long j) {
        f35610b = j;
    }

    public String add(O o, Long l) {
        return add(null, o, l);
    }

    public String add(String str, O o, Long l) {
        if (o == null) {
            f35609a.e("Nothing to cache, object provided is null");
            return null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = String.valueOf(this.f35612d.incrementAndGet());
        }
        this.f35611c.get(str2);
        CacheItem cacheItem = new CacheItem(o, l);
        this.f35611c.put(str2, cacheItem);
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35609a;
            logger.d("Add CacheItem\n\tID: " + str2 + "\n\tItem: " + cacheItem);
        }
        if (!this.e.compareAndSet(false, true)) {
            f35609a.d("Cleaner already running");
        } else {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.support.TimedMemoryCache.1
                @Override // java.lang.Runnable
                public void run() {
                    do {
                        try {
                            Thread.sleep(TimedMemoryCache.f35610b);
                            TimedMemoryCache.this.a(System.currentTimeMillis());
                        } catch (InterruptedException e) {
                            TimedMemoryCache.f35609a.e("Error occurred while cleaner was sleeping", e);
                        }
                    } while (TimedMemoryCache.this.f35611c.size() > 0);
                    TimedMemoryCache.f35609a.d("Stopping cleaner");
                    TimedMemoryCache.this.e.set(false);
                }
            });
        }
        return str2;
    }

    public boolean containsKey(String str) {
        return this.f35611c.containsKey(str);
    }

    public void expireAll() {
        a(-1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (a(r7, r0, java.lang.System.currentTimeMillis()) != false) goto L_0x0004;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public O get(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r7
            if (r0 != 0) goto L_0x0009
        L_0x0004:
            r0 = 0
            r8 = r0
            goto L_0x003a
        L_0x0009:
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f35611c
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.verizon.ads.support.TimedMemoryCache$CacheItem r0 = (com.verizon.ads.support.TimedMemoryCache.CacheItem) r0
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0029
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f35611c
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
            goto L_0x0004
        L_0x0029:
            r0 = r9
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r9
            long r3 = java.lang.System.currentTimeMillis()
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 == 0) goto L_0x003a
            goto L_0x0004
        L_0x003a:
            r0 = r8
            if (r0 != 0) goto L_0x006a
            r0 = 3
            boolean r0 = com.verizon.ads.Logger.isLogLevelEnabled(r0)
            if (r0 == 0) goto L_0x0068
            com.verizon.ads.Logger r0 = com.verizon.ads.support.TimedMemoryCache.f35609a
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "No item in cache for ID <"
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ">"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r9
            java.lang.String r1 = r1.toString()
            r0.d(r1)
        L_0x0068:
            r0 = 0
            return r0
        L_0x006a:
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f35611c
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
            r0 = r8
            T r0 = r0.f35614a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.support.TimedMemoryCache.get(java.lang.String):java.lang.Object");
    }
}

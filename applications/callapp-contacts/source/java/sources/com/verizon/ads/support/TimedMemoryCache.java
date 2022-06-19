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

    /* renamed from: a */
    private static final Logger f61682a = Logger.getInstance(TimedMemoryCache.class);

    /* renamed from: b */
    private static long f61683b = 10000;

    /* renamed from: c */
    private final Map<String, CacheItem> f61684c = new ConcurrentHashMap();

    /* renamed from: d */
    private final AtomicInteger f61685d = new AtomicInteger(0);

    /* renamed from: e */
    private final AtomicBoolean f61686e = new AtomicBoolean();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/TimedMemoryCache$CacheItem.class */
    public static class CacheItem<T> {

        /* renamed from: a */
        T f61688a;

        /* renamed from: b */
        long f61689b;

        CacheItem(T t, Long l) {
            Long l2 = l;
            if (l == null) {
                if (Logger.isLogLevelEnabled(3)) {
                    TimedMemoryCache.f61682a.m5567d("Cached item timeout is null, setting to default: 60000");
                }
                l2 = Long.valueOf((long) Constants.MINUTE_IN_MILLIS);
            }
            this.f61688a = t;
            this.f61689b = System.currentTimeMillis() + l2.longValue();
        }

        public String toString() {
            return "CacheItem{cachedObject=" + this.f61688a + ", itemTimeout=" + this.f61689b + '}';
        }
    }

    /* renamed from: a */
    public void m5352a(long j) {
        for (Map.Entry<String, CacheItem> entry : this.f61684c.entrySet()) {
            String key = entry.getKey();
            CacheItem value = entry.getValue();
            if (value != null) {
                m5349a(key, value, j);
            } else if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61682a;
                logger.m5567d("Attempted to remove CacheItem with ID <" + key + "> but item was null");
            }
        }
    }

    /* renamed from: a */
    private boolean m5349a(String str, CacheItem cacheItem, long j) {
        if (j > cacheItem.f61689b || j == -1) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61682a;
                logger.m5567d("Removed CacheItem\n\t:Checked time: " + j + "\n\tID: " + str + "\n\tItem: " + cacheItem);
            }
            this.f61684c.remove(str);
            return true;
        }
        return false;
    }

    public static void setCleanerDelay(long j) {
        f61683b = j;
    }

    public String add(O o, Long l) {
        return add(null, o, l);
    }

    public String add(String str, O o, Long l) {
        if (o == null) {
            f61682a.m5565e("Nothing to cache, object provided is null");
            return null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = String.valueOf(this.f61685d.incrementAndGet());
        }
        this.f61684c.get(str2);
        CacheItem cacheItem = new CacheItem(o, l);
        this.f61684c.put(str2, cacheItem);
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61682a;
            logger.m5567d("Add CacheItem\n\tID: " + str2 + "\n\tItem: " + cacheItem);
        }
        if (!this.f61686e.compareAndSet(false, true)) {
            f61682a.m5567d("Cleaner already running");
        } else {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.support.TimedMemoryCache.1
                @Override // java.lang.Runnable
                public void run() {
                    do {
                        try {
                            Thread.sleep(TimedMemoryCache.f61683b);
                            TimedMemoryCache.this.m5352a(System.currentTimeMillis());
                        } catch (InterruptedException e) {
                            TimedMemoryCache.f61682a.m5564e("Error occurred while cleaner was sleeping", e);
                        }
                    } while (TimedMemoryCache.this.f61684c.size() > 0);
                    TimedMemoryCache.f61682a.m5567d("Stopping cleaner");
                    TimedMemoryCache.this.f61686e.set(false);
                }
            });
        }
        return str2;
    }

    public boolean containsKey(String str) {
        return this.f61684c.containsKey(str);
    }

    public void expireAll() {
        m5352a(-1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (m5349a(r7, r0, java.lang.System.currentTimeMillis()) != false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public O get(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r7
            if (r0 != 0) goto L9
        L4:
            r0 = 0
            r8 = r0
            goto L3a
        L9:
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f61684c
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.verizon.ads.support.TimedMemoryCache$CacheItem r0 = (com.verizon.ads.support.TimedMemoryCache.CacheItem) r0
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L29
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f61684c
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
            goto L4
        L29:
            r0 = r9
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r9
            long r3 = java.lang.System.currentTimeMillis()
            boolean r0 = r0.m5349a(r1, r2, r3)
            if (r0 == 0) goto L3a
            goto L4
        L3a:
            r0 = r8
            if (r0 != 0) goto L6a
            r0 = 3
            boolean r0 = com.verizon.ads.Logger.isLogLevelEnabled(r0)
            if (r0 == 0) goto L68
            com.verizon.ads.Logger r0 = com.verizon.ads.support.TimedMemoryCache.f61682a
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
            r0.m5567d(r1)
        L68:
            r0 = 0
            return r0
        L6a:
            r0 = r6
            java.util.Map<java.lang.String, com.verizon.ads.support.TimedMemoryCache$CacheItem> r0 = r0.f61684c
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
            r0 = r8
            T r0 = r0.f61688a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.support.TimedMemoryCache.get(java.lang.String):java.lang.Object");
    }
}

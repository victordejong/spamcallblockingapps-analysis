package com.mopub.network;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {

    /* renamed from: a */
    public Map<String, TimeRecord> f5432a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a */
        public final long f5433a = RequestRateTracker.m3192b();
        public final int mBlockIntervalMs;
        public final String mReason;

        public TimeRecord(int i, String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }

        /* renamed from: a */
        public long m3188a() {
            return this.f5433a + this.mBlockIntervalMs;
        }
    }

    /* renamed from: com.mopub.network.RequestRateTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    public static class C1224a {

        /* renamed from: a */
        public static RequestRateTracker f5434a = new RequestRateTracker();
    }

    /* renamed from: b */
    public static long m3192b() {
        return SystemClock.elapsedRealtime();
    }

    public static RequestRateTracker getInstance() {
        return C1224a.f5434a;
    }

    /* renamed from: c */
    public final long m3191c(String str) {
        TimeRecord timeRecord = this.f5432a.get(str);
        if (timeRecord == null) {
            return 0L;
        }
        return timeRecord.m3188a() - m3192b();
    }

    /* renamed from: d */
    public boolean m3190d(String str) {
        return m3191c(str) > 0;
    }

    /* renamed from: e */
    public void m3189e(String str, Integer num, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (num == null || num.intValue() <= 0) {
            this.f5432a.remove(str);
        } else {
            this.f5432a.put(str, new TimeRecord(num.intValue(), str2));
        }
    }

    public TimeRecord getRecordForAdUnit(String str) {
        return this.f5432a.get(str);
    }
}

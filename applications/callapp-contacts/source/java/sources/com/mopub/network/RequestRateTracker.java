package com.mopub.network;

import android.os.SystemClock;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {

    /* renamed from: a */
    Map<String, TimeRecord> f60334a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a */
        final long f60335a = SystemClock.elapsedRealtime();
        public final int mBlockIntervalMs;
        public final String mReason;

        public TimeRecord(int i, String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.network.RequestRateTracker$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    public static final class C17002a {

        /* renamed from: a */
        private static RequestRateTracker f60336a = new RequestRateTracker();

        private C17002a() {
        }
    }

    RequestRateTracker() {
    }

    /* renamed from: a */
    public static long m6042a() {
        return SystemClock.elapsedRealtime();
    }

    public static RequestRateTracker getInstance() {
        return C17002a.f60336a;
    }

    public TimeRecord getRecordForAdUnit(String str) {
        return this.f60334a.get(str);
    }
}

package com.mopub.network;

import android.os.SystemClock;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {

    /* renamed from: a */
    public Map<String, TimeRecord> f9251a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a */
        public final long f9252a = SystemClock.elapsedRealtime();
        public final int mBlockIntervalMs;
        public final String mReason;

        public TimeRecord(int i, String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }
    }

    /* renamed from: com.mopub.network.RequestRateTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    public static class C2719a {

        /* renamed from: a */
        public static RequestRateTracker f9253a = new RequestRateTracker();
    }

    public static RequestRateTracker getInstance() {
        return C2719a.f9253a;
    }

    public TimeRecord getRecordForAdUnit(String str) {
        return this.f9251a.get(str);
    }
}

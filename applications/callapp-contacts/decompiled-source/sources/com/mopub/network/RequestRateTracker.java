package com.mopub.network;

import android.os.SystemClock;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {

    /* renamed from: a  reason: collision with root package name */
    Map<String, TimeRecord> f34764a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a  reason: collision with root package name */
        final long f34765a = SystemClock.elapsedRealtime();
        public final int mBlockIntervalMs;
        public final String mReason;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TimeRecord(int i, String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static RequestRateTracker f34766a = new RequestRateTracker();

        private a() {
        }
    }

    RequestRateTracker() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a() {
        return SystemClock.elapsedRealtime();
    }

    public static RequestRateTracker getInstance() {
        return a.f34766a;
    }

    public TimeRecord getRecordForAdUnit(String str) {
        return this.f34764a.get(str);
    }
}

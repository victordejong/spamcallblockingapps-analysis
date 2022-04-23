package com.mopub.network;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {
    @NonNull

    /* renamed from: a */
    public Map<String, TimeRecord> f9458a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a */
        public final long f9459a = RequestRateTracker.m29974b();
        public final int mBlockIntervalMs;
        @NonNull
        public final String mReason;

        public TimeRecord(int i, @Nullable String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }

        /* renamed from: a */
        public long m29972a() {
            return this.f9459a + this.mBlockIntervalMs;
        }
    }

    /* renamed from: com.mopub.network.RequestRateTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    public static class C4038a {
        @NonNull

        /* renamed from: a */
        public static RequestRateTracker f9460a = new RequestRateTracker();
    }

    /* renamed from: b */
    public static long m29974b() {
        return SystemClock.elapsedRealtime();
    }

    @NonNull
    public static RequestRateTracker getInstance() {
        return C4038a.f9460a;
    }

    /* renamed from: a */
    public final long m29976a(@Nullable String str) {
        TimeRecord timeRecord = this.f9458a.get(str);
        if (timeRecord == null) {
            return 0L;
        }
        return timeRecord.m29972a() - m29974b();
    }

    /* renamed from: a */
    public void m29975a(@Nullable String str, @Nullable Integer num, @Nullable String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (num == null || num.intValue() <= 0) {
                this.f9458a.remove(str);
            } else {
                this.f9458a.put(str, new TimeRecord(num.intValue(), str2));
            }
        }
    }

    /* renamed from: b */
    public boolean m29973b(@Nullable String str) {
        return m29976a(str) > 0;
    }

    @Nullable
    public TimeRecord getRecordForAdUnit(@Nullable String str) {
        return this.f9458a.get(str);
    }
}

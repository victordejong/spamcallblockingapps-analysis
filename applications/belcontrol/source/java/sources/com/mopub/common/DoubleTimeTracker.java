package com.mopub.common;

import android.os.SystemClock;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {

    /* renamed from: a */
    public volatile EnumC1008b f4238a;

    /* renamed from: b */
    public long f4239b;

    /* renamed from: c */
    public long f4240c;

    /* renamed from: d */
    public final Clock f4241d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    public enum EnumC1008b {
        STARTED,
        PAUSED
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker$c.class */
    public static class C1009c implements Clock {
        public C1009c() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }

    public DoubleTimeTracker() {
        this(new C1009c());
    }

    @VisibleForTesting
    public DoubleTimeTracker(Clock clock) {
        this.f4241d = clock;
        this.f4238a = EnumC1008b.PAUSED;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: a */
    public final long m3964a() {
        char elapsedRealTime;
        synchronized (this) {
            elapsedRealTime = this.f4238a == EnumC1008b.PAUSED ? (char) 0 : this.f4241d.elapsedRealTime() - this.f4239b;
        }
        return elapsedRealTime;
    }

    public double getInterval() {
        double m3964a;
        synchronized (this) {
            m3964a = this.f4240c + m3964a();
        }
        return m3964a;
    }

    public void pause() {
        synchronized (this) {
            EnumC1008b enumC1008b = this.f4238a;
            EnumC1008b enumC1008b2 = EnumC1008b.PAUSED;
            if (enumC1008b == enumC1008b2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f4240c += m3964a();
            this.f4239b = 0L;
            this.f4238a = enumC1008b2;
        }
    }

    public void start() {
        synchronized (this) {
            EnumC1008b enumC1008b = this.f4238a;
            EnumC1008b enumC1008b2 = EnumC1008b.STARTED;
            if (enumC1008b == enumC1008b2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f4238a = enumC1008b2;
            this.f4239b = this.f4241d.elapsedRealTime();
        }
    }
}

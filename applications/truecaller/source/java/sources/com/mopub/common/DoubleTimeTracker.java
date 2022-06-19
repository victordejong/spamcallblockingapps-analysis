package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {

    /* renamed from: a */
    public volatile EnumC2638b f8501a;

    /* renamed from: b */
    public long f8502b;

    /* renamed from: c */
    public long f8503c;

    /* renamed from: d */
    public final Clock f8504d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    public enum EnumC2638b {
        STARTED,
        PAUSED
    }

    public DoubleTimeTracker() {
        this(new c((C2637a) null));
    }

    @VisibleForTesting
    public DoubleTimeTracker(Clock clock) {
        this.f8504d = clock;
        this.f8501a = EnumC2638b.PAUSED;
    }

    /* renamed from: a */
    public final long m36312a() {
        synchronized (this) {
            if (this.f8501a == EnumC2638b.PAUSED) {
                return 0L;
            }
            return this.f8504d.elapsedRealTime() - this.f8502b;
        }
    }

    public double getInterval() {
        double m36312a;
        synchronized (this) {
            m36312a = this.f8503c + m36312a();
        }
        return m36312a;
    }

    public void pause() {
        synchronized (this) {
            EnumC2638b enumC2638b = this.f8501a;
            EnumC2638b enumC2638b2 = EnumC2638b.PAUSED;
            if (enumC2638b == enumC2638b2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f8503c += m36312a();
            this.f8502b = 0L;
            this.f8501a = enumC2638b2;
        }
    }

    public void start() {
        synchronized (this) {
            EnumC2638b enumC2638b = this.f8501a;
            EnumC2638b enumC2638b2 = EnumC2638b.STARTED;
            if (enumC2638b == enumC2638b2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f8501a = enumC2638b2;
            this.f8502b = this.f8504d.elapsedRealTime();
        }
    }
}

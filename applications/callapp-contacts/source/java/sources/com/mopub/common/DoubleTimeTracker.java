package com.mopub.common;

import android.os.SystemClock;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {

    /* renamed from: a */
    private volatile int f58737a;

    /* renamed from: b */
    private long f58738b;

    /* renamed from: c */
    private long f58739c;

    /* renamed from: d */
    private final Clock f58740d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$a.class */
    public static final class EnumC16681a extends Enum<EnumC16681a> {
        public static final int PAUSED$273b45aa = 2;
        public static final int STARTED$273b45aa = 1;

        /* renamed from: a */
        private static final /* synthetic */ int[] f58741a = {1, 2};

        private EnumC16681a(String str, int i) {
            super(str, i);
        }

        public static int[] values$678e8a4() {
            return (int[]) f58741a.clone();
        }
    }

    /* renamed from: com.mopub.common.DoubleTimeTracker$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    static final class C16682b implements Clock {
        private C16682b() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public final long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }

    public DoubleTimeTracker() {
        this(new C16682b());
    }

    public DoubleTimeTracker(Clock clock) {
        this.f58740d = clock;
        this.f58737a = EnumC16681a.PAUSED$273b45aa;
    }

    /* renamed from: a */
    private long m6744a() {
        synchronized (this) {
            if (this.f58737a == EnumC16681a.PAUSED$273b45aa) {
                return 0L;
            }
            return this.f58740d.elapsedRealTime() - this.f58738b;
        }
    }

    public double getInterval() {
        double m6744a;
        synchronized (this) {
            m6744a = this.f58739c + m6744a();
        }
        return m6744a;
    }

    public void pause() {
        synchronized (this) {
            if (this.f58737a == EnumC16681a.PAUSED$273b45aa) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f58739c += m6744a();
            this.f58738b = 0L;
            this.f58737a = EnumC16681a.PAUSED$273b45aa;
        }
    }

    public void start() {
        synchronized (this) {
            if (this.f58737a == EnumC16681a.STARTED$273b45aa) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f58737a = EnumC16681a.STARTED$273b45aa;
            this.f58738b = this.f58740d.elapsedRealTime();
        }
    }
}

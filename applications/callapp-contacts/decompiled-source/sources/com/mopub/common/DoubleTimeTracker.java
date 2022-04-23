package com.mopub.common;

import android.os.SystemClock;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker.class */
public class DoubleTimeTracker {

    /* renamed from: a  reason: collision with root package name */
    private volatile int f33819a;

    /* renamed from: b  reason: collision with root package name */
    private long f33820b;

    /* renamed from: c  reason: collision with root package name */
    private long f33821c;

    /* renamed from: d  reason: collision with root package name */
    private final Clock f33822d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$Clock.class */
    public interface Clock {
        long elapsedRealTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$a.class */
    public static final class a extends Enum<a> {
        public static final int PAUSED$273b45aa = 2;
        public static final int STARTED$273b45aa = 1;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ int[] f33823a = {1, 2};

        private a(String str, int i) {
        }

        public static int[] values$678e8a4() {
            return (int[]) f33823a.clone();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DoubleTimeTracker$b.class */
    static final class b implements Clock {
        private b() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public final long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }

    public DoubleTimeTracker() {
        this(new b());
    }

    public DoubleTimeTracker(Clock clock) {
        this.f33822d = clock;
        this.f33819a = a.PAUSED$273b45aa;
    }

    private long a() {
        synchronized (this) {
            if (this.f33819a == a.PAUSED$273b45aa) {
                return 0L;
            }
            return this.f33822d.elapsedRealTime() - this.f33820b;
        }
    }

    public double getInterval() {
        double a2;
        synchronized (this) {
            a2 = this.f33821c + a();
        }
        return a2;
    }

    public void pause() {
        synchronized (this) {
            if (this.f33819a == a.PAUSED$273b45aa) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already paused.");
                return;
            }
            this.f33821c += a();
            this.f33820b = 0L;
            this.f33819a = a.PAUSED$273b45aa;
        }
    }

    public void start() {
        synchronized (this) {
            if (this.f33819a == a.STARTED$273b45aa) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "DoubleTimeTracker already started.");
                return;
            }
            this.f33819a = a.STARTED$273b45aa;
            this.f33820b = this.f33822d.elapsedRealTime();
        }
    }
}

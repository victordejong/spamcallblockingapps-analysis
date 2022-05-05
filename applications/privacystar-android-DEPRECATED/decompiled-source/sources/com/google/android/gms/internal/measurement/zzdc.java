package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdc.class */
public final class zzdc {
    private long startTime;
    private final Clock zzrz;

    public zzdc(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.zzrz = clock;
    }

    public zzdc(Clock clock, long j) {
        Preconditions.checkNotNull(clock);
        this.zzrz = clock;
        this.startTime = j;
    }

    public final void clear() {
        this.startTime = 0L;
    }

    public final void start() {
        this.startTime = this.zzrz.elapsedRealtime();
    }

    public final boolean zzj(long j) {
        return this.startTime == 0 || this.zzrz.elapsedRealtime() - this.startTime > j;
    }
}

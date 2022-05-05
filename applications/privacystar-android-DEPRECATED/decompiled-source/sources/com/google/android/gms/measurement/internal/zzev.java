package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.privacystar.core.util.DateUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzev.class */
public final class zzev {
    private long startTime;
    private final Clock zzrz;

    public zzev(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.zzrz = clock;
    }

    public final void clear() {
        this.startTime = 0L;
    }

    public final void start() {
        this.startTime = this.zzrz.elapsedRealtime();
    }

    public final boolean zzj(long j) {
        return this.startTime == 0 || this.zzrz.elapsedRealtime() - this.startTime >= DateUtil.HOUR_IN_MILLIS;
    }
}

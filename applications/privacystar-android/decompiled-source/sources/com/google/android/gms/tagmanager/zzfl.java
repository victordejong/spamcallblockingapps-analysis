package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfl.class */
final class zzfl implements zzej {
    private final long zzabb;
    private final int zzabc;
    private double zzabd;
    private final Object zzabf;
    private long zzbfm;
    private final Clock zzrz;

    public zzfl() {
        this(60, 2000L);
    }

    private zzfl(int i, long j) {
        this.zzabf = new Object();
        this.zzabc = 60;
        this.zzabd = this.zzabc;
        this.zzabb = 2000L;
        this.zzrz = DefaultClock.getInstance();
    }

    @Override // com.google.android.gms.tagmanager.zzej
    public final boolean zzew() {
        synchronized (this.zzabf) {
            long currentTimeMillis = this.zzrz.currentTimeMillis();
            if (this.zzabd < this.zzabc) {
                double d = (currentTimeMillis - this.zzbfm) / this.zzabb;
                if (d > 0.0d) {
                    this.zzabd = Math.min(this.zzabc, this.zzabd + d);
                }
            }
            this.zzbfm = currentTimeMillis;
            if (this.zzabd >= 1.0d) {
                this.zzabd -= 1.0d;
                return true;
            }
            zzdi.zzab("No more tokens available.");
            return false;
        }
    }
}

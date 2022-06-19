package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.c;
import e.m.d.r.d;
import e.m.d.r.h;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzy.class */
public final class zzy implements h {
    private boolean zza = false;
    private boolean zzb = false;
    private d zzc;
    private final zzu zzd;

    public zzy(zzu zzuVar) {
        this.zzd = zzuVar;
    }

    private final void zzb() {
        if (!this.zza) {
            this.zza = true;
            return;
        }
        throw new c("Cannot encode a second value in the ValueEncoderContext");
    }

    public final h add(double d) throws IOException {
        zzb();
        this.zzd.zza(this.zzc, d, this.zzb);
        return this;
    }

    public final h add(float f) throws IOException {
        zzb();
        this.zzd.zzb(this.zzc, f, this.zzb);
        return this;
    }

    public final h add(int i) throws IOException {
        zzb();
        this.zzd.zzd(this.zzc, i, this.zzb);
        return this;
    }

    public final h add(long j) throws IOException {
        zzb();
        this.zzd.zze(this.zzc, j, this.zzb);
        return this;
    }

    public final h add(String str) throws IOException {
        zzb();
        this.zzd.zzc(this.zzc, str, this.zzb);
        return this;
    }

    public final h add(boolean z) throws IOException {
        zzb();
        this.zzd.zzd(this.zzc, z ? 1 : 0, this.zzb);
        return this;
    }

    public final h add(byte[] bArr) throws IOException {
        zzb();
        this.zzd.zzc(this.zzc, bArr, this.zzb);
        return this;
    }

    public final void zza(d dVar, boolean z) {
        this.zza = false;
        this.zzc = dVar;
        this.zzb = z;
    }
}

package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.firebase.perf.internal.zza;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzb.class */
public class zzb implements zza.AbstractC3163zza {
    private zza zzbr;
    private zzbj zzbs;
    private boolean zzbt;
    private WeakReference<zza.AbstractC3163zza> zzbu;

    public zzb() {
        this(zza.zzq());
    }

    public zzb(zza zzaVar) {
        this.zzbs = com.google.android.gms.internal.firebase_perf.zzbj.zzii;
        this.zzbt = false;
        this.zzbr = zzaVar;
        this.zzbu = new WeakReference<>(this);
    }

    public final void zzaa() {
        if (this.zzbt) {
            return;
        }
        this.zzbs = this.zzbr.zzs();
        this.zzbr.zza(this.zzbu);
        this.zzbt = true;
    }

    public final void zzab() {
        if (!this.zzbt) {
            return;
        }
        this.zzbr.zzb(this.zzbu);
        this.zzbt = false;
    }

    public final void zzb(int i) {
        this.zzbr.zzb(1);
    }

    @Override // com.google.firebase.perf.internal.zza.AbstractC3163zza
    public void zzb(zzbj zzbjVar) {
        if (this.zzbs == com.google.android.gms.internal.firebase_perf.zzbj.zzii) {
            this.zzbs = zzbjVar;
        } else if (this.zzbs == zzbjVar || zzbjVar == com.google.android.gms.internal.firebase_perf.zzbj.zzii) {
        } else {
            this.zzbs = com.google.android.gms.internal.firebase_perf.zzbj.zzil;
        }
    }

    public final zzbj zzs() {
        return this.zzbs;
    }
}

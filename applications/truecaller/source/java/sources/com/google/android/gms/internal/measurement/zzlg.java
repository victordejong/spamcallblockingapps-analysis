package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlg.class */
public final class zzlg implements zzln {
    private final zzlc zza;
    private final zzmb zzb;
    private final boolean zzc;
    private final zzjk zzd;

    private zzlg(zzmb zzmbVar, zzjk zzjkVar, zzlc zzlcVar) {
        this.zzb = zzmbVar;
        this.zzc = zzjkVar.zzc(zzlcVar);
        this.zzd = zzjkVar;
        this.zza = zzlcVar;
    }

    public static zzlg zzc(zzmb zzmbVar, zzjk zzjkVar, zzlc zzlcVar) {
        return new zzlg(zzmbVar, zzjkVar, zzlcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final int zza(Object obj) {
        zzmb zzmbVar = this.zzb;
        int zzb = zzmbVar.zzb(zzmbVar.zzc(obj));
        if (!this.zzc) {
            return zzb;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final int zzb(Object obj) {
        int hashCode = this.zzb.zzc(obj).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final Object zze() {
        return this.zza.zzbA().zzaA();
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzf(Object obj) {
        this.zzb.zzg(obj);
        this.zzd.zzb(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzg(Object obj, Object obj2) {
        zzlp.zzF(this.zzb, obj, obj2);
        if (this.zzc) {
            zzlp.zzE(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzik zzikVar) throws IOException {
        zzjx zzjxVar = (zzjx) obj;
        if (zzjxVar.zzc == zzmc.zzc()) {
            zzjxVar.zzc = zzmc.zze();
        }
        zzju zzjuVar = (zzju) obj;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final boolean zzi(Object obj, Object obj2) {
        if (!this.zzb.zzc(obj).equals(this.zzb.zzc(obj2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(obj);
        this.zzd.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final boolean zzj(Object obj) {
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzm(Object obj, zzjf zzjfVar) throws IOException {
        this.zzd.zza(obj);
        throw null;
    }
}

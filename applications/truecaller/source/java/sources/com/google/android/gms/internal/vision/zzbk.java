package com.google.android.gms.internal.vision;

import android.content.Context;
import android.net.Uri;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzbk.class */
public final class zzbk {
    public final String zzgk;
    public final Uri zzgl;
    public final String zzgm;
    public final String zzgn;
    public final boolean zzgo;
    public final boolean zzgp;
    public final boolean zzgq;
    public final boolean zzgr;
    public final zzcl<Context, Boolean> zzgs;

    public zzbk(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private zzbk(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, zzcl<Context, Boolean> zzclVar) {
        this.zzgk = str;
        this.zzgl = uri;
        this.zzgm = str2;
        this.zzgn = str3;
        this.zzgo = z;
        this.zzgp = z2;
        this.zzgq = z3;
        this.zzgr = z4;
        this.zzgs = zzclVar;
    }

    public final <T> zzbe<T> zza(String str, T t, zzbh<T> zzbhVar) {
        zzbe<T> zza;
        zza = zzbe.zza(this, str, t, zzbhVar);
        return zza;
    }

    public final zzbe<Boolean> zza(String str, boolean z) {
        zzbe<Boolean> zza;
        zza = zzbe.zza(this, str, z);
        return zza;
    }

    public final zzbk zzf(String str) {
        boolean z = this.zzgo;
        if (!z) {
            return new zzbk(this.zzgk, this.zzgl, str, this.zzgn, z, this.zzgp, this.zzgq, this.zzgr, this.zzgs);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }
}

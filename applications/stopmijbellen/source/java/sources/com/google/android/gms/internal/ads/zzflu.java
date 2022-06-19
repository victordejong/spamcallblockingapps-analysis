package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflu.class */
public abstract class zzflu extends AsyncTask<Object, Void, String> {
    private zzflv zza;
    public final zzflm zzd;

    public zzflu(zzflm zzflmVar, byte[] bArr) {
        this.zzd = zzflmVar;
    }

    /* renamed from: zza */
    public void onPostExecute(String str) {
        zzflv zzflvVar = this.zza;
        if (zzflvVar != null) {
            zzflvVar.zza(this);
        }
    }

    public final void zzb(zzflv zzflvVar) {
        this.zza = zzflvVar;
    }
}

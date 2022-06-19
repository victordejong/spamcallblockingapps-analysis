package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhw.class */
public abstract class zzfhw extends AsyncTask<Object, Void, String> {
    private zzfhx zza;
    public final zzfho zzd;

    public zzfhw(zzfho zzfhoVar, byte[] bArr) {
        this.zzd = zzfhoVar;
    }

    /* renamed from: zza */
    public void onPostExecute(String str) {
        zzfhx zzfhxVar = this.zza;
        if (zzfhxVar != null) {
            zzfhxVar.zzb(this);
        }
    }

    public final void zzb(zzfhx zzfhxVar) {
        this.zza = zzfhxVar;
    }
}

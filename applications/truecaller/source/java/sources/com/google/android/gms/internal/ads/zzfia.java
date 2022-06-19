package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfia.class */
public final class zzfia extends zzfhv {
    /* JADX WARN: Multi-variable type inference failed */
    public zzfia(zzfho zzfhoVar, zzfho zzfhoVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzfhoVar, zzfhoVar2, hashSet, jSONObject, null);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        if (zzfhi.zzi(this.zzb, this.zzd.zzd())) {
            return null;
        }
        this.zzd.zze(this.zzb);
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfhw
    /* renamed from: zza */
    public final void onPostExecute(String str) {
        zzfgr zza;
        if (!TextUtils.isEmpty(str) && (zza = zzfgr.zza()) != null) {
            for (zzfgg zzfggVar : zza.zze()) {
                if (((zzfhv) this).zza.contains(zzfggVar.zzh())) {
                    zzfggVar.zzg().zzf(str, this.zzc);
                }
            }
        }
        super.onPostExecute(str);
    }
}

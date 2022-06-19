package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflx.class */
public final class zzflx extends zzflt {
    /* JADX WARN: Multi-variable type inference failed */
    public zzflx(zzflm zzflmVar, zzflm zzflmVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzflmVar, zzflmVar2, hashSet, jSONObject, null);
    }

    private final void zzc(String str) {
        zzfkp zza = zzfkp.zza();
        if (zza != null) {
            for (zzfke zzfkeVar : zza.zzc()) {
                if (((zzflt) this).zza.contains(zzfkeVar.zzh())) {
                    zzfkeVar.zzg().zzd(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzflu, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        zzc(str2);
        super.onPostExecute(str2);
    }

    @Override // com.google.android.gms.internal.ads.zzflu
    public final void zza(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}

package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfly.class */
public final class zzfly extends zzflt {
    /* JADX WARN: Multi-variable type inference failed */
    public zzfly(zzflm zzflmVar, zzflm zzflmVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzflmVar, zzflmVar2, hashSet, jSONObject, null);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        if (zzflg.zzi(this.zzb, this.zzd.zza())) {
            return null;
        }
        this.zzd.zze(this.zzb);
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzflu
    /* renamed from: zza */
    public final void onPostExecute(String str) {
        zzfkp zza;
        if (!TextUtils.isEmpty(str) && (zza = zzfkp.zza()) != null) {
            for (zzfke zzfkeVar : zza.zzc()) {
                if (((zzflt) this).zza.contains(zzfkeVar.zzh())) {
                    zzfkeVar.zzg().zze(str, this.zzc);
                }
            }
        }
        super.onPostExecute(str);
    }
}

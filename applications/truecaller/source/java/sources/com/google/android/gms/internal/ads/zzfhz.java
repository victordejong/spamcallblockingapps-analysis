package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhz.class */
public final class zzfhz extends zzfhv {
    /* JADX WARN: Multi-variable type inference failed */
    public zzfhz(zzfho zzfhoVar, zzfho zzfhoVar2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(zzfhoVar, zzfhoVar2, hashSet, jSONObject, null);
    }

    private final void zzc(String str) {
        zzfgr zza = zzfgr.zza();
        if (zza != null) {
            for (zzfgg zzfggVar : zza.zze()) {
                if (((zzfhv) this).zza.contains(zzfggVar.zzh())) {
                    zzfggVar.zzg().zzg(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfhw, android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        zzc(str2);
        super.onPostExecute(str2);
    }

    @Override // com.google.android.gms.internal.ads.zzfhw
    public final void zza(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}

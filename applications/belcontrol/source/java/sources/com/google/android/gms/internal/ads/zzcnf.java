package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnf.class */
public final class zzcnf {
    private final Context context;
    private final Executor executor;
    private final zzdnp zzfwy;
    private final zzazn zzgok;

    public zzcnf(Context context, zzazn zzaznVar, zzdnp zzdnpVar, Executor executor) {
        this.context = context;
        this.zzgok = zzaznVar;
        this.zzfwy = zzdnpVar;
        this.executor = executor;
    }

    public final zzdzw<zzdnl> zzaro() {
        zzamj zzb = zzr.zzle().zzb(this.context, this.zzgok);
        zzamf<JSONObject> zzamfVar = zzame.zzdks;
        zzamb zza = zzb.zza("google.afma.response.normalize", zzamfVar, zzamfVar);
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzb(zzdzk.zzag(""), new zzcni(this, this.zzfwy.zzhkw.zzcia), this.executor), new zzcnh(zza), this.executor), new zzcnk(this), this.executor);
    }

    public final /* synthetic */ zzdzw zzo(JSONObject jSONObject) {
        return zzdzk.zzag(new zzdnl(new zzdng(this.zzfwy), zzdnj.zza(new StringReader(jSONObject.toString()))));
    }
}

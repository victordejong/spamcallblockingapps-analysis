package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkf.class */
public final class zzbkf implements zzeqb<zzqt> {
    private final zzeqo<JSONObject> zzfja;
    private final zzeqo<zzdmw> zzfta;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<String> zzftc;

    private zzbkf(zzeqo<zzdmw> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<JSONObject> zzeqoVar3, zzeqo<String> zzeqoVar4) {
        this.zzfta = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzfja = zzeqoVar3;
        this.zzftc = zzeqoVar4;
    }

    public static zzbkf zza(zzeqo<zzdmw> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<JSONObject> zzeqoVar3, zzeqo<String> zzeqoVar4) {
        return new zzbkf(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        this.zzfta.get();
        zzazn zzaznVar = this.zzftb.get();
        JSONObject jSONObject = this.zzfja.get();
        String str = this.zzftc.get();
        boolean equals = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str);
        zzr.zzkr();
        return (zzqt) zzeqh.zza(new zzqt(zzj.zzyy(), zzaznVar, str, jSONObject, false, equals), "Cannot return null from a non-@Nullable @Provides method");
    }
}

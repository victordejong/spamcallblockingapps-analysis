package com.google.android.gms.internal.ads;

import android.content.Context;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
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
        zzamb zza = zzr.zzle().zzb(this.context, this.zzgok).zza("google.afma.response.normalize", zzame.zzdks, zzame.zzdks);
        return zzdzk.zzb(zzdzk.zzb(zzdzk.zzb(zzdzk.zzag(""), new zzdyu(this, this.zzfwy.zzhkw.zzcia) { // from class: com.google.android.gms.internal.ads.zzcni
            private final zzcnf zzgom;
            private final zzve zzgon;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgom = this;
                this.zzgon = zzveVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                zzve zzveVar2 = this.zzgon;
                String str = (String) obj;
                String str2 = zzveVar2.zzche;
                String str3 = zzveVar2.zzchf;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put(SDKConstants.PARAM_A2U_BODY, str2);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str3));
                jSONObject.put(ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return zzdzk.zzag(jSONObject);
            }
        }, this.executor), new zzdyu(zza) { // from class: com.google.android.gms.internal.ads.zzcnh
            private final zzamb zzgol;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgol = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgol.zzh((JSONObject) obj);
            }
        }, this.executor), new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzcnk
            private final zzcnf zzgom;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgom = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgom.zzo((JSONObject) obj);
            }
        }, this.executor);
    }

    public final /* synthetic */ zzdzw zzo(JSONObject jSONObject) throws Exception {
        return zzdzk.zzag(new zzdnl(new zzdng(this.zzfwy), zzdnj.zza(new StringReader(jSONObject.toString()))));
    }
}

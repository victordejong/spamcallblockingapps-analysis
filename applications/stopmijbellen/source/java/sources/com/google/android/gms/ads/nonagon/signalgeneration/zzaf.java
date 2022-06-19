package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcdq;
import com.google.android.gms.internal.ads.zzedb;
import com.google.android.gms.internal.ads.zzfvx;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxa;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzaf.class */
public final class zzaf implements zzfvx<zzcdq, zzah> {
    private final Executor zza;
    private final zzedb zzb;

    public zzaf(Executor executor, zzedb zzedbVar) {
        this.zza = executor;
        this.zzb = zzedbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final /* bridge */ /* synthetic */ zzfxa<zzah> zza(zzcdq zzcdqVar) throws Exception {
        final zzcdq zzcdqVar2 = zzcdqVar;
        return zzfwq.zzn(this.zzb.zzb(zzcdqVar2), new zzfvx() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zzcdq zzcdqVar3 = zzcdq.this;
                zzah zzahVar = new zzah(new JsonReader(new InputStreamReader((InputStream) obj)));
                try {
                    zzahVar.zzb = zzt.zzp().zze(zzcdqVar3.zza).toString();
                } catch (JSONException e) {
                    zzahVar.zzb = JsonUtils.EMPTY_JSON;
                }
                return zzfwq.zzi(zzahVar);
            }
        }, this.zza);
    }
}

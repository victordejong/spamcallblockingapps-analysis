package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcbj;
import com.google.android.gms.internal.ads.zzdzk;
import com.google.android.gms.internal.ads.zzfrk;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfsm;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzaf.class */
public final class zzaf implements zzfrk<zzcbj, zzah> {
    private final Executor zza;
    private final zzdzk zzb;

    public zzaf(Executor executor, zzdzk zzdzkVar) {
        this.zza = executor;
        this.zzb = zzdzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final /* bridge */ /* synthetic */ zzfsm<zzah> zza(zzcbj zzcbjVar) throws Exception {
        zzcbj zzcbjVar2 = zzcbjVar;
        return zzfsd.zzi(this.zzb.zza(zzcbjVar2), new zzfrk(zzcbjVar2) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
            private final zzcbj zza;

            {
                this.zza = zzcbjVar2;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                zzcbj zzcbjVar3 = this.zza;
                zzah zzahVar = new zzah(new JsonReader(new InputStreamReader((InputStream) obj)));
                try {
                    zzahVar.zzb = zzt.zzc().zzl(zzcbjVar3.zza).toString();
                } catch (JSONException e) {
                    zzahVar.zzb = "{}";
                }
                return zzfsd.zza(zzahVar);
            }
        }, this.zza);
    }
}

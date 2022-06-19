package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbg.class */
public final class zzdbg implements zzdfi<zzdbe> {
    private final String zzdug;
    private final zzcin zzgmw;
    private final zzdzv zzhah;

    public zzdbg(String str, zzdzv zzdzvVar, zzcin zzcinVar) {
        this.zzdug = str;
        this.zzhah = zzdzvVar;
        this.zzgmw = zzcinVar;
    }

    private static Bundle zzb(zzdog zzdogVar) {
        Bundle bundle = new Bundle();
        try {
            if (zzdogVar.zzvd() != null) {
                bundle.putString("sdk_version", zzdogVar.zzvd().toString());
            }
        } catch (zzdnt e) {
        }
        try {
            if (zzdogVar.zzvc() != null) {
                bundle.putString("adapter_version", zzdogVar.zzvc().toString());
            }
        } catch (zzdnt e2) {
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdbe> zzasy() {
        if (new BigInteger(this.zzdug).equals(BigInteger.ONE)) {
            if (!zzdwt.zzar((String) zzwr.zzqr().zzd(zzabp.zzcqx))) {
                return this.zzhah.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdbj
                    private final zzdbg zzhaz;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhaz = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzhaz.zzata();
                    }
                });
            }
        }
        return zzdzk.zzag(new zzdbe(new Bundle()));
    }

    public final /* synthetic */ zzdbe zzata() throws Exception {
        List<String> asList = Arrays.asList(((String) zzwr.zzqr().zzd(zzabp.zzcqx)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                bundle.putBundle(str, zzb(this.zzgmw.zzd(str, new JSONObject())));
            } catch (zzdnt e) {
            }
        }
        return new zzdbe(bundle);
    }
}

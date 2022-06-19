package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdgb;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemt.class */
public final class zzemt<AdT, AdapterT, ListenerT extends zzdgb> implements zzeht<AdT> {
    private final zzehv<AdapterT, ListenerT> zza;
    private final zzeib<AdT, AdapterT, ListenerT> zzb;
    private final zzfie zzc;
    private final zzfxb zzd;

    public zzemt(zzfie zzfieVar, zzfxb zzfxbVar, zzehv<AdapterT, ListenerT> zzehvVar, zzeib<AdT, AdapterT, ListenerT> zzeibVar) {
        this.zzc = zzfieVar;
        this.zzd = zzfxbVar;
        this.zzb = zzeibVar;
        this.zza = zzehvVar;
    }

    @VisibleForTesting
    public static final String zze(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<AdT> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        zzehw<AdapterT, ListenerT> zzehwVar;
        Iterator<String> it2 = zzfdnVar.zzu.iterator();
        while (true) {
            if (!it2.hasNext()) {
                zzehwVar = null;
                break;
            }
            try {
                zzehwVar = this.zza.zza(it2.next(), zzfdnVar.zzw);
                break;
            } catch (zzfek e) {
            }
        }
        if (zzehwVar == null) {
            return zzfwq.zzh(new zzekv("Unable to instantiate mediation adapter class."));
        }
        zzcjr zzcjrVar = new zzcjr();
        zzehwVar.zzc.zza(new zzems(this, zzehwVar, zzcjrVar));
        if (zzfdnVar.zzJ) {
            Bundle bundle = zzfdzVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        final zzehw<AdapterT, ListenerT> zzehwVar2 = zzehwVar;
        final zzehw<AdapterT, ListenerT> zzehwVar3 = zzehwVar;
        return zzfho.zzd(new zzfhi() { // from class: com.google.android.gms.internal.ads.zzemr
            @Override // com.google.android.gms.internal.ads.zzfhi
            public final void zza() {
                zzemt.this.zzd(zzfdzVar, zzfdnVar, zzehwVar2);
            }
        }, this.zzd, zzfhy.ADAPTER_LOAD_AD_SYN, this.zzc).zzb(zzfhy.ADAPTER_LOAD_AD_ACK).zzd(zzcjrVar).zzb(zzfhy.ADAPTER_WRAP_ADAPTER).zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzemq
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                return zzemt.this.zzc(zzfdzVar, zzfdnVar, zzehwVar3, (Void) obj);
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return !zzfdnVar.zzu.isEmpty();
    }

    public final /* synthetic */ Object zzc(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw zzehwVar, Void r9) throws Exception {
        return this.zzb.zza(zzfdzVar, zzfdnVar, zzehwVar);
    }

    public final /* synthetic */ void zzd(zzfdz zzfdzVar, zzfdn zzfdnVar, zzehw zzehwVar) throws Exception {
        this.zzb.zzb(zzfdzVar, zzfdnVar, zzehwVar);
    }
}

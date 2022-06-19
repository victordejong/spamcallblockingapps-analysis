package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzbsu;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwi.class */
public final class zzcwi<AdT, AdapterT, ListenerT extends zzbsu> implements zzcrj<AdT> {
    private final zzcro<AdapterT, ListenerT> zzfqk;
    private final zzdrj zzfwz;
    private final zzcrr<AdT, AdapterT, ListenerT> zzgwh;
    private final zzdzv zzgwi;

    public zzcwi(zzdrj zzdrjVar, zzdzv zzdzvVar, zzcro<AdapterT, ListenerT> zzcroVar, zzcrr<AdT, AdapterT, ListenerT> zzcrrVar) {
        this.zzfwz = zzdrjVar;
        this.zzgwi = zzdzvVar;
        this.zzgwh = zzcrrVar;
        this.zzfqk = zzcroVar;
    }

    public static String zza(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    public final /* synthetic */ Object zza(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl zzcrlVar, Void r9) throws Exception {
        return this.zzgwh.zzb(zzdnlVar, zzdmwVar, zzcrlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return !zzdmwVar.zzhjh.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<AdT> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        zzcrl<AdapterT, ListenerT> zzcrlVar;
        Iterator<String> it = zzdmwVar.zzhjh.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzcrlVar = null;
                break;
            }
            try {
                zzcrlVar = this.zzfqk.zzf(it.next(), zzdmwVar.zzhjj);
                break;
            } catch (zzdnt e) {
            }
        }
        if (zzcrlVar == null) {
            return zzdzk.immediateFailedFuture(new zzcum("unable to instantiate mediation adapter class"));
        }
        zzbaa zzbaaVar = new zzbaa();
        zzcrlVar.zzgsu.zza(new zzcwj(this, zzcrlVar, zzbaaVar));
        if (zzdmwVar.zzdxt) {
            Bundle bundle = zzdnlVar.zzhkr.zzfwy.zzhkw.zzchu;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle3);
            }
            bundle3.putBoolean("render_test_ad_label", true);
        }
        return this.zzfwz.zzt(zzdrk.ADAPTER_LOAD_AD_SYN).zza(new zzdqt(this, zzdnlVar, zzdmwVar, zzcrlVar) { // from class: com.google.android.gms.internal.ads.zzcwh
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcrl zzgvv;
            private final zzcwi zzgwg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgwg = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
                this.zzgvv = zzcrlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqt
            public final void run() {
                this.zzgwg.zzd(this.zzghw, this.zzfva, this.zzgvv);
            }
        }, this.zzgwi).zzv(zzdrk.ADAPTER_LOAD_AD_ACK).zze(zzbaaVar).zzv(zzdrk.ADAPTER_WRAP_ADAPTER).zzb(new zzdqu(this, zzdnlVar, zzdmwVar, zzcrlVar) { // from class: com.google.android.gms.internal.ads.zzcwk
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcrl zzgvv;
            private final zzcwi zzgwg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgwg = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
                this.zzgvv = zzcrlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdqu
            public final Object apply(Object obj) {
                return this.zzgwg.zza(this.zzghw, this.zzfva, this.zzgvv, (Void) obj);
            }
        }).zzaxj();
    }

    public final /* synthetic */ void zzd(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl zzcrlVar) throws Exception {
        this.zzgwh.zza(zzdnlVar, zzdmwVar, zzcrlVar);
    }
}

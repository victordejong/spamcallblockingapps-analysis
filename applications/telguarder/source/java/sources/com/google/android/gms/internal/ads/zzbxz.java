package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxz.class */
public final class zzbxz extends zzbwf<zzqw> implements zzqw {
    private final Context context;
    private final zzdmw zzesr;
    private Map<View, zzqs> zzgaz = new WeakHashMap(1);

    public zzbxz(Context context, Set<zzbya<zzqw>> set, zzdmw zzdmwVar) {
        super(set);
        this.context = context;
        this.zzesr = zzdmwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqxVar) {
        synchronized (this) {
            zza(new zzbwh(zzqxVar) { // from class: com.google.android.gms.internal.ads.zzbyc
                private final zzqx zzgbb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgbb = zzqxVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbwh
                public final void zzo(Object obj) {
                    ((zzqw) obj).zza(this.zzgbb);
                }
            });
        }
    }

    public final void zzv(View view) {
        synchronized (this) {
            zzqs zzqsVar = this.zzgaz.get(view);
            zzqs zzqsVar2 = zzqsVar;
            if (zzqsVar == null) {
                zzqsVar2 = new zzqs(this.context, view);
                zzqsVar2.zza(this);
                this.zzgaz.put(view, zzqsVar2);
            }
            zzdmw zzdmwVar = this.zzesr;
            if (zzdmwVar != null && zzdmwVar.zzdxa) {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqt)).booleanValue()) {
                    zzqsVar2.zzen(((Long) zzwr.zzqr().zzd(zzabp.zzcqs)).longValue());
                    return;
                }
            }
            zzqsVar2.zzlt();
        }
    }

    public final void zzw(View view) {
        synchronized (this) {
            if (this.zzgaz.containsKey(view)) {
                this.zzgaz.get(view).zzb(this);
                this.zzgaz.remove(view);
            }
        }
    }
}

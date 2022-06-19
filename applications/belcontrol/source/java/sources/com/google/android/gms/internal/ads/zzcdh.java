package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdh.class */
public final class zzcdh {
    private final zzccl zzgdh;
    private final zzcgk zzgge;
    private final zzchq zzggk;
    private final zzbkm zzggl;

    public zzcdh(zzchq zzchqVar, zzcgk zzcgkVar, zzbkm zzbkmVar, zzccl zzcclVar) {
        this.zzggk = zzchqVar;
        this.zzgge = zzcgkVar;
        this.zzggl = zzbkmVar;
        this.zzgdh = zzcclVar;
    }

    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzazk.zzew("Hiding native ads overlay.");
        zzbebVar.getView().setVisibility(8);
        this.zzggl.zzbf(false);
    }

    public final /* synthetic */ void zza(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzgge.zza("sendMessageToNativeJs", hashMap);
    }

    public final View zzapf() {
        zzbeb zza = this.zzggk.zza(zzvs.zzqe(), null, null);
        zza.getView().setVisibility(8);
        zza.zza("/sendMessageToSdk", new zzcdk(this));
        zza.zza("/adMuted", new zzcdj(this));
        this.zzgge.zza(new WeakReference(zza), "/loadHtml", (zzaif) new zzcdm(this));
        this.zzgge.zza(new WeakReference(zza), "/showOverlay", (zzaif) new zzcdl(this));
        this.zzgge.zza(new WeakReference(zza), "/hideOverlay", (zzaif) new zzcdo(this));
        return zza.getView();
    }

    public final /* synthetic */ void zzb(zzbeb zzbebVar, Map map) {
        zzazk.zzew("Showing native ads overlay.");
        zzbebVar.getView().setVisibility(0);
        this.zzggl.zzbf(true);
    }

    public final /* synthetic */ void zzc(zzbeb zzbebVar, Map map) {
        this.zzgdh.zzank();
    }

    public final /* synthetic */ void zzd(zzbeb zzbebVar, Map map) {
        this.zzgge.zza("sendMessageToNativeJs", map);
    }
}

package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrm.class */
public final class zzdrm {
    private final zzdwj zza;
    private final zzduy zzb;
    private final zzcxp zzc;
    private final zzdqk zzd;

    public zzdrm(zzdwj zzdwjVar, zzduy zzduyVar, zzcxp zzcxpVar, zzdqk zzdqkVar) {
        this.zza = zzdwjVar;
        this.zzb = zzduyVar;
        this.zzc = zzcxpVar;
        this.zzd = zzdqkVar;
    }

    public final View zza() throws zzcpa {
        zzcop zza = this.zza.zza(zzbfi.zzc(), null, null);
        ((View) zza).setVisibility(8);
        zza.zzaf("/sendMessageToSdk", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrg
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdrm.this.zzb((zzcop) obj, map);
            }
        });
        zza.zzaf("/adMuted", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrh
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdrm.this.zzc((zzcop) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/loadHtml", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdri
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, final Map map) {
                final zzdrm zzdrmVar = zzdrm.this;
                zzcop zzcopVar = (zzcop) obj;
                zzcopVar.zzP().zzz(new zzcqa() { // from class: com.google.android.gms.internal.ads.zzdrl
                    @Override // com.google.android.gms.internal.ads.zzcqa
                    public final void zza(boolean z) {
                        zzdrm.this.zzd(map, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcopVar.loadData(str, "text/html", "UTF-8");
                } else {
                    zzcopVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/showOverlay", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrj
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdrm.this.zze((zzcop) obj, map);
            }
        });
        this.zzb.zzj(new WeakReference(zza), "/hideOverlay", new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrk
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdrm.this.zzf((zzcop) obj, map);
            }
        });
        return (View) zza;
    }

    public final /* synthetic */ void zzb(zzcop zzcopVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }

    public final /* synthetic */ void zzc(zzcop zzcopVar, Map map) {
        this.zzd.zzf();
    }

    public final /* synthetic */ void zzd(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put(FacebookAdapter.KEY_ID, (String) map.get(FacebookAdapter.KEY_ID));
        this.zzb.zzg("sendMessageToNativeJs", hashMap);
    }

    public final /* synthetic */ void zze(zzcop zzcopVar, Map map) {
        zzciz.zzi("Showing native ads overlay.");
        zzcopVar.zzH().setVisibility(0);
        this.zzc.zze(true);
    }

    public final /* synthetic */ void zzf(zzcop zzcopVar, Map map) {
        zzciz.zzi("Hiding native ads overlay.");
        zzcopVar.zzH().setVisibility(8);
        this.zzc.zze(false);
    }
}

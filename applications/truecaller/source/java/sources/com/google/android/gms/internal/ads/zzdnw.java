package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.view.View;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnw.class */
public final class zzdnw {
    private final zzdss zza;
    private final zzdrh zzb;
    private final zzcua zzc;
    private final zzdmu zzd;

    public zzdnw(zzdss zzdssVar, zzdrh zzdrhVar, zzcua zzcuaVar, zzdmu zzdmuVar) {
        this.zza = zzdssVar;
        this.zzb = zzdrhVar;
        this.zzc = zzcuaVar;
        this.zzd = zzdmuVar;
    }

    public final View zza() throws zzcmw {
        zzcml zzb = this.zza.zzb(zzbdl.zzb(), null, null);
        ((View) zzb).setVisibility(8);
        zzb.zzab("/sendMessageToSdk", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdnq
            private final zzdnw zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzf((zzcml) obj, map);
            }
        });
        zzb.zzab("/adMuted", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdnr
            private final zzdnw zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zze((zzcml) obj, map);
            }
        });
        this.zzb.zzi(new WeakReference(zzb), "/loadHtml", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdns
            private final zzdnw zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, final Map map) {
                final zzdnw zzdnwVar = this.zza;
                zzcml zzcmlVar = (zzcml) obj;
                zzcmlVar.zzR().zzy(new zzcnx(zzdnwVar, map) { // from class: com.google.android.gms.internal.ads.zzdnv
                    private final zzdnw zza;
                    private final Map zzb;

                    {
                        this.zza = zzdnwVar;
                        this.zzb = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcnx
                    public final void zza(boolean z) {
                        this.zza.zzd(this.zzb, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzcmlVar.loadData(str, "text/html", StringConstant.UTF8);
                } else {
                    zzcmlVar.loadDataWithBaseURL(str2, str, "text/html", StringConstant.UTF8, null);
                }
            }
        });
        this.zzb.zzi(new WeakReference(zzb), "/showOverlay", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdnt
            private final zzdnw zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzc((zzcml) obj, map);
            }
        });
        this.zzb.zzi(new WeakReference(zzb), "/hideOverlay", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdnu
            private final zzdnw zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcml) obj, map);
            }
        });
        return (View) zzb;
    }

    public final /* synthetic */ void zzb(zzcml zzcmlVar, Map map) {
        zzcgt.zzh("Hiding native ads overlay.");
        zzcmlVar.zzH().setVisibility(8);
        this.zzc.zze(false);
    }

    public final /* synthetic */ void zzc(zzcml zzcmlVar, Map map) {
        zzcgt.zzh("Showing native ads overlay.");
        zzcmlVar.zzH().setVisibility(0);
        this.zzc.zze(true);
    }

    public final /* synthetic */ void zzd(Map map, boolean z) {
        HashMap m8667T = C22128a.m8667T("messageType", "htmlLoaded");
        m8667T.put("id", (String) map.get("id"));
        this.zzb.zzg("sendMessageToNativeJs", m8667T);
    }

    public final /* synthetic */ void zze(zzcml zzcmlVar, Map map) {
        this.zzd.zzw();
    }

    public final /* synthetic */ void zzf(zzcml zzcmlVar, Map map) {
        this.zzb.zzg("sendMessageToNativeJs", map);
    }
}

package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Executor;
import p195p.C3977c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeji.class */
public final class zzeji implements zzeht<zzdmw> {
    private final Context zza;
    private final zzdnt zzb;
    private final Executor zzc;
    private final zzfdm zzd;

    public zzeji(Context context, Executor executor, zzdnt zzdntVar, zzfdm zzfdmVar) {
        this.zza = context;
        this.zzb = zzdntVar;
        this.zzc = executor;
        this.zzd = zzfdmVar;
    }

    private static String zzd(zzfdn zzfdnVar) {
        try {
            return zzfdnVar.zzw.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzdmw> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        String zzd = zzd(zzfdnVar);
        final Uri parse = zzd != null ? Uri.parse(zzd) : null;
        return zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzejh
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeji.this.zzc(parse, zzfdzVar, zzfdnVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return (this.zza instanceof Activity) && PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzbmh.zzg(this.zza) && !TextUtils.isEmpty(zzd(zzfdnVar));
    }

    public final zzfxa zzc(Uri uri, zzfdz zzfdzVar, zzfdn zzfdnVar, Object obj) throws Exception {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            C3977c c3977c = new C3977c(intent, null);
            c3977c.f12501a.setData(uri);
            zzc zzcVar = new zzc(c3977c.f12501a, null);
            final zzcjr zzcjrVar = new zzcjr();
            zzdmx zze = this.zzb.zze(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdna(new zzdob() { // from class: com.google.android.gms.internal.ads.zzejg
                @Override // com.google.android.gms.internal.ads.zzdob
                public final void zza(boolean z, Context context, zzdfe zzdfeVar) {
                    zzcjr zzcjrVar2 = zzcjr.this;
                    try {
                        zzt.zzj();
                        zzm.zza(context, (AdOverlayInfoParcel) zzcjrVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }, null));
            zzcjrVar.zzd(new AdOverlayInfoParcel(zzcVar, null, zze.zza(), null, new zzcjf(0, 0, false, false, false), null, null));
            this.zzd.zza();
            return zzfwq.zzi(zze.zzg());
        } catch (Throwable th) {
            zzciz.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}

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
import java.util.concurrent.Executor;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1755d.p1756a.C25696f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefr.class */
public final class zzefr implements zzeec<zzdji> {
    private final Context zza;
    private final zzdkf zzb;
    private final Executor zzc;
    private final zzezy zzd;

    public zzefr(Context context, Executor executor, zzdkf zzdkfVar, zzezy zzezyVar) {
        this.zza = context;
        this.zzb = zzdkfVar;
        this.zzc = executor;
        this.zzd = zzezyVar;
    }

    private static String zzd(zzezz zzezzVar) {
        try {
            return zzezzVar.zzv.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbkj.zza(context) && !TextUtils.isEmpty(zzd(zzezzVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<zzdji> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        String zzd = zzd(zzezzVar);
        return zzfsd.zzi(zzfsd.zza(null), new zzfrk(this, zzd != null ? Uri.parse(zzd) : null, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzefp
            private final zzefr zza;
            private final Uri zzb;
            private final zzfal zzc;
            private final zzezz zzd;

            {
                this.zza = this;
                this.zzb = parse;
                this.zzc = zzfalVar;
                this.zzd = zzezzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(this.zzb, this.zzc, this.zzd, obj);
            }
        }, this.zzc);
    }

    public final zzfsm zzc(Uri uri, zzfal zzfalVar, zzezz zzezzVar, Object obj) throws Exception {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            C25691a.C25692a c25692a = new C25691a.C25692a();
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            intent.putExtras(c25692a.m3052a().m3053a());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            C25696f c25696f = new C25696f(intent, null);
            c25696f.f71983a.setData(uri);
            zzc zzcVar = new zzc(c25696f.f71983a, null);
            zzchl zzchlVar = new zzchl();
            zzdjj zzQ = this.zzb.zzQ(new zzcxv(zzfalVar, zzezzVar, null), new zzdjm(new zzdkn(zzchlVar) { // from class: com.google.android.gms.internal.ads.zzefq
                private final zzchl zza;

                {
                    this.zza = zzchlVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdkn
                public final void zza(boolean z, Context context, zzdbp zzdbpVar) {
                    zzchl zzchlVar2 = this.zza;
                    try {
                        zzt.zzb();
                        zzm.zza(context, (AdOverlayInfoParcel) zzchlVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }, null));
            zzchlVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzQ.zzi(), null, new zzcgz(0, 0, false, false, false), null, null));
            this.zzd.zzd();
            return zzfsd.zza(zzQ.zzh());
        } catch (Throwable th) {
            zzcgt.zzg("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}

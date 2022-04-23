package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabs;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbhz;
import com.google.android.gms.internal.ads.zzbib;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdnw;
import com.google.android.gms.internal.ads.zzeg;
import com.google.android.gms.internal.ads.zzsu;
import com.google.android.gms.internal.ads.zzts;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbie.class */
public final class zzbie {
    /* renamed from: a */
    public static zzbgj m15462a(final Context context, final zzbhy zzbhyVar, final String str, final boolean z, final boolean z2, final zzeg zzegVar, final zzacb zzacbVar, final zzbbx zzbbxVar, zzabs zzabsVar, final zzk zzkVar, final zzb zzbVar, final zzts zztsVar, final zzsu zzsuVar, final boolean z3, final zzdnv zzdnvVar, final zzdnw zzdnwVar) throws zzbgv {
        try {
            return (zzbgj) zzbay.m15928a(new zzdwe(context, zzbhyVar, str, z, z2, zzegVar, zzacbVar, zzbbxVar, null, zzkVar, zzbVar, zztsVar, zzsuVar, z3, zzdnvVar, zzdnwVar) { // from class: c.d.b.d.g.a.ga

                /* renamed from: a */
                public final Context f13031a;

                /* renamed from: b */
                public final zzbhy f13032b;

                /* renamed from: c */
                public final String f13033c;

                /* renamed from: d */
                public final boolean f13034d;

                /* renamed from: e */
                public final boolean f13035e;

                /* renamed from: f */
                public final zzeg f13036f;

                /* renamed from: g */
                public final zzacb f13037g;

                /* renamed from: h */
                public final zzbbx f13038h;

                /* renamed from: i */
                public final zzabs f13039i;

                /* renamed from: j */
                public final zzk f13040j;

                /* renamed from: k */
                public final zzb f13041k;

                /* renamed from: l */
                public final zzts f13042l;

                /* renamed from: m */
                public final zzsu f13043m;

                /* renamed from: n */
                public final boolean f13044n;

                /* renamed from: o */
                public final zzdnv f13045o;

                /* renamed from: p */
                public final zzdnw f13046p;

                {
                    this.f13031a = context;
                    this.f13032b = zzbhyVar;
                    this.f13033c = str;
                    this.f13034d = z;
                    this.f13035e = z2;
                    this.f13036f = zzegVar;
                    this.f13037g = zzacbVar;
                    this.f13038h = zzbbxVar;
                    this.f13039i = r12;
                    this.f13040j = zzkVar;
                    this.f13041k = zzbVar;
                    this.f13042l = zztsVar;
                    this.f13043m = zzsuVar;
                    this.f13044n = z3;
                    this.f13045o = zzdnvVar;
                    this.f13046p = zzdnwVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdwe
                public final Object get() {
                    Context context2 = this.f13031a;
                    zzbhy zzbhyVar2 = this.f13032b;
                    String str2 = this.f13033c;
                    boolean z4 = this.f13034d;
                    boolean z5 = this.f13035e;
                    zzeg zzegVar2 = this.f13036f;
                    zzacb zzacbVar2 = this.f13037g;
                    zzbbx zzbbxVar2 = this.f13038h;
                    zzabs zzabsVar2 = this.f13039i;
                    zzk zzkVar2 = this.f13040j;
                    zzb zzbVar2 = this.f13041k;
                    zzts zztsVar2 = this.f13042l;
                    zzsu zzsuVar2 = this.f13043m;
                    boolean z6 = this.f13044n;
                    zzdnv zzdnvVar2 = this.f13045o;
                    zzdnw zzdnwVar2 = this.f13046p;
                    zzbib zzbibVar = new zzbib();
                    ViewTreeObserver$OnGlobalLayoutListenerC3538fa faVar = new ViewTreeObserver$OnGlobalLayoutListenerC3538fa(new zzbhz(context2), zzbibVar, zzbhyVar2, str2, z4, z5, zzegVar2, zzacbVar2, zzbbxVar2, zzabsVar2, zzkVar2, zzbVar2, zztsVar2, zzsuVar2, z6, zzdnvVar2, zzdnwVar2);
                    zzbgu zzbguVar = new zzbgu(faVar);
                    faVar.setWebChromeClient(new zzbgb(zzbguVar));
                    zzbibVar.m15493a(zzbguVar, z5);
                    return zzbguVar;
                }
            });
        } catch (Throwable th) {
            zzp.m17965g().m16188a(th, "AdWebViewFactory.newAdWebView2");
            throw new zzbgv("Webview initialization failed.", th);
        }
    }
}

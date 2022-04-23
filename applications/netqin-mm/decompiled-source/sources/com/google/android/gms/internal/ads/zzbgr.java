package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabs;
import com.google.android.gms.internal.ads.zzacb;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbch;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdnw;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzeg;
import com.google.android.gms.internal.ads.zzsu;
import com.google.android.gms.internal.ads.zzts;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgr.class */
public final class zzbgr {
    /* renamed from: a */
    public static zzbgj m15609a(final Context context, final zzbhy zzbhyVar, final String str, final boolean z, final boolean z2, final zzeg zzegVar, final zzacb zzacbVar, final zzbbx zzbbxVar, zzabs zzabsVar, final zzk zzkVar, final zzb zzbVar, final zzts zztsVar, final zzsu zzsuVar, final boolean z3, final zzdnv zzdnvVar, final zzdnw zzdnwVar) throws zzbgv {
        zzabb.m16916a(context);
        if (zzadh.f24016b.mo16862a().booleanValue()) {
            return zzbie.m15462a(context, zzbhyVar, str, z, z2, zzegVar, zzacbVar, zzbbxVar, null, zzkVar, zzbVar, zztsVar, zzsuVar, z3, zzdnvVar, zzdnwVar);
        }
        try {
            return (zzbgj) zzbay.m15928a(new zzdwe(context, zzbhyVar, str, z, z2, zzegVar, zzacbVar, zzbbxVar, null, zzkVar, zzbVar, zztsVar, zzsuVar, z3, zzdnvVar, zzdnwVar) { // from class: c.d.b.d.g.a.q9

                /* renamed from: a */
                public final Context f14604a;

                /* renamed from: b */
                public final zzbhy f14605b;

                /* renamed from: c */
                public final String f14606c;

                /* renamed from: d */
                public final boolean f14607d;

                /* renamed from: e */
                public final boolean f14608e;

                /* renamed from: f */
                public final zzeg f14609f;

                /* renamed from: g */
                public final zzacb f14610g;

                /* renamed from: h */
                public final zzbbx f14611h;

                /* renamed from: i */
                public final zzabs f14612i = null;

                /* renamed from: j */
                public final zzk f14613j;

                /* renamed from: k */
                public final zzb f14614k;

                /* renamed from: l */
                public final zzts f14615l;

                /* renamed from: m */
                public final zzsu f14616m;

                /* renamed from: n */
                public final boolean f14617n;

                /* renamed from: o */
                public final zzdnv f14618o;

                /* renamed from: p */
                public final zzdnw f14619p;

                {
                    this.f14604a = context;
                    this.f14605b = zzbhyVar;
                    this.f14606c = str;
                    this.f14607d = z;
                    this.f14608e = z2;
                    this.f14609f = zzegVar;
                    this.f14610g = zzacbVar;
                    this.f14611h = zzbbxVar;
                    this.f14613j = zzkVar;
                    this.f14614k = zzbVar;
                    this.f14615l = zztsVar;
                    this.f14616m = zzsuVar;
                    this.f14617n = z3;
                    this.f14618o = zzdnvVar;
                    this.f14619p = zzdnwVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdwe
                public final Object get() {
                    Context context2 = this.f14604a;
                    zzbhy zzbhyVar2 = this.f14605b;
                    String str2 = this.f14606c;
                    boolean z4 = this.f14607d;
                    boolean z5 = this.f14608e;
                    zzeg zzegVar2 = this.f14609f;
                    zzacb zzacbVar2 = this.f14610g;
                    zzbbx zzbbxVar2 = this.f14611h;
                    zzabs zzabsVar2 = this.f14612i;
                    zzk zzkVar2 = this.f14613j;
                    zzb zzbVar2 = this.f14614k;
                    zzts zztsVar2 = this.f14615l;
                    zzbgu zzbguVar = new zzbgu(ViewTreeObserver$OnGlobalLayoutListenerC4096u9.m26291a(context2, zzbhyVar2, str2, z4, z5, zzegVar2, zzacbVar2, zzbbxVar2, zzabsVar2, zzkVar2, zzbVar2, zztsVar2, this.f14616m, this.f14617n, this.f14618o, this.f14619p));
                    zzbguVar.setWebViewClient(zzp.m17967e().mo16031a(zzbguVar, zztsVar2, z5));
                    zzbguVar.setWebChromeClient(new zzbgb(zzbguVar));
                    return zzbguVar;
                }
            });
        } catch (Throwable th) {
            throw new zzbgv("Webview initialization failed.", th);
        }
    }

    /* renamed from: a */
    public static zzdzc<zzbgj> m15610a(final Context context, final zzbbx zzbbxVar, final String str, final zzeg zzegVar, final zzb zzbVar) {
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(context, zzegVar, zzbbxVar, zzbVar, str) { // from class: c.d.b.d.g.a.o9

            /* renamed from: a */
            public final Context f14302a;

            /* renamed from: b */
            public final zzeg f14303b;

            /* renamed from: c */
            public final zzbbx f14304c;

            /* renamed from: d */
            public final zzb f14305d;

            /* renamed from: e */
            public final String f14306e;

            {
                this.f14302a = context;
                this.f14303b = zzegVar;
                this.f14304c = zzbbxVar;
                this.f14305d = zzbVar;
                this.f14306e = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                Context context2 = this.f14302a;
                zzeg zzegVar2 = this.f14303b;
                zzbbx zzbbxVar2 = this.f14304c;
                zzb zzbVar2 = this.f14305d;
                String str2 = this.f14306e;
                zzp.m17968d();
                zzbgj a = zzbgr.m15609a(context2, zzbhy.m15506f(), "", false, false, zzegVar2, null, zzbbxVar2, null, null, zzbVar2, zzts.m11426a(), null, false, null, null);
                final zzbch c = zzbch.m15831c(a);
                a.mo15543z().mo15492a(new zzbhu(c) { // from class: c.d.b.d.g.a.p9

                    /* renamed from: a */
                    public final zzbch f14415a;

                    {
                        this.f14415a = c;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbhu
                    /* renamed from: a */
                    public final void mo15515a(boolean z) {
                        this.f14415a.m15832a();
                    }
                });
                a.loadUrl(str2);
                return c;
            }
        }, zzbbz.f24768e);
    }
}

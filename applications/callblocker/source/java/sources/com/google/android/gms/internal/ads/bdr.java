package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdr.class */
public final class bdr extends amh {

    /* renamed from: c */
    private final Context f11040c;

    /* renamed from: d */
    private final WeakReference<act> f11041d;

    /* renamed from: e */
    private final awx f11042e;

    /* renamed from: f */
    private final aud f11043f;

    /* renamed from: g */
    private final apx f11044g;

    /* renamed from: h */
    private final arf f11045h;

    /* renamed from: i */
    private final anc f11046i;

    /* renamed from: j */
    private final AbstractC3474rt f11047j;

    /* renamed from: k */
    private final cme f11048k;

    /* renamed from: l */
    private boolean f11049l = false;

    public bdr(amk amkVar, Context context, act actVar, awx awxVar, aud audVar, apx apxVar, arf arfVar, anc ancVar, cgr cgrVar, cme cmeVar) {
        super(amkVar);
        this.f11040c = context;
        this.f11042e = awxVar;
        this.f11041d = new WeakReference<>(actVar);
        this.f11043f = audVar;
        this.f11044g = apxVar;
        this.f11045h = arfVar;
        this.f11046i = ancVar;
        this.f11048k = cmeVar;
        this.f11047j = new BinderC3490si(cgrVar.f12990l);
    }

    /* renamed from: a */
    public final boolean m12066a() {
        return this.f11049l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.content.Context] */
    /* renamed from: a */
    public final boolean m12065a(boolean z, Activity activity) {
        boolean z2;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16372ae)).booleanValue()) {
            C2341q.m14744c();
            if (C3567ve.m6952g(this.f11040c)) {
                C3556uu.m6745e("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f11044g.mo11961a();
                if (((Boolean) dyx.m8158e().m7876a(edi.f16373af)).booleanValue()) {
                    this.f11048k.m11056a(this.f9997a.f13035b.f13025b.f13006b);
                }
                z2 = false;
                return z2;
            }
        }
        if (this.f11049l) {
            C3556uu.m6745e("The rewarded ad have been showed.");
            this.f11044g.mo11960a(1, (String) null);
            z2 = false;
        } else {
            this.f11049l = true;
            this.f11043f.mo12359a();
            Activity activity2 = activity;
            if (activity == null) {
                activity2 = this.f11040c;
            }
            try {
                this.f11042e.mo11680a(z, activity2);
                z2 = true;
            } catch (zzbxy e) {
                this.f11044g.mo11959a(e);
                z2 = false;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public final AbstractC3474rt m12064b() {
        return this.f11047j;
    }

    /* renamed from: c */
    public final boolean m12063c() {
        return this.f11046i.m12902e();
    }

    /* renamed from: d */
    public final boolean m12062d() {
        act actVar = this.f11041d.get();
        return actVar != null && !actVar.mo13488L();
    }

    /* renamed from: e */
    public final Bundle m12061e() {
        return this.f11045h.m12796a();
    }

    public final void finalize() {
        try {
            act actVar = this.f11041d.get();
            if (((Boolean) dyx.m8158e().m7876a(edi.f16552dz)).booleanValue()) {
                if (!this.f11049l && actVar != null) {
                    crs crsVar = C3650yg.f17646e;
                    actVar.getClass();
                    crsVar.execute(bdq.m12067a(actVar));
                }
            } else if (actVar != null) {
                actVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}

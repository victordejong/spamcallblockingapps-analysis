package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzakk;
import java.util.Map;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3492e1;
import p131c.p161d.p170b.p224d.p252g.p253a.C3640i1;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3566g1;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3603h1;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3678j1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakk.class */
public final class zzakk implements zzajz, zzaki {

    /* renamed from: a */
    public final zzbgj f24157a;

    public zzakk(Context context, zzbbx zzbbxVar, zzeg zzegVar, zzb zzbVar) throws zzbgv {
        zzp.m17968d();
        zzbgj a = zzbgr.m15609a(context, zzbhy.m15506f(), "", false, false, zzegVar, null, zzbbxVar, null, null, null, zzts.m11426a(), null, false, null, null);
        this.f24157a = a;
        a.getView().setWillNotDraw(true);
    }

    /* renamed from: a */
    public static void m16699a(Runnable runnable) {
        zzwm.m11170a();
        if (zzbbg.m15899b()) {
            runnable.run();
        } else {
            zzayu.f24665h.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: a */
    public final void mo16701a(zzakh zzakhVar) {
        zzbhv z = this.f24157a.mo15543z();
        zzakhVar.getClass();
        z.mo15491a(C3492e1.m27060a(zzakhVar));
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(final String str) {
        m16699a(new Runnable(this, str) { // from class: c.d.b.d.g.a.d1

            /* renamed from: a */
            public final zzakk f12600a;

            /* renamed from: b */
            public final String f12601b;

            {
                this.f12600a = this;
                this.f12601b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12600a.m16695f(this.f12601b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    /* renamed from: a */
    public final void mo16673a(String str, final zzahq<? super zzalp> zzahqVar) {
        this.f24157a.mo15581a(str, new Predicate(zzahqVar) { // from class: c.d.b.d.g.a.f1

            /* renamed from: a */
            public final zzahq f12868a;

            {
                this.f12868a = zzahqVar;
            }

            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzahq zzahqVar2;
                zzahq zzahqVar3 = this.f12868a;
                zzahq zzahqVar4 = (zzahq) obj;
                if (!(zzahqVar4 instanceof C3640i1)) {
                    return false;
                }
                zzahqVar2 = ((C3640i1) zzahqVar4).f13481a;
                return zzahqVar2.equals(zzahqVar3);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    /* renamed from: a */
    public final void mo16672a(String str, String str2) {
        zzakc.m16716a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map map) {
        zzakc.m16715a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
        zzakc.m16713b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: b */
    public final void mo16698b(String str) {
        m16699a(new RunnableC3678j1(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    /* renamed from: b */
    public final void mo16671b(String str, zzahq<? super zzalp> zzahqVar) {
        this.f24157a.mo15570b(str, new C3640i1(this, zzahqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        zzakc.m16714a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: c */
    public final void mo16697c(String str) {
        m16699a(new RunnableC3603h1(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void destroy() {
        this.f24157a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: e */
    public final void mo16696e(String str) {
        m16699a(new RunnableC3566g1(this, str));
    }

    /* renamed from: f */
    public final /* synthetic */ void m16695f(String str) {
        this.f24157a.mo15582a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: g */
    public final boolean mo16694g() {
        return this.f24157a.mo15560g();
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: n */
    public final zzals mo16693n() {
        return new zzalr(this);
    }
}

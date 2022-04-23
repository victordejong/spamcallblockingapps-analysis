package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzcdx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3731kh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdx.class */
public final class zzcdx extends zzbqo {

    /* renamed from: A */
    public final zzczn f25802A;

    /* renamed from: h */
    public final Executor f25803h;

    /* renamed from: i */
    public final zzcei f25804i;

    /* renamed from: j */
    public final zzceq f25805j;

    /* renamed from: k */
    public final zzcfe f25806k;

    /* renamed from: l */
    public final zzcem f25807l;

    /* renamed from: m */
    public final zzcep f25808m;

    /* renamed from: n */
    public final zzeos<zzcid> f25809n;

    /* renamed from: o */
    public final zzeos<zzcib> f25810o;

    /* renamed from: p */
    public final zzeos<zzcik> f25811p;

    /* renamed from: q */
    public final zzeos<zzchx> f25812q;

    /* renamed from: r */
    public final zzeos<zzcif> f25813r;

    /* renamed from: s */
    public zzcgc f25814s;

    /* renamed from: t */
    public boolean f25815t;

    /* renamed from: u */
    public boolean f25816u = false;

    /* renamed from: v */
    public final zzawp f25817v;

    /* renamed from: w */
    public final zzeg f25818w;

    /* renamed from: x */
    public final zzbbx f25819x;

    /* renamed from: y */
    public final Context f25820y;

    /* renamed from: z */
    public final zzced f25821z;

    public zzcdx(zzbqn zzbqnVar, Executor executor, zzcei zzceiVar, zzceq zzceqVar, zzcfe zzcfeVar, zzcem zzcemVar, zzcep zzcepVar, zzeos<zzcid> zzeosVar, zzeos<zzcib> zzeosVar2, zzeos<zzcik> zzeosVar3, zzeos<zzchx> zzeosVar4, zzeos<zzcif> zzeosVar5, zzawp zzawpVar, zzeg zzegVar, zzbbx zzbbxVar, Context context, zzced zzcedVar, zzczn zzcznVar) {
        super(zzbqnVar);
        this.f25803h = executor;
        this.f25804i = zzceiVar;
        this.f25805j = zzceqVar;
        this.f25806k = zzcfeVar;
        this.f25807l = zzcemVar;
        this.f25808m = zzcepVar;
        this.f25809n = zzeosVar;
        this.f25810o = zzeosVar2;
        this.f25811p = zzeosVar3;
        this.f25812q = zzeosVar4;
        this.f25813r = zzeosVar5;
        this.f25817v = zzawpVar;
        this.f25818w = zzegVar;
        this.f25819x = zzbbxVar;
        this.f25820y = context;
        this.f25821z = zzcedVar;
        this.f25802A = zzcznVar;
    }

    /* renamed from: d */
    public static boolean m14743d(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    /* renamed from: a */
    public final JSONObject m14759a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject b;
        synchronized (this) {
            b = this.f25805j.mo14300b(view, map, map2);
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzbqo
    /* renamed from: a */
    public final void mo14764a() {
        synchronized (this) {
            this.f25803h.execute(new Runnable(this) { // from class: c.d.b.d.g.a.oh

                /* renamed from: a */
                public final zzcdx f14340a;

                {
                    this.f14340a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f14340a.m14735n();
                }
            });
            super.mo14764a();
        }
    }

    /* renamed from: a */
    public final void m14763a(Bundle bundle) {
        synchronized (this) {
            this.f25805j.mo14316a(bundle);
        }
    }

    /* renamed from: a */
    public final void m14762a(View view) {
        synchronized (this) {
            this.f25805j.mo14315a(view);
        }
    }

    /* renamed from: a */
    public final void m14761a(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.f25805j.mo14314a(view, motionEvent, view2);
        }
    }

    /* renamed from: a */
    public final void m14760a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            this.f25806k.m14349b(this.f25814s);
            this.f25805j.mo14313a(view, view2, map, map2, z);
            if (this.f25816u) {
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23660C1)).booleanValue() && this.f25804i.m14677t() != null) {
                    this.f25804i.m14677t().mo15577a("onSdkAdUserInteractionClick", new HashMap());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14758a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (!this.f25815t) {
                if (z) {
                    this.f25806k.m14348c(this.f25814s);
                    this.f25805j.mo14311a(view, map, map2);
                    this.f25815t = true;
                    return;
                }
                if (!z) {
                    if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23690I1)).booleanValue() && map != null) {
                        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                            View view2 = entry.getValue().get();
                            if (view2 != null && m14743d(view2)) {
                                this.f25806k.m14348c(this.f25814s);
                                this.f25805j.mo14311a(view, map, map2);
                                this.f25815t = true;
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14757a(zzafz zzafzVar) {
        synchronized (this) {
            this.f25805j.mo14308a(zzafzVar);
        }
    }

    /* renamed from: a */
    public final void m14756a(zzcgc zzcgcVar) {
        zzdw a;
        synchronized (this) {
            this.f25814s = zzcgcVar;
            this.f25806k.m14352a(zzcgcVar);
            this.f25805j.mo14310a(zzcgcVar.mo14326M0(), zzcgcVar.mo14329C1(), zzcgcVar.mo14327I1(), zzcgcVar, zzcgcVar);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23810f1)).booleanValue() && (a = this.f25818w.m12604a()) != null) {
                a.mo13018a(zzcgcVar.mo14326M0());
            }
            if (zzcgcVar.mo14322b1() != null) {
                zzcgcVar.mo14322b1().m11541a(this.f25817v);
            }
        }
    }

    /* renamed from: a */
    public final void m14755a(zzxz zzxzVar) {
        synchronized (this) {
            this.f25805j.mo14307a(zzxzVar);
        }
    }

    /* renamed from: a */
    public final void m14754a(zzyd zzydVar) {
        synchronized (this) {
            this.f25805j.mo14306a(zzydVar);
        }
    }

    /* renamed from: a */
    public final void m14753a(zzyi zzyiVar) {
        synchronized (this) {
            this.f25802A.m13733a(zzyiVar);
        }
    }

    /* renamed from: a */
    public final void m14752a(String str) {
        synchronized (this) {
            this.f25805j.mo14305a(str);
        }
    }

    /* renamed from: a */
    public final void m14751a(String str, boolean z) {
        if (this.f25807l.mo14667a()) {
            zzbgj u = this.f25804i.m14676u();
            zzbgj t = this.f25804i.m14677t();
            if (u != null || t != null) {
                boolean z2 = false;
                boolean z3 = u != null;
                if (t != null) {
                    z2 = true;
                }
                String str2 = null;
                if (!z3) {
                    if (z2) {
                        str2 = "javascript";
                        u = t;
                    } else {
                        u = null;
                        str2 = null;
                    }
                }
                if (u.getWebView() != null && zzp.m17954r().m16413b(this.f25820y)) {
                    zzbbx zzbbxVar = this.f25819x;
                    int i = zzbbxVar.f24760b;
                    int i2 = zzbbxVar.f24761c;
                    StringBuilder sb = new StringBuilder(23);
                    sb.append(i);
                    sb.append(".");
                    sb.append(i2);
                    IObjectWrapper a = zzp.m17954r().m16414a(sb.toString(), u.getWebView(), "", "javascript", str2, str);
                    if (a != null) {
                        this.f25804i.m14718a(a);
                        u.mo15590a(a);
                        if (z2) {
                            View view = t.getView();
                            if (view != null) {
                                zzp.m17954r().m16416a(a, view);
                            }
                            this.f25816u = true;
                        }
                        if (z) {
                            zzp.m17954r().m16417a(a);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14750a(boolean z) {
        this.f25805j.mo14309a(this.f25814s.mo14326M0(), this.f25814s.mo14321c1(), this.f25814s.mo14329C1(), z);
    }

    @Override // com.google.android.gms.internal.ads.zzbqo
    /* renamed from: b */
    public final void mo14749b() {
        this.f25803h.execute(new Runnable(this) { // from class: c.d.b.d.g.a.mh

            /* renamed from: a */
            public final zzcdx f14174a;

            {
                this.f14174a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14174a.m14734o();
            }
        });
        if (this.f25804i.m14682o() != 7) {
            Executor executor = this.f25803h;
            zzceq zzceqVar = this.f25805j;
            zzceqVar.getClass();
            executor.execute(RunnableC3731kh.m26709a(zzceqVar));
        }
        super.mo14749b();
    }

    /* renamed from: b */
    public final void m14748b(Bundle bundle) {
        synchronized (this) {
            this.f25805j.mo14302b(bundle);
        }
    }

    /* renamed from: b */
    public final void m14747b(View view) {
        IObjectWrapper v = this.f25804i.m14675v();
        boolean z = this.f25804i.m14676u() != null;
        if (this.f25807l.mo14667a() && v != null && z && view != null) {
            zzp.m17954r().m16416a(v, view);
        }
    }

    /* renamed from: b */
    public final void m14746b(zzcgc zzcgcVar) {
        synchronized (this) {
            this.f25805j.mo14312a(zzcgcVar.mo14326M0(), zzcgcVar.mo14321c1());
            if (zzcgcVar.mo14325P0() != null) {
                zzcgcVar.mo14325P0().setClickable(false);
                zzcgcVar.mo14325P0().removeAllViews();
            }
            if (zzcgcVar.mo14322b1() != null) {
                zzcgcVar.mo14322b1().m11537b(this.f25817v);
            }
            this.f25814s = null;
        }
    }

    /* renamed from: c */
    public final void m14744c(View view) {
        IObjectWrapper v = this.f25804i.m14675v();
        if (this.f25807l.mo14667a() && v != null && view != null) {
            zzp.m17954r().m16411b(v, view);
        }
    }

    /* renamed from: c */
    public final boolean m14745c(Bundle bundle) {
        synchronized (this) {
            if (this.f25815t) {
                return true;
            }
            boolean c = this.f25805j.mo14297c(bundle);
            this.f25815t = c;
            return c;
        }
    }

    /* renamed from: g */
    public final void m14742g() {
        synchronized (this) {
            this.f25805j.mo14299b0();
        }
    }

    /* renamed from: h */
    public final boolean m14741h() {
        boolean t0;
        synchronized (this) {
            t0 = this.f25805j.mo14296t0();
        }
        return t0;
    }

    /* renamed from: i */
    public final void m14740i() {
        synchronized (this) {
            if (this.f25814s == null) {
                zzbbq.m15858a("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            final boolean z = this.f25814s instanceof zzcez;
            this.f25803h.execute(new Runnable(this, z) { // from class: c.d.b.d.g.a.nh

                /* renamed from: a */
                public final zzcdx f14249a;

                /* renamed from: b */
                public final boolean f14250b;

                {
                    this.f14249a = this;
                    this.f14250b = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f14249a.m14750a(this.f14250b);
                }
            });
        }
    }

    /* renamed from: j */
    public final void m14739j() {
        synchronized (this) {
            if (!this.f25815t) {
                this.f25805j.mo14298c();
            }
        }
    }

    /* renamed from: k */
    public final boolean m14738k() {
        return this.f25807l.mo14664d();
    }

    /* renamed from: l */
    public final boolean m14737l() {
        return this.f25807l.mo14667a();
    }

    /* renamed from: m */
    public final zzced m14736m() {
        return this.f25821z;
    }

    /* renamed from: n */
    public final /* synthetic */ void m14735n() {
        this.f25805j.destroy();
        this.f25804i.m14723a();
    }

    /* renamed from: o */
    public final /* synthetic */ void m14734o() {
        try {
            int o = this.f25804i.m14682o();
            if (o != 1) {
                if (o != 2) {
                    if (o != 3) {
                        if (o != 6) {
                            if (o != 7) {
                                zzbbq.m15856b("Wrong native template id!");
                            } else if (this.f25808m.m14656e() != null) {
                                this.f25808m.m14656e().mo16723a(this.f25812q.get());
                            }
                        } else if (this.f25808m.m14658c() != null) {
                            m14751a("Google", true);
                            this.f25808m.m14658c().mo16767a(this.f25811p.get());
                        }
                    } else if (this.f25808m.m14661a(this.f25804i.m14692e()) != null) {
                        if (this.f25804i.m14677t() != null) {
                            m14751a("Google", true);
                        }
                        this.f25808m.m14661a(this.f25804i.m14692e()).mo16802a(this.f25813r.get());
                    }
                } else if (this.f25808m.m14660b() != null) {
                    m14751a("Google", true);
                    this.f25808m.m14660b().mo16772a(this.f25810o.get());
                }
            } else if (this.f25808m.m14662a() != null) {
                m14751a("Google", true);
                this.f25808m.m14662a().mo16773a(this.f25809n.get());
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("RemoteException when notifyAdLoad is called", e);
        }
    }

    /* renamed from: p */
    public final void m14733p() {
        synchronized (this) {
            this.f25805j.mo14318Z();
        }
    }
}

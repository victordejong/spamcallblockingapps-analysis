package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aym.class */
public final class aym extends amh {

    /* renamed from: c */
    private final Executor f10602c;

    /* renamed from: d */
    private final ayx f10603d;

    /* renamed from: e */
    private final azh f10604e;

    /* renamed from: f */
    private final azv f10605f;

    /* renamed from: g */
    private final azd f10606g;

    /* renamed from: h */
    private final azg f10607h;

    /* renamed from: i */
    private final dhn<bcq> f10608i;

    /* renamed from: j */
    private final dhn<bco> f10609j;

    /* renamed from: k */
    private final dhn<bct> f10610k;

    /* renamed from: l */
    private final dhn<bck> f10611l;

    /* renamed from: m */
    private final dhn<bcs> f10612m;

    /* renamed from: n */
    private bam f10613n;

    /* renamed from: o */
    private boolean f10614o;

    /* renamed from: p */
    private final C3505sx f10615p;

    /* renamed from: q */
    private final ctl f10616q;

    /* renamed from: r */
    private final C3647yd f10617r;

    /* renamed from: s */
    private final Context f10618s;

    /* renamed from: t */
    private final ays f10619t;

    /* renamed from: u */
    private final bsz f10620u;

    public aym(amk amkVar, Executor executor, ayx ayxVar, azh azhVar, azv azvVar, azd azdVar, azg azgVar, dhn<bcq> dhnVar, dhn<bco> dhnVar2, dhn<bct> dhnVar3, dhn<bck> dhnVar4, dhn<bcs> dhnVar5, C3505sx c3505sx, ctl ctlVar, C3647yd c3647yd, Context context, ays aysVar, bsz bszVar) {
        super(amkVar);
        this.f10602c = executor;
        this.f10603d = ayxVar;
        this.f10604e = azhVar;
        this.f10605f = azvVar;
        this.f10606g = azdVar;
        this.f10607h = azgVar;
        this.f10608i = dhnVar;
        this.f10609j = dhnVar2;
        this.f10610k = dhnVar3;
        this.f10611l = dhnVar4;
        this.f10612m = dhnVar5;
        this.f10615p = c3505sx;
        this.f10616q = ctlVar;
        this.f10617r = c3647yd;
        this.f10618s = context;
        this.f10619t = aysVar;
        this.f10620u = bszVar;
    }

    /* renamed from: b */
    public static boolean m12308b(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    /* renamed from: a */
    public final void m12324a() {
        synchronized (this) {
            if (!this.f10614o) {
                this.f10604e.mo12146c();
            }
        }
    }

    /* renamed from: a */
    public final void m12323a(Bundle bundle) {
        synchronized (this) {
            this.f10604e.mo12162a(bundle);
        }
    }

    /* renamed from: a */
    public final void m12322a(View view) {
        synchronized (this) {
            this.f10604e.mo12161a(view);
        }
    }

    /* renamed from: a */
    public final void m12321a(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.f10604e.mo12160a(view, motionEvent, view2);
        }
    }

    /* renamed from: a */
    public final void m12320a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            this.f10605f.m12186b(this.f10613n);
            this.f10604e.mo12159a(view, view2, map, map2, z);
        }
    }

    /* renamed from: a */
    public final void m12319a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (!this.f10614o) {
                if (z) {
                    this.f10604e.mo12157a(view, map, map2);
                    this.f10614o = true;
                } else if (!z) {
                    if (((Boolean) dyx.m8158e().m7876a(edi.f16396bB)).booleanValue() && map != null) {
                        Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                View view2 = it.next().getValue().get();
                                if (view2 != null && m12308b(view2)) {
                                    this.f10604e.mo12157a(view, map, map2);
                                    this.f10614o = true;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m12318a(bam bamVar) {
        cjd m10670a;
        synchronized (this) {
            this.f10613n = bamVar;
            this.f10605f.m12189a(bamVar);
            this.f10604e.mo12156a(bamVar.mo12170c(), bamVar.mo12167f(), bamVar.mo12166g(), bamVar, bamVar);
            if (((Boolean) dyx.m8158e().m7876a(edi.f16367aZ)).booleanValue() && (m10670a = this.f10616q.m10670a()) != null) {
                m10670a.mo11046a(bamVar.mo12170c());
            }
            if (bamVar.mo12169d() != null) {
                bamVar.mo12169d().m8615a(this.f10615p);
            }
        }
    }

    /* renamed from: a */
    public final void m12317a(AbstractC3014dt abstractC3014dt) {
        synchronized (this) {
            this.f10604e.mo12154a(abstractC3014dt);
        }
    }

    /* renamed from: a */
    public final void m12316a(eah eahVar) {
        synchronized (this) {
            this.f10604e.mo12153a(eahVar);
        }
    }

    /* renamed from: a */
    public final void m12315a(eal ealVar) {
        synchronized (this) {
            this.f10604e.mo12152a(ealVar);
        }
    }

    /* renamed from: a */
    public final void m12314a(eau eauVar) {
        synchronized (this) {
            this.f10620u.m11658a(eauVar);
        }
    }

    /* renamed from: a */
    public final void m12313a(String str) {
        synchronized (this) {
            this.f10604e.mo12151a(str);
        }
    }

    /* renamed from: a */
    public final void m12312a(String str, boolean z) {
        String str2;
        View view;
        if (!this.f10606g.mo12220d()) {
            return;
        }
        act m12234w = this.f10603d.m12234w();
        act m12235v = this.f10603d.m12235v();
        if (m12234w == null && m12235v == null) {
            return;
        }
        boolean z2 = m12234w != null;
        boolean z3 = m12235v != null;
        if (z2) {
            str2 = null;
        } else if (z3) {
            str2 = "javascript";
            m12234w = m12235v;
        } else {
            str2 = null;
            m12234w = null;
        }
        if (m12234w.getWebView() == null || !C2341q.m14729r().m7394a(this.f10618s)) {
            return;
        }
        AbstractC2731a m7390a = C2341q.m14729r().m7390a(new StringBuilder(23).append(this.f10617r.f17637b).append(".").append(this.f10617r.f17638c).toString(), m12234w.getWebView(), "", "javascript", str2, str);
        if (m7390a == null) {
            return;
        }
        this.f10603d.m12278a(m7390a);
        m12234w.mo13473a(m7390a);
        if (z3 && (view = m12235v.getView()) != null) {
            C2341q.m14729r().m7392a(m7390a, view);
        }
        if (!z) {
            return;
        }
        C2341q.m14729r().m7393a(m7390a);
    }

    /* renamed from: a */
    public final /* synthetic */ void m12311a(boolean z) {
        this.f10604e.mo12155a(this.f10613n.mo12170c(), this.f10613n.mo12168e(), this.f10613n.mo12167f(), z);
    }

    /* renamed from: b */
    public final void m12310b() {
        synchronized (this) {
            this.f10604e.mo12144d();
        }
    }

    /* renamed from: b */
    public final void m12307b(bam bamVar) {
        synchronized (this) {
            this.f10604e.mo12158a(bamVar.mo12170c(), bamVar.mo12168e());
            if (bamVar.mo12171b() != null) {
                bamVar.mo12171b().setClickable(false);
                bamVar.mo12171b().removeAllViews();
            }
            if (bamVar.mo12169d() != null) {
                bamVar.mo12169d().m8611b(this.f10615p);
            }
            this.f10613n = null;
        }
    }

    /* renamed from: b */
    public final boolean m12309b(Bundle bundle) {
        boolean mo12145c;
        synchronized (this) {
            if (this.f10614o) {
                mo12145c = true;
            } else {
                mo12145c = this.f10604e.mo12145c(bundle);
                this.f10614o = mo12145c;
            }
        }
        return mo12145c;
    }

    /* renamed from: c */
    public final void m12306c() {
        synchronized (this) {
            this.f10604e.mo12163a();
        }
    }

    /* renamed from: c */
    public final void m12305c(Bundle bundle) {
        synchronized (this) {
            this.f10604e.mo12148b(bundle);
        }
    }

    /* renamed from: c */
    public final void m12304c(View view) {
        AbstractC2731a m12233x = this.f10603d.m12233x();
        boolean z = this.f10603d.m12234w() != null;
        if (!this.f10606g.mo12220d() || m12233x == null || !z || view == null) {
            return;
        }
        C2341q.m14729r().m7392a(m12233x, view);
    }

    /* renamed from: d */
    public final void m12303d() {
        synchronized (this) {
            if (this.f10613n == null) {
                C3556uu.m6751b("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            } else {
                this.f10602c.execute(new Runnable(this, this.f10613n instanceof azq) { // from class: com.google.android.gms.internal.ads.ayq

                    /* renamed from: a */
                    private final aym f10624a;

                    /* renamed from: b */
                    private final boolean f10625b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10624a = this;
                        this.f10625b = z;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f10624a.m12311a(this.f10625b);
                    }
                });
            }
        }
    }

    /* renamed from: d */
    public final void m12302d(View view) {
        AbstractC2731a m12233x = this.f10603d.m12233x();
        if (!this.f10606g.mo12220d() || m12233x == null || view == null) {
            return;
        }
        C2341q.m14729r().m7387b(m12233x, view);
    }

    /* renamed from: e */
    public final boolean m12301e() {
        boolean mo12149b;
        synchronized (this) {
            mo12149b = this.f10604e.mo12149b();
        }
        return mo12149b;
    }

    /* renamed from: f */
    public final boolean m12300f() {
        return this.f10606g.mo12221c();
    }

    @Override // com.google.android.gms.internal.ads.amh
    /* renamed from: g_ */
    public final void mo12299g_() {
        this.f10602c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ayp

            /* renamed from: a */
            private final aym f10623a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10623a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10623a.m12294o();
            }
        });
        if (this.f10603d.m12283a() != 7) {
            Executor executor = this.f10602c;
            azh azhVar = this.f10604e;
            azhVar.getClass();
            executor.execute(ayo.m12292a(azhVar));
        }
        super.mo12299g_();
    }

    /* renamed from: h */
    public final boolean m12298h() {
        return this.f10606g.mo12220d();
    }

    @Override // com.google.android.gms.internal.ads.amh
    /* renamed from: k */
    public final void mo12297k() {
        synchronized (this) {
            this.f10602c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ayr

                /* renamed from: a */
                private final aym f10626a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10626a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10626a.m12295n();
                }
            });
            super.mo12297k();
        }
    }

    /* renamed from: m */
    public final ays m12296m() {
        return this.f10619t;
    }

    /* renamed from: n */
    public final /* synthetic */ void m12295n() {
        this.f10604e.mo12141g();
        this.f10603d.m12284C();
    }

    /* renamed from: o */
    public final /* synthetic */ void m12294o() {
        try {
            switch (this.f10603d.m12283a()) {
                case 1:
                    if (this.f10607h.m12218a() == null) {
                        return;
                    }
                    m12312a("Google", true);
                    this.f10607h.m12218a().mo7883a(this.f10608i.mo9430a());
                    return;
                case 2:
                    if (this.f10607h.m12216b() == null) {
                        return;
                    }
                    m12312a("Google", true);
                    this.f10607h.m12216b().mo8104a(this.f10609j.mo9430a());
                    return;
                case 3:
                    if (this.f10607h.m12217a(this.f10603d.m12236u()) == null) {
                        return;
                    }
                    if (this.f10603d.m12235v() != null) {
                        m12312a("Google", true);
                    }
                    this.f10607h.m12217a(this.f10603d.m12236u()).mo7862a(this.f10612m.mo9430a());
                    return;
                case 4:
                case 5:
                default:
                    C3556uu.m6749c("Wrong native template id!");
                    return;
                case 6:
                    if (this.f10607h.m12214c() == null) {
                        return;
                    }
                    m12312a("Google", true);
                    this.f10607h.m12214c().mo7861a(this.f10610k.mo9430a());
                    return;
                case 7:
                    if (this.f10607h.m12212e() == null) {
                        return;
                    }
                    this.f10607h.m12212e().mo7805a(this.f10611l.mo9430a());
                    return;
            }
        } catch (RemoteException e) {
            C3556uu.m6748c("RemoteException when notifyAdLoad is called", e);
        }
    }
}

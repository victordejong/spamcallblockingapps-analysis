package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.b.a;
import com.amazonaws.services.s3.util.Mimetypes;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcf.class */
public final class bcf extends anp {
    private final bzx A;
    private final eej C;

    /* renamed from: a  reason: collision with root package name */
    final bcr f24159a;

    /* renamed from: b  reason: collision with root package name */
    final bcz f24160b;

    /* renamed from: c  reason: collision with root package name */
    final bcv f24161c;

    /* renamed from: d  reason: collision with root package name */
    final bcy f24162d;
    final dsb<bgq> e;
    final dsb<bgo> f;
    final dsb<bgx> g;
    final dsb<bgk> n;
    final dsb<bgs> o;
    ben p;
    final bcm q;
    private final Executor s;
    private final bdo t;
    private boolean u;
    private final wl w;
    private final die x;
    private final zzbar y;
    private final Context z;
    private boolean v = false;
    final Map<String, Boolean> r = new HashMap();
    private final List<eec> B = new ArrayList();

    public bcf(ans ansVar, Executor executor, bcr bcrVar, bcz bczVar, bdo bdoVar, bcv bcvVar, bcy bcyVar, dsb<bgq> dsbVar, dsb<bgo> dsbVar2, dsb<bgx> dsbVar3, dsb<bgk> dsbVar4, dsb<bgs> dsbVar5, wl wlVar, die dieVar, zzbar zzbarVar, Context context, bcm bcmVar, bzx bzxVar, eej eejVar) {
        super(ansVar);
        this.s = executor;
        this.f24159a = bcrVar;
        this.f24160b = bczVar;
        this.t = bdoVar;
        this.f24161c = bcvVar;
        this.f24162d = bcyVar;
        this.e = dsbVar;
        this.f = dsbVar2;
        this.g = dsbVar3;
        this.n = dsbVar4;
        this.o = dsbVar5;
        this.w = wlVar;
        this.x = dieVar;
        this.y = zzbarVar;
        this.z = context;
        this.q = bcmVar;
        this.A = bzxVar;
        this.C = eejVar;
    }

    public static boolean b(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void d(ben benVar) {
        JSONObject jSONObject;
        Iterator<String> keys;
        View view;
        cxx cxxVar;
        this.p = benVar;
        this.t.a(benVar);
        this.f24160b.a(benVar.c(), benVar.f(), benVar.g(), benVar, benVar);
        if (((Boolean) ekb.e().a(aq.bA)).booleanValue() && (cxxVar = this.x.f26844b) != null) {
            cxxVar.zzb(benVar.c());
        }
        if (((Boolean) ekb.e().a(aq.bg)).booleanValue() && this.i.af && (jSONObject = this.i.ae) != null && (keys = jSONObject.keys()) != null) {
            while (keys.hasNext()) {
                String next = keys.next();
                WeakReference<View> weakReference = this.p.e().get(next);
                this.r.put(next, Boolean.FALSE);
                if (!(weakReference == null || (view = weakReference.get()) == null)) {
                    eec eecVar = new eec(this.z, view);
                    this.B.add(eecVar);
                    eecVar.a(new bck(this, next));
                }
            }
        }
        if (benVar.d() != null) {
            benVar.d().a(this.w);
        }
    }

    public final JSONObject a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject a2;
        synchronized (this) {
            a2 = this.f24160b.a(view, map, map2);
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.anp
    public final void a() {
        synchronized (this) {
            this.s.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bcg

                /* renamed from: a  reason: collision with root package name */
                private final bcf f24163a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24163a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bcf bcfVar = this.f24163a;
                    bcfVar.f24160b.g();
                    bcfVar.f24159a.C();
                }
            });
            super.a();
        }
    }

    public final void a(Bundle bundle) {
        synchronized (this) {
            this.f24160b.a(bundle);
        }
    }

    public final void a(MotionEvent motionEvent, View view) {
        synchronized (this) {
            this.f24160b.a(motionEvent, view);
        }
    }

    public final void a(View view) {
        synchronized (this) {
            this.f24160b.b(view);
        }
    }

    public final void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            bdo bdoVar = this.t;
            ben benVar = this.p;
            if (!(benVar == null || bdoVar.e == null || benVar.b() == null || !bdoVar.f24224c.b())) {
                try {
                    FrameLayout b2 = benVar.b();
                    final bdw bdwVar = bdoVar.e;
                    adt a2 = bdwVar.f24244a.a(zzvt.zzqk(), null, null);
                    a2.s().setVisibility(8);
                    a2.a("/sendMessageToSdk", new hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdv

                        /* renamed from: a  reason: collision with root package name */
                        private final bdw f24243a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24243a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map3) {
                            this.f24243a.f24245b.a("sendMessageToNativeJs", map3);
                        }
                    });
                    a2.a("/adMuted", new hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdy

                        /* renamed from: a  reason: collision with root package name */
                        private final bdw f24249a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24249a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map3) {
                            this.f24249a.f24247d.e();
                        }
                    });
                    bdwVar.f24245b.a(new WeakReference(a2), "/loadHtml", new hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdx

                        /* renamed from: a  reason: collision with root package name */
                        private final bdw f24248a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24248a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, final Map map3) {
                            final bdw bdwVar2 = this.f24248a;
                            adt adtVar = (adt) obj;
                            adtVar.B().a(new afd(bdwVar2, map3) { // from class: com.google.android.gms.internal.ads.bed

                                /* renamed from: a  reason: collision with root package name */
                                private final bdw f24256a;

                                /* renamed from: b  reason: collision with root package name */
                                private final Map f24257b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f24256a = bdwVar2;
                                    this.f24257b = map3;
                                }

                                @Override // com.google.android.gms.internal.ads.afd
                                public final void zzam(boolean z2) {
                                    bdw bdwVar3 = this.f24256a;
                                    Map map4 = this.f24257b;
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("messageType", "htmlLoaded");
                                    hashMap.put("id", (String) map4.get("id"));
                                    bdwVar3.f24245b.a("sendMessageToNativeJs", hashMap);
                                }
                            });
                            String str = (String) map3.get("overlayHtml");
                            String str2 = (String) map3.get("baseUrl");
                            if (TextUtils.isEmpty(str2)) {
                                adtVar.loadData(str, Mimetypes.MIMETYPE_HTML, "UTF-8");
                            } else {
                                adtVar.loadDataWithBaseURL(str2, str, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
                            }
                        }
                    });
                    bdwVar.f24245b.a(new WeakReference(a2), "/showOverlay", new hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bea

                        /* renamed from: a  reason: collision with root package name */
                        private final bdw f24251a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24251a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map3) {
                            bdw bdwVar2 = this.f24251a;
                            zzd.zzey("Showing native ads overlay.");
                            ((adt) obj).s().setVisibility(0);
                            bdwVar2.f24246c.f23487c = true;
                        }
                    });
                    bdwVar.f24245b.a(new WeakReference(a2), "/hideOverlay", new hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdz

                        /* renamed from: a  reason: collision with root package name */
                        private final bdw f24250a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24250a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.hi
                        public final void a(Object obj, Map map3) {
                            bdw bdwVar2 = this.f24250a;
                            zzd.zzey("Hiding native ads overlay.");
                            ((adt) obj).s().setVisibility(8);
                            bdwVar2.f24246c.f23487c = false;
                        }
                    });
                    b2.addView(a2.s());
                } catch (zzbfu e) {
                    zzd.zza("web view can not be obtained", e);
                }
            }
            this.f24160b.a(view, view2, map, map2, z);
            if (this.v) {
                if (((Boolean) ekb.e().a(aq.bV)).booleanValue() && this.f24159a.v() != null) {
                    this.f24159a.v().a("onSdkAdUserInteractionClick", new a());
                }
            }
        }
    }

    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        boolean z2;
        synchronized (this) {
            if (!this.u) {
                if (((Boolean) ekb.e().a(aq.bg)).booleanValue() && this.i.af) {
                    Iterator<String> it2 = this.r.keySet().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z2 = true;
                            break;
                        }
                        if (!this.r.get(it2.next()).booleanValue()) {
                            z2 = false;
                            break;
                        }
                    }
                    if (!z2) {
                        return;
                    }
                }
                if (z) {
                    this.t.b(this.p);
                    this.f24160b.b(view, map, map2);
                    this.u = true;
                    return;
                }
                if (!z) {
                    if (((Boolean) ekb.e().a(aq.cb)).booleanValue() && map != null) {
                        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                            View view2 = entry.getValue().get();
                            if (view2 != null && b(view2)) {
                                this.t.b(this.p);
                                this.f24160b.b(view, map, map2);
                                this.u = true;
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(final ben benVar) {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bf)).booleanValue()) {
                zzj.zzegq.post(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bcj

                    /* renamed from: a  reason: collision with root package name */
                    private final bcf f24167a;

                    /* renamed from: b  reason: collision with root package name */
                    private final ben f24168b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24167a = this;
                        this.f24168b = benVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24167a.d(this.f24168b);
                    }
                });
            } else {
                d(benVar);
            }
        }
    }

    public final void a(elu eluVar) {
        synchronized (this) {
            this.f24160b.a(eluVar);
        }
    }

    public final void a(ely elyVar) {
        synchronized (this) {
            this.f24160b.a(elyVar);
        }
    }

    public final void a(emd emdVar) {
        synchronized (this) {
            this.A.f25467a.set(emdVar);
        }
    }

    public final void a(fs fsVar) {
        synchronized (this) {
            this.f24160b.a(fsVar);
        }
    }

    public final void a(String str) {
        synchronized (this) {
            this.f24160b.a(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bcf.a(java.lang.String, boolean):void");
    }

    public final void b() {
        synchronized (this) {
            if (!this.u) {
                this.f24160b.c();
            }
        }
    }

    public final void b(final ben benVar) {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bf)).booleanValue()) {
                zzj.zzegq.post(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bci

                    /* renamed from: a  reason: collision with root package name */
                    private final bcf f24165a;

                    /* renamed from: b  reason: collision with root package name */
                    private final ben f24166b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24165a = this;
                        this.f24166b = benVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24165a.c(this.f24166b);
                    }
                });
            } else {
                c(benVar);
            }
        }
    }

    public final boolean b(Bundle bundle) {
        synchronized (this) {
            if (this.u) {
                return true;
            }
            boolean c2 = this.f24160b.c(bundle);
            this.u = c2;
            return c2;
        }
    }

    public final void c() {
        synchronized (this) {
            this.f24160b.d();
        }
    }

    public final void c(Bundle bundle) {
        synchronized (this) {
            this.f24160b.b(bundle);
        }
    }

    public final void c(View view) {
        b x = this.f24159a.x();
        boolean z = this.f24159a.w() != null;
        if (this.f24161c.d() && x != null && z && view != null) {
            zzr.zzlk().a(x, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(ben benVar) {
        bcz bczVar = this.f24160b;
        View c2 = benVar.c();
        benVar.e();
        bczVar.a(c2);
        if (benVar.b() != null) {
            benVar.b().setClickable(false);
            benVar.b().removeAllViews();
        }
        if (benVar.d() != null) {
            benVar.d().b(this.w);
        }
        this.p = null;
    }

    public final void d() {
        synchronized (this) {
            this.f24160b.a();
        }
    }

    public final void e() {
        synchronized (this) {
            ben benVar = this.p;
            if (benVar == null) {
                zzd.zzdz("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            final boolean z = benVar instanceof bdj;
            this.s.execute(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.bcl

                /* renamed from: a  reason: collision with root package name */
                private final bcf f24171a;

                /* renamed from: b  reason: collision with root package name */
                private final boolean f24172b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24171a = this;
                    this.f24172b = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bcf bcfVar = this.f24171a;
                    bcfVar.f24160b.a(bcfVar.p.c(), bcfVar.p.e(), bcfVar.p.f(), this.f24172b);
                }
            });
        }
    }

    public final boolean f() {
        boolean b2;
        synchronized (this) {
            b2 = this.f24160b.b();
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.anp
    public final void h() {
        this.s.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bce

            /* renamed from: a  reason: collision with root package name */
            private final bcf f24158a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24158a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bcf bcfVar = this.f24158a;
                try {
                    int a2 = bcfVar.f24159a.a();
                    if (a2 != 1) {
                        if (a2 != 2) {
                            if (a2 != 3) {
                                if (a2 != 6) {
                                    if (a2 != 7) {
                                        zzd.zzex("Wrong native template id!");
                                    } else if (bcfVar.f24162d.e != null) {
                                        bcfVar.f24162d.e.a(bcfVar.n.a());
                                    }
                                } else if (bcfVar.f24162d.f24195c != null) {
                                    bcfVar.a("Google", true);
                                    bcfVar.f24162d.f24195c.a(bcfVar.g.a());
                                }
                            } else if (bcfVar.f24162d.a(bcfVar.f24159a.u()) != null) {
                                if (bcfVar.f24159a.v() != null) {
                                    bcfVar.a("Google", true);
                                }
                                bcfVar.f24162d.a(bcfVar.f24159a.u()).a(bcfVar.o.a());
                            }
                        } else if (bcfVar.f24162d.f24194b != null) {
                            bcfVar.a("Google", true);
                            bcfVar.f24162d.f24194b.a(bcfVar.f.a());
                        }
                    } else if (bcfVar.f24162d.f24193a != null) {
                        bcfVar.a("Google", true);
                        bcfVar.f24162d.f24193a.a(bcfVar.e.a());
                    }
                } catch (RemoteException e) {
                    zzd.zzc("RemoteException when notifyAdLoad is called", e);
                }
            }
        });
        if (this.f24159a.a() != 7) {
            Executor executor = this.s;
            bcz bczVar = this.f24160b;
            bczVar.getClass();
            executor.execute(bch.a(bczVar));
        }
        super.h();
    }
}

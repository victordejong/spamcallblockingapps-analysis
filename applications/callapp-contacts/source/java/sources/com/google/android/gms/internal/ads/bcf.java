package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.p023b.C0428a;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.AbstractC12126b;
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

    /* renamed from: A */
    private final bzx f43520A;

    /* renamed from: C */
    private final eej f43522C;

    /* renamed from: a */
    final bcr f43523a;

    /* renamed from: b */
    final bcz f43524b;

    /* renamed from: c */
    final bcv f43525c;

    /* renamed from: d */
    final bcy f43526d;

    /* renamed from: e */
    final dsb<bgq> f43527e;

    /* renamed from: f */
    final dsb<bgo> f43528f;

    /* renamed from: g */
    final dsb<bgx> f43529g;

    /* renamed from: n */
    final dsb<bgk> f43530n;

    /* renamed from: o */
    final dsb<bgs> f43531o;

    /* renamed from: p */
    ben f43532p;

    /* renamed from: q */
    final bcm f43533q;

    /* renamed from: s */
    private final Executor f43535s;

    /* renamed from: t */
    private final bdo f43536t;

    /* renamed from: u */
    private boolean f43537u;

    /* renamed from: w */
    private final C13016wl f43539w;

    /* renamed from: x */
    private final die f43540x;

    /* renamed from: y */
    private final zzbar f43541y;

    /* renamed from: z */
    private final Context f43542z;

    /* renamed from: v */
    private boolean f43538v = false;

    /* renamed from: r */
    final Map<String, Boolean> f43534r = new HashMap();

    /* renamed from: B */
    private final List<eec> f43521B = new ArrayList();

    public bcf(ans ansVar, Executor executor, bcr bcrVar, bcz bczVar, bdo bdoVar, bcv bcvVar, bcy bcyVar, dsb<bgq> dsbVar, dsb<bgo> dsbVar2, dsb<bgx> dsbVar3, dsb<bgk> dsbVar4, dsb<bgs> dsbVar5, C13016wl c13016wl, die dieVar, zzbar zzbarVar, Context context, bcm bcmVar, bzx bzxVar, eej eejVar) {
        super(ansVar);
        this.f43535s = executor;
        this.f43523a = bcrVar;
        this.f43524b = bczVar;
        this.f43536t = bdoVar;
        this.f43525c = bcvVar;
        this.f43526d = bcyVar;
        this.f43527e = dsbVar;
        this.f43528f = dsbVar2;
        this.f43529g = dsbVar3;
        this.f43530n = dsbVar4;
        this.f43531o = dsbVar5;
        this.f43539w = c13016wl;
        this.f43540x = dieVar;
        this.f43541y = zzbarVar;
        this.f43542z = context;
        this.f43533q = bcmVar;
        this.f43520A = bzxVar;
        this.f43522C = eejVar;
    }

    /* renamed from: b */
    public static boolean m18219b(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    /* renamed from: e */
    public final void m18212d(ben benVar) {
        JSONObject jSONObject;
        Iterator<String> keys;
        View view;
        cxx cxxVar;
        this.f43532p = benVar;
        this.f43536t.m18123a(benVar);
        this.f43524b.mo17912a(benVar.mo17926c(), benVar.mo17923f(), benVar.mo17922g(), benVar, benVar);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42691bA)).booleanValue() && (cxxVar = this.f43540x.f47085b) != null) {
            cxxVar.zzb(benVar.mo17926c());
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42723bg)).booleanValue() && this.f42487i.f46253af && (jSONObject = this.f42487i.f46252ae) != null && (keys = jSONObject.keys()) != null) {
            while (keys.hasNext()) {
                String next = keys.next();
                WeakReference<View> weakReference = this.f43532p.mo17924e().get(next);
                this.f43534r.put(next, Boolean.FALSE);
                if (weakReference != null && (view = weakReference.get()) != null) {
                    eec eecVar = new eec(this.f43542z, view);
                    this.f43521B.add(eecVar);
                    eecVar.m15128a(new bck(this, next));
                }
            }
        }
        if (benVar.mo17925d() != null) {
            benVar.mo17925d().m15128a(this.f43539w);
        }
    }

    /* renamed from: a */
    public final JSONObject m18230a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject mo17913a;
        synchronized (this) {
            mo17913a = this.f43524b.mo17913a(view, map, map2);
        }
        return mo17913a;
    }

    @Override // com.google.android.gms.internal.ads.anp
    /* renamed from: a */
    public final void mo18235a() {
        synchronized (this) {
            this.f43535s.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bcg

                /* renamed from: a */
                private final bcf f43543a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43543a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bcf bcfVar = this.f43543a;
                    bcfVar.f43524b.mo17894g();
                    bcfVar.f43523a.m18199C();
                }
            });
            super.mo18235a();
        }
    }

    /* renamed from: a */
    public final void m18234a(Bundle bundle) {
        synchronized (this) {
            this.f43524b.mo17917a(bundle);
        }
    }

    /* renamed from: a */
    public final void m18233a(MotionEvent motionEvent, View view) {
        synchronized (this) {
            this.f43524b.mo17916a(motionEvent, view);
        }
    }

    /* renamed from: a */
    public final void m18232a(View view) {
        synchronized (this) {
            this.f43524b.mo17902b(view);
        }
    }

    /* renamed from: a */
    public final void m18231a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            bdo bdoVar = this.f43536t;
            ben benVar = this.f43532p;
            if (benVar != null && bdoVar.f43659e != null && benVar.mo17927b() != null && bdoVar.f43657c.mo18141b()) {
                try {
                    FrameLayout mo17927b = benVar.mo17927b();
                    bdw bdwVar = bdoVar.f43659e;
                    adt m17828a = bdwVar.f43691a.m17828a(zzvt.zzqk(), null, null);
                    m17828a.mo13731s().setVisibility(8);
                    m17828a.mo13772a("/sendMessageToSdk", new AbstractC12607hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdv

                        /* renamed from: a */
                        private final bdw f43690a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43690a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map3) {
                            this.f43690a.f43692b.m17868a("sendMessageToNativeJs", map3);
                        }
                    });
                    m17828a.mo13772a("/adMuted", new AbstractC12607hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdy

                        /* renamed from: a */
                        private final bdw f43696a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43696a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map3) {
                            this.f43696a.f43694d.mo17896e();
                        }
                    });
                    bdwVar.f43692b.m17866a(new WeakReference(m17828a), "/loadHtml", new AbstractC12607hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdx

                        /* renamed from: a */
                        private final bdw f43695a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43695a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, final Map map3) {
                            final bdw bdwVar2 = this.f43695a;
                            adt adtVar = (adt) obj;
                            adtVar.mo13808B().mo18789a(new afd(bdwVar2, map3) { // from class: com.google.android.gms.internal.ads.bed

                                /* renamed from: a */
                                private final bdw f43703a;

                                /* renamed from: b */
                                private final Map f43704b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f43703a = bdwVar2;
                                    this.f43704b = map3;
                                }

                                @Override // com.google.android.gms.internal.ads.afd
                                public final void zzam(boolean z2) {
                                    bdw bdwVar3 = this.f43703a;
                                    Map map4 = this.f43704b;
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("messageType", "htmlLoaded");
                                    hashMap.put("id", (String) map4.get("id"));
                                    bdwVar3.f43692b.m17868a("sendMessageToNativeJs", hashMap);
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
                    bdwVar.f43692b.m17866a(new WeakReference(m17828a), "/showOverlay", new AbstractC12607hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bea

                        /* renamed from: a */
                        private final bdw f43698a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43698a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map3) {
                            bdw bdwVar2 = this.f43698a;
                            zzd.zzey("Showing native ads overlay.");
                            ((adt) obj).mo13731s().setVisibility(0);
                            bdwVar2.f43693c.f42300c = true;
                        }
                    });
                    bdwVar.f43692b.m17866a(new WeakReference(m17828a), "/hideOverlay", new AbstractC12607hi(bdwVar) { // from class: com.google.android.gms.internal.ads.bdz

                        /* renamed from: a */
                        private final bdw f43697a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f43697a = bdwVar;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                        /* renamed from: a */
                        public final void mo14250a(Object obj, Map map3) {
                            bdw bdwVar2 = this.f43697a;
                            zzd.zzey("Hiding native ads overlay.");
                            ((adt) obj).mo13731s().setVisibility(8);
                            bdwVar2.f43693c.f42300c = false;
                        }
                    });
                    mo17927b.addView(m17828a.mo13731s());
                } catch (zzbfu e) {
                    zzd.zza("web view can not be obtained", e);
                }
            }
            this.f43524b.mo17914a(view, view2, map, map2, z);
            if (this.f43538v) {
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42712bV)).booleanValue() && this.f43523a.m18150v() != null) {
                    this.f43523a.m18150v().mo13770a("onSdkAdUserInteractionClick", new C0428a());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m18229a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        boolean z2;
        synchronized (this) {
            if (this.f43537u) {
                return;
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42723bg)).booleanValue() && this.f42487i.f46253af) {
                Iterator<String> it2 = this.f43534r.keySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = true;
                        break;
                    }
                    if (!this.f43534r.get(it2.next()).booleanValue()) {
                        z2 = false;
                        break;
                    }
                }
                if (!z2) {
                    return;
                }
            }
            if (z) {
                this.f43536t.m18122b(this.f43532p);
                this.f43524b.mo17901b(view, map, map2);
                this.f43537u = true;
                return;
            }
            if (!z) {
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42771cb)).booleanValue() && map != null) {
                    for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                        View view2 = entry.getValue().get();
                        if (view2 != null && m18219b(view2)) {
                            this.f43536t.m18122b(this.f43532p);
                            this.f43524b.mo17901b(view, map, map2);
                            this.f43537u = true;
                            return;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m18228a(ben benVar) {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42722bf)).booleanValue()) {
                zzj.zzegq.post(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bcj

                    /* renamed from: a */
                    private final bcf f43547a;

                    /* renamed from: b */
                    private final ben f43548b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43547a = this;
                        this.f43548b = benVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f43547a.m18212d(this.f43548b);
                    }
                });
            } else {
                m18212d(benVar);
            }
        }
    }

    /* renamed from: a */
    public final void m18227a(elu eluVar) {
        synchronized (this) {
            this.f43524b.mo17910a(eluVar);
        }
    }

    /* renamed from: a */
    public final void m18226a(ely elyVar) {
        synchronized (this) {
            this.f43524b.mo17909a(elyVar);
        }
    }

    /* renamed from: a */
    public final void m18225a(emd emdVar) {
        synchronized (this) {
            this.f43520A.f45176a.set(emdVar);
        }
    }

    /* renamed from: a */
    public final void m18224a(AbstractC12563fs abstractC12563fs) {
        synchronized (this) {
            this.f43524b.mo17908a(abstractC12563fs);
        }
    }

    /* renamed from: a */
    public final void m18223a(String str) {
        synchronized (this) {
            this.f43524b.mo17907a(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18222a(java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bcf.m18222a(java.lang.String, boolean):void");
    }

    /* renamed from: b */
    public final void m18221b() {
        synchronized (this) {
            if (this.f43537u) {
                return;
            }
            this.f43524b.mo17900c();
        }
    }

    /* renamed from: b */
    public final void m18218b(ben benVar) {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42722bf)).booleanValue()) {
                zzj.zzegq.post(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bci

                    /* renamed from: a */
                    private final bcf f43545a;

                    /* renamed from: b */
                    private final ben f43546b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43545a = this;
                        this.f43546b = benVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f43545a.m18214c(this.f43546b);
                    }
                });
            } else {
                m18214c(benVar);
            }
        }
    }

    /* renamed from: b */
    public final boolean m18220b(Bundle bundle) {
        synchronized (this) {
            if (this.f43537u) {
                return true;
            }
            boolean mo17899c = this.f43524b.mo17899c(bundle);
            this.f43537u = mo17899c;
            return mo17899c;
        }
    }

    /* renamed from: c */
    public final void m18217c() {
        synchronized (this) {
            this.f43524b.mo17897d();
        }
    }

    /* renamed from: c */
    public final void m18216c(Bundle bundle) {
        synchronized (this) {
            this.f43524b.mo17903b(bundle);
        }
    }

    /* renamed from: c */
    public final void m18215c(View view) {
        AbstractC12126b m18148x = this.f43523a.m18148x();
        boolean z = this.f43523a.m18149w() != null;
        if (!this.f43525c.mo18139d() || m18148x == null || !z || view == null) {
            return;
        }
        zzr.zzlk().m14223a(m18148x, view);
    }

    /* renamed from: c */
    public final void m18214c(ben benVar) {
        bcz bczVar = this.f43524b;
        View mo17926c = benVar.mo17926c();
        benVar.mo17924e();
        bczVar.mo17915a(mo17926c);
        if (benVar.mo17927b() != null) {
            benVar.mo17927b().setClickable(false);
            benVar.mo17927b().removeAllViews();
        }
        if (benVar.mo17925d() != null) {
            benVar.mo17925d().m15125b(this.f43539w);
        }
        this.f43532p = null;
    }

    /* renamed from: d */
    public final void m18213d() {
        synchronized (this) {
            this.f43524b.mo17918a();
        }
    }

    /* renamed from: e */
    public final void m18211e() {
        synchronized (this) {
            ben benVar = this.f43532p;
            if (benVar == null) {
                zzd.zzdz("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            this.f43535s.execute(new Runnable(this, benVar instanceof bdj) { // from class: com.google.android.gms.internal.ads.bcl

                /* renamed from: a */
                private final bcf f43551a;

                /* renamed from: b */
                private final boolean f43552b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43551a = this;
                    this.f43552b = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bcf bcfVar = this.f43551a;
                    bcfVar.f43524b.mo17911a(bcfVar.f43532p.mo17926c(), bcfVar.f43532p.mo17924e(), bcfVar.f43532p.mo17923f(), this.f43552b);
                }
            });
        }
    }

    /* renamed from: f */
    public final boolean m18209f() {
        boolean mo17904b;
        synchronized (this) {
            mo17904b = this.f43524b.mo17904b();
        }
        return mo17904b;
    }

    @Override // com.google.android.gms.internal.ads.anp
    /* renamed from: h */
    public final void mo18208h() {
        this.f43535s.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bce

            /* renamed from: a */
            private final bcf f43519a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43519a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bcf bcfVar = this.f43519a;
                try {
                    int m18198a = bcfVar.f43523a.m18198a();
                    if (m18198a == 1) {
                        if (bcfVar.f43526d.f43608a == null) {
                            return;
                        }
                        bcfVar.m18222a("Google", true);
                        bcfVar.f43526d.f43608a.mo14638a(bcfVar.f43527e.mo14005a());
                    } else if (m18198a == 2) {
                        if (bcfVar.f43526d.f43609b == null) {
                            return;
                        }
                        bcfVar.m18222a("Google", true);
                        bcfVar.f43526d.f43609b.mo14641a(bcfVar.f43528f.mo14005a());
                    } else if (m18198a == 3) {
                        if (bcfVar.f43526d.m18136a(bcfVar.f43523a.m18151u()) == null) {
                            return;
                        }
                        if (bcfVar.f43523a.m18150v() != null) {
                            bcfVar.m18222a("Google", true);
                        }
                        bcfVar.f43526d.m18136a(bcfVar.f43523a.m18151u()).mo14239a(bcfVar.f43531o.mo14005a());
                    } else if (m18198a == 6) {
                        if (bcfVar.f43526d.f43610c == null) {
                            return;
                        }
                        bcfVar.m18222a("Google", true);
                        bcfVar.f43526d.f43610c.mo14237a(bcfVar.f43529g.mo14005a());
                    } else if (m18198a != 7) {
                        zzd.zzex("Wrong native template id!");
                    } else if (bcfVar.f43526d.f43612e == null) {
                    } else {
                        bcfVar.f43526d.f43612e.mo14579a(bcfVar.f43530n.mo14005a());
                    }
                } catch (RemoteException e) {
                    zzd.zzc("RemoteException when notifyAdLoad is called", e);
                }
            }
        });
        if (this.f43523a.m18198a() != 7) {
            Executor executor = this.f43535s;
            bcz bczVar = this.f43524b;
            bczVar.getClass();
            executor.execute(bch.m18207a(bczVar));
        }
        super.mo18208h();
    }
}

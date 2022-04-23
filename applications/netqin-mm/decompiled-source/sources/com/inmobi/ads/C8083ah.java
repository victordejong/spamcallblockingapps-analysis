package com.inmobi.ads;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8094ai;
import com.inmobi.ads.C8293n;
import com.inmobi.ads.NativeTracker;
import com.inmobi.ads.p505f.p506a.C8241a;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8396b;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.rendering.InMobiAdActivity;
import com.inmobi.rendering.RenderView;
import com.mopub.common.MoPubBrowser;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
/* renamed from: com.inmobi.ads.ah */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ah.class */
public class C8083ah implements Application.ActivityLifecycleCallbacks, AdContainer {

    /* renamed from: B */
    public static final String f31605B = C8083ah.class.getSimpleName();

    /* renamed from: E */
    public C8122au f31609E;

    /* renamed from: H */
    public C8083ah f31612H;

    /* renamed from: K */
    public C8083ah f31615K;

    /* renamed from: L */
    public RenderView.AbstractC8440a f31616L;

    /* renamed from: N */
    public ExecutorService f31618N;

    /* renamed from: a */
    public C8109ao f31620a;

    /* renamed from: b */
    public AdContainer.RenderingProperties f31621b;

    /* renamed from: c */
    public C8197c f31622c;

    /* renamed from: d */
    public final String f31623d;

    /* renamed from: e */
    public final long f31624e;

    /* renamed from: f */
    public final String f31625f;

    /* renamed from: g */
    public final boolean f31626g;

    /* renamed from: h */
    public final String f31627h;

    /* renamed from: i */
    public Set<C8185br> f31628i;

    /* renamed from: j */
    public AbstractC8213cb f31629j;

    /* renamed from: l */
    public boolean f31631l;

    /* renamed from: m */
    public boolean f31632m;

    /* renamed from: n */
    public C8083ah f31633n;

    /* renamed from: o */
    public AbstractC8093c f31634o;

    /* renamed from: q */
    public WeakReference<Activity> f31636q;

    /* renamed from: w */
    public RenderView f31642w;

    /* renamed from: x */
    public RenderView f31643x;

    /* renamed from: y */
    public int f31644y;

    /* renamed from: z */
    public List<RenderView> f31645z;

    /* renamed from: C */
    public Set<Integer> f31607C = new HashSet();

    /* renamed from: D */
    public List<C8103ak> f31608D = new ArrayList();

    /* renamed from: p */
    public WeakReference<Context> f31635p = new WeakReference<>(null);

    /* renamed from: F */
    public int f31610F = -1;

    /* renamed from: r */
    public boolean f31637r = false;

    /* renamed from: s */
    public int f31638s = 0;

    /* renamed from: t */
    public boolean f31639t = true;

    /* renamed from: u */
    public boolean f31640u = false;

    /* renamed from: I */
    public C8103ak f31613I = null;

    /* renamed from: J */
    public String f31614J = null;

    /* renamed from: v */
    public Intent f31641v = null;

    /* renamed from: M */
    public final AdContainer.AbstractC8007a f31617M = new AdContainer.AbstractC8007a() { // from class: com.inmobi.ads.ah.1
        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5558a() {
            String unused = C8083ah.f31605B;
            AbstractC8093c e = C8083ah.this.m6489e();
            if (e != null) {
                e.mo6024a();
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5557a(Object obj) {
            AbstractC8093c e;
            if (C8083ah.this.m6481l() != null && (e = C8083ah.this.m6489e()) != null) {
                e.mo6020b();
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: b */
        public final void mo5556b(Object obj) {
            AbstractC8093c e = C8083ah.this.m6489e();
            if (e != null) {
                e.mo6016f();
            }
        }
    };

    /* renamed from: O */
    public Runnable f31619O = new Runnable() { // from class: com.inmobi.ads.ah.2
        @Override // java.lang.Runnable
        public final void run() {
            C8083ah ahVar = C8083ah.this;
            if (!ahVar.f31631l && AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == ahVar.f31621b.f31277a && ahVar.f31620a.f31721c) {
                String unused = C8083ah.f31605B;
                C8083ah.m6514a(C8083ah.this);
            }
        }
    };

    /* renamed from: A */
    public C8094ai.AbstractC8098a f31606A = new C8094ai.AbstractC8098a() { // from class: com.inmobi.ads.ah.3
        @Override // com.inmobi.ads.C8094ai.AbstractC8098a
        /* renamed from: a */
        public final void mo6314a(View view, boolean z) {
            C8083ah.this.m6500a(z);
        }
    };

    /* renamed from: k */
    public boolean f31630k = false;

    /* renamed from: G */
    public C8297o f31611G = new C8297o();

    /* renamed from: com.inmobi.ads.ah$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ah$a.class */
    public final class C8091a extends Thread {

        /* renamed from: b */
        public WeakReference<C8083ah> f31654b;

        public C8091a(C8083ah ahVar) {
            this.f31654b = new WeakReference<>(ahVar);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            if (C8083ah.this.m6481l() == null) {
                String unused = C8083ah.f31605B;
                return;
            }
            C8083ah ahVar = this.f31654b.get();
            if (ahVar != null && !ahVar.f31631l) {
                try {
                    C8109ao h = ahVar.m6484h();
                    if (!(C8083ah.this.m6481l() == null || h.f31723e.length() == 0)) {
                        String unused2 = C8083ah.f31605B;
                        JSONObject a = h.m6437a();
                        if (a != null) {
                            C8109ao aoVar = new C8109ao(C8083ah.this.f31621b.f31277a, a, h, C8083ah.this.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE, C8083ah.this.f31622c, null);
                            if (aoVar.m6412c()) {
                                C8083ah a2 = C8092b.m6468a(C8083ah.this.m6481l(), new AdContainer.RenderingProperties(AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE), aoVar, C8083ah.this.f31623d, C8083ah.this.f31627h, null, C8083ah.this.f31622c, C8083ah.this.f31624e, C8083ah.this.f31626g, C8083ah.this.f31625f);
                                String unused3 = C8083ah.f31605B;
                                a2.m6516a((AdContainer) ahVar);
                                a2.f31642w = ahVar.f31642w;
                                ahVar.f31615K = a2;
                                return;
                            }
                            String unused4 = C8083ah.f31605B;
                            return;
                        }
                        return;
                    }
                    String unused5 = C8083ah.f31605B;
                } catch (Exception e) {
                    String unused6 = C8083ah.f31605B;
                    new StringBuilder("Encountered unexpected error in EndCardBuilder: ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        }
    }

    /* renamed from: com.inmobi.ads.ah$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ah$b.class */
    public static final class C8092b {
        /* renamed from: a */
        public static C8083ah m6468a(Context context, AdContainer.RenderingProperties renderingProperties, C8109ao aoVar, String str, String str2, Set<C8185br> set, C8197c cVar, long j, boolean z, String str3) {
            return new ArrayList(aoVar.f31726h.keySet()).contains("VIDEO") ? new C8148bd(context, renderingProperties, aoVar, str, str2, set, cVar, j, z, str3) : new C8083ah(context, renderingProperties, aoVar, str, str2, set, cVar, j, z, str3);
        }
    }

    /* renamed from: com.inmobi.ads.ah$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ah$c.class */
    public interface AbstractC8093c {
        /* renamed from: a */
        void mo6024a();

        /* renamed from: a */
        void mo6023a(String str, Map<String, Object> map);

        /* renamed from: a */
        void mo6022a(Map<String, String> map);

        /* renamed from: a */
        void mo6021a(boolean z);

        /* renamed from: b */
        void mo6020b();

        /* renamed from: c */
        void mo6019c();

        /* renamed from: d */
        void mo6018d();

        /* renamed from: e */
        void mo6017e();

        /* renamed from: f */
        void mo6016f();

        /* renamed from: g */
        void mo6015g();

        /* renamed from: h */
        void mo6014h();

        /* renamed from: i */
        void mo6013i();
    }

    public C8083ah(Context context, AdContainer.RenderingProperties renderingProperties, C8109ao aoVar, String str, String str2, Set<C8185br> set, C8197c cVar, long j, boolean z, String str3) {
        this.f31631l = false;
        this.f31621b = renderingProperties;
        this.f31620a = aoVar;
        this.f31623d = str;
        this.f31624e = j;
        this.f31626g = z;
        this.f31625f = str3;
        this.f31627h = str2;
        m6516a((AdContainer) this);
        this.f31631l = false;
        this.f31622c = cVar;
        if (set != null) {
            this.f31628i = new HashSet(set);
        }
        this.f31620a.f31722d.f31715z = System.currentTimeMillis();
        m6518a(context);
        this.f31644y = -1;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f31618N = newSingleThreadExecutor;
        newSingleThreadExecutor.submit(this.f31619O);
    }

    /* renamed from: A */
    private C8122au m6523A() {
        AbstractC8213cb cbVar = this.f31629j;
        C8118at atVar = cbVar == null ? null : (C8118at) cbVar.mo5932f();
        if (atVar != null) {
            this.f31609E = atVar.f31766a;
        }
        return this.f31609E;
    }

    /* renamed from: B */
    private void m6522B() {
        Context context = this.f31635p.get();
        if (context instanceof Activity) {
            ((Activity) context).getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    /* renamed from: C */
    private Context m6521C() {
        Activity l = m6481l();
        Context context = l;
        if (l == null) {
            context = this.f31635p.get();
        }
        return context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m6504a(String str) {
        char c;
        String trim = str.toLowerCase(Locale.US).trim();
        switch (trim.hashCode()) {
            case -934641255:
                if (trim.equals("reload")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -934524953:
                if (trim.equals("replay")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 0:
                if (trim.equals("")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3127582:
                if (trim.equals("exit")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3443508:
                if (trim.equals("play")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3532159:
                if (trim.equals("skip")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 110066619:
                if (trim.equals("fullscreen")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 2:
                return 2;
            case 3:
            case 4:
                return 3;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    private C8103ak m6510a(C8103ak akVar, C8109ao aoVar, String str) {
        if (C8396b.m5699a(this.f31635p.get(), str)) {
            return akVar;
        }
        String[] split = str.split("\\|");
        C8103ak b = aoVar.m6415b(split[0]);
        if (b == null) {
            return m6496b(aoVar.f31724f, akVar);
        }
        if (b.equals(akVar)) {
            return null;
        }
        if (1 == split.length || 2 == split.length) {
            b.f31688m = 1;
            return b;
        }
        if (split.length > 2) {
            b.f31688m = C8109ao.m6426a(split[2]);
        }
        return b;
    }

    /* renamed from: a */
    public static C8103ak m6507a(C8109ao aoVar, C8103ak akVar) {
        while (aoVar != null) {
            String str = akVar.f31685j;
            if (str == null || str.length() == 0) {
                akVar.f31687l = 0;
                return akVar;
            }
            String[] split = str.split("\\|");
            if (1 == split.length) {
                akVar.f31687l = m6504a(split[0]);
                return akVar;
            }
            C8103ak b = aoVar.m6415b(split[0]);
            if (b == null) {
                aoVar = aoVar.f31724f;
            } else if (b.equals(akVar)) {
                return null;
            } else {
                b.f31687l = m6504a(split[1]);
                StringBuilder sb = new StringBuilder("Referenced asset (");
                sb.append(b.f31679d);
                sb.append(")");
                return b;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m6519a(int i, C8105am amVar) {
        if (!this.f31631l) {
            this.f31607C.add(Integer.valueOf(i));
            amVar.f31715z = System.currentTimeMillis();
            if (this.f31630k) {
                m6497b(amVar, m6512a(amVar));
            } else {
                this.f31608D.add(amVar);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6514a(C8083ah ahVar) {
        JSONObject a;
        C8109ao aoVar = ahVar.f31620a;
        if (aoVar.f31723e.length() != 0 && (a = aoVar.m6437a()) != null) {
            C8109ao aoVar2 = new C8109ao(ahVar.f31621b.f31277a, a, aoVar, ahVar.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE, ahVar.f31622c, null);
            aoVar2.f31721c = aoVar.f31721c;
            aoVar2.f31728j = aoVar.f31728j;
            Context context = ahVar.f31635p.get();
            if (aoVar2.m6412c() && context != null) {
                C8083ah a2 = C8092b.m6468a(context, new AdContainer.RenderingProperties(AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE), aoVar2, ahVar.f31623d, ahVar.f31627h, ahVar.f31628i, ahVar.f31622c, ahVar.f31624e, ahVar.f31626g, ahVar.f31625f);
                ahVar.f31612H = a2;
                a2.m6516a((AdContainer) ahVar);
                AbstractC8093c cVar = ahVar.f31634o;
                if (cVar != null) {
                    ahVar.f31612H.f31634o = cVar;
                }
                if (aoVar.f31721c) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.ah.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            C8083ah.this.f31612H.getViewableAd().mo5941a(null, new RelativeLayout(C8083ah.this.m6483j()), false);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    private void m6511a(C8103ak akVar, int i, String str) {
        AbstractC8093c cVar;
        if (1 != i) {
            m6502a(str, akVar.f31694s, akVar);
        } else if (C8396b.m5696a(str)) {
            Context context = this.f31635p.get();
            if (context != null) {
                if (m6481l() == null && (cVar = this.f31634o) != null) {
                    cVar.mo6019c();
                }
                InMobiAdActivity.m5612a((RenderView) null);
                InMobiAdActivity.m5613a(m6474u());
                Intent intent = new Intent(context, InMobiAdActivity.class);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 100);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL", str);
                intent.putExtra("placementId", this.f31624e);
                intent.putExtra("creativeId", this.f31625f);
                intent.putExtra("impressionId", this.f31623d);
                intent.putExtra("allowAutoRedirection", this.f31626g);
                C8326a.m5896a(context, intent);
            }
        } else {
            m6502a(str, (String) null, akVar);
        }
    }

    /* renamed from: a */
    private void m6509a(C8103ak akVar, Map<String, String> map) {
        m6501a("ReportClick", new HashMap());
        if (2 == akVar.f31688m) {
            C8188bu f = ((C8152be) akVar).m6311b().mo6200f();
            if (f == null || (f.f31936e == null && akVar.f31693r != null)) {
                akVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK, map);
            } else if (f.f31935d.size() > 0) {
                for (NativeTracker nativeTracker : f.m6238a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK)) {
                    C8103ak.m6452a(nativeTracker, map);
                }
            }
        } else {
            akVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLICK, map);
        }
    }

    /* renamed from: a */
    private void m6506a(C8152be beVar, C8083ah ahVar) {
        C8188bu f = beVar.m6311b().mo6200f();
        if (f != null && f.f31937g) {
            for (NativeTracker nativeTracker : f.m6238a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_END_CARD_CLOSE)) {
                C8103ak.m6452a(nativeTracker, m6512a(beVar));
            }
            f.f31937g = false;
            ahVar.m6501a("EndCardClosed", ahVar.m6469z());
        }
    }

    /* renamed from: a */
    private void m6503a(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("url", str2);
        m6501a(str, hashMap);
    }

    /* renamed from: a */
    private void m6502a(String str, String str2, C8103ak akVar) {
        String a;
        C8083ah f;
        if (this.f31635p.get() != null && (a = C8396b.m5698a(this.f31635p.get(), str, str2)) != null && (f = m6486f(this)) != null) {
            AbstractC8093c cVar = f.f31634o;
            if (cVar != null && !this.f31640u) {
                cVar.mo6015g();
            }
            if (a.equals(str2)) {
                akVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_FALLBACK_URL, m6512a(akVar));
            }
        }
    }

    /* renamed from: b */
    public static NativeTimerView m6499b(View view) {
        if (view != null) {
            return (NativeTimerView) view.findViewWithTag("timerView");
        }
        return null;
    }

    /* renamed from: b */
    private C8103ak m6496b(C8109ao aoVar, C8103ak akVar) {
        C8103ak akVar2 = null;
        if (aoVar == null) {
            return null;
        }
        String str = akVar.f31693r;
        String str2 = akVar.f31694s;
        if (str != null) {
            akVar2 = m6510a(akVar, aoVar, str);
        }
        C8103ak akVar3 = akVar2;
        if (akVar2 == null) {
            akVar3 = akVar2;
            if (str2 != null) {
                akVar3 = m6510a(akVar, aoVar, str2);
            }
        }
        if (akVar3 != null) {
            StringBuilder sb = new StringBuilder("Referenced asset (");
            sb.append(akVar3.f31679d);
            sb.append(")");
        }
        return akVar3;
    }

    /* renamed from: b */
    private void m6497b(C8103ak akVar, Map<String, String> map) {
        if (akVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("id", akVar.f31682g);
                jSONObject.put("asset", akVar.f31681f);
            } catch (JSONException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            HashMap hashMap = new HashMap();
            hashMap.put("type", "native");
            hashMap.put("impId", this.f31623d);
            hashMap.put("pageJson", jSONObject);
            C8366b.m5794a();
            C8366b.m5789a("ads", "PageRendered", hashMap);
            akVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PAGE_VIEW, map);
        }
    }

    /* renamed from: c */
    public static void m6495c(View view) {
        ValueAnimator valueAnimator;
        NativeTimerView b = m6499b(view);
        if (b != null && (valueAnimator = b.f31391c) != null && valueAnimator.isRunning()) {
            b.f31390b = b.f31391c.getCurrentPlayTime();
            b.f31391c.cancel();
        }
    }

    /* renamed from: d */
    public static void m6491d(View view) {
        ValueAnimator valueAnimator;
        NativeTimerView b = m6499b(view);
        if (b != null && (valueAnimator = b.f31391c) != null && !valueAnimator.isRunning()) {
            b.f31391c.setCurrentPlayTime(b.f31390b);
            b.f31391c.start();
        }
    }

    /* renamed from: f */
    public static C8083ah m6486f(C8083ah ahVar) {
        C8083ah ahVar2;
        while (ahVar != null) {
            if (ahVar.m6481l() != null || ahVar == (ahVar2 = ahVar.f31633n)) {
                return ahVar;
            }
            ahVar = ahVar2;
        }
        return null;
    }

    /* renamed from: w */
    private void m6472w() {
        C8105am a = this.f31620a.m6436a(0);
        if (!this.f31607C.contains(0) && a != null) {
            m6519a(0, a);
        }
    }

    /* renamed from: x */
    private void m6471x() {
        C8122au A = m6523A();
        if (A != null) {
            C8293n nVar = A.f31778c;
            if (!nVar.f32282b) {
                nVar.f32282b = true;
                nVar.m5985a(nVar.f32281a);
            }
        }
    }

    /* renamed from: y */
    private void m6470y() {
        C8122au A = m6523A();
        if (A != null) {
            C8293n nVar = A.f31778c;
            if (nVar.f32282b) {
                nVar.f32282b = false;
                for (C8293n.C8296a aVar : nVar.f32281a) {
                    ValueAnimator valueAnimator = (ValueAnimator) aVar.f32289a;
                    aVar.f32290b = valueAnimator.getCurrentPlayTime();
                    if (valueAnimator.getAnimatedFraction() == 1.0d) {
                        aVar.f32291c = true;
                    }
                    valueAnimator.cancel();
                }
            }
        }
    }

    /* renamed from: z */
    private Map<String, Object> m6469z() {
        List<C8103ak> c = this.f31615K.f31620a.m6410c("WEBVIEW");
        C8171bg bgVar = c.size() > 0 ? (C8171bg) c.get(0) : null;
        String str = bgVar == null ? "Static" : "Rich";
        HashMap hashMap = new HashMap();
        hashMap.put("type", str);
        hashMap.put("dataType", bgVar == null ? MoPubBrowser.DESTINATION_URL_KEY : bgVar.f31888z);
        return hashMap;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.String> m6512a(com.inmobi.ads.C8103ak r6) {
        /*
            r5 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r2 = 3
            r1.<init>(r2)
            r7 = r0
            r0 = r5
            boolean r0 = r0.f31631l
            if (r0 != 0) goto L_0x0076
            r0 = r5
            com.inmobi.ads.ao r0 = r0.f31620a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x001c
            goto L_0x0076
        L_0x001c:
            r0 = r7
            java.lang.String r1 = "$LTS"
            r2 = r8
            com.inmobi.ads.am r2 = r2.f31722d
            long r2 = r2.f31715z
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            com.inmobi.ads.am r0 = com.inmobi.ads.C8109ao.m6433a(r0)
            r6 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0057
            r0 = r6
            long r0 = r0.f31715z
            r13 = r0
            r0 = r9
            r11 = r0
            r0 = 0
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0057
            r0 = r13
            r11 = r0
        L_0x0057:
            r0 = r7
            java.lang.String r1 = "$STS"
            r2 = r11
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            java.lang.String r1 = "$TS"
            long r2 = java.lang.System.currentTimeMillis()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0076:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8083ah.m6512a(com.inmobi.ads.ak):java.util.Map");
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: a */
    public final void mo5607a() {
    }

    /* renamed from: a */
    public final void m6520a(int i, C8103ak akVar) {
        if (!this.f31607C.contains(Integer.valueOf(i)) && !this.f31631l) {
            m6472w();
            m6519a(i, (C8105am) akVar);
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: a */
    public final void mo5606a(int i, Map<String, String> map) {
        if (!this.f31631l) {
            if (i == 1) {
                this.f31620a.f31722d.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_LOAD, map);
            } else if (i == 2) {
                this.f31620a.f31722d.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CLIENT_FILL, map);
            }
        }
    }

    /* renamed from: a */
    public final void m6518a(Context context) {
        m6522B();
        this.f31635p = new WeakReference<>(context);
        C8326a.m5897a(context, this);
    }

    /* renamed from: a */
    public void mo6338a(View view) {
        AbstractC8093c cVar;
        if (!(this.f31630k || this.f31631l)) {
            this.f31630k = true;
            C8105am amVar = this.f31620a.f31722d;
            amVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER, m6512a(amVar));
            HashMap hashMap = new HashMap();
            hashMap.put("type", AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == getRenderingProperties().f31277a ? "int" : "native");
            hashMap.put("clientRequestId", this.f31627h);
            hashMap.put("impId", this.f31623d);
            C8366b.m5794a();
            C8366b.m5789a("ads", "AdRendered", hashMap);
            C8366b.m5794a();
            C8366b.m5789a("ads", "ViewableBeaconFired", hashMap);
            m6472w();
            for (C8103ak akVar : this.f31608D) {
                m6497b(akVar, m6512a(akVar));
            }
            this.f31608D.clear();
            C8083ah f = m6486f(this);
            if (!(f == null || (cVar = f.f31634o) == null)) {
                cVar.mo6018d();
            }
        }
    }

    /* renamed from: a */
    public final void m6517a(View view, C8103ak akVar) {
        AbstractC8093c cVar;
        if (!this.f31631l) {
            m6472w();
            C8103ak b = m6496b(this.f31620a, akVar);
            if (b != null) {
                Map<String, String> a = m6512a(b);
                m6509a(b, a);
                if (!b.equals(akVar)) {
                    m6509a(akVar, a);
                }
            } else {
                m6509a(akVar, m6512a(akVar));
            }
            C8083ah f = m6486f(this);
            if (f != null) {
                if (!akVar.f31693r.trim().isEmpty() && (cVar = f.f31634o) != null) {
                    cVar.mo6017e();
                }
                C8103ak a2 = m6507a(this.f31620a, akVar);
                if (a2 != null) {
                    if (view != null && "VIDEO".equals(a2.f31677b) && 5 == a2.f31687l) {
                        view.setVisibility(4);
                        akVar.f31699x = 4;
                    }
                    mo6330b(a2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m6516a(AdContainer adContainer) {
        if (adContainer instanceof C8083ah) {
            this.f31633n = (C8083ah) adContainer;
        }
    }

    /* renamed from: a */
    public final void m6515a(AbstractC8093c cVar) {
        this.f31634o = cVar;
    }

    /* renamed from: a */
    public final void m6508a(C8103ak akVar, boolean z) {
        C8109ao aoVar = this.f31620a;
        if (aoVar.f31728j && !this.f31631l) {
            C8103ak b = m6496b(aoVar, akVar);
            if (b != null) {
                Map<String, String> a = m6512a(b);
                b.f31684i = akVar.f31684i;
                if ("VIDEO".equals(b.f31677b) || b.f31683h) {
                    AbstractC8213cb cbVar = this.f31629j;
                    if (cbVar != null) {
                        cbVar.mo5944a(4);
                    }
                    int i = b.f31684i;
                    if (i != 0) {
                        String str = b.f31693r;
                        if (!this.f31639t || 4 != i) {
                            String str2 = str;
                            if (2 == b.f31688m) {
                                C8188bu f = ((C8152be) b).m6311b().mo6200f();
                                str2 = str;
                                if (f != null) {
                                    String str3 = f.f31936e;
                                    str2 = str;
                                    if (str3 != null) {
                                        str2 = str;
                                        if (!str3.trim().isEmpty()) {
                                            str2 = f.f31936e;
                                        }
                                    }
                                }
                            }
                            String str4 = str2;
                            if (!C8396b.m5699a(m6521C(), str2)) {
                                StringBuilder sb = new StringBuilder("Invalid url:");
                                sb.append(str2);
                                sb.append(" will use fallback");
                                m6503a("DeeplinkFailed", str2);
                                String str5 = b.f31694s;
                                str4 = str5;
                                if (!C8396b.m5699a(m6521C(), str5)) {
                                    m6503a("DeeplinkFallbackFailed", str5);
                                    return;
                                }
                            }
                            String a2 = C8407d.m5646a(str4, a);
                            if (!this.f31640u || z) {
                                m6511a(b, i, a2);
                                return;
                            }
                            C8083ah f2 = m6486f(this);
                            if (f2 != null) {
                                AbstractC8093c cVar = f2.f31634o;
                                if (cVar != null) {
                                    if (1 != i || !C8396b.m5696a(a2)) {
                                        cVar.mo6015g();
                                    } else {
                                        cVar.mo6019c();
                                    }
                                }
                                this.f31613I = b;
                                this.f31614J = a2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("url", akVar.f31693r);
            m6501a("DeeplinkFailed", hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put("url", akVar.f31694s);
            m6501a("DeeplinkFallbackFailed", hashMap2);
        }
    }

    /* renamed from: a */
    public final void m6505a(RenderView renderView) {
        if (this.f31645z == null) {
            this.f31645z = new LinkedList();
        }
        if (!this.f31645z.contains(renderView)) {
            this.f31645z.add(renderView);
        }
    }

    /* renamed from: a */
    public final void m6501a(String str, Map<String, Object> map) {
        C8083ah f = m6486f(this);
        if (f != null) {
            AbstractC8093c cVar = f.f31634o;
            if (cVar != null) {
                cVar.mo6023a(str, map);
                return;
            }
            StringBuilder sb = new StringBuilder("InteractionCallback is null. Discarding telemetry event : [");
            sb.append(str);
            sb.append(" ]");
            return;
        }
        StringBuilder sb2 = new StringBuilder("Target container is null. Discarding telemetry event : [");
        sb2.append(str);
        sb2.append(" ]");
    }

    /* renamed from: a */
    public final void m6500a(boolean z) {
        if (z) {
            m6471x();
        } else {
            m6470y();
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: b */
    public final void mo5592b() {
        C8083ah f;
        try {
            if (!this.f31631l && (f = m6486f(this)) != null) {
                f.m6479o();
                InMobiAdActivity.m5611a((Object) f);
                if (f instanceof C8148bd) {
                    C8148bd bdVar = (C8148bd) f;
                    NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) bdVar.getVideoContainerView();
                    if (nativeVideoWrapper != null) {
                        NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                        C8152be beVar = (C8152be) videoView.getTag();
                        beVar.f31697v.put("seekPosition", Integer.valueOf(videoView.getCurrentPosition()));
                        beVar.f31697v.put("lastMediaVolume", Integer.valueOf(videoView.getVolume()));
                        if (beVar.f31700y != null) {
                            ((C8152be) beVar.f31700y).m6312a(beVar);
                        }
                        m6506a(beVar, bdVar);
                    }
                }
                Activity activity = f.f31636q == null ? null : f.f31636q.get();
                if (activity != null && (activity instanceof InMobiAdActivity)) {
                    ((InMobiAdActivity) activity).f32728a = true;
                    activity.finish();
                    if (this.f31610F != -1) {
                        activity.overridePendingTransition(0, this.f31610F);
                    }
                }
                this.f31633n.f31612H = null;
                this.f31633n.f31618N.submit(this.f31619O);
            }
        } catch (Exception e) {
            new StringBuilder("Encountered unexpected error in handling exit action on video: ").append(e.getMessage());
            Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in exiting video");
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    /* renamed from: b */
    public void mo6330b(C8103ak akVar) {
        NativeVideoWrapper nativeVideoWrapper;
        int i = akVar.f31687l;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            try {
                if (this.f31642w != null) {
                    this.f31642w.m5578d("window.imraid.broadcastEvent('close');");
                }
                mo5592b();
            } catch (Exception e) {
                new StringBuilder("Encountered unexpected error in handling exit action on video: ").append(e.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in exiting video");
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        } else if (i == 3) {
            try {
                if (this.f31642w != null) {
                    this.f31642w.m5578d("window.imraid.broadcastEvent('replay');");
                }
                if (m6487f() != null) {
                    View f = m6487f();
                    ViewGroup viewGroup = (ViewGroup) f.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(f);
                    }
                }
                C8083ah ahVar = this.f31633n;
                NativeTimerView b = m6499b(ahVar.m6487f());
                if (!(b == null || b.f31391c == null || !b.f31391c.isRunning())) {
                    b.f31391c.setCurrentPlayTime(b.f31389a * 1000);
                    b.m6671a(1.0f);
                }
                if (!"VIDEO".equals(akVar.f31677b)) {
                    new StringBuilder("Action 3 not valid for asset of type: ").append(akVar.f31677b);
                } else if ((ahVar instanceof C8148bd) && (nativeVideoWrapper = (NativeVideoWrapper) ahVar.getVideoContainerView()) != null) {
                    NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                    C8152be beVar = (C8152be) videoView.getTag();
                    if (beVar != null) {
                        if (beVar.m6313a()) {
                            videoView.m6641e();
                        } else {
                            videoView.m6643d();
                        }
                    } else if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f31621b.f31277a) {
                        videoView.m6641e();
                    } else {
                        videoView.m6643d();
                    }
                    m6506a(beVar, ahVar);
                    videoView.start();
                }
            } catch (Exception e2) {
                new StringBuilder("Encountered unexpected error in handling replay action on video: ").append(e2.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in replaying video");
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
        } else if (i == 4) {
            try {
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == this.f31621b.f31277a) {
                    m6480m();
                }
            } catch (Exception e3) {
                new StringBuilder("Encountered unexpected error in handling fullscreen action ").append(e3.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in launching fullscreen ad");
                C8328a.m5878a().m5875a(new C8365a(e3));
            }
        } else if (i != 5) {
            this.f31637r = true;
            RenderView renderView = this.f31642w;
            if (!(renderView == null || renderView == null)) {
                renderView.m5578d("window.imraid.broadcastEvent('skip');");
            }
            m6495c(m6487f());
            m6493c(akVar);
        }
    }

    /* renamed from: c */
    public final void m6493c(C8103ak akVar) {
        C8188bu f;
        C8083ah ahVar = this.f31615K;
        if (ahVar == null || m6487f() == null) {
            Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "Failed to show end card");
            mo5592b();
            return;
        }
        try {
            m6501a("EndCardRequested", m6469z());
            ViewGroup viewGroup = (ViewGroup) m6487f();
            View a = ahVar.getViewableAd().mo5941a(null, viewGroup, false);
            if (a != null) {
                viewGroup.addView(a);
                a.setClickable(true);
                ahVar.m6471x();
                m6501a("EndCardDisplayed", m6469z());
                if ((akVar instanceof C8152be) && (f = ((C8152be) akVar).m6311b().mo6200f()) != null) {
                    f.f31937g = true;
                    return;
                }
                return;
            }
            mo5592b();
        } catch (Exception e) {
            mo5592b();
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    @Override // com.inmobi.ads.AdContainer
    /* renamed from: c */
    public final boolean mo5585c() {
        return this.f31631l;
    }

    /* renamed from: d */
    public final Context m6492d() {
        return this.f31635p.get();
    }

    @Override // com.inmobi.ads.AdContainer
    public void destroy() {
        if (!this.f31631l) {
            this.f31631l = true;
            this.f31610F = -1;
            C8083ah ahVar = this.f31612H;
            if (ahVar != null) {
                ahVar.mo5592b();
            }
            this.f31631l = true;
            this.f31634o = null;
            C8122au A = m6523A();
            if (A != null) {
                C8293n nVar = A.f31778c;
                for (C8293n.C8296a aVar : nVar.f32281a) {
                    aVar.f32289a.cancel();
                }
                nVar.f32281a.clear();
                A.m6380a();
            }
            this.f31608D.clear();
            AbstractC8213cb cbVar = this.f31629j;
            if (cbVar != null) {
                cbVar.mo5934d();
                this.f31629j.mo5933e();
            }
            m6522B();
            this.f31635p.clear();
            WeakReference<Activity> weakReference = this.f31636q;
            if (weakReference != null) {
                weakReference.clear();
            }
            List<RenderView> list = this.f31645z;
            if (list != null) {
                list.clear();
            }
            this.f31620a = null;
            this.f31642w = null;
            C8083ah ahVar2 = this.f31615K;
            if (ahVar2 != null) {
                ahVar2.destroy();
                this.f31615K = null;
            }
        }
    }

    /* renamed from: e */
    public final AbstractC8093c m6489e() {
        return this.f31634o;
    }

    /* renamed from: f */
    public final View m6487f() {
        AbstractC8213cb cbVar = this.f31629j;
        if (cbVar == null) {
            return null;
        }
        return cbVar.mo5936b();
    }

    /* renamed from: g */
    public final void m6485g() {
        Map<String, String> a = m6512a(this.f31620a.f31722d);
        mo5606a(1, a);
        mo5606a(2, a);
    }

    @Override // com.inmobi.ads.AdContainer
    public C8297o getApkDownloader() {
        return this.f31611G;
    }

    @Override // com.inmobi.ads.AdContainer
    public /* bridge */ /* synthetic */ Object getDataModel() {
        return this.f31620a;
    }

    @Override // com.inmobi.ads.AdContainer
    public AdContainer.AbstractC8007a getFullScreenEventsListener() {
        return this.f31617M;
    }

    @Override // com.inmobi.ads.AdContainer
    public String getMarkupType() {
        return "inmobiJson";
    }

    @Override // com.inmobi.ads.AdContainer
    public AdContainer.RenderingProperties getRenderingProperties() {
        return this.f31621b;
    }

    @Override // com.inmobi.ads.AdContainer
    public View getVideoContainerView() {
        return null;
    }

    @Override // com.inmobi.ads.AdContainer
    public AbstractC8213cb getViewableAd() {
        Context j = m6483j();
        if (this.f31629j == null && j != null) {
            m6485g();
            this.f31629j = new C8066aa(j, this, new C8216cd(this, this.f31642w));
            Set<C8185br> set = this.f31628i;
            if (set != null) {
                if (j instanceof Activity) {
                    try {
                        Activity activity = (Activity) j;
                        for (C8185br brVar : set) {
                            int i = brVar.f31928a;
                            if (i != 1) {
                                if (i != 3) {
                                    if (i == 6 && ((List) brVar.f31929b.get("trackerUrls")) != null) {
                                        this.f31629j = new C8241a(this.f31629j);
                                    }
                                } else if (this.f31644y == 0) {
                                    AbstractC6427a aVar = (AbstractC6427a) brVar.f31929b.get("avidAdSession");
                                    boolean z = brVar.f31929b.containsKey("deferred") && ((Boolean) brVar.f31929b.get("deferred")).booleanValue();
                                    if (aVar != null) {
                                        this.f31629j = new C8310v(this, activity, this.f31629j, aVar, z);
                                    }
                                }
                            } else if (this.f31644y == 0) {
                                this.f31629j = new C8078ad(this, activity, this.f31629j, brVar.f31929b);
                            } else {
                                brVar.f31929b.put("zMoatIID", UUID.randomUUID().toString());
                                this.f31629j = new C8079ae(activity, this.f31629j, brVar.f31929b);
                            }
                        }
                    } catch (Exception e) {
                        new StringBuilder("Exception occurred while creating the Display viewable ad : ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                } else {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", "native");
                    hashMap.put("impId", this.f31623d);
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "TrackersForService", hashMap);
                }
            }
        }
        return this.f31629j;
    }

    /* renamed from: h */
    public final C8109ao m6484h() {
        return this.f31620a;
    }

    /* renamed from: i */
    public boolean mo6320i() {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == this.f31621b.f31277a && m6481l() != null;
    }

    /* renamed from: j */
    public final Context m6483j() {
        return (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f31621b.f31277a || mo6320i()) ? m6481l() : this.f31635p.get();
    }

    /* renamed from: k */
    public final boolean m6482k() {
        return this.f31630k;
    }

    /* renamed from: l */
    public final Activity m6481l() {
        WeakReference<Activity> weakReference = this.f31636q;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: m */
    public final void m6480m() {
        C8083ah f = m6486f(this);
        if (f != null) {
            AbstractC8093c cVar = f.f31634o;
            if (cVar != null) {
                cVar.mo6019c();
            }
            this.f31618N.submit(new Runnable() { // from class: com.inmobi.ads.ah.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (C8083ah.this.f31612H == null) {
                        C8083ah.m6514a(C8083ah.this);
                    }
                    int a = InMobiAdActivity.m5615a((AdContainer) C8083ah.this.f31612H);
                    Intent intent = new Intent(C8083ah.this.f31635p.get(), InMobiAdActivity.class);
                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", a);
                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 201);
                    C8083ah ahVar = C8083ah.this;
                    if (ahVar.f31640u) {
                        ahVar.f31641v = intent;
                    } else {
                        C8326a.m5896a(ahVar.f31635p.get(), intent);
                    }
                }
            });
        }
    }

    /* renamed from: n */
    public boolean mo6319n() {
        return false;
    }

    /* renamed from: o */
    public final void m6479o() {
        Map<String, String> map;
        if (mo6319n()) {
            this.f31637r = true;
            AbstractC8093c cVar = this.f31634o;
            if (cVar != null && (map = this.f31620a.f31725g) != null) {
                cVar.mo6022a(map);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        AbstractC8213cb cbVar = this.f31629j;
        if (cbVar != null) {
            cbVar.mo5943a(activity, 2);
        }
        m6522B();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Context C = m6521C();
        if (C != null && C.equals(activity)) {
            m6478p();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Context C = m6521C();
        if (C != null && C.equals(activity)) {
            mo6318q();
        }
    }

    /* renamed from: p */
    public final void m6478p() {
        this.f31632m = false;
        m6491d(m6487f());
        m6471x();
        AbstractC8213cb cbVar = this.f31629j;
        if (cbVar != null) {
            cbVar.mo5943a(m6521C(), 0);
        }
    }

    /* renamed from: q */
    public void mo6318q() {
        this.f31632m = true;
        m6495c(m6487f());
        m6470y();
        AbstractC8213cb cbVar = this.f31629j;
        if (cbVar != null) {
            cbVar.mo5943a(m6521C(), 1);
        }
    }

    /* renamed from: r */
    public final void m6477r() {
        String str;
        C8103ak akVar = this.f31613I;
        if (akVar != null && (str = this.f31614J) != null) {
            m6511a(akVar, akVar.f31684i, str);
        } else if (this.f31641v != null && this.f31635p.get() != null) {
            C8326a.m5896a(this.f31635p.get(), this.f31641v);
        }
    }

    /* renamed from: s */
    public final RenderView m6476s() {
        RenderView renderView = this.f31642w;
        RenderView renderView2 = renderView;
        if (renderView == null) {
            renderView2 = this.f31643x;
        }
        return renderView2;
    }

    @Override // com.inmobi.ads.AdContainer
    public void setFullScreenActivityContext(Activity activity) {
        this.f31636q = new WeakReference<>(activity);
    }

    @Override // com.inmobi.ads.AdContainer
    public void setRequestedScreenOrientation() {
        Activity l = m6481l();
        if (l != null && !this.f31631l) {
            int i = this.f31620a.f31719a;
            if (i == 1) {
                l.setRequestedOrientation(1);
            } else if (i != 2) {
                l.setRequestedOrientation(l.getRequestedOrientation());
            } else {
                l.setRequestedOrientation(0);
            }
        }
    }

    /* renamed from: t */
    public final void m6475t() {
        new C8091a(this).start();
    }

    /* renamed from: u */
    public final RenderView.AbstractC8440a m6474u() {
        if (this.f31616L == null) {
            this.f31616L = new RenderView.AbstractC8440a() { // from class: com.inmobi.ads.ah.7
                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: E */
                public final void mo5551E() {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null && AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == C8083ah.this.f31621b.f31277a) {
                        e.mo6019c();
                    }
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: a */
                public final void mo5550a(RenderView renderView) {
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: a */
                public final void mo5549a(HashMap<Object, Object> hashMap) {
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: b */
                public final void mo5548b(RenderView renderView) {
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: b */
                public final void mo5547b(String str, Map<String, Object> map) {
                    C8083ah.this.m6501a(str, map);
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: b */
                public final void mo5546b(HashMap<Object, Object> hashMap) {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null) {
                        e.mo6017e();
                    }
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: c */
                public final void mo5545c(RenderView renderView) {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null) {
                        e.mo6020b();
                    }
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: d */
                public final void mo5544d(RenderView renderView) {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null) {
                        e.mo6016f();
                    }
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: u */
                public final void mo5543u() {
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: w */
                public final void mo5542w() {
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: y */
                public final void mo5541y() {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null) {
                        e.mo6024a();
                    }
                }

                @Override // com.inmobi.rendering.RenderView.AbstractC8440a
                /* renamed from: z */
                public final void mo5540z() {
                    AbstractC8093c e = C8083ah.this.m6489e();
                    if (e != null) {
                        e.mo6015g();
                    }
                }
            };
        }
        return this.f31616L;
    }
}

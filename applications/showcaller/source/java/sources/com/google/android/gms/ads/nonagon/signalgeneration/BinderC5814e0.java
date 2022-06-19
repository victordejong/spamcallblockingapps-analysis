package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.C5674b1;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7016u;
import com.google.android.gms.internal.ads.C7043uq;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.a03;
import com.google.android.gms.internal.ads.bc0;
import com.google.android.gms.internal.ads.bp2;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.h21;
import com.google.android.gms.internal.ads.io2;
import com.google.android.gms.internal.ads.jo2;
import com.google.android.gms.internal.ads.k03;
import com.google.android.gms.internal.ads.n81;
import com.google.android.gms.internal.ads.nu2;
import com.google.android.gms.internal.ads.pk2;
import com.google.android.gms.internal.ads.qj1;
import com.google.android.gms.internal.ads.qn1;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.rn1;
import com.google.android.gms.internal.ads.s03;
import com.google.android.gms.internal.ads.sp0;
import com.google.android.gms.internal.ads.uz2;
import com.google.android.gms.internal.ads.vg0;
import com.google.android.gms.internal.ads.vj2;
import com.google.android.gms.internal.ads.xg0;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzcfr;
import com.google.android.gms.internal.ads.zzcgz;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/e0.class */
public final class BinderC5814e0 extends xg0 {

    /* renamed from: d */
    protected static final List<String> f18706d = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));

    /* renamed from: e */
    protected static final List<String> f18707e = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: f */
    protected static final List<String> f18708f = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));

    /* renamed from: g */
    protected static final List<String> f18709g = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: h */
    public static final /* synthetic */ int f18710h = 0;

    /* renamed from: D */
    private final zzcgz f18714D;

    /* renamed from: E */
    private String f18715E;

    /* renamed from: i */
    private final sp0 f18717i;

    /* renamed from: j */
    private Context f18718j;

    /* renamed from: k */
    private final C7016u f18719k;

    /* renamed from: l */
    private final pk2<qj1> f18720l;

    /* renamed from: m */
    private final s03 f18721m;

    /* renamed from: n */
    private final ScheduledExecutorService f18722n;

    /* renamed from: o */
    private zzcam f18723o;

    /* renamed from: s */
    private final C5824k f18727s;

    /* renamed from: t */
    private final rn1 f18728t;

    /* renamed from: u */
    private final jo2 f18729u;

    /* renamed from: v */
    private final bp2 f18730v;

    /* renamed from: p */
    private Point f18724p = new Point();

    /* renamed from: q */
    private Point f18725q = new Point();

    /* renamed from: r */
    private final Set<WebView> f18726r = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: C */
    private final AtomicInteger f18713C = new AtomicInteger(0);

    /* renamed from: w */
    private final boolean f18731w = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25788r5)).booleanValue();

    /* renamed from: x */
    private final boolean f18732x = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25780q5)).booleanValue();

    /* renamed from: y */
    private final boolean f18733y = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25796s5)).booleanValue();

    /* renamed from: z */
    private final boolean f18734z = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25812u5)).booleanValue();

    /* renamed from: A */
    private final String f18711A = (String) C7192yr.m8714c().m14263c(C6679kw.f25804t5);

    /* renamed from: B */
    private final String f18712B = (String) C7192yr.m8714c().m14263c(C6679kw.f25820v5);

    /* renamed from: F */
    private final String f18716F = (String) C7192yr.m8714c().m14263c(C6679kw.f25828w5);

    public BinderC5814e0(sp0 sp0Var, Context context, C7016u c7016u, pk2<qj1> pk2Var, s03 s03Var, ScheduledExecutorService scheduledExecutorService, rn1 rn1Var, jo2 jo2Var, bp2 bp2Var, zzcgz zzcgzVar) {
        this.f18717i = sp0Var;
        this.f18718j = context;
        this.f18719k = c7016u;
        this.f18720l = pk2Var;
        this.f18721m = s03Var;
        this.f18722n = scheduledExecutorService;
        this.f18727s = sp0Var.mo10940z();
        this.f18728t = rn1Var;
        this.f18729u = jo2Var;
        this.f18730v = bp2Var;
        this.f18714D = zzcgzVar;
    }

    /* renamed from: K6 */
    public static final /* synthetic */ Uri m17822K6(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = m17816Q6(uri, "nas", str);
        }
        return uri2;
    }

    /* renamed from: L6 */
    public static final /* synthetic */ ArrayList m17821L6(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!m17801f7(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(m17816Q6(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* renamed from: M6 */
    private static boolean m17820M6(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host == null || path == null) {
            return false;
        }
        for (String str : list) {
            if (path.contains(str)) {
                for (String str2 : list2) {
                    if (host.endsWith(str2)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    /* renamed from: N6 */
    private final AbstractC5829p m17819N6(Context context, String str, String str2, zzbdl zzbdlVar, zzbdg zzbdgVar) {
        AbstractC5828o mo10942x = this.f18717i.mo10942x();
        h21 h21Var = new h21();
        h21Var.m14759e(context);
        vj2 vj2Var = new vj2();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        vj2Var.m9984L(str3);
        zzbdg zzbdgVar2 = zzbdgVar;
        if (zzbdgVar == null) {
            zzbdgVar2 = new C7043uq().m10258a();
        }
        vj2Var.m9989G(zzbdgVar2);
        zzbdl zzbdlVar2 = zzbdlVar;
        if (zzbdlVar == null) {
            zzbdlVar2 = new zzbdl();
        }
        vj2Var.m9987I(zzbdlVar2);
        h21Var.m14758f(vj2Var.m9969l());
        mo10942x.mo15998a(h21Var.m14756h());
        C5818g0 c5818g0 = new C5818g0();
        c5818g0.m17796b(str2);
        mo10942x.mo15997b(new C5822i0(c5818g0, null));
        new n81();
        return mo10942x.zza();
    }

    /* renamed from: O6 */
    private final r03<String> m17818O6(String str) {
        qj1[] qj1VarArr = new qj1[1];
        r03 m13995i = k03.m13995i(this.f18720l.m12222b(), new uz2(this, qj1VarArr, str) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.y

            /* renamed from: a */
            private final BinderC5814e0 f18775a;

            /* renamed from: b */
            private final qj1[] f18776b;

            /* renamed from: c */
            private final String f18777c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18775a = this;
                this.f18776b = qj1VarArr;
                this.f18777c = str;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f18775a.m17827F6(this.f18776b, this.f18777c, (qj1) obj);
            }
        }, this.f18721m);
        m13995i.mo10015d(new Runnable(this, qj1VarArr) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.z

            /* renamed from: d */
            private final BinderC5814e0 f18778d;

            /* renamed from: e */
            private final qj1[] f18779e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18778d = this;
                this.f18779e = qj1VarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f18778d.m17798i7(this.f18779e);
            }
        }, this.f18721m);
        return k03.m13998f(k03.m13994j((a03) k03.m13996h(a03.m16718E(m13995i), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25844y5)).intValue(), TimeUnit.MILLISECONDS, this.f18722n), C5836w.f18773a, this.f18721m), Exception.class, C5837x.f18774a, this.f18721m);
    }

    /* renamed from: P6 */
    private final boolean m17817P6() {
        Map<String, WeakReference<View>> map;
        zzcam zzcamVar = this.f18723o;
        return (zzcamVar == null || (map = zzcamVar.f33762e) == null || map.isEmpty()) ? false : true;
    }

    /* renamed from: Q6 */
    public static final Uri m17816Q6(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        if (i != -1) {
            int i2 = i + 1;
            return Uri.parse(uri2.substring(0, i2) + str + "=" + str2 + "&" + uri2.substring(i2));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    /* renamed from: f7 */
    public static boolean m17801f7(Uri uri) {
        return m17820M6(uri, f18708f, f18709g);
    }

    /* renamed from: h7 */
    public static /* synthetic */ void m17799h7(BinderC5814e0 binderC5814e0, String str, String str2, String str3) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25740l5)).booleanValue()) {
            return;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            jo2 jo2Var = binderC5814e0.f18729u;
            io2 m14338a = io2.m14338a(str);
            m14338a.m14336c(str2, str3);
            jo2Var.mo9502b(m14338a);
            return;
        }
        qn1 m11371d = binderC5814e0.f18728t.m11371d();
        m11371d.m11845d("action", str);
        m11371d.m11845d(str2, str3);
        m11371d.m11844e();
    }

    @Override // com.google.android.gms.internal.ads.yg0
    /* renamed from: C2 */
    public final void mo8832C2(List<Uri> list, AbstractC6253a abstractC6253a, bc0 bc0Var) {
        try {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25836x5)).booleanValue()) {
                bc0Var.mo8466p("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                bc0Var.mo8466p("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (m17820M6(uri, f18706d, f18707e)) {
                    r03 mo11185a = this.f18721m.mo11185a(new Callable(this, uri, abstractC6253a) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.s

                        /* renamed from: a */
                        private final BinderC5814e0 f18765a;

                        /* renamed from: b */
                        private final Uri f18766b;

                        /* renamed from: c */
                        private final AbstractC6253a f18767c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18765a = this;
                            this.f18766b = uri;
                            this.f18767c = abstractC6253a;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f18765a.m17825H6(this.f18766b, this.f18767c);
                        }
                    });
                    if (m17817P6()) {
                        mo11185a = k03.m13995i(mo11185a, new uz2(this) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.t

                            /* renamed from: a */
                            private final BinderC5814e0 f18768a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f18768a = this;
                            }

                            @Override // com.google.android.gms.internal.ads.uz2
                            /* renamed from: a */
                            public final r03 mo8403a(Object obj) {
                                return this.f18768a.m17826G6((Uri) obj);
                            }
                        }, this.f18721m);
                    } else {
                        ei0.m15465e("Asset view map is empty.");
                    }
                    k03.m13988p(mo11185a, new C5810c0(this, bc0Var), this.f18717i.mo10958h());
                    return;
                }
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(valueOf);
                ei0.m15464f(sb.toString());
                bc0Var.mo8467C5(list);
            }
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }

    /* renamed from: F6 */
    public final /* synthetic */ r03 m17827F6(qj1[] qj1VarArr, String str, qj1 qj1Var) {
        qj1VarArr[0] = qj1Var;
        Context context = this.f18718j;
        zzcam zzcamVar = this.f18723o;
        Map<String, WeakReference<View>> map = zzcamVar.f33762e;
        JSONObject m18115e = C5674b1.m18115e(context, map, map, zzcamVar.f33761d);
        JSONObject m18118b = C5674b1.m18118b(this.f18718j, this.f18723o.f33761d);
        JSONObject m18117c = C5674b1.m18117c(this.f18723o.f33761d);
        JSONObject m18116d = C5674b1.m18116d(this.f18718j, this.f18723o.f33761d);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", m18115e);
        jSONObject.put("ad_view_signal", m18118b);
        jSONObject.put("scroll_view_signal", m18117c);
        jSONObject.put("lock_screen_signal", m18116d);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", C5674b1.m18114f(null, this.f18718j, this.f18725q, this.f18724p));
        }
        return qj1Var.m11877d(str, jSONObject);
    }

    /* renamed from: G6 */
    public final /* synthetic */ r03 m17826G6(Uri uri) {
        return k03.m13994j(m17818O6("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new nu2(this, uri) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.v

            /* renamed from: a */
            private final BinderC5814e0 f18771a;

            /* renamed from: b */
            private final Uri f18772b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18771a = this;
                this.f18772b = uri;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                return BinderC5814e0.m17822K6(this.f18772b, (String) obj);
            }
        }, this.f18721m);
    }

    /* renamed from: H6 */
    public final /* synthetic */ Uri m17825H6(Uri uri, AbstractC6253a abstractC6253a) {
        try {
            uri = this.f18719k.m10447e(uri, this.f18718j, (View) BinderC6255b.m16745J0(abstractC6253a), null);
        } catch (zzaat e) {
            ei0.m15463g("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    /* renamed from: I6 */
    public final /* synthetic */ r03 m17824I6(ArrayList arrayList) {
        return k03.m13994j(m17818O6("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new nu2(this, arrayList) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.u

            /* renamed from: a */
            private final BinderC5814e0 f18769a;

            /* renamed from: b */
            private final List f18770b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18769a = this;
                this.f18770b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.nu2
            /* renamed from: a */
            public final Object mo8501a(Object obj) {
                return BinderC5814e0.m17821L6(this.f18770b, (String) obj);
            }
        }, this.f18721m);
    }

    /* renamed from: J6 */
    public final /* synthetic */ ArrayList m17823J6(List list, AbstractC6253a abstractC6253a) {
        String mo11749d = this.f18719k.m10450b() != null ? this.f18719k.m10450b().mo11749d(this.f18718j, (View) BinderC6255b.m16745J0(abstractC6253a), null) : "";
        if (!TextUtils.isEmpty(mo11749d)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!m17801f7(uri)) {
                    String valueOf = String.valueOf(uri);
                    valueOf.length();
                    ei0.m15464f("Not a Google URL: ".concat(valueOf));
                    arrayList.add(uri);
                } else {
                    arrayList.add(m17816Q6(uri, "ms", mo11749d));
                }
            }
            if (arrayList.isEmpty()) {
                throw new Exception("Empty impression URLs result.");
            }
            return arrayList;
        }
        throw new Exception("Failed to get view signals.");
    }

    @Override // com.google.android.gms.internal.ads.yg0
    /* renamed from: S4 */
    public final void mo8831S4(List<Uri> list, AbstractC6253a abstractC6253a, bc0 bc0Var) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25836x5)).booleanValue()) {
            try {
                bc0Var.mo8466p("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                ei0.m15466d("", e);
                return;
            }
        }
        r03 mo11185a = this.f18721m.mo11185a(new Callable(this, list, abstractC6253a) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.q

            /* renamed from: a */
            private final BinderC5814e0 f18761a;

            /* renamed from: b */
            private final List f18762b;

            /* renamed from: c */
            private final AbstractC6253a f18763c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18761a = this;
                this.f18762b = list;
                this.f18763c = abstractC6253a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f18761a.m17823J6(this.f18762b, this.f18763c);
            }
        });
        if (m17817P6()) {
            mo11185a = k03.m13995i(mo11185a, new uz2(this) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.r

                /* renamed from: a */
                private final BinderC5814e0 f18764a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18764a = this;
                }

                @Override // com.google.android.gms.internal.ads.uz2
                /* renamed from: a */
                public final r03 mo8403a(Object obj) {
                    return this.f18764a.m17824I6((ArrayList) obj);
                }
            }, this.f18721m);
        } else {
            ei0.m15465e("Asset view map is empty.");
        }
        k03.m13988p(mo11185a, new C5808b0(this, bc0Var), this.f18717i.mo10958h());
    }

    @Override // com.google.android.gms.internal.ads.yg0
    /* renamed from: T4 */
    public final void mo8830T4(zzcam zzcamVar) {
        this.f18723o = zzcamVar;
        this.f18720l.m12223a(1);
    }

    @Override // com.google.android.gms.internal.ads.yg0
    @SuppressLint({"AddJavascriptInterface"})
    /* renamed from: X */
    public final void mo8829X(AbstractC6253a abstractC6253a) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25498H6)).booleanValue()) {
            return;
        }
        if (Build.VERSION.SDK_INT < 21) {
            ei0.m15464f("Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews.");
            return;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25506I6)).booleanValue()) {
            k03.m13988p(m17819N6(this.f18718j, null, AdFormat.BANNER.name(), null, null).mo15704a(), new C5812d0(this), this.f18717i.mo10958h());
        }
        WebView webView = (WebView) BinderC6255b.m16745J0(abstractC6253a);
        if (webView == null) {
            ei0.m15467c("The webView cannot be null.");
        } else if (this.f18726r.contains(webView)) {
            ei0.m15465e("This webview has already been registered.");
        } else {
            this.f18726r.add(webView);
            webView.addJavascriptInterface(new C5805a(webView, this.f18719k), "gmaSdk");
        }
    }

    /* renamed from: i7 */
    public final /* synthetic */ void m17798i7(qj1[] qj1VarArr) {
        qj1 qj1Var = qj1VarArr[0];
        if (qj1Var != null) {
            this.f18720l.m12221c(k03.m14003a(qj1Var));
        }
    }

    @Override // com.google.android.gms.internal.ads.yg0
    /* renamed from: w6 */
    public final void mo8828w6(AbstractC6253a abstractC6253a, zzcfr zzcfrVar, vg0 vg0Var) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        this.f18718j = context;
        k03.m13988p(m17819N6(context, zzcfrVar.f33850d, zzcfrVar.f33851e, zzcfrVar.f33852f, zzcfrVar.f33853g).mo15704a(), new C5806a0(this, vg0Var), this.f18717i.mo10958h());
    }

    @Override // com.google.android.gms.internal.ads.yg0
    public final void zzf(AbstractC6253a abstractC6253a) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25836x5)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) BinderC6255b.m16745J0(abstractC6253a);
        zzcam zzcamVar = this.f18723o;
        this.f18724p = C5674b1.m18112h(motionEvent, zzcamVar == null ? null : zzcamVar.f33761d);
        if (motionEvent.getAction() == 0) {
            this.f18725q = this.f18724p;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f18724p;
        obtain.setLocation(point.x, point.y);
        this.f18719k.m10448d(obtain);
        obtain.recycle();
    }
}

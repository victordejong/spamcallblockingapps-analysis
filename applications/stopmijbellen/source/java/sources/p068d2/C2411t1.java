package p068d2;

import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
import p008a7.C0034a;
import p008a7.C0035b;
import p008a7.C0041h;
import p008a7.C0042i;
import p008a7.EnumC0036c;
import p008a7.EnumC0037d;
import p008a7.EnumC0038e;
import p008a7.EnumC0039f;
import p008a7.EnumC0040g;
import p022b7.C0738c;
import p022b7.EnumC0736a;
import p022b7.EnumC0737b;
import p086f.C2678t;
import p105g7.AbstractC2907a;
import p124i4.C3102d;
import p283x2.C4854f;
import p291y.C4951d;
/* renamed from: d2.t1 */
/* loaded from: classes-dex2jar.jar:d2/t1.class */
public class C2411t1 {

    /* renamed from: a */
    public AbstractC0081a f8538a;

    /* renamed from: b */
    public C2678t f8539b;

    /* renamed from: c */
    public C4854f f8540c;

    /* renamed from: e */
    public int f8542e;

    /* renamed from: g */
    public boolean f8544g;

    /* renamed from: h */
    public boolean f8545h;

    /* renamed from: i */
    public boolean f8546i;

    /* renamed from: j */
    public boolean f8547j;

    /* renamed from: k */
    public boolean f8548k;

    /* renamed from: l */
    public int f8549l;

    /* renamed from: m */
    public int f8550m;

    /* renamed from: n */
    public String f8551n;

    /* renamed from: o */
    public String f8552o;

    /* renamed from: d */
    public List<C0041h> f8541d = new ArrayList();

    /* renamed from: f */
    public String f8543f = "";

    /* renamed from: d2.t1$a */
    /* loaded from: classes-dex2jar.jar:d2/t1$a.class */
    public class RunnableC2412a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8553a;

        public RunnableC2412a(String str) {
            C2411t1.this = r4;
            this.f8553a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2267f4 c2267f4 = new C2267f4();
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3740m(c2267f42, "session_type", C2411t1.this.f8542e);
            C2227e4.m3744i(c2267f42, "session_id", C2411t1.this.f8543f);
            C2227e4.m3744i(c2267f42, "event", this.f8553a);
            C2227e4.m3744i(c2267f4, "type", "iab_hook");
            C2227e4.m3744i(c2267f4, "message", c2267f42.toString());
            new C2410t0("CustomMessage.controller_send", 0, c2267f4).m3586b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2411t1(p068d2.C2267f4 r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2411t1.<init>(d2.f4, java.lang.String):void");
    }

    /* renamed from: a */
    public void m3585a(WebView webView) throws IllegalArgumentException {
        String str;
        List<C0041h> list;
        if (this.f8542e < 0 || (str = this.f8551n) == null || str.equals("") || (list = this.f8541d) == null) {
            return;
        }
        if (list.isEmpty() && this.f8542e != 2) {
            return;
        }
        C2230f1 m3591d = C2408t.m3591d();
        EnumC0040g enumC0040g = EnumC0040g.NATIVE;
        EnumC0039f enumC0039f = EnumC0039f.BEGIN_TO_RENDER;
        int i = this.f8542e;
        if (i == 0) {
            AbstractC0081a m8763m = AbstractC0081a.m8763m(C0034a.m8878a(EnumC0037d.VIDEO, enumC0039f, enumC0040g, enumC0040g, false), C0035b.m8877a(m3591d.f8077O, this.f8551n, this.f8541d, null, null));
            this.f8538a = m8763m;
            this.f8543f = ((C0042i) m8763m).f95h;
            m3581e("inject_javascript");
        } else if (i == 1) {
            AbstractC0081a m8763m2 = AbstractC0081a.m8763m(C0034a.m8878a(EnumC0037d.NATIVE_DISPLAY, enumC0039f, enumC0040g, null, false), C0035b.m8877a(m3591d.f8077O, this.f8551n, this.f8541d, null, null));
            this.f8538a = m8763m2;
            this.f8543f = ((C0042i) m8763m2).f95h;
            m3581e("inject_javascript");
        } else if (i != 2) {
        } else {
            EnumC0037d enumC0037d = EnumC0037d.HTML_DISPLAY;
            C2362m c2362m = m3591d.f8077O;
            C3102d.m2638a(c2362m, "Partner is null");
            C3102d.m2638a(webView, "WebView is null");
            AbstractC0081a m8763m3 = AbstractC0081a.m8763m(C0034a.m8878a(enumC0037d, enumC0039f, enumC0040g, null, false), new C0035b(c2362m, webView, null, null, "", null, EnumC0036c.HTML));
            this.f8538a = m8763m3;
            this.f8543f = ((C0042i) m8763m3).f95h;
        }
    }

    /* renamed from: b */
    public void m3584b(C2322j0 c2322j0) {
        C4854f c4854f;
        AbstractC0081a abstractC0081a;
        if (!this.f8546i && this.f8542e >= 0 && this.f8538a != null) {
            EnumC0038e enumC0038e = EnumC0038e.OTHER;
            m3581e("register_ad_view");
            C2441x3 c2441x3 = C2408t.m3591d().f8107v.get(Integer.valueOf(c2322j0.f8301k));
            C2441x3 c2441x32 = c2441x3;
            if (c2441x3 == null) {
                c2441x32 = c2441x3;
                if (!c2322j0.f8293c.isEmpty()) {
                    c2441x32 = c2322j0.f8293c.entrySet().iterator().next().getValue();
                }
            }
            AbstractC0081a abstractC0081a2 = this.f8538a;
            if (abstractC0081a2 != null && c2441x32 != null) {
                abstractC0081a2.mo8769J(c2441x32);
                ImageView imageView = c2441x32.f8641N;
                if (imageView != null && (abstractC0081a = c2441x32.f8639L.f8314x) != null) {
                    try {
                        abstractC0081a.mo8766f(imageView, enumC0038e, null);
                    } catch (RuntimeException e) {
                    }
                }
            } else if (abstractC0081a2 != null) {
                abstractC0081a2.mo8769J(c2322j0);
                AbstractC0081a abstractC0081a3 = this.f8538a;
                c2322j0.f8314x = abstractC0081a3;
                HashMap<Integer, View> hashMap = c2322j0.f8297g;
                if (abstractC0081a3 != null && hashMap != null) {
                    for (Map.Entry<Integer, View> entry : hashMap.entrySet()) {
                        c2322j0.m3640a(entry.getValue(), enumC0038e);
                    }
                }
                m3581e("register_obstructions");
            }
            C2420u1 c2420u1 = new C2420u1(this);
            ExecutorService executorService = C2168b.f7919a;
            if (!C2408t.f8533c) {
                C0082b.m8750l(0, 1, "Ignoring call to AdColony.addCustomMessageListener as AdColony has not yet been configured.", false);
            } else if (!C2315i3.m3645z("viewability_ad_event")) {
                C0082b.m8750l(0, 1, "Ignoring call to AdColony.addCustomMessageListener.", false);
            } else {
                C2408t.m3591d().f8102q.put("viewability_ad_event", c2420u1);
            }
            if (this.f8542e != 0) {
                c4854f = null;
            } else {
                AbstractC0081a abstractC0081a4 = this.f8538a;
                C0042i c0042i = (C0042i) abstractC0081a4;
                C3102d.m2638a(abstractC0081a4, "AdSession is null");
                if (!(EnumC0040g.NATIVE == c0042i.f89b.f50b)) {
                    throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
                }
                if (c0042i.f93f) {
                    throw new IllegalStateException("AdSession is started");
                }
                if (c0042i.f94g) {
                    throw new IllegalStateException("AdSession is finished");
                }
                AbstractC2907a abstractC2907a = c0042i.f92e;
                if (abstractC2907a.f9804c != null) {
                    throw new IllegalStateException("MediaEvents already exists for AdSession");
                }
                c4854f = new C4854f(c0042i, 6);
                abstractC2907a.f9804c = c4854f;
            }
            this.f8540c = c4854f;
            this.f8538a.mo8767L();
            AbstractC0081a abstractC0081a5 = this.f8538a;
            C0042i c0042i2 = (C0042i) abstractC0081a5;
            C3102d.m2638a(abstractC0081a5, "AdSession is null");
            AbstractC2907a abstractC2907a2 = c0042i2.f92e;
            if (abstractC2907a2.f9803b != null) {
                throw new IllegalStateException("AdEvents already exists for AdSession");
            }
            if (c0042i2.f94g) {
                throw new IllegalStateException("AdSession is finished");
            }
            C2678t c2678t = new C2678t(c0042i2);
            abstractC2907a2.f9803b = c2678t;
            this.f8539b = c2678t;
            m3581e("start_session");
            if (this.f8540c != null) {
                EnumC0737b enumC0737b = EnumC0737b.PREROLL;
                C0738c c0738c = this.f8547j ? new C0738c(true, Float.valueOf(this.f8549l), true, enumC0737b) : new C0738c(false, null, true, enumC0737b);
                C2678t c2678t2 = this.f8539b;
                Objects.requireNonNull(c2678t2);
                C3102d.m2633f((C0042i) c2678t2.f9203a);
                C3102d.m2621r((C0042i) c2678t2.f9203a);
                C0042i c0042i3 = (C0042i) c2678t2.f9203a;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("skippable", c0738c.f2800a);
                    if (c0738c.f2800a) {
                        jSONObject.put("skipOffset", c0738c.f2801b);
                    }
                    jSONObject.put("autoPlay", c0738c.f2802c);
                    jSONObject.put("position", c0738c.f2803d);
                } catch (JSONException e2) {
                }
                if (c0042i3.f97j) {
                    throw new IllegalStateException("Loaded event can only be sent once");
                }
                C4951d.f15103a.m201b(c0042i3.f92e.m2859f(), "publishLoadedEvent", jSONObject);
                c0042i3.f97j = true;
            } else {
                C2678t c2678t3 = this.f8539b;
                C3102d.m2633f((C0042i) c2678t3.f9203a);
                C3102d.m2621r((C0042i) c2678t3.f9203a);
                C0042i c0042i4 = (C0042i) c2678t3.f9203a;
                if (c0042i4.f97j) {
                    throw new IllegalStateException("Loaded event can only be sent once");
                }
                C4951d.f15103a.m201b(c0042i4.f92e.m2859f(), "publishLoadedEvent", new Object[0]);
                c0042i4.f97j = true;
            }
            this.f8546i = true;
        }
    }

    /* renamed from: c */
    public void m3583c(String str, float f) {
        if (!C2408t.m3590e() || this.f8538a == null) {
            return;
        }
        if (this.f8540c == null && !str.equals("start") && !str.equals("skip") && !str.equals("continue") && !str.equals("cancel")) {
            return;
        }
        boolean z = true;
        try {
            switch (str.hashCode()) {
                case -1941887438:
                    if (str.equals("first_quartile")) {
                        z = true;
                        break;
                    }
                    break;
                case -1710060637:
                    if (str.equals("buffer_start")) {
                        z = true;
                        break;
                    }
                    break;
                case -1638835128:
                    if (str.equals("midpoint")) {
                        z = true;
                        break;
                    }
                    break;
                case -1367724422:
                    if (str.equals("cancel")) {
                        z = true;
                        break;
                    }
                    break;
                case -934426579:
                    if (str.equals("resume")) {
                        z = true;
                        break;
                    }
                    break;
                case -651914917:
                    if (str.equals("third_quartile")) {
                        z = true;
                        break;
                    }
                    break;
                case -599445191:
                    if (str.equals("complete")) {
                        z = true;
                        break;
                    }
                    break;
                case -567202649:
                    if (str.equals("continue")) {
                        z = true;
                        break;
                    }
                    break;
                case -342650039:
                    if (str.equals("sound_mute")) {
                        z = true;
                        break;
                    }
                    break;
                case 3532159:
                    if (str.equals("skip")) {
                        z = true;
                        break;
                    }
                    break;
                case 106440182:
                    if (str.equals("pause")) {
                        z = true;
                        break;
                    }
                    break;
                case 109757538:
                    if (str.equals("start")) {
                        z = false;
                        break;
                    }
                    break;
                case 583742045:
                    if (str.equals("in_video_engagement")) {
                        z = true;
                        break;
                    }
                    break;
                case 823102269:
                    if (str.equals("html5_interaction")) {
                        z = true;
                        break;
                    }
                    break;
                case 1648173410:
                    if (str.equals("sound_unmute")) {
                        z = true;
                        break;
                    }
                    break;
                case 1906584668:
                    if (str.equals("buffer_end")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    this.f8539b.m3287c();
                    C4854f c4854f = this.f8540c;
                    if (c4854f != null) {
                        if (f <= 0.0f) {
                            f = this.f8550m;
                        }
                        c4854f.m350m(f, 1.0f);
                    }
                    m3581e(str);
                    return;
                case true:
                    this.f8540c.m356g();
                    m3581e(str);
                    return;
                case true:
                    this.f8540c.m354i();
                    m3581e(str);
                    return;
                case true:
                    this.f8540c.m349n();
                    m3581e(str);
                    return;
                case true:
                    this.f8548k = true;
                    this.f8540c.m357f();
                    m3581e(str);
                    return;
                case true:
                    m3581e(str);
                    m3582d();
                    return;
                case true:
                case true:
                    C4854f c4854f2 = this.f8540c;
                    if (c4854f2 != null) {
                        c4854f2.m351l();
                    }
                    m3581e(str);
                    m3582d();
                    return;
                case true:
                    this.f8540c.m348o(0.0f);
                    m3581e(str);
                    return;
                case true:
                    this.f8540c.m348o(1.0f);
                    m3581e(str);
                    return;
                case true:
                    if (this.f8544g || this.f8545h || this.f8548k) {
                        return;
                    }
                    this.f8540c.m353j();
                    m3581e(str);
                    this.f8544g = true;
                    this.f8545h = false;
                    return;
                case true:
                    if (!this.f8544g || this.f8548k) {
                        return;
                    }
                    this.f8540c.m352k();
                    m3581e(str);
                    this.f8544g = false;
                    return;
                case true:
                    this.f8540c.m358e();
                    m3581e(str);
                    return;
                case true:
                    this.f8540c.m359d();
                    m3581e(str);
                    return;
                case true:
                case true:
                    this.f8540c.m361b(EnumC0736a.CLICK);
                    m3581e(str);
                    if (!this.f8545h || this.f8544g || this.f8548k) {
                        return;
                    }
                    this.f8540c.m353j();
                    m3581e("pause");
                    this.f8544g = true;
                    this.f8545h = false;
                    return;
                default:
                    return;
            }
        } catch (IllegalArgumentException | IllegalStateException e) {
            StringBuilder m7624k = C0608b.m7624k("Recording IAB event for ", str);
            StringBuilder m8752j = C0082b.m8752j(" caused ");
            m8752j.append(e.getClass());
            m7624k.append(m8752j.toString());
            C0082b.m8750l(0, 1, m7624k.toString(), true);
        }
    }

    /* renamed from: d */
    public void m3582d() {
        ExecutorService executorService = C2168b.f7919a;
        if (!C2408t.f8533c) {
            C0082b.m8750l(0, 1, "Ignoring call to AdColony.removeCustomMessageListener as AdColony has not yet been configured.", false);
        } else {
            C2408t.m3591d().f8102q.remove("viewability_ad_event");
        }
        this.f8538a.mo8762q();
        m3581e("end_session");
        this.f8538a = null;
    }

    /* renamed from: e */
    public final void m3581e(String str) {
        if (!C2315i3.m3661j(new RunnableC2412a(str))) {
            C0082b.m8750l(0, 0, "Executing ADCOmidManager.sendIabCustomMessage failed", true);
        }
    }
}

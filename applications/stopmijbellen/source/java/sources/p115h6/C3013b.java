package p115h6;

import android.util.Log;
import com.facebook.ads.AdError;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import p071d6.AbstractC2481b;
import p104g6.C2905a;
import p136j6.C3284h;
import p147k6.AbstractC3327b;
import p147k6.C3325a;
import p158l6.RunnableC3507d;
import p169m6.C3652e;
import p191o6.C3912h;
import p191o6.C3924k;
import p204p9.C4123s;
/* renamed from: h6.b */
/* loaded from: classes-dex2jar.jar:h6/b.class */
public final class C3013b extends AbstractC2481b implements AbstractC3327b {

    /* renamed from: h */
    public static final C2905a f10109h = C2905a.m2869b();

    /* renamed from: b */
    public final GaugeManager f10111b;

    /* renamed from: c */
    public final C3652e f10112c;

    /* renamed from: f */
    public String f10115f;

    /* renamed from: g */
    public boolean f10116g;

    /* renamed from: d */
    public final C3912h.C3914b f10113d = C3912h.m1647f0();

    /* renamed from: e */
    public final WeakReference<AbstractC3327b> f10114e = new WeakReference<>(this);

    /* renamed from: a */
    public final List<C3325a> f10110a = Collections.synchronizedList(new ArrayList());

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3013b(p169m6.C3652e r6) {
        /*
            r5 = this;
            d6.a r0 = p071d6.C2478a.m3524a()
            r7 = r0
            com.google.firebase.perf.session.gauges.GaugeManager r0 = com.google.firebase.perf.session.gauges.GaugeManager.getInstance()
            r8 = r0
            r0 = r5
            r1 = r7
            r0.<init>(r1)
            r0 = r5
            o6.h$b r1 = p191o6.C3912h.m1647f0()
            r0.f10113d = r1
            r0 = r5
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            r0.f10114e = r1
            r0 = r5
            r1 = r6
            r0.f10112c = r1
            r0 = r5
            r1 = r8
            r0.f10111b = r1
            r0 = r5
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = r1
            r2.<init>()
            java.util.List r1 = java.util.Collections.synchronizedList(r1)
            r0.f10110a = r1
            r0 = r5
            r0.registerForAppState()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p115h6.C3013b.<init>(m6.e):void");
    }

    @Override // p147k6.AbstractC3327b
    /* renamed from: a */
    public void mo2373a(C3325a c3325a) {
        if (c3325a != null) {
            if (!((C3912h) this.f10113d.f7078b).m1655X() || ((C3912h) this.f10113d.f7078b).m1649d0()) {
                return;
            }
            this.f10110a.add(c3325a);
            return;
        }
        C2905a c2905a = f10109h;
        if (!c2905a.f9793b) {
            return;
        }
        Objects.requireNonNull(c2905a.f9792a);
        Log.i("FirebasePerformance", "Unable to add new SessionId to the Network Trace. Continuing without it.");
    }

    /* renamed from: b */
    public C3912h m2747b() {
        List unmodifiableList;
        SessionManager.getInstance().unregisterForSessionUpdates(this.f10114e);
        unregisterForAppState();
        synchronized (this.f10110a) {
            ArrayList arrayList = new ArrayList();
            for (C3325a c3325a : this.f10110a) {
                if (c3325a != null) {
                    arrayList.add(c3325a);
                }
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
        }
        C3924k[] m2375b = C3325a.m2375b(unmodifiableList);
        if (m2375b != null) {
            C3912h.C3914b c3914b = this.f10113d;
            List asList = Arrays.asList(m2375b);
            c3914b.m4282n();
            C3912h.m1670I((C3912h) c3914b.f7078b, asList);
        }
        C3912h m4284l = this.f10113d.m4284l();
        String str = this.f10115f;
        Pattern pattern = C3284h.f11124a;
        if (!(str == null || !C3284h.f11124a.matcher(str).matches())) {
            C2905a c2905a = f10109h;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
            return m4284l;
        }
        if (!this.f10116g) {
            C3652e c3652e = this.f10112c;
            c3652e.f11976i.execute(new RunnableC3507d(c3652e, m4284l, getAppState(), 1));
            this.f10116g = true;
        }
        return m4284l;
    }

    /* renamed from: c */
    public C3013b m2746c(String str) {
        C3912h.EnumC3916d enumC3916d;
        if (str != null) {
            C3912h.EnumC3916d enumC3916d2 = C3912h.EnumC3916d.HTTP_METHOD_UNKNOWN;
            String upperCase = str.toUpperCase();
            Objects.requireNonNull(upperCase);
            boolean z = true;
            switch (upperCase.hashCode()) {
                case -531492226:
                    if (upperCase.equals("OPTIONS")) {
                        z = false;
                        break;
                    }
                    break;
                case 70454:
                    if (upperCase.equals("GET")) {
                        z = true;
                        break;
                    }
                    break;
                case 79599:
                    if (upperCase.equals("PUT")) {
                        z = true;
                        break;
                    }
                    break;
                case 2213344:
                    if (upperCase.equals("HEAD")) {
                        z = true;
                        break;
                    }
                    break;
                case 2461856:
                    if (upperCase.equals("POST")) {
                        z = true;
                        break;
                    }
                    break;
                case 75900968:
                    if (upperCase.equals("PATCH")) {
                        z = true;
                        break;
                    }
                    break;
                case 80083237:
                    if (upperCase.equals("TRACE")) {
                        z = true;
                        break;
                    }
                    break;
                case 1669334218:
                    if (upperCase.equals("CONNECT")) {
                        z = true;
                        break;
                    }
                    break;
                case 2012838315:
                    if (upperCase.equals("DELETE")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    enumC3916d = C3912h.EnumC3916d.OPTIONS;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.GET;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.PUT;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.HEAD;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.POST;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.PATCH;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.TRACE;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.CONNECT;
                    break;
                case true:
                    enumC3916d = C3912h.EnumC3916d.DELETE;
                    break;
                default:
                    enumC3916d = enumC3916d2;
                    break;
            }
            C3912h.C3914b c3914b = this.f10113d;
            c3914b.m4282n();
            C3912h.m1669J((C3912h) c3914b.f7078b, enumC3916d);
        }
        return this;
    }

    /* renamed from: e */
    public C3013b m2745e(int i) {
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1677B((C3912h) c3914b.f7078b, i);
        return this;
    }

    /* renamed from: f */
    public C3013b m2744f(long j) {
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1668K((C3912h) c3914b.f7078b, j);
        return this;
    }

    /* renamed from: g */
    public C3013b m2743g(long j) {
        C3325a perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f10114e);
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1674E((C3912h) c3914b.f7078b, j);
        mo2373a(perfSession);
        if (perfSession.f11283c) {
            this.f10111b.collectGaugeMetricOnce(perfSession.f11282b);
        }
        return this;
    }

    /* renamed from: h */
    public C3013b m2742h(String str) {
        boolean z;
        if (str == null) {
            C3912h.C3914b c3914b = this.f10113d;
            c3914b.m4282n();
            C3912h.m1675D((C3912h) c3914b.f7078b);
            return this;
        }
        if (str.length() <= 128) {
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char charAt = str.charAt(i);
                z = false;
                if (charAt <= 31) {
                    break;
                } else if (charAt > 127) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            C3912h.C3914b c3914b2 = this.f10113d;
            c3914b2.m4282n();
            C3912h.m1676C((C3912h) c3914b2.f7078b, str);
        } else {
            f10109h.m2868c("The content type of the response is not a valid content-type:" + str);
        }
        return this;
    }

    /* renamed from: i */
    public C3013b m2741i(long j) {
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1667L((C3912h) c3914b.f7078b, j);
        return this;
    }

    /* renamed from: j */
    public C3013b m2740j(long j) {
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1671H((C3912h) c3914b.f7078b, j);
        if (SessionManager.getInstance().perfSession().f11283c) {
            this.f10111b.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().f11282b);
        }
        return this;
    }

    /* renamed from: l */
    public C3013b m2739l(long j) {
        C3912h.C3914b c3914b = this.f10113d;
        c3914b.m4282n();
        C3912h.m1672G((C3912h) c3914b.f7078b, j);
        return this;
    }

    /* renamed from: m */
    public C3013b m2738m(String str) {
        C4123s c4123s;
        C4123s c4123s2;
        int lastIndexOf;
        if (str != null) {
            try {
                C4123s.C4124a c4124a = new C4123s.C4124a();
                c4124a.m1372c(null, str);
                c4123s = c4124a.m1374a();
            } catch (IllegalArgumentException e) {
                c4123s = null;
            }
            if (c4123s != null) {
                C4123s.C4124a m1382j = c4123s.m1382j();
                m1382j.m1370e("");
                m1382j.m1371d("");
                m1382j.f12970g = null;
                m1382j.f12971h = null;
                str = m1382j.toString();
            }
            C3912h.C3914b c3914b = this.f10113d;
            if (str.length() > 2000) {
                if (str.charAt(AdError.SERVER_ERROR_CODE) == '/') {
                    str = str.substring(0, AdError.SERVER_ERROR_CODE);
                } else {
                    try {
                        C4123s.C4124a c4124a2 = new C4123s.C4124a();
                        c4124a2.m1372c(null, str);
                        c4123s2 = c4124a2.m1374a();
                    } catch (IllegalArgumentException e2) {
                        c4123s2 = null;
                    }
                    str = c4123s2 == null ? str.substring(0, AdError.SERVER_ERROR_CODE) : (c4123s2.m1387e().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, 1999)) < 0) ? str.substring(0, AdError.SERVER_ERROR_CODE) : str.substring(0, lastIndexOf);
                }
            }
            c3914b.m4282n();
            C3912h.m1645z((C3912h) c3914b.f7078b, str);
        }
        return this;
    }
}

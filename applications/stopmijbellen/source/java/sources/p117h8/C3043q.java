package p117h8;

import android.content.Context;
import ba.C0748b;
import com.google.android.gms.internal.ads.C1676a;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.ArrayList;
import java.util.Iterator;
import p066d0.C2134a;
import p074d9.C2497h;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3396l;
import p149k8.C3401q;
import p241t4.C4398d;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4778i;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p293y2.C4995l;
import p293y2.C4999p;
/* renamed from: h8.q */
/* loaded from: classes2-dex2jar.jar:h8/q.class */
public class C3043q {

    /* renamed from: a */
    public static boolean f10313a = false;

    /* renamed from: b */
    public static int f10314b;

    /* renamed from: A */
    public static void m2724A(String str, boolean z) {
        String str2 = z ? "1" : "0";
        new C4791r(new C4776g(new C4775f(), C3024a.class), C3025b.f10147g.m239a(str)).mo458i();
        C3024a c3024a = new C3024a();
        c3024a.f10143c = str;
        c3024a.f10144d = str2;
        c3024a.mo7416a();
    }

    /* renamed from: C */
    public static void m2722C(Context context) {
        if (C2134a.m3846a(context, "android.permission.READ_CALL_LOG") != 0) {
            C0748b.m7409b().m7404g(new C3396l("MGDB.updateLogWithCallLog.NO_PERMISSION"));
            return;
        }
        Thread thread = new Thread(new RunnableC3041o(context, 0));
        thread.setPriority(10);
        thread.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2721a(java.lang.String r3, java.util.ArrayList<java.lang.String> r4) {
        /*
            r0 = r3
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        Lb:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L3e
            r0 = r5
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.trim()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L3c
            r0 = r4
            java.lang.String r0 = r0.trim()
            java.lang.String r0 = r0.toUpperCase()
            r1 = r3
            java.lang.String r1 = r1.trim()
            java.lang.String r1 = r1.toUpperCase()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
        L3c:
            r0 = 0
            return r0
        L3e:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p117h8.C3043q.m2721a(java.lang.String, java.util.ArrayList):boolean");
    }

    /* renamed from: b */
    public static boolean m2720b(String str) {
        for (C3026c c3026c : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m236e(-1)).mo456l()) {
            if (c3026c.f10153f == -1 && c3026c.f10150c.length() <= str.length()) {
                String str2 = c3026c.f10150c;
                if (str2.equals(str.substring(0, str2.length()))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m2719c(String str) {
        for (C3026c c3026c : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m234g(-1)).mo456l()) {
            if (m2697y(c3026c.f10150c, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m2718d() {
        boolean z = false;
        if (((C3036l) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10302v.m239a(0), C3037m.f10289i.m237d(0)).m452p()) != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m2717e(String str) {
        boolean z = false;
        if (new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3030g.class), C3031h.f10188h.m236e(str)).m452p() != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public static boolean m2716f(String str) {
        for (TModel tmodel : new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class).mo456l()) {
            if (m2697y(tmodel.f10195d, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m2715g(String str) {
        boolean z = false;
        if (new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3044r.class), C3045s.f10318g.m236e(C2779g.m3098q(str, "16", true))).m452p() != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public static boolean m2714h(String str) {
        for (C3050w c3050w : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10383j.m236e(-1)).mo456l()) {
            if (c3050w.f10378f == -1 && c3050w.f10375c.length() <= str.length()) {
                String str2 = c3050w.f10375c;
                if (str2.equals(str.substring(0, str2.length()))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: i */
    public static boolean m2713i(String str) {
        for (C3050w c3050w : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10383j.m234g(-1)).mo456l()) {
            if (m2697y(c3050w.f10375c, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static boolean m2712j(C3033i c3033i, String str, String str2, String str3, String str4, int i) {
        return c3033i.f10194c == i && str.equals(c3033i.f10195d) && str2.equals(c3033i.f10196e) && str3.equals(c3033i.f10197f) && ((str4 == null && c3033i.f10199h == null) || (str4 != null && str4.equals(c3033i.f10199h)));
    }

    /* renamed from: k */
    public static void m2711k(Context context, boolean z) {
        if (z || !C2779g.m3090y()) {
            new C4791r(new C4790q(C3047u.class).m460a(C3049v.f10355h.m239a(Boolean.FALSE)), C3049v.f10356i.m234g(0)).mo458i();
            C2780h.m3049g0(context, "psetpresets", false);
            C2780h.m3049g0(context, "psetaslfn", false);
            C2780h.m3049g0(context, "psetaspe", false);
        }
    }

    /* renamed from: l */
    public static String m2710l(String str) {
        String str2;
        Iterator it2 = new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class).mo456l().iterator();
        while (true) {
            str2 = str;
            if (!it2.hasNext()) {
                break;
            }
            C3036l c3036l = (C3036l) it2.next();
            if (m2697y(str, c3036l.f10261c)) {
                str2 = c3036l.f10261c;
                break;
            }
        }
        return str2;
    }

    /* renamed from: m */
    public static boolean m2709m(String str) {
        C3024a c3024a = (C3024a) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3024a.class), C3025b.f10147g.m239a(str)).m452p();
        return (c3024a != null ? c3024a.f10144d : "").equals("1");
    }

    /* renamed from: n */
    public static int m2708n() {
        int i = 0;
        try {
            i = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3026c.class).m482c();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: o */
    public static String m2707o(String str, boolean z) {
        for (C3050w c3050w : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class), C3051x.f10383j.m234g(-1)).mo456l()) {
            if (m2697y(c3050w.f10375c, str)) {
                return c3050w.f10376d;
            }
        }
        for (C3026c c3026c : new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class), C3027d.f10159j.m234g(-1)).mo456l()) {
            if (m2697y(c3026c.f10150c, str)) {
                return c3026c.f10151d;
            }
        }
        for (TModel tmodel : new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class).mo456l()) {
            if (m2697y(tmodel.f10195d, str)) {
                return z ? tmodel.f10197f : tmodel.f10196e;
            }
        }
        return "";
    }

    /* renamed from: p */
    public static ArrayList<String> m2706p() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (TModel tmodel : new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class).mo456l()) {
            if (m2721a(tmodel.f10151d, arrayList)) {
                arrayList.add(tmodel.f10151d);
            }
        }
        for (TModel tmodel2 : new C4776g(new C4788o(new AbstractC4932a[0]), C3050w.class).mo456l()) {
            if (m2721a(tmodel2.f10376d, arrayList)) {
                arrayList.add(tmodel2.f10376d);
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public static String m2705q(String str) {
        for (TModel tmodel : new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class).mo456l()) {
            if (m2697y(tmodel.f10195d, str)) {
                return tmodel.f10199h;
            }
        }
        return null;
    }

    /* renamed from: r */
    public static String m2704r(String str) {
        C3033i c3033i = (C3033i) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class), C3034j.f10203h.m239a(str)).m452p();
        return c3033i != null ? c3033i.f10199h : null;
    }

    /* renamed from: s */
    public static int m2703s() {
        int i = 0;
        try {
            i = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3044r.class).m482c();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: t */
    public static int m2702t(String str) {
        int i = 0;
        C3044r c3044r = (C3044r) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3044r.class), C3045s.f10318g.m236e(C2779g.m3098q(str, "16", true))).m452p();
        if (c3044r != null) {
            i = c3044r.f10315b;
        }
        return i;
    }

    /* renamed from: u */
    public static int m2701u() {
        int i = 0;
        C3026c c3026c = (C3026c) new C4776g(new C4788o(new AbstractC4932a[0]), C3026c.class).m477n(C3027d.f10155f, false).m452p();
        if (c3026c != null) {
            i = c3026c.f10149b;
        }
        return i;
    }

    /* renamed from: v */
    public static int m2700v() {
        int i = 0;
        C3044r c3044r = (C3044r) new C4776g(new C4788o(new AbstractC4932a[0]), C3044r.class).m477n(C3045s.f10317f, false).m452p();
        if (c3044r != null) {
            i = c3044r.f10315b;
        }
        return i;
    }

    /* renamed from: w */
    public static int m2699w() {
        C3036l c3036l = (C3036l) new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class).m477n(C3037m.f10291k, false).m452p();
        int i = 0;
        if (c3036l != null) {
            Integer num = c3036l.f10265g;
            i = num == null ? 0 : num.intValue();
        }
        return i;
    }

    /* renamed from: x */
    public static int m2698x() {
        int i = 0;
        try {
            i = (int) new C4776g(new C4788o(C4778i.m476k(new AbstractC4932a[0])), C3050w.class).m482c();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: y */
    public static boolean m2697y(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        String replaceFirst = str.replaceFirst("^0*", "");
        String str3 = replaceFirst;
        if (replaceFirst.isEmpty()) {
            str3 = "0";
        }
        if (str2 == null) {
            return false;
        }
        if (str3.length() < str2.length() && str3.length() >= 5) {
            return str2.endsWith(str3);
        }
        if (str3.length() > str2.length() && str2.length() >= 9) {
            return str3.endsWith(str2);
        }
        return false;
    }

    /* renamed from: z */
    public static String m2696z(String str, String str2) {
        String replaceAll = str.replaceAll("\\W", "");
        String str3 = replaceAll;
        if (str2.toUpperCase().equals("RU")) {
            str3 = replaceAll;
            if (replaceAll.length() > 9) {
                str3 = replaceAll;
                if (replaceAll.startsWith("8")) {
                    str3 = replaceAll.replaceFirst("8", "+7");
                }
            }
        }
        String str4 = str3;
        if (str.startsWith("*")) {
            str4 = C1676a.m4789h("*", str3);
        }
        String str5 = str4;
        if (str.startsWith("+")) {
            str5 = str4;
            if (!str4.startsWith("+")) {
                str5 = C1676a.m4789h("+", str4);
            }
        }
        return str5;
    }

    /* renamed from: B */
    public void m2723B(final Context context, boolean z) {
        boolean z2 = false;
        if (C2780h.m3052f(context, "cb2316", true)) {
            C2780h.m3041k0(context, "contactslastsync", 0L);
            C2780h.m3049g0(context, "cb2316", false);
        }
        if (C2780h.m3052f(context, "firstsynccontacts", false)) {
            z2 = true;
        } else {
            C2780h.m3049g0(context, "firstsynccontacts", true);
        }
        if (!z2) {
            C2779g.m3093v(context);
            if (C2134a.m3846a(context, "android.permission.READ_CONTACTS") != 0) {
                C0748b.m7409b().m7404g(new C3401q(11));
                C2779g.m3129D(context);
                return;
            } else if (C2780h.m3026s(context) + 3000 > System.currentTimeMillis()) {
                return;
            } else {
                new Thread(new Runnable() { // from class: h8.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        try {
                            C2779g.m3093v(context2);
                            C2497h.C2498a c2498a = new C2497h.C2498a(new C4999p(context2), FlowManager.m3909d(C3035k.class));
                            c2498a.f8751d = new C4995l(context2, 10);
                            c2498a.f8750c = C4398d.f13708j;
                            new C2497h(c2498a).m3513a();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
                return;
            }
        }
        C2779g.m3093v(context);
        if (C2134a.m3846a(context, "android.permission.READ_CONTACTS") != 0) {
            C0748b.m7409b().m7404g(new C3401q(11));
            C2779g.m3129D(context);
        } else if (C2780h.m3026s(context) + 3000 > System.currentTimeMillis()) {
        } else {
            new Thread(new RunnableC3041o(context, 1)).start();
        }
    }
}

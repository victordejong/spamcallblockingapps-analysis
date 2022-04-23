package com.moat.analytics.mobile.mpub;

import java.util.Iterator;
import java.util.LinkedHashSet;
/* renamed from: com.moat.analytics.mobile.mpub.ab */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/ab.class */
public class C8617ab {

    /* renamed from: a */
    public static final LinkedHashSet<String> f33432a = new LinkedHashSet<>();

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
        if (m4980a(java.lang.String.valueOf(r0.hashCode())) != false) goto L_0x0097;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.moat.analytics.mobile.mpub.p522a.p524b.C8615a<android.webkit.WebView> m4981a(android.view.ViewGroup r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.mpub.C8617ab.m4981a(android.view.ViewGroup, boolean):com.moat.analytics.mobile.mpub.a.b.a");
    }

    /* renamed from: a */
    public static boolean m4980a(String str) {
        try {
            boolean add = f33432a.add(str);
            if (f33432a.size() > 50) {
                Iterator<String> it = f33432a.iterator();
                for (int i = 0; i < 25 && it.hasNext(); i++) {
                    it.next();
                    it.remove();
                }
            }
            C8652p.m4848a(3, "WebViewHound", (Object) null, add ? "Newly Found WebView" : "Already Found WebView");
            return add;
        } catch (Exception e) {
            C8643m.m4879a(e);
            return false;
        }
    }
}

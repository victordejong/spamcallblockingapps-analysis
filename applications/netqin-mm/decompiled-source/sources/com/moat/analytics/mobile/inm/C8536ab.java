package com.moat.analytics.mobile.inm;

import java.util.Iterator;
import java.util.LinkedHashSet;
/* renamed from: com.moat.analytics.mobile.inm.ab */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/ab.class */
public class C8536ab {

    /* renamed from: a */
    public static final LinkedHashSet<String> f33215a = new LinkedHashSet<>();

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
        if (m5236a(java.lang.String.valueOf(r0.hashCode())) != false) goto L_0x0097;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.moat.analytics.mobile.inm.p519a.p521b.C8534a<android.webkit.WebView> m5237a(android.view.ViewGroup r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.inm.C8536ab.m5237a(android.view.ViewGroup, boolean):com.moat.analytics.mobile.inm.a.b.a");
    }

    /* renamed from: a */
    public static boolean m5236a(String str) {
        try {
            boolean add = f33215a.add(str);
            if (f33215a.size() > 50) {
                Iterator<String> it = f33215a.iterator();
                for (int i = 0; i < 25 && it.hasNext(); i++) {
                    it.next();
                    it.remove();
                }
            }
            C8571p.m5104a(3, "WebViewHound", (Object) null, add ? "Newly Found WebView" : "Already Found WebView");
            return add;
        } catch (Exception e) {
            C8562m.m5135a(e);
            return false;
        }
    }
}

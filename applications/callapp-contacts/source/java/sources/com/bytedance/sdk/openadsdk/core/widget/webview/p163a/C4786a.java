package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4561l;
import com.bytedance.sdk.openadsdk.core.p154e.C4563m;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5467k;
import java.io.File;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/a.class */
public class C4786a {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
        if (r0.m35086b().equals(r0) != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.webkit.WebResourceResponse m33981a(java.lang.String r5, com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4794e.EnumC4795a r6) {
        /*
            boolean r0 = m33975e()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L71
            com.bytedance.sdk.openadsdk.core.e.l r0 = m33976d()
            java.util.List r0 = r0.m35093d()
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L17:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L71
            r0 = r9
            java.lang.Object r0 = r0.next()
            com.bytedance.sdk.openadsdk.core.e.l$a r0 = (com.bytedance.sdk.openadsdk.core.p154e.C4561l.C4562a) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.m35089a()
            if (r0 == 0) goto L17
            r0 = r10
            java.lang.String r0 = r0.m35089a()
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L17
            r0 = r10
            java.lang.String r0 = r0.m35089a()
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.C5465i.m32148a(r0)
            r5 = r0
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4788b.m33963f()
            r3 = r5
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.C5465i.m32149a(r0)
            r9 = r0
            r0 = r10
            java.lang.String r0 = r0.m35086b()
            if (r0 == 0) goto L71
            r0 = r10
            java.lang.String r0 = r0.m35086b()
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L73
        L71:
            r0 = 0
            r5 = r0
        L73:
            r0 = r8
            r10 = r0
            r0 = r5
            if (r0 == 0) goto La8
            android.webkit.WebResourceResponse r0 = new android.webkit.WebResourceResponse     // Catch: java.lang.Throwable -> L9c
            r10 = r0
            r0 = r6
            java.lang.String r0 = r0.m33930a()     // Catch: java.lang.Throwable -> L9c
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L9c
            r9 = r0
            r0 = r9
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L9c
            r0 = r10
            r1 = r6
            java.lang.String r2 = "utf-8"
            r3 = r9
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> L9c
            goto La8
        L9c:
            r5 = move-exception
            java.lang.String r0 = "TTDynamic"
            java.lang.String r1 = "get html WebResourceResponse error"
            r2 = r5
            com.bytedance.sdk.openadsdk.utils.C5478q.m32108c(r0, r1, r2)
            r0 = r8
            r10 = r0
        La8:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a.m33981a(java.lang.String, com.bytedance.sdk.openadsdk.core.widget.webview.a.e$a):android.webkit.WebResourceResponse");
    }

    /* renamed from: a */
    public static C4563m m33982a(String str) {
        return C4792d.m33948a().m33944a(str);
    }

    /* renamed from: a */
    public static void m33985a() {
        C4788b.m33974a();
        C4792d.m33948a();
    }

    /* renamed from: a */
    public static void m33984a(C4557i c4557i) {
        C4792d.m33948a().m33947a(c4557i);
    }

    /* renamed from: a */
    private static void m33983a(final C4563m c4563m) {
        C5052e.m33161a(new AbstractRunnableC5055g("_updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                C4790c.m33957a().m33956a(c4563m);
            }
        }, 10);
    }

    /* renamed from: b */
    public static C4563m m33979b(C4557i c4557i) {
        if (c4557i == null || c4557i.m35134z() == null) {
            return null;
        }
        C4563m m33944a = C4792d.m33948a().m33944a(c4557i.m35134z().m35131b());
        if (m33944a != null) {
            m33944a.m35082a(Long.valueOf(System.currentTimeMillis()));
            m33983a(m33944a);
        }
        return m33944a;
    }

    /* renamed from: b */
    public static Set<String> m33978b(String str) {
        return C4792d.m33948a().m33937b(str);
    }

    /* renamed from: b */
    public static void m33980b() {
        try {
            C4796f.m33923d();
            File m33963f = C4788b.m33963f();
            if (m33963f == null || !m33963f.exists()) {
                return;
            }
            if (m33963f.getParentFile() != null) {
                C5467k.m32137c(m33963f.getParentFile());
            } else {
                C5467k.m32137c(m33963f);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static String m33977c() {
        return C4790c.m33951c();
    }

    /* renamed from: d */
    public static C4561l m33976d() {
        return C4788b.m33974a().m33965d();
    }

    /* renamed from: e */
    public static boolean m33975e() {
        return C4788b.m33974a().m33966c();
    }
}

package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.l;
import com.bytedance.sdk.openadsdk.core.e.m;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.k;
import java.io.File;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/a.class */
public class a {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006e, code lost:
        if (r0.b().equals(r0) != false) goto L_0x0073;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.webkit.WebResourceResponse a(java.lang.String r5, com.bytedance.sdk.openadsdk.core.widget.webview.a.e.a r6) {
        /*
            boolean r0 = e()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0071
            com.bytedance.sdk.openadsdk.core.e.l r0 = d()
            java.util.List r0 = r0.d()
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0017:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0071
            r0 = r9
            java.lang.Object r0 = r0.next()
            com.bytedance.sdk.openadsdk.core.e.l$a r0 = (com.bytedance.sdk.openadsdk.core.e.l.a) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.a()
            if (r0 == 0) goto L_0x0017
            r0 = r10
            java.lang.String r0 = r0.a()
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0017
            r0 = r10
            java.lang.String r0 = r0.a()
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.i.a(r0)
            r5 = r0
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = com.bytedance.sdk.openadsdk.core.widget.webview.a.b.f()
            r3 = r5
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.i.a(r0)
            r9 = r0
            r0 = r10
            java.lang.String r0 = r0.b()
            if (r0 == 0) goto L_0x0071
            r0 = r10
            java.lang.String r0 = r0.b()
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0073
        L_0x0071:
            r0 = 0
            r5 = r0
        L_0x0073:
            r0 = r8
            r10 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00a8
            android.webkit.WebResourceResponse r0 = new android.webkit.WebResourceResponse     // Catch: all -> 0x009c
            r10 = r0
            r0 = r6
            java.lang.String r0 = r0.a()     // Catch: all -> 0x009c
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: all -> 0x009c
            r9 = r0
            r0 = r9
            r1 = r5
            r0.<init>(r1)     // Catch: all -> 0x009c
            r0 = r10
            r1 = r6
            java.lang.String r2 = "utf-8"
            r3 = r9
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x009c
            goto L_0x00a8
        L_0x009c:
            r5 = move-exception
            java.lang.String r0 = "TTDynamic"
            java.lang.String r1 = "get html WebResourceResponse error"
            r2 = r5
            com.bytedance.sdk.openadsdk.utils.q.c(r0, r1, r2)
            r0 = r8
            r10 = r0
        L_0x00a8:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.a.a.a(java.lang.String, com.bytedance.sdk.openadsdk.core.widget.webview.a.e$a):android.webkit.WebResourceResponse");
    }

    public static m a(String str) {
        return d.a().a(str);
    }

    public static void a() {
        b.a();
        d.a();
    }

    public static void a(i iVar) {
        d.a().a(iVar);
    }

    private static void a(final m mVar) {
        e.a(new g("_updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                c.a().a(mVar);
            }
        }, 10);
    }

    public static m b(i iVar) {
        if (iVar == null || iVar.z() == null) {
            return null;
        }
        m a2 = d.a().a(iVar.z().b());
        if (a2 != null) {
            a2.a(Long.valueOf(System.currentTimeMillis()));
            a(a2);
        }
        return a2;
    }

    public static Set<String> b(String str) {
        return d.a().b(str);
    }

    public static void b() {
        try {
            f.d();
            File f = b.f();
            if (f != null && f.exists()) {
                if (f.getParentFile() != null) {
                    k.c(f.getParentFile());
                } else {
                    k.c(f);
                }
            }
        } catch (Throwable th) {
        }
    }

    public static String c() {
        return c.c();
    }

    public static l d() {
        return b.a().d();
    }

    public static boolean e() {
        return b.a().c();
    }
}

package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import com.bytedance.sdk.adnet.b.c;
import com.bytedance.sdk.adnet.b.i;
import com.bytedance.sdk.openadsdk.core.e.l;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.i.a;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static File f9352a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f9353b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f9354c = new AtomicBoolean(true);

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f9355d = new AtomicBoolean(false);
    private boolean e = false;
    private CopyOnWriteArrayList<c> f = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<i> g = new CopyOnWriteArrayList<>();
    private AtomicBoolean h = new AtomicBoolean(false);
    private AtomicInteger i = new AtomicInteger(0);
    private AtomicLong j = new AtomicLong();

    private b() {
        h();
    }

    public static b a() {
        if (f9353b == null) {
            synchronized (b.class) {
                try {
                    if (f9353b == null) {
                        f9353b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9353b;
    }

    private void a(int i) {
        a.a().b(com.bytedance.sdk.openadsdk.i.a.b.b().b(i).f(f.a(i)));
    }

    private void a(List<l.a> list) {
        if (!(list == null || list.isEmpty())) {
            for (l.a aVar : list) {
                File file = new File(f(), com.bytedance.sdk.openadsdk.utils.i.a(aVar.a()));
                File file2 = new File(file + ".tmp");
                if (file.exists()) {
                    try {
                        file.delete();
                    } catch (Throwable th) {
                    }
                }
                if (file2.exists()) {
                    try {
                        file2.delete();
                    } catch (Throwable th2) {
                    }
                }
            }
        }
    }

    public static File f() {
        if (f9352a == null) {
            try {
                File file = new File(new File(n.a().getCacheDir(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                f9352a = file;
            } catch (Throwable th) {
                q.c("TemplateManager", "getTemplateDir error", th);
            }
        }
        return f9352a;
    }

    private void h() {
        q.b("TemplateManager", "init......1");
        e.a(new g("TemplateManager_init") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                f.a();
                b.this.f9354c.set(false);
                q.b("TemplateManager", "init......2");
                b.this.i();
                b.this.e();
                q.b("TemplateManager", "init......3");
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            r5 = this;
            java.lang.String r0 = "TemplateManager"
            java.lang.String r1 = "check template usable1"
            com.bytedance.sdk.openadsdk.utils.q.b(r0, r1)
            com.bytedance.sdk.openadsdk.core.e.l r0 = com.bytedance.sdk.openadsdk.core.widget.webview.a.f.b()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00d2
            r0 = r6
            boolean r0 = r0.e()
            if (r0 != 0) goto L_0x0019
            goto L_0x00d2
        L_0x0019:
            r0 = 1
            r7 = r0
            r0 = r6
            java.util.List r0 = r0.d()
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x0025:
            r0 = r7
            r9 = r0
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b4
            r0 = r8
            java.lang.Object r0 = r0.next()
            com.bytedance.sdk.openadsdk.core.e.l$a r0 = (com.bytedance.sdk.openadsdk.core.e.l.a) r0
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.a()
            r6 = r0
            r0 = r6
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.i.a(r0)
            r11 = r0
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = f()
            r3 = r11
            r1.<init>(r2, r3)
            r11 = r0
            r0 = r11
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.i.a(r0)
            r12 = r0
            r0 = r11
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x0082
            r0 = r11
            boolean r0 = r0.isFile()
            if (r0 == 0) goto L_0x0082
            r0 = r10
            java.lang.String r0 = r0.b()
            if (r0 == 0) goto L_0x0082
            r0 = r10
            java.lang.String r0 = r0.b()
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0025
        L_0x0082:
            r0 = 0
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "check template usable3: "
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r11
            java.lang.String r1 = r1.getAbsolutePath()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TemplateManager"
            r1 = r10
            java.lang.String r1 = r1.toString()
            com.bytedance.sdk.openadsdk.utils.q.b(r0, r1)
        L_0x00b4:
            r0 = r9
            if (r0 != 0) goto L_0x00bc
            com.bytedance.sdk.openadsdk.core.widget.webview.a.f.d()
        L_0x00bc:
            java.lang.String r0 = "TemplateManager"
            java.lang.String r1 = "check template usable4: "
            r2 = r9
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            com.bytedance.sdk.openadsdk.utils.q.b(r0, r1)
            r0 = r5
            r1 = r9
            r0.e = r1
            return
        L_0x00d2:
            java.lang.String r0 = "TemplateManager"
            java.lang.String r1 = "check template usable2"
            com.bytedance.sdk.openadsdk.utils.q.b(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.a.b.i():void");
    }

    private void j() {
        q.e("TemplateManager", "任务执行完，，，clearCurrentExecuteTaskList");
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        CopyOnWriteArrayList<i> copyOnWriteArrayList2 = this.g;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
    }

    private void k() {
        if (this.i.getAndSet(0) > 0 && System.currentTimeMillis() - this.j.get() > 600000) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8 A[Catch: all -> 0x03b2, TRY_ENTER, TryCatch #1 {all -> 0x03b2, blocks: (B:6:0x0013, B:10:0x0021, B:12:0x002b, B:14:0x0039, B:16:0x005a, B:19:0x0064, B:21:0x0076, B:23:0x0091, B:25:0x00b1, B:28:0x00c0, B:30:0x00cc, B:31:0x00e3, B:33:0x00f0, B:35:0x00f8, B:37:0x0112, B:38:0x011f, B:40:0x012e, B:42:0x0136, B:44:0x0146, B:45:0x0153, B:47:0x015e, B:49:0x0166, B:51:0x017f, B:52:0x018c, B:53:0x0197, B:55:0x01ad, B:57:0x01be, B:59:0x01c8, B:61:0x01dd, B:63:0x01e6, B:67:0x023b, B:70:0x0249, B:71:0x024c, B:78:0x028f, B:81:0x0297, B:83:0x02b1, B:85:0x02be, B:87:0x02c6, B:89:0x02db, B:91:0x02e4, B:95:0x0338, B:98:0x0349, B:100:0x0353, B:102:0x035c, B:104:0x039b), top: B:115:0x0013 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x03c2 -> B:70:0x0249). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r6) {
        /*
            Method dump skipped, instructions count: 977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.a.b.a(boolean):void");
    }

    public void b() {
        h();
    }

    public void b(boolean z) {
        this.h.set(z);
    }

    public boolean c() {
        return this.e;
    }

    public l d() {
        return f.b();
    }

    public void e() {
        a(false);
    }

    public void g() {
        this.h.set(true);
        CopyOnWriteArrayList<i> copyOnWriteArrayList = this.g;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<i> it2 = this.g.iterator();
            while (it2.hasNext()) {
                i next = it2.next();
                if (next != null) {
                    try {
                        if (!next.isDone() || !next.isCancelled()) {
                            next.cancel(true);
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList2 = this.f;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            Iterator<c> it3 = this.f.iterator();
            while (it3.hasNext()) {
                c next2 = it3.next();
                if (next2 != null) {
                    next2.cancel();
                }
            }
        }
        j();
        this.e = false;
        this.f9355d.set(false);
    }
}

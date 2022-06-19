package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import com.bytedance.sdk.adnet.p141b.C4164c;
import com.bytedance.sdk.adnet.p141b.FutureC4184i;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4561l;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/b.class */
public class C4788b {

    /* renamed from: a */
    private static File f17592a;

    /* renamed from: b */
    private static volatile C4788b f17593b;

    /* renamed from: c */
    private AtomicBoolean f17594c = new AtomicBoolean(true);

    /* renamed from: d */
    private AtomicBoolean f17595d = new AtomicBoolean(false);

    /* renamed from: e */
    private boolean f17596e = false;

    /* renamed from: f */
    private CopyOnWriteArrayList<C4164c> f17597f = new CopyOnWriteArrayList<>();

    /* renamed from: g */
    private CopyOnWriteArrayList<FutureC4184i> f17598g = new CopyOnWriteArrayList<>();

    /* renamed from: h */
    private AtomicBoolean f17599h = new AtomicBoolean(false);

    /* renamed from: i */
    private AtomicInteger f17600i = new AtomicInteger(0);

    /* renamed from: j */
    private AtomicLong f17601j = new AtomicLong();

    private C4788b() {
        m33961h();
    }

    /* renamed from: a */
    public static C4788b m33974a() {
        if (f17593b == null) {
            synchronized (C4788b.class) {
                try {
                    if (f17593b == null) {
                        f17593b = new C4788b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17593b;
    }

    /* renamed from: a */
    private void m33973a(int i) {
        C4927a.m33549a().m33540b(C4931b.m33530b().m33529b(i).m33520f(C4566f.m35036a(i)));
    }

    /* renamed from: a */
    private void m33971a(List<C4561l.C4562a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (C4561l.C4562a c4562a : list) {
            File file = new File(m33963f(), C5465i.m32148a(c4562a.m35089a()));
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

    /* renamed from: f */
    public static File m33963f() {
        if (f17592a == null) {
            try {
                File file = new File(new File(C4600n.m34815a().getCacheDir(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                f17592a = file;
            } catch (Throwable th) {
                C5478q.m32108c("TemplateManager", "getTemplateDir error", th);
            }
        }
        return f17592a;
    }

    /* renamed from: h */
    private void m33961h() {
        C5478q.m32112b("TemplateManager", "init......1");
        C5052e.m33161a(new AbstractRunnableC5055g("TemplateManager_init") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                C4796f.m33929a();
                C4788b.this.f17594c.set(false);
                C5478q.m32112b("TemplateManager", "init......2");
                C4788b.this.m33960i();
                C4788b.this.m33964e();
                C5478q.m32112b("TemplateManager", "init......3");
            }
        }, 10);
    }

    /* renamed from: i */
    public void m33960i() {
        boolean z;
        C4561l.C4562a next;
        String m35089a;
        File file;
        String m32149a;
        C5478q.m32112b("TemplateManager", "check template usable1");
        C4561l m33926b = C4796f.m33926b();
        if (m33926b == null || !m33926b.m35091e()) {
            C5478q.m32112b("TemplateManager", "check template usable2");
            return;
        }
        Iterator<C4561l.C4562a> it2 = m33926b.m35093d().iterator();
        do {
            z = true;
            if (!it2.hasNext()) {
                break;
            }
            next = it2.next();
            m35089a = next.m35089a();
            file = new File(m33963f(), C5465i.m32148a(m35089a));
            m32149a = C5465i.m32149a(file);
            if (!file.exists() || !file.isFile() || next.m35086b() == null) {
                break;
            }
        } while (next.m35086b().equals(m32149a));
        z = false;
        C5478q.m32112b("TemplateManager", "check template usable3: " + m35089a + "," + file.getAbsolutePath());
        if (!z) {
            C4796f.m33923d();
        }
        C5478q.m32112b("TemplateManager", "check template usable4: ".concat(String.valueOf(z)));
        this.f17596e = z;
    }

    /* renamed from: j */
    private void m33959j() {
        C5478q.m32106e("TemplateManager", "任务执行完，，，clearCurrentExecuteTaskList");
        CopyOnWriteArrayList<C4164c> copyOnWriteArrayList = this.f17597f;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        CopyOnWriteArrayList<FutureC4184i> copyOnWriteArrayList2 = this.f17598g;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
    }

    /* renamed from: k */
    private void m33958k() {
        if (this.f17600i.getAndSet(0) <= 0 || System.currentTimeMillis() - this.f17601j.get() <= 600000) {
            return;
        }
        m33964e();
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8 A[Catch: all -> 0x03b2, TRY_ENTER, TryCatch #1 {all -> 0x03b2, blocks: (B:6:0x0013, B:10:0x0021, B:12:0x002b, B:14:0x0039, B:16:0x005a, B:19:0x0064, B:21:0x0076, B:23:0x0091, B:25:0x00b1, B:28:0x00c0, B:30:0x00cc, B:31:0x00e3, B:33:0x00f0, B:35:0x00f8, B:37:0x0112, B:38:0x011f, B:40:0x012e, B:42:0x0136, B:44:0x0146, B:45:0x0153, B:47:0x015e, B:49:0x0166, B:51:0x017f, B:52:0x018c, B:53:0x0197, B:55:0x01ad, B:57:0x01be, B:59:0x01c8, B:61:0x01dd, B:63:0x01e6, B:67:0x023b, B:70:0x0249, B:71:0x024c, B:78:0x028f, B:81:0x0297, B:83:0x02b1, B:85:0x02be, B:87:0x02c6, B:89:0x02db, B:91:0x02e4, B:95:0x0338, B:98:0x0349, B:100:0x0353, B:102:0x035c, B:104:0x039b), top: B:115:0x0013 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x03c2 -> B:70:0x0249). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33970a(boolean r6) {
        /*
            Method dump skipped, instructions count: 977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4788b.m33970a(boolean):void");
    }

    /* renamed from: b */
    public void m33969b() {
        m33961h();
    }

    /* renamed from: b */
    public void m33967b(boolean z) {
        this.f17599h.set(z);
    }

    /* renamed from: c */
    public boolean m33966c() {
        return this.f17596e;
    }

    /* renamed from: d */
    public C4561l m33965d() {
        return C4796f.m33926b();
    }

    /* renamed from: e */
    public void m33964e() {
        m33970a(false);
    }

    /* renamed from: g */
    public void m33962g() {
        this.f17599h.set(true);
        CopyOnWriteArrayList<FutureC4184i> copyOnWriteArrayList = this.f17598g;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<FutureC4184i> it2 = this.f17598g.iterator();
            while (it2.hasNext()) {
                FutureC4184i next = it2.next();
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
        CopyOnWriteArrayList<C4164c> copyOnWriteArrayList2 = this.f17597f;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            Iterator<C4164c> it3 = this.f17597f.iterator();
            while (it3.hasNext()) {
                C4164c next2 = it3.next();
                if (next2 != null) {
                    next2.cancel();
                }
            }
        }
        m33959j();
        this.f17596e = false;
        this.f17595d.set(false);
    }
}

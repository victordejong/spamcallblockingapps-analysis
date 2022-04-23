package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import android.text.TextUtils;
import com.bytedance.sdk.adnet.b.i;
import com.bytedance.sdk.adnet.b.j;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.h.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ae;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f9361a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f9362b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f9363c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private CopyOnWriteArrayList<j> f9364d = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<i> e = new CopyOnWriteArrayList<>();

    private d() {
        d();
    }

    public static d a() {
        if (f9361a == null) {
            synchronized (d.class) {
                try {
                    if (f9361a == null) {
                        f9361a = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9361a;
    }

    private JSONObject a(String str, boolean z) {
        if (this.f9363c.get()) {
            return null;
        }
        i a2 = i.a();
        j jVar = new j(0, ae.b(str), a2);
        jVar.setResponseOnMain(false).setShouldCache(false).build(e.c().e());
        if (z) {
            this.f9364d.add(jVar);
            this.e.add(a2);
        }
        try {
            m b2 = a2.get();
            if (b2 == null || !b2.a() || b2.f8332a == 0) {
                return null;
            }
            return new JSONObject((String) b2.f8332a);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void a(String str, String str2, String str3) {
        JSONObject a2;
        if (!TextUtils.isEmpty(str) && (a2 = a(str, true)) != null) {
            String optString = a2.optString("md5");
            String optString2 = a2.optString("version");
            String optString3 = a2.optString("data");
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(optString3)) {
                com.bytedance.sdk.openadsdk.core.e.m a3 = new com.bytedance.sdk.openadsdk.core.e.m().a(str2).b(str3).c(optString).d(str).e(optString3).f(optString2).a(Long.valueOf(System.currentTimeMillis()));
                c.a().a(a3);
                e();
                if (f.b(optString2)) {
                    a3.f(optString2);
                    b.a().a(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            if (a(str) != null) {
                if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                    b(str6, str, str3, str2, str4, str5);
                }
                return;
            } else if (TextUtils.isEmpty(str4)) {
                a(str2, str6, str);
            } else if (TextUtils.isEmpty(str3)) {
                a(str2, str6, str);
            } else {
                b(str6, str, str3, str2, str4, str5);
            }
            boolean b2 = f.b(str5);
            if (!a.e() || b2) {
                b.a().a(true);
            }
        }
    }

    private void b(String str, String str2, String str3, String str4, String str5, String str6) {
        c.a().a(new com.bytedance.sdk.openadsdk.core.e.m().a(str).b(str2).c(str3).d(str4).e(str5).f(str6).a(Long.valueOf(System.currentTimeMillis())));
        e();
    }

    private void d() {
        this.f9362b = new AtomicBoolean(false);
    }

    private void e() {
        if (n.h() != null) {
            int b2 = n.h().b();
            int i = b2;
            if (b2 <= 0) {
                i = 100;
            }
            List<com.bytedance.sdk.openadsdk.core.e.m> b3 = c.a().b();
            q.e("TmplDiffManager", "目前存储的模版的个数 " + b3.size());
            if (b3.isEmpty() || i >= b3.size()) {
                q.b("TmplDiffManager", "end doCheckAndDeleteTask maxTplCnt,local size" + i + "," + b3.size());
                return;
            }
            TreeMap treeMap = new TreeMap();
            for (com.bytedance.sdk.openadsdk.core.e.m mVar : b3) {
                treeMap.put(mVar.g(), mVar);
            }
            HashSet hashSet = new HashSet();
            int size = (int) (b3.size() - (i * 0.75f));
            int i2 = 0;
            for (Map.Entry entry : treeMap.entrySet()) {
                if (entry != null && i2 < size) {
                    int i3 = i2 + 1;
                    ((Long) entry.getKey()).longValue();
                    com.bytedance.sdk.openadsdk.core.e.m mVar2 = (com.bytedance.sdk.openadsdk.core.e.m) entry.getValue();
                    i2 = i3;
                    if (mVar2 != null) {
                        hashSet.add(mVar2.b());
                        i2 = i3;
                    }
                }
            }
            a(hashSet);
            this.f9362b.set(false);
        }
    }

    private void f() {
        CopyOnWriteArrayList<j> copyOnWriteArrayList = this.f9364d;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        CopyOnWriteArrayList<i> copyOnWriteArrayList2 = this.e;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
    }

    public com.bytedance.sdk.openadsdk.core.e.m a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return c.a().a(str);
    }

    public void a(com.bytedance.sdk.openadsdk.core.e.i iVar) {
        if (iVar != null && iVar.z() != null) {
            String b2 = iVar.z().b();
            String d2 = iVar.z().d();
            String c2 = iVar.z().c();
            String e = iVar.z().e();
            a(f.a().a(b2).b(c2).c(d2).d(e).e(iVar.z().a()), String.valueOf(af.d(iVar.S())));
        }
    }

    public void a(f fVar, String str) {
        if (fVar == null) {
            q.e("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = fVar.f8978a;
        final String str3 = fVar.f8980c;
        final String str4 = fVar.f8979b;
        final String str5 = fVar.f8981d;
        final String str6 = fVar.e;
        final String str7 = str;
        if (TextUtils.isEmpty(str)) {
            str7 = g.b().d();
        }
        if (TextUtils.isEmpty(str2)) {
            q.e("TmplDiffManager", "saveTemplate error:tmpId is empty");
        } else {
            com.bytedance.sdk.openadsdk.l.e.a(new com.bytedance.sdk.openadsdk.l.g("_saveTemplate") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(str2, str3, str4, str5, str6, str7);
                }
            }, 10);
        }
    }

    public void a(Set<String> set) {
        try {
            c.a().a(set);
        } catch (Throwable th) {
            q.b("TmplDiffManager", th.getMessage());
        }
    }

    public void a(boolean z) {
        this.f9363c.set(z);
    }

    public Set<String> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return c.a().b(str);
    }

    public void b() {
        d();
    }

    public void c() {
        this.f9363c.set(true);
        CopyOnWriteArrayList<i> copyOnWriteArrayList = this.e;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<i> it2 = this.e.iterator();
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
        CopyOnWriteArrayList<j> copyOnWriteArrayList2 = this.f9364d;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            Iterator<j> it3 = this.f9364d.iterator();
            while (it3.hasNext()) {
                j next2 = it3.next();
                if (next2 != null) {
                    next2.cancel();
                }
            }
        }
        f();
    }
}

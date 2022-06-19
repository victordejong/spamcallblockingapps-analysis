package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4185j;
import com.bytedance.sdk.adnet.p141b.FutureC4184i;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4563m;
import com.bytedance.sdk.openadsdk.core.p157h.C4589f;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5437ae;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/d.class */
public class C4792d {

    /* renamed from: a */
    private static volatile C4792d f17607a;

    /* renamed from: b */
    private AtomicBoolean f17608b;

    /* renamed from: c */
    private AtomicBoolean f17609c = new AtomicBoolean(false);

    /* renamed from: d */
    private CopyOnWriteArrayList<C4185j> f17610d = new CopyOnWriteArrayList<>();

    /* renamed from: e */
    private CopyOnWriteArrayList<FutureC4184i> f17611e = new CopyOnWriteArrayList<>();

    private C4792d() {
        m33934d();
    }

    /* renamed from: a */
    public static C4792d m33948a() {
        if (f17607a == null) {
            synchronized (C4792d.class) {
                try {
                    if (f17607a == null) {
                        f17607a = new C4792d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17607a;
    }

    /* renamed from: a */
    private JSONObject m33941a(String str, boolean z) {
        if (this.f17609c.get()) {
            return null;
        }
        FutureC4184i m36235a = FutureC4184i.m36235a();
        C4185j c4185j = new C4185j(0, C5437ae.m32313b(str), m36235a);
        c4185j.setResponseOnMain(false).setShouldCache(false).build(C4959e.m33434c().m33432e());
        if (z) {
            this.f17610d.add(c4185j);
            this.f17611e.add(m36235a);
        }
        try {
            C4218m c4218m = m36235a.get();
            if (c4218m != null && c4218m.m36115a() && c4218m.f15468a != 0) {
                return new JSONObject((String) c4218m.f15468a);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private void m33943a(String str, String str2, String str3) {
        JSONObject m33941a;
        if (!TextUtils.isEmpty(str) && (m33941a = m33941a(str, true)) != null) {
            String optString = m33941a.optString("md5");
            String optString2 = m33941a.optString("version");
            String optString3 = m33941a.optString("data");
            if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString3)) {
                return;
            }
            C4563m m35082a = new C4563m().m35081a(str2).m35079b(str3).m35077c(optString).m35075d(str).m35073e(optString3).m35071f(optString2).m35082a(Long.valueOf(System.currentTimeMillis()));
            C4790c.m33957a().m33956a(m35082a);
            m33933e();
            if (!C4796f.m33925b(optString2)) {
                return;
            }
            m35082a.m35071f(optString2);
            C4788b.m33974a().m33970a(true);
        }
    }

    /* renamed from: a */
    public void m33942a(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            if (m33944a(str) != null) {
                if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                    m33936b(str6, str, str3, str2, str4, str5);
                }
                return;
            } else if (TextUtils.isEmpty(str4)) {
                m33943a(str2, str6, str);
            } else if (TextUtils.isEmpty(str3)) {
                m33943a(str2, str6, str);
            } else {
                m33936b(str6, str, str3, str2, str4, str5);
            }
            boolean m33925b = C4796f.m33925b(str5);
            if (!C4786a.m33975e() || m33925b) {
                C4788b.m33974a().m33970a(true);
            }
        }
    }

    /* renamed from: b */
    private void m33936b(String str, String str2, String str3, String str4, String str5, String str6) {
        C4790c.m33957a().m33956a(new C4563m().m35081a(str).m35079b(str2).m35077c(str3).m35075d(str4).m35073e(str5).m35071f(str6).m35082a(Long.valueOf(System.currentTimeMillis())));
        m33933e();
    }

    /* renamed from: d */
    private void m33934d() {
        this.f17608b = new AtomicBoolean(false);
    }

    /* renamed from: e */
    private void m33933e() {
        if (C4600n.m34805h() == null) {
            return;
        }
        int m34907b = C4600n.m34805h().m34907b();
        int i = m34907b;
        if (m34907b <= 0) {
            i = 100;
        }
        List<C4563m> m33953b = C4790c.m33957a().m33953b();
        C5478q.m32106e("TmplDiffManager", "目前存储的模版的个数 " + m33953b.size());
        if (m33953b.isEmpty() || i >= m33953b.size()) {
            C5478q.m32112b("TmplDiffManager", "end doCheckAndDeleteTask maxTplCnt,local size" + i + "," + m33953b.size());
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (C4563m c4563m : m33953b) {
            treeMap.put(c4563m.m35070g(), c4563m);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (m33953b.size() - (i * 0.75f));
        int i2 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i2 < size) {
                int i3 = i2 + 1;
                ((Long) entry.getKey()).longValue();
                C4563m c4563m2 = (C4563m) entry.getValue();
                i2 = i3;
                if (c4563m2 != null) {
                    hashSet.add(c4563m2.m35080b());
                    i2 = i3;
                }
            }
        }
        m33940a(hashSet);
        this.f17608b.set(false);
    }

    /* renamed from: f */
    private void m33932f() {
        CopyOnWriteArrayList<C4185j> copyOnWriteArrayList = this.f17610d;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
        }
        CopyOnWriteArrayList<FutureC4184i> copyOnWriteArrayList2 = this.f17611e;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
    }

    /* renamed from: a */
    public C4563m m33944a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return C4790c.m33957a().m33955a(str);
    }

    /* renamed from: a */
    public void m33947a(C4557i c4557i) {
        if (c4557i == null || c4557i.m35134z() == null) {
            return;
        }
        String m35131b = c4557i.m35134z().m35131b();
        String m35127d = c4557i.m35134z().m35127d();
        String m35129c = c4557i.m35134z().m35129c();
        String m35125e = c4557i.m35134z().m35125e();
        m33946a(C4589f.m34853a().m34852a(m35131b).m34851b(m35129c).m34850c(m35127d).m34849d(m35125e).m34848e(c4557i.m35134z().m35133a()), String.valueOf(C5438af.m32278d(c4557i.m35228S())));
    }

    /* renamed from: a */
    public void m33946a(C4589f c4589f, String str) {
        if (c4589f == null) {
            C5478q.m32106e("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = c4589f.f16784a;
        final String str3 = c4589f.f16786c;
        final String str4 = c4589f.f16785b;
        final String str5 = c4589f.f16787d;
        final String str6 = c4589f.f16788e;
        String str7 = str;
        if (TextUtils.isEmpty(str)) {
            str7 = C4570g.m35020b().m35012d();
        }
        if (TextUtils.isEmpty(str2)) {
            C5478q.m32106e("TmplDiffManager", "saveTemplate error:tmpId is empty");
            return;
        }
        final String str8 = str7;
        C5052e.m33161a(new AbstractRunnableC5055g("_saveTemplate") { // from class: com.bytedance.sdk.openadsdk.core.widget.webview.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                C4792d.this.m33942a(str2, str3, str4, str5, str6, str8);
            }
        }, 10);
    }

    /* renamed from: a */
    public void m33940a(Set<String> set) {
        try {
            C4790c.m33957a().m33954a(set);
        } catch (Throwable th) {
            C5478q.m32112b("TmplDiffManager", th.getMessage());
        }
    }

    /* renamed from: a */
    public void m33939a(boolean z) {
        this.f17609c.set(z);
    }

    /* renamed from: b */
    public Set<String> m33937b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return C4790c.m33957a().m33952b(str);
    }

    /* renamed from: b */
    public void m33938b() {
        m33934d();
    }

    /* renamed from: c */
    public void m33935c() {
        this.f17609c.set(true);
        CopyOnWriteArrayList<FutureC4184i> copyOnWriteArrayList = this.f17611e;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<FutureC4184i> it2 = this.f17611e.iterator();
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
        CopyOnWriteArrayList<C4185j> copyOnWriteArrayList2 = this.f17610d;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            Iterator<C4185j> it3 = this.f17610d.iterator();
            while (it3.hasNext()) {
                C4185j next2 = it3.next();
                if (next2 != null) {
                    next2.cancel();
                }
            }
        }
        m33932f();
    }
}

package com.huawei.appgallery.serviceverifykit.p079b;

import com.huawei.appgallery.serviceverifykit.p078a.C2228a;
import com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.huawei.appgallery.serviceverifykit.b.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/b/a.class */
public class C2231a {
    /* renamed from: b */
    private List<C2228a> m38248b(List<C2228a> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (C2228a c2228a : list) {
            if (c2228a.m38260b() > i) {
                arrayList.clear();
                i = c2228a.m38260b();
            } else if (c2228a.m38260b() != i) {
                C2237b.f7220b.m38207b("OptimizationCenter", "condition Low level");
            }
            arrayList.add(c2228a);
        }
        return !arrayList.isEmpty() ? arrayList : list;
    }

    /* renamed from: c */
    private List<C2228a> m38247c(List<C2228a> list) {
        ArrayList arrayList = new ArrayList();
        for (C2228a c2228a : list) {
            if (c2228a.m38261a() == 0) {
                arrayList.add(c2228a);
            }
        }
        return !arrayList.isEmpty() ? arrayList : list;
    }

    /* renamed from: d */
    private List<C2228a> m38246d(List<C2228a> list) {
        ArrayList arrayList = new ArrayList();
        for (C2228a c2228a : list) {
            if (c2228a.m38259c() == 1) {
                arrayList.add(c2228a);
            }
        }
        return !arrayList.isEmpty() ? arrayList : list;
    }

    /* renamed from: e */
    private List<C2228a> m38245e(List<C2228a> list) {
        ArrayList arrayList = new ArrayList();
        for (C2228a c2228a : list) {
            if (c2228a.m38258d() > -1) {
                arrayList.add(c2228a);
            }
        }
        return !arrayList.isEmpty() ? arrayList : list;
    }

    /* renamed from: a */
    public String m38249a(List<C2228a> list) {
        List<C2228a> m38248b = m38248b(m38247c(m38246d(m38245e(list))));
        String str = "";
        String str2 = str;
        if (m38248b.size() > 0) {
            Iterator<C2228a> it = m38248b.iterator();
            int i = 0;
            while (true) {
                str2 = str;
                if (!it.hasNext()) {
                    break;
                }
                C2228a next = it.next();
                if (next.m38256f() >= i) {
                    i = next.m38256f();
                    str = next.m38257e();
                }
            }
        }
        return str2;
    }
}

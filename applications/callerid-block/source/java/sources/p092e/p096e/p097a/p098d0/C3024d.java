package p092e.p096e.p097a.p098d0;

import com.liulishuo.filedownloader.download.C2746c;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.d0.d */
/* loaded from: classes2-dex2jar.jar:e/e/a/d0/d.class */
public class C3024d {
    /* renamed from: a */
    private static AbstractC3020b m515a(Map<String, List<String>> map, String str) {
        AbstractC3020b m1942a = C2746c.m1933j().m1942a(str);
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                for (String str2 : value) {
                    m1942a.addHeader(key, str2);
                }
            }
        }
        return m1942a;
    }

    /* renamed from: b */
    private static boolean m514b(int i) {
        return i == 301 || i == 302 || i == 303 || i == 300 || i == 307 || i == 308;
    }

    /* renamed from: c */
    public static AbstractC3020b m513c(Map<String, List<String>> map, AbstractC3020b abstractC3020b, List<String> list) {
        int mo523d = abstractC3020b.mo523d();
        String mo522e = abstractC3020b.mo522e("Location");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (m514b(mo523d)) {
            if (mo522e == null) {
                throw new IllegalAccessException(C3066f.m367o("receive %d (redirect) but the location is null with response [%s]", Integer.valueOf(mo523d), abstractC3020b.mo525b()));
            }
            if (C3062d.f12682a) {
                C3062d.m414a(C3024d.class, "redirect to %s with %d, %s", mo522e, Integer.valueOf(mo523d), arrayList);
            }
            abstractC3020b.mo521f();
            abstractC3020b = m515a(map, mo522e);
            arrayList.add(mo522e);
            abstractC3020b.execute();
            mo523d = abstractC3020b.mo523d();
            mo522e = abstractC3020b.mo522e("Location");
            i++;
            if (i >= 10) {
                throw new IllegalAccessException(C3066f.m367o("redirect too many times! %s", arrayList));
            }
        }
        if (list != null) {
            list.addAll(arrayList);
        }
        return abstractC3020b;
    }
}

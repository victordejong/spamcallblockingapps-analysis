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
        AbstractC3020b a = C2746c.m1933j().m1942a(str);
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                for (String str2 : value) {
                    a.addHeader(key, str2);
                }
            }
        }
        return a;
    }

    /* renamed from: b */
    private static boolean m514b(int i) {
        return i == 301 || i == 302 || i == 303 || i == 300 || i == 307 || i == 308;
    }

    /* renamed from: c */
    public static AbstractC3020b m513c(Map<String, List<String>> map, AbstractC3020b bVar, List<String> list) {
        int d = bVar.mo523d();
        String e = bVar.mo522e("Location");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (m514b(d)) {
            if (e != null) {
                if (C3062d.f12682a) {
                    C3062d.m414a(C3024d.class, "redirect to %s with %d, %s", e, Integer.valueOf(d), arrayList);
                }
                bVar.mo521f();
                bVar = m515a(map, e);
                arrayList.add(e);
                bVar.execute();
                d = bVar.mo523d();
                e = bVar.mo522e("Location");
                i++;
                if (i >= 10) {
                    throw new IllegalAccessException(C3066f.m367o("redirect too many times! %s", arrayList));
                }
            } else {
                throw new IllegalAccessException(C3066f.m367o("receive %d (redirect) but the location is null with response [%s]", Integer.valueOf(d), bVar.mo525b()));
            }
        }
        if (list != null) {
            list.addAll(arrayList);
        }
        return bVar;
    }
}

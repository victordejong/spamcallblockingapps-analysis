package p078c.p122d.p123a.p124e0;

import com.liulishuo.filedownloader.download.C9351c;
import com.yanzhenjie.nohttp.Headers;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.e0.d */
/* loaded from: classes2-dex2jar.jar:c/d/a/e0/d.class */
public class C1999d {
    /* renamed from: a */
    private static AbstractC1995b m28339a(Map<String, List<String>> map, String str) {
        AbstractC1995b m988a = C9351c.m979j().m988a(str);
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                for (String str2 : value) {
                    m988a.addHeader(key, str2);
                }
            }
        }
        return m988a;
    }

    /* renamed from: b */
    private static boolean m28338b(int i) {
        return i == 301 || i == 302 || i == 303 || i == 300 || i == 307 || i == 308;
    }

    /* renamed from: c */
    public static AbstractC1995b m28337c(Map<String, List<String>> map, AbstractC1995b abstractC1995b, List<String> list) {
        int responseCode = abstractC1995b.getResponseCode();
        String mo28346d = abstractC1995b.mo28346d(Headers.HEAD_KEY_LOCATION);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        AbstractC1995b abstractC1995b2 = abstractC1995b;
        String str = mo28346d;
        while (m28338b(responseCode)) {
            if (str == null) {
                throw new IllegalAccessException(C2040f.m28206o("receive %d (redirect) but the location is null with response [%s]", Integer.valueOf(responseCode), abstractC1995b2.mo28348b()));
            }
            if (C2036d.f7151a) {
                C2036d.m28253a(C1999d.class, "redirect to %s with %d, %s", str, Integer.valueOf(responseCode), arrayList);
            }
            abstractC1995b2.mo28345e();
            abstractC1995b2 = m28339a(map, str);
            arrayList.add(str);
            abstractC1995b2.execute();
            responseCode = abstractC1995b2.getResponseCode();
            str = abstractC1995b2.mo28346d(Headers.HEAD_KEY_LOCATION);
            i++;
            if (i >= 10) {
                throw new IllegalAccessException(C2040f.m28206o("redirect too many times! %s", arrayList));
            }
        }
        if (list != null) {
            list.addAll(arrayList);
        }
        return abstractC1995b2;
    }
}

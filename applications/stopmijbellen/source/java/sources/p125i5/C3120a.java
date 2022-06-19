package p125i5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: i5.a */
/* loaded from: classes-dex2jar.jar:i5/a.class */
public class C3120a {

    /* renamed from: a */
    public final String f10555a;

    /* renamed from: b */
    public final Map<String, String> f10556b;

    /* renamed from: c */
    public final Map<String, String> f10557c = new HashMap();

    public C3120a(String str, Map<String, String> map) {
        this.f10555a = str;
        this.f10556b = map;
    }

    /* renamed from: a */
    public final String m2598a(String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it2 = map.entrySet().iterator();
        Map.Entry<String, String> next = it2.next();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(next.getKey());
        sb2.append("=");
        sb2.append(next.getValue() != null ? next.getValue() : "");
        sb.append(sb2.toString());
        while (it2.hasNext()) {
            Map.Entry<String, String> next2 = it2.next();
            StringBuilder m8752j = C0082b.m8752j("&");
            m8752j.append(next2.getKey());
            m8752j.append("=");
            m8752j.append(next2.getValue() != null ? next2.getValue() : "");
            sb.append(m8752j.toString());
        }
        String sb3 = sb.toString();
        if (sb3.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return C0082b.m8755g(str, "?", sb3);
        }
        String str2 = sb3;
        if (!str.endsWith("&")) {
            str2 = C1676a.m4789h("&", sb3);
        }
        return C1676a.m4789h(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p134j4.C3191c1 m2597b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p125i5.C3120a.m2597b():j4.c1");
    }
}

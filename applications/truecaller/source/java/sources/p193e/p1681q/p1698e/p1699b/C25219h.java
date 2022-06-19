package p193e.p1681q.p1698e.p1699b;

import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.q.e.b.h */
/* loaded from: classes16-dex2jar.jar:e/q/e/b/h.class */
public class C25219h<T> implements Serializable {

    /* renamed from: a */
    public C25218g<T> f70508a;

    /* renamed from: b */
    public AbstractC25209a<T> f70509b;

    public C25219h(C25218g<T> c25218g, AbstractC25209a<T> abstractC25209a) {
        this.f70508a = c25218g;
        this.f70509b = abstractC25209a;
    }

    /* renamed from: a */
    public final void m4054a(C25218g<T> c25218g) {
        C25218g<T> c25218g2;
        Iterator<Map.Entry<String, C25218g<T>>> it;
        int m4064e;
        int m4064e2;
        HashMap<String, C25218g<T>> hashMap = c25218g.f70505a;
        if (hashMap != null) {
            Iterator<Map.Entry<String, C25218g<T>>> it2 = hashMap.entrySet().iterator();
            while (true) {
                Iterator<Map.Entry<String, C25218g<T>>> it3 = it2;
                if (!it3.hasNext()) {
                    return;
                }
                Map.Entry<String, C25218g<T>> next = it3.next();
                String key = next.getKey();
                C25218g<T> value = next.getValue();
                String[] split = key.split(StringConstant.COLON);
                String str = split.length > 2 ? split[2] : null;
                C25214c<T> c25214c = value.f70506b;
                String str2 = split[1];
                String str3 = split[0];
                AbstractC25209a<T> abstractC25209a = this.f70509b;
                if (c25214c.f70495b != null) {
                    c25218g2 = value;
                    it = it3;
                } else {
                    c25214c.f70495b = new long[c25214c.f70494a.size()][c25214c.f70494a.size()];
                    int i = 1;
                    while (true) {
                        it = it3;
                        c25218g2 = value;
                        if (i < c25214c.f70494a.size()) {
                            int i2 = i - 1;
                            c25214c.f70495b[i2][i] = c25214c.f70494a.get(i).f70493b - c25214c.f70494a.get(i2).f70493b;
                            if (str != null && !"".equals(str) && (m4064e2 = abstractC25209a.m4064e(str2, c25214c.f70495b[i2][i], str3)) > 0) {
                                C25213b<T> c25213b = c25214c.f70494a.get(i2);
                                C25213b<T> c25213b2 = c25214c.f70494a.get(i);
                                abstractC25209a.m4065d(c25213b.f70492a, c25213b2.f70492a, m4064e2, new Date(Math.max(c25213b.f70493b, c25213b2.f70493b)));
                            }
                            C25214c<T> c25214c2 = c25214c;
                            if (i >= 2) {
                                int i3 = i - 2;
                                while (true) {
                                    c25214c2 = c25214c;
                                    if (i3 >= 0) {
                                        long[][] jArr = c25214c.f70495b;
                                        long[] jArr2 = jArr[i3];
                                        long[] jArr3 = jArr[i3];
                                        int i4 = i3 + 1;
                                        jArr2[i] = jArr3[i4] + jArr[i4][i];
                                        if (str != null && !"".equals(str) && (m4064e = abstractC25209a.m4064e(str2, c25214c.f70495b[i3][i], str3)) > 0) {
                                            C25213b<T> c25213b3 = c25214c.f70494a.get(i3);
                                            C25213b<T> c25213b4 = c25214c.f70494a.get(i);
                                            abstractC25209a.m4065d(c25213b3.f70492a, c25213b4.f70492a, m4064e, new Date(Math.max(c25213b3.f70493b, c25213b4.f70493b)));
                                        }
                                        i3--;
                                    }
                                }
                            }
                            i++;
                            c25214c = c25214c2;
                        }
                    }
                }
                m4054a(c25218g2);
                it2 = it;
            }
        }
    }

    /* renamed from: b */
    public void m4053b(C25215d<T> c25215d) {
        C25218g<T> c25218g = this.f70508a;
        C25213b<T> c25213b = new C25213b<>(c25215d.f70497b, c25215d.f70498c);
        for (int i = 0; i < c25215d.f70500e.size() && c25218g != null; i++) {
            AbstractC25209a<T> abstractC25209a = this.f70509b;
            String str = c25215d.f70500e.get(i);
            String str2 = c25215d.f70501f.get(i);
            if (c25218g.f70505a == null) {
                c25218g.f70505a = new HashMap<>();
            }
            StringBuilder sb = new StringBuilder();
            C22128a.m8666T0(sb, c25215d.f70499d, StringConstant.COLON, str2, StringConstant.COLON);
            sb.append(str);
            String sb2 = sb.toString();
            if (c25218g.f70505a.containsKey(sb2)) {
                C25218g<T> c25218g2 = c25218g.f70505a.get(sb2);
                if (!(c25218g2.f70505a != null) && c25215d.f70500e.size() - 1 == i) {
                    String str3 = c25215d.f70496a;
                    long j = c25215d.f70498c;
                    C25214c<T> c25214c = c25218g2.f70506b;
                    if (abstractC25209a.m4068a(str3, Math.abs(j - (c25214c.f70494a.size() == 0 ? null : (C25213b) C22128a.m8714F1(c25214c.f70494a, -1)).f70493b), c25215d.f70499d)) {
                        abstractC25209a.f70485a.add(c25215d.f70497b);
                    }
                }
                long j2 = c25218g2.f70507c;
                long j3 = c25215d.f70498c;
                c25218g = c25218g2;
                if (j2 < j3) {
                    c25218g2.f70507c = j3;
                    c25218g = c25218g2;
                }
            } else {
                C25218g<T> c25218g3 = new C25218g<>(c25215d.f70498c);
                c25218g.f70505a.put(sb2, c25218g3);
                c25218g = c25218g3;
            }
            c25218g.f70506b.f70494a.add(c25213b);
        }
    }
}

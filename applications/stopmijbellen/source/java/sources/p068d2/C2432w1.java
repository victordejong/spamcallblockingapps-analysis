package p068d2;

import android.content.ContentValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: d2.w1 */
/* loaded from: classes-dex2jar.jar:d2/w1.class */
public class C2432w1 {

    /* renamed from: a */
    public final int f8609a;

    /* renamed from: b */
    public final Map<String, ArrayList<C2433a>> f8610b = new ConcurrentHashMap();

    /* renamed from: d2.w1$a */
    /* loaded from: classes-dex2jar.jar:d2/w1$a.class */
    public static class C2433a {

        /* renamed from: a */
        public final String f8611a;

        /* renamed from: b */
        public final C2438x1 f8612b;

        public C2433a(String str, C2438x1 c2438x1, RunnableC2426v1 runnableC2426v1) {
            this.f8611a = str;
            this.f8612b = c2438x1;
        }
    }

    public C2432w1(int i, RunnableC2426v1 runnableC2426v1) {
        this.f8609a = i;
    }

    /* renamed from: a */
    public C2267f4 m3558a() {
        String str;
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3740m(c2267f4, "version", this.f8609a);
        for (Map.Entry<String, ArrayList<C2433a>> entry : this.f8610b.entrySet()) {
            C2267f4 c2267f42 = new C2267f4();
            Iterator<C2433a> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                C2433a next = it2.next();
                C2200d4 c2200d4 = new C2200d4();
                C2438x1 c2438x1 = next.f8612b;
                Objects.requireNonNull(c2438x1);
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < c2438x1.f8622b.size(); i++) {
                    if (i < 0 || i >= c2438x1.f8622b.size()) {
                        str = null;
                    } else {
                        ContentValues contentValues = c2438x1.f8622b.get(i);
                        StringBuilder sb = new StringBuilder();
                        int i2 = 0;
                        while (i2 < c2438x1.f8621a.size()) {
                            if (((i2 < 0 || i2 >= c2438x1.f8621a.size()) ? -1 : c2438x1.f8621a.get(i2).f8625c) == 3) {
                                sb.append("\"");
                                sb.append(contentValues.get(c2438x1.m3556a(i2)));
                                sb.append("\"");
                            } else {
                                sb.append(contentValues.getAsString(c2438x1.m3556a(i2)));
                            }
                            sb.append(i2 == c2438x1.f8621a.size() - 1 ? "" : ',');
                            i2++;
                        }
                        str = sb.toString();
                    }
                    arrayList.add(str);
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    c2200d4.m3763b((String) it3.next());
                }
                C2227e4.m3746g(c2267f42, next.f8611a, c2200d4);
            }
            C2227e4.m3745h(c2267f4, entry.getKey(), c2267f42);
        }
        return c2267f4;
    }
}

package p193e.p1681q.p1688b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1688b.p1689e.C25190a;
/* renamed from: e.q.b.b */
/* loaded from: classes16-dex2jar.jar:e/q/b/b.class */
public class C25184b {

    /* renamed from: a */
    public final C25185c f70441a = new C25185c('*');

    public C25184b(List<String> list) {
        for (String str : list) {
            C25185c c25185c = this.f70441a;
            int i = 0;
            while (true) {
                boolean z = true;
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    Iterator<C25185c> it = c25185c.f70443b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        C25185c next = it.next();
                        if (next.f70442a == charAt) {
                            next.f70445d.incrementAndGet();
                            c25185c = next;
                            break;
                        }
                    }
                    C25185c c25185c2 = c25185c;
                    if (!z) {
                        c25185c2 = new C25185c(charAt);
                        c25185c.f70443b.add(c25185c2);
                    }
                    i++;
                    c25185c = c25185c2;
                }
            }
            c25185c.f70444c = true;
        }
    }

    /* renamed from: a */
    public final List<Character> m4124a(C25185c c25185c) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c25185c.f70443b.size(); i++) {
            arrayList.add(Character.valueOf(c25185c.f70443b.get(i).f70442a));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final C25185c m4123b(C25185c c25185c, Character ch) throws C25190a {
        for (C25185c c25185c2 : c25185c.f70443b) {
            if (c25185c2.f70442a == ch.charValue()) {
                return c25185c2;
            }
        }
        throw new C25190a(0, "Child not found");
    }
}

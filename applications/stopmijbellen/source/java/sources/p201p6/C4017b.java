package p201p6;

import java.util.Iterator;
import java.util.Set;
/* renamed from: p6.b */
/* loaded from: classes-dex2jar.jar:p6/b.class */
public class C4017b implements AbstractC4023g {

    /* renamed from: a */
    public final String f12634a;

    /* renamed from: b */
    public final C4018c f12635b;

    public C4017b(Set<AbstractC4019d> set, C4018c c4018c) {
        this.f12634a = m1512b(set);
        this.f12635b = c4018c;
    }

    /* renamed from: b */
    public static String m1512b(Set<AbstractC4019d> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC4019d> it2 = set.iterator();
        while (it2.hasNext()) {
            AbstractC4019d next = it2.next();
            sb.append(next.mo1504a());
            sb.append('/');
            sb.append(next.mo1503b());
            if (it2.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // p201p6.AbstractC4023g
    /* renamed from: a */
    public String mo1500a() {
        if (this.f12635b.m1511a().isEmpty()) {
            return this.f12634a;
        }
        return this.f12634a + ' ' + m1512b(this.f12635b.m1511a());
    }
}

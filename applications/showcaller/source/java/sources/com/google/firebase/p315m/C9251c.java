package com.google.firebase.p315m;

import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.firebase.m.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/c.class */
public class C9251c implements AbstractC9258i {

    /* renamed from: a */
    private final String f39689a;

    /* renamed from: b */
    private final C9252d f39690b;

    C9251c(Set<AbstractC9254f> set, C9252d c9252d) {
        this.f39689a = m1408d(set);
        this.f39690b = c9252d;
    }

    /* renamed from: b */
    public static C8858d<AbstractC9258i> m1410b() {
        return C8858d.m2510a(AbstractC9258i.class).m2495b(C8881q.m2437j(AbstractC9254f.class)).m2491f(C9250b.m1411b()).m2493d();
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC9258i m1409c(AbstractC8861e abstractC8861e) {
        return new C9251c(abstractC8861e.mo2414d(AbstractC9254f.class), C9252d.m1407a());
    }

    /* renamed from: d */
    private static String m1408d(Set<AbstractC9254f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC9254f> it = set.iterator();
        while (it.hasNext()) {
            AbstractC9254f next = it.next();
            sb.append(next.mo1403b());
            sb.append('/');
            sb.append(next.mo1402c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // com.google.firebase.p315m.AbstractC9258i
    /* renamed from: a */
    public String mo1396a() {
        if (this.f39690b.m1406b().isEmpty()) {
            return this.f39689a;
        }
        return this.f39689a + ' ' + m1408d(this.f39690b.m1406b());
    }
}

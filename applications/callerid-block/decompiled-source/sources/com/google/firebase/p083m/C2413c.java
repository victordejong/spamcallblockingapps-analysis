package com.google.firebase.p083m;

import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.q;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.firebase.m.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/c.class */
public class C2413c implements AbstractC2419i {

    /* renamed from: a */
    private final String f10596a;

    /* renamed from: b */
    private final C2414d f10597b;

    C2413c(Set<f> set, C2414d dVar) {
        this.f10596a = m3721d(set);
        this.f10597b = dVar;
    }

    /* renamed from: b */
    public static d<AbstractC2419i> m3723b() {
        d.b a = d.a(AbstractC2419i.class);
        a.b(q.k(f.class));
        a.f(C2412b.m3724b());
        return a.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ AbstractC2419i m3722c(e eVar) {
        return new C2413c(eVar.b(f.class), C2414d.m3720a());
    }

    /* renamed from: d */
    private static String m3721d(Set<f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb.append(next.b());
            sb.append('/');
            sb.append(next.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // com.google.firebase.p083m.AbstractC2419i
    /* renamed from: a */
    public String mo3711a() {
        if (this.f10597b.m3719b().isEmpty()) {
            return this.f10596a;
        }
        return this.f10596a + ' ' + m3721d(this.f10597b.m3719b());
    }
}

package com.google.firebase.p394f;

import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.firebase.f.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/b.class */
public final class C15746b implements AbstractC15754i {

    /* renamed from: a */
    private final String f56091a;

    /* renamed from: b */
    private final C15748d f56092b;

    C15746b(Set<AbstractC15750f> set, C15748d c15748d) {
        this.f56091a = m8467a(set);
        this.f56092b = c15748d;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC15754i m8468a(AbstractC15627e abstractC15627e) {
        return new C15746b(abstractC15627e.mo8525b(AbstractC15750f.class), C15748d.m8463b());
    }

    /* renamed from: a */
    private static String m8467a(Set<AbstractC15750f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC15750f> it2 = set.iterator();
        while (it2.hasNext()) {
            AbstractC15750f next = it2.next();
            sb.append(next.mo8461a());
            sb.append('/');
            sb.append(next.mo8459b());
            if (it2.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static C15622b<AbstractC15754i> m8466b() {
        return C15622b.m8552a(AbstractC15754i.class).m8544a(C15648r.m8509c(AbstractC15750f.class)).m8545a(C15747c.m8465a()).m8547a();
    }

    @Override // com.google.firebase.p394f.AbstractC15754i
    /* renamed from: a */
    public final String mo8455a() {
        if (this.f56092b.m8464a().isEmpty()) {
            return this.f56091a;
        }
        return this.f56091a + ' ' + m8467a(this.f56092b.m8464a());
    }
}

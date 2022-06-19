package com.google.firebase.p165e;

import com.google.firebase.components.AbstractC4884e;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.firebase.e.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/e/b.class */
public class C4929b implements AbstractC4935h {

    /* renamed from: a */
    private final String f21050a;

    /* renamed from: b */
    private final C4931d f21051b;

    C4929b(Set<AbstractC4933f> set, C4931d c4931d) {
        this.f21050a = m2019a(set);
        this.f21051b = c4931d;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC4935h m2020a(AbstractC4884e abstractC4884e) {
        return new C4929b(abstractC4884e.mo2053b(AbstractC4933f.class), C4931d.m2015b());
    }

    /* renamed from: a */
    private static String m2019a(Set<AbstractC4933f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC4933f> it = set.iterator();
        while (it.hasNext()) {
            AbstractC4933f next = it.next();
            sb.append(next.mo2013a()).append('/').append(next.mo2011b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static C4879b<AbstractC4935h> m2018b() {
        return C4879b.m2123a(AbstractC4935h.class).m2106a(C4899n.m2068c(AbstractC4933f.class)).m2107a(C4930c.m2017a()).m2103c();
    }

    @Override // com.google.firebase.p165e.AbstractC4935h
    /* renamed from: a */
    public String mo2009a() {
        return this.f21051b.m2016a().isEmpty() ? this.f21050a : this.f21050a + ' ' + m2019a(this.f21051b.m2016a());
    }
}

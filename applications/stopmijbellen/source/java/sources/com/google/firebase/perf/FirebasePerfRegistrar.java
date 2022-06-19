package com.google.firebase.perf;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p031c6.C0846a;
import p086f.C2678t;
import p093f6.C2763a;
import p093f6.C2764b;
import p093f6.C2765c;
import p118h9.C3052a;
import p161l9.AbstractC3541a;
import p201p6.C4018c;
import p201p6.C4021f;
import p211q6.C4164g;
import p218r2.AbstractC4189g;
import p241t4.C4392c;
import p264v5.C4645c;
import p283x2.C4854f;
import p286x5.AbstractC4871e;
import p293y2.C4998o;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/FirebasePerfRegistrar.class */
public class FirebasePerfRegistrar implements AbstractC5083g {
    public static C0846a providesFirebasePerformance(AbstractC5080d abstractC5080d) {
        C2763a c2763a = new C2763a((C4392c) abstractC5080d.mo40a(C4392c.class), (AbstractC4871e) abstractC5080d.mo40a(AbstractC4871e.class), abstractC5080d.mo38c(C4164g.class), abstractC5080d.mo38c(AbstractC4189g.class));
        AbstractC3541a c4998o = new C4998o(new C2765c(c2763a, 0), new C4018c(c2763a), new C4854f(c2763a, 4), new C2765c(c2763a, 1), new C2764b(c2763a, 1), new C2764b(c2763a, 0), new C2678t(c2763a), 1);
        Object obj = C3052a.f10385c;
        if (!(c4998o instanceof C3052a)) {
            c4998o = new C3052a(c4998o);
        }
        return (C0846a) c4998o.get();
    }

    @Override // p305z4.AbstractC5083g
    @Keep
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(C0846a.class);
        m56a.m53a(new C5093m(C4392c.class, 1, 0));
        m56a.m53a(new C5093m(C4164g.class, 1, 1));
        m56a.m53a(new C5093m(AbstractC4871e.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4189g.class, 1, 1));
        m56a.f15412e = C4645c.f14339c;
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-perf", "20.0.1"));
    }
}

package com.google.firebase.installations;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p367v.AbstractC9941h;
import p081h.p203i.p325c.p367v.C9938g;
import p081h.p203i.p325c.p367v.C9944j;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC9489h {
    public static /* synthetic */ AbstractC9941h lambda$getComponents$0(AbstractC9483e eVar) {
        return new C9938g((C9435c) eVar.mo15033a(C9435c.class), eVar.mo15030d(AbstractC9393i.class), eVar.mo15030d(AbstractC9861d.class));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(AbstractC9941h.class);
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15048b(AbstractC9861d.class));
        a.m15082a(C9498n.m15048b(AbstractC9393i.class));
        a.m15083a(C9944j.m13897a());
        return Arrays.asList(a.m15080b(), C9391h.m15323a("fire-installations", "16.3.4"));
    }
}

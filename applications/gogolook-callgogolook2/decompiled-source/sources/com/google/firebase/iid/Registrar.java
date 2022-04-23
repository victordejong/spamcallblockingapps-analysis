package com.google.firebase.iid;

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
import p081h.p203i.p325c.p362r.AbstractC9857d;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p364t.C9875f0;
import p081h.p203i.p325c.p364t.C9877g0;
import p081h.p203i.p325c.p364t.p365y0.AbstractC9927a;
import p081h.p203i.p325c.p367v.AbstractC9941h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements AbstractC9489h {

    /* renamed from: com.google.firebase.iid.Registrar$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static class C3673a implements AbstractC9927a {
        public C3673a(FirebaseInstanceId firebaseInstanceId) {
        }
    }

    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(AbstractC9483e eVar) {
        return new FirebaseInstanceId((C9435c) eVar.mo15033a(C9435c.class), (AbstractC9857d) eVar.mo15033a(AbstractC9857d.class), (AbstractC9393i) eVar.mo15033a(AbstractC9393i.class), (AbstractC9861d) eVar.mo15033a(AbstractC9861d.class), (AbstractC9941h) eVar.mo15033a(AbstractC9941h.class));
    }

    public static final /* synthetic */ AbstractC9927a lambda$getComponents$1$Registrar(AbstractC9483e eVar) {
        return new C3673a((FirebaseInstanceId) eVar.mo15033a(FirebaseInstanceId.class));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    @Keep
    public final List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(FirebaseInstanceId.class);
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15046c(AbstractC9857d.class));
        a.m15082a(C9498n.m15046c(AbstractC9393i.class));
        a.m15082a(C9498n.m15046c(AbstractC9861d.class));
        a.m15082a(C9498n.m15046c(AbstractC9941h.class));
        a.m15083a(C9875f0.f22363a);
        a.m15086a();
        C9480d b = a.m15080b();
        C9480d.C9482b a2 = C9480d.m15099a(AbstractC9927a.class);
        a2.m15082a(C9498n.m15046c(FirebaseInstanceId.class));
        a2.m15083a(C9877g0.f22365a);
        return Arrays.asList(b, a2.m15080b(), C9391h.m15323a("fire-iid", "20.2.3"));
    }
}

package com.google.firebase.crashlytics;

import java.util.Arrays;
import java.util.List;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p337n.C9509b;
import p081h.p203i.p325c.p337n.C9510c;
import p081h.p203i.p325c.p337n.p338d.AbstractC9512a;
import p081h.p203i.p325c.p367v.AbstractC9941h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements AbstractC9489h {
    /* renamed from: a */
    public final C9510c m31110a(AbstractC9483e eVar) {
        return C9510c.m15022a((C9435c) eVar.mo15033a(C9435c.class), (AbstractC9941h) eVar.mo15033a(AbstractC9941h.class), (AbstractC9512a) eVar.mo15033a(AbstractC9512a.class), (AbstractC9452a) eVar.mo15033a(AbstractC9452a.class));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(C9510c.class);
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15046c(AbstractC9941h.class));
        a.m15082a(C9498n.m15050a(AbstractC9452a.class));
        a.m15082a(C9498n.m15050a(AbstractC9512a.class));
        a.m15083a(C9509b.m15024a(this));
        a.m15079c();
        return Arrays.asList(a.m15080b(), C9391h.m15323a("fire-cls", "17.3.0"));
    }
}

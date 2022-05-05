package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p327b0.C9410n;
import p081h.p203i.p325c.p327b0.C9411o;
import p081h.p203i.p325c.p329j.p330d.C9450a;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p367v.AbstractC9941h;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements AbstractC9489h {
    public static /* synthetic */ C9410n lambda$getComponents$0(AbstractC9483e eVar) {
        return new C9410n((Context) eVar.mo15033a(Context.class), (C9435c) eVar.mo15033a(C9435c.class), (AbstractC9941h) eVar.mo15033a(AbstractC9941h.class), ((C9450a) eVar.mo15033a(C9450a.class)).m15127b("frc"), (AbstractC9452a) eVar.mo15033a(AbstractC9452a.class));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(C9410n.class);
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15046c(AbstractC9941h.class));
        a.m15082a(C9498n.m15046c(C9450a.class));
        a.m15082a(C9498n.m15050a(AbstractC9452a.class));
        a.m15083a(C9411o.m15274a());
        a.m15079c();
        return Arrays.asList(a.m15080b(), C9391h.m15323a("fire-rc", "20.0.1"));
    }
}

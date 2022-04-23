package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p283i.p284c.C5141a;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p351v.C6061h;
import p131c.p161d.p282e.p352w.C6078m;
import p131c.p161d.p282e.p352w.C6079n;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements AbstractC5171h {
    public static /* synthetic */ C6078m lambda$getComponents$0(AbstractC5165e eVar) {
        return new C6078m((Context) eVar.mo24330a(Context.class), (C5128c) eVar.mo24330a(C5128c.class), (AbstractC5898g) eVar.mo24330a(AbstractC5898g.class), ((C5141a) eVar.mo24330a(C5141a.class)).m24420b("frc"), (AbstractC5143a) eVar.mo24330a(AbstractC5143a.class));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C6078m.class);
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24343c(AbstractC5898g.class));
        a.m24378a(C5180n.m24343c(C5141a.class));
        a.m24378a(C5180n.m24347a(AbstractC5143a.class));
        a.m24379a(C6079n.m22111a());
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-rc", "20.0.1"));
    }
}

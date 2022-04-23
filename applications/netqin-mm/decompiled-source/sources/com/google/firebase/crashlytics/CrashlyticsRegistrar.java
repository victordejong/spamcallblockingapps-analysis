package com.google.firebase.crashlytics;

import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p289l.C5188b;
import p131c.p161d.p282e.p289l.C5189c;
import p131c.p161d.p282e.p289l.p290d.AbstractC5191a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p351v.C6061h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements AbstractC5171h {
    /* renamed from: a */
    public final C5189c m7673a(AbstractC5165e eVar) {
        return C5189c.m24321a((C5128c) eVar.mo24330a(C5128c.class), (AbstractC5898g) eVar.mo24330a(AbstractC5898g.class), (AbstractC5191a) eVar.mo24330a(AbstractC5191a.class), (AbstractC5143a) eVar.mo24330a(AbstractC5143a.class));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(C5189c.class);
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24343c(AbstractC5898g.class));
        a.m24378a(C5180n.m24347a(AbstractC5143a.class));
        a.m24378a(C5180n.m24347a(AbstractC5191a.class));
        a.m24379a(C5188b.m24322a(this));
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-cls", "17.3.0"));
    }
}

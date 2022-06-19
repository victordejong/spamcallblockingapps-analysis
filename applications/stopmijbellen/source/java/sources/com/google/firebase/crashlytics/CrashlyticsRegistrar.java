package com.google.firebase.crashlytics;

import java.util.Arrays;
import java.util.List;
import p006a5.C0021e;
import p020b5.AbstractC0730a;
import p201p6.C4021f;
import p241t4.C4392c;
import p285x4.AbstractC4857a;
import p286x5.AbstractC4871e;
import p305z4.AbstractC5083g;
import p305z4.C5075a;
import p305z4.C5077c;
import p305z4.C5093m;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements AbstractC5083g {
    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(C0021e.class);
        m56a.m53a(new C5093m(C4392c.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4871e.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC0730a.class, 0, 1));
        m56a.m53a(new C5093m(AbstractC4857a.class, 0, 2));
        m56a.f15412e = new C5075a(this, 1);
        m56a.m51c();
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-cls", "18.1.0"));
    }
}

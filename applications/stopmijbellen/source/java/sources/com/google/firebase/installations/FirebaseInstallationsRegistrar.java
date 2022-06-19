package com.google.firebase.installations;

import androidx.annotation.Keep;
import java.util.Arrays;
import java.util.List;
import p201p6.AbstractC4023g;
import p201p6.C4021f;
import p241t4.C4392c;
import p264v5.AbstractC4648f;
import p286x5.AbstractC4871e;
import p286x5.C4869d;
import p286x5.C4872f;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC5083g {
    public static /* synthetic */ AbstractC4871e lambda$getComponents$0(AbstractC5080d abstractC5080d) {
        return new C4869d((C4392c) abstractC5080d.mo40a(C4392c.class), abstractC5080d.mo38c(AbstractC4023g.class), abstractC5080d.mo38c(AbstractC4648f.class));
    }

    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4871e.class);
        m56a.m53a(new C5093m(C4392c.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4648f.class, 0, 1));
        m56a.m53a(new C5093m(AbstractC4023g.class, 0, 1));
        m56a.m50d(C4872f.f14931b);
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-installations", "17.0.0"));
    }
}

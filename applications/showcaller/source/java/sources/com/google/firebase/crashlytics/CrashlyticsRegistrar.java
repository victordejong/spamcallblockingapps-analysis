package com.google.firebase.crashlytics;

import com.google.firebase.C8849c;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.crashlytics.p293d.AbstractC8897a;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.p315m.C9256h;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements AbstractC8868i {
    /* renamed from: b */
    public C8894c m2412b(AbstractC8861e abstractC8861e) {
        return C8894c.m2405a((C8849c) abstractC8861e.mo2417a(C8849c.class), (AbstractC9214g) abstractC8861e.mo2417a(AbstractC9214g.class), (AbstractC8897a) abstractC8861e.mo2417a(AbstractC8897a.class), (AbstractC8834a) abstractC8861e.mo2417a(AbstractC8834a.class));
    }

    @Override // com.google.firebase.components.AbstractC8868i
    public List<C8858d<?>> getComponents() {
        return Arrays.asList(C8858d.m2510a(C8894c.class).m2495b(C8881q.m2438i(C8849c.class)).m2495b(C8881q.m2438i(AbstractC9214g.class)).m2495b(C8881q.m2440g(AbstractC8834a.class)).m2495b(C8881q.m2440g(AbstractC8897a.class)).m2491f(C8893b.m2406b(this)).m2492e().m2493d(), C9256h.m1400a("fire-cls", "17.4.1"));
    }
}

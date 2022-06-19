package com.criteo.publisher.p252k.p253a;

import android.content.Context;
import android.preference.PreferenceManager;
import com.criteo.publisher.p256m0.C8446q;
/* renamed from: com.criteo.publisher.k.a.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/d.class */
public final class C8374d {

    /* renamed from: a */
    private final C8378h f30063a;

    public C8374d(Context context) {
        this(new C8378h(new C8446q(PreferenceManager.getDefaultSharedPreferences(context))));
    }

    C8374d(C8378h c8378h) {
        this.f30063a = c8378h;
    }

    /* renamed from: a */
    public final AbstractC8373c m25769a() {
        AbstractC8377g m25763a = this.f30063a.m25763a();
        Boolean bool = null;
        if (m25763a == null) {
            return null;
        }
        String mo25765b = m25763a.mo25765b();
        String mo25766a = m25763a.mo25766a();
        if (!mo25765b.isEmpty()) {
            bool = Boolean.valueOf("1".equals(mo25765b));
        }
        return AbstractC8373c.m25772a(mo25766a, bool, m25763a.mo25764c());
    }
}

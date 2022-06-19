package com.iab.omid.library.applovin;

import android.content.Context;
import com.iab.omid.library.applovin.p060b.C1932b;
import com.iab.omid.library.applovin.p060b.C1935d;
import com.iab.omid.library.applovin.p060b.C1938f;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1950e;
/* renamed from: com.iab.omid.library.applovin.b */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b.class */
public class C1930b {

    /* renamed from: a */
    private boolean f7161a;

    /* renamed from: b */
    private void m4172b(Context context) {
        C1950e.m4083a(context, "Application Context cannot be null");
    }

    /* renamed from: a */
    public String m4176a() {
        return "1.3.30-Applovin";
    }

    /* renamed from: a */
    public void m4175a(Context context) {
        m4172b(context);
        if (!m4173b()) {
            m4174a(true);
            C1938f.m4132a().m4130a(context);
            C1932b.m4164a().m4163a(context);
            C1946b.m4105a(context);
            C1935d.m4152a().m4151a(context);
        }
    }

    /* renamed from: a */
    public void m4174a(boolean z) {
        this.f7161a = z;
    }

    /* renamed from: b */
    public boolean m4173b() {
        return this.f7161a;
    }
}

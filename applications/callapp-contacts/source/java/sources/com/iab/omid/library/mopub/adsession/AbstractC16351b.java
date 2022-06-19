package com.iab.omid.library.mopub.adsession;

import android.view.View;
import com.iab.omid.library.mopub.C16339a;
import com.iab.omid.library.mopub.p432d.C16382d;
/* renamed from: com.iab.omid.library.mopub.adsession.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/b.class */
public abstract class AbstractC16351b {
    /* renamed from: a */
    public static AbstractC16351b m7376a(AdSessionConfiguration adSessionConfiguration, C16352c c16352c) {
        if (C16339a.m7384b()) {
            C16382d.m7325a(adSessionConfiguration, "AdSessionConfiguration is null");
            C16382d.m7325a(c16352c, "AdSessionContext is null");
            return new C16360k(adSessionConfiguration, c16352c);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public abstract void mo7374a();

    /* renamed from: a */
    public abstract void mo7373a(View view);

    /* renamed from: a */
    public abstract void mo7372a(View view, EnumC16355f enumC16355f, String str);

    /* renamed from: b */
    public abstract void mo7371b();
}

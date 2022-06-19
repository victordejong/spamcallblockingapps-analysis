package com.iab.omid.library.pubnativenet.adsession;

import android.view.View;
import com.iab.omid.library.pubnativenet.C16407a;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/b.class */
public abstract class AbstractC16418b {
    /* renamed from: a */
    public static AbstractC16418b m7278a(AdSessionConfiguration adSessionConfiguration, C16419c c16419c) {
        if (C16407a.m7285a()) {
            C16448d.m7223a(adSessionConfiguration, "AdSessionConfiguration is null");
            C16448d.m7223a(c16419c, "AdSessionContext is null");
            return new C16427k(adSessionConfiguration, c16419c);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public abstract void mo7275a();

    /* renamed from: a */
    public abstract void mo7274a(View view);

    /* renamed from: a */
    public abstract void mo7273a(View view, EnumC16422f enumC16422f, String str);

    /* renamed from: b */
    public abstract void mo7272b();

    /* renamed from: b */
    public abstract void mo7271b(View view);

    /* renamed from: c */
    public abstract void mo7270c();
}

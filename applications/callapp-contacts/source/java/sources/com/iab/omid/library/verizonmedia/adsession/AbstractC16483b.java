package com.iab.omid.library.verizonmedia.adsession;

import android.view.View;
import com.iab.omid.library.verizonmedia.C16473a;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/b.class */
public abstract class AbstractC16483b {
    /* renamed from: a */
    public static AbstractC16483b m7158a(AdSessionConfiguration adSessionConfiguration, C16484c c16484c) {
        if (C16473a.m7181a()) {
            C16514d.m7102a(adSessionConfiguration, "AdSessionConfiguration is null");
            C16514d.m7102a(c16484c, "AdSessionContext is null");
            return new C16492k(adSessionConfiguration, c16484c);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    /* renamed from: a */
    public abstract void mo7154a();

    /* renamed from: a */
    public abstract void mo7153a(View view);

    /* renamed from: a */
    public abstract void mo7152a(View view, EnumC16487f enumC16487f);

    /* renamed from: b */
    public abstract void mo7151b();

    /* renamed from: c */
    public abstract void mo7149c();
}

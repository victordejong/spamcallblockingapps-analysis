package com.criteo.publisher.model;

import com.criteo.publisher.model.C8488i;
import com.criteo.publisher.p256m0.EnumC8423a;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.criteo.publisher.model.q */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/q.class */
public abstract class AbstractC8501q {
    /* renamed from: a */
    public static AbstractC8501q m25564a(String str, String str2, EnumC8423a enumC8423a, AdSize adSize) {
        return new C8488i(str, str2, enumC8423a == EnumC8423a.CRITEO_CUSTOM_NATIVE ? Boolean.TRUE : null, enumC8423a == EnumC8423a.CRITEO_INTERSTITIAL ? Boolean.TRUE : null, Collections.singletonList(adSize.getFormattedSize()));
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8501q> m25565a(C15965f c15965f) {
        return new C8488i.C8489a(c15965f);
    }

    @AbstractC15952b(m7988a = "impId")
    /* renamed from: a */
    public abstract String mo25566a();

    @AbstractC15952b(m7988a = "placementId")
    /* renamed from: b */
    public abstract String mo25563b();

    @AbstractC15952b(m7988a = "sizes")
    /* renamed from: c */
    public abstract Collection<String> mo25562c();

    @AbstractC15952b(m7988a = AdType.INTERSTITIAL)
    /* renamed from: d */
    public abstract Boolean mo25561d();

    @AbstractC15952b(m7988a = "isNative")
    /* renamed from: e */
    public abstract Boolean mo25560e();
}

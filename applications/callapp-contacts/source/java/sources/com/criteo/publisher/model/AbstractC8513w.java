package com.criteo.publisher.model;

import com.criteo.publisher.model.C8492k;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.mopub.common.Constants;
/* renamed from: com.criteo.publisher.model.w */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/w.class */
public abstract class AbstractC8513w {
    /* renamed from: a */
    public static AbstractC8513w m25505a(String str, String str2, String str3, int i, String str4) {
        return new C8492k(str, str2, str3, i, str4, Constants.ANDROID_PLATFORM);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8513w> m25506a(C15965f c15965f) {
        return new C8492k.C8493a(c15965f);
    }

    /* renamed from: a */
    public abstract String mo25507a();

    @AbstractC15952b(m7988a = "cpId")
    /* renamed from: b */
    public abstract String mo25504b();

    /* renamed from: c */
    public abstract String mo25503c();

    /* renamed from: d */
    public abstract String mo25502d();

    @AbstractC15952b(m7988a = "rtbProfileId")
    /* renamed from: e */
    public abstract int mo25501e();

    /* renamed from: f */
    public abstract String mo25500f();
}

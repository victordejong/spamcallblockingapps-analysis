package com.criteo.publisher.model;

import com.criteo.publisher.model.C8496m;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.mopub.common.Constants;
import java.util.Map;
/* renamed from: com.criteo.publisher.model.z */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/z.class */
public abstract class AbstractC8516z {
    /* renamed from: a */
    public static AbstractC8516z m25483a(String str, String str2, String str3, String str4, Map<String, Object> map) {
        return new C8496m(str, "gaid", Constants.ANDROID_PLATFORM, str2, str3, str4, map);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8516z> m25484a(C15965f c15965f) {
        return new C8496m.C8497a(c15965f);
    }

    /* renamed from: a */
    public abstract String mo25485a();

    /* renamed from: b */
    public abstract String mo25482b();

    /* renamed from: c */
    public abstract String mo25481c();

    /* renamed from: d */
    public abstract Map<String, Object> mo25480d();

    /* renamed from: e */
    public abstract String mo25479e();

    /* renamed from: f */
    public abstract String mo25478f();

    /* renamed from: g */
    public abstract String mo25477g();
}

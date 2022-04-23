package com.criteo.publisher.model;

import com.criteo.publisher.model.m;
import com.google.gson.f;
import com.google.gson.j;
import com.mopub.common.Constants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/z.class */
public abstract class z {
    public static z a(String str, String str2, String str3, String str4, Map<String, Object> map) {
        return new m(str, "gaid", Constants.ANDROID_PLATFORM, str2, str3, str4, map);
    }

    public static j<z> a(f fVar) {
        return new m.a(fVar);
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public abstract Map<String, Object> d();

    public abstract String e();

    public abstract String f();

    public abstract String g();
}

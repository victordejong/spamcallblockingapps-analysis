package com.criteo.publisher.model;

import com.criteo.publisher.model.j;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/v.class */
public abstract class v {
    public static v a(String str, String str2, Map<String, Object> map) {
        return new j(str, str2, map);
    }

    public static j<v> a(f fVar) {
        return new j.a(fVar);
    }

    public abstract String a();

    @b(a = "cpId")
    public abstract String b();

    public abstract Map<String, Object> c();
}

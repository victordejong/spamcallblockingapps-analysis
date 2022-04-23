package com.criteo.publisher.model;

import com.criteo.publisher.k.a.c;
import com.criteo.publisher.model.h;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/o.class */
public abstract class o {
    public static o a(String str, v vVar, z zVar, String str2, int i, c cVar, List<q> list) {
        return new h(str, vVar, zVar, str2, i, cVar, list);
    }

    public static j<o> a(f fVar) {
        return new h.a(fVar);
    }

    @b(a = "gdprConsent")
    public abstract c a();

    public abstract String b();

    public abstract int c();

    public abstract v d();

    public abstract String e();

    public abstract List<q> f();

    public abstract z g();
}

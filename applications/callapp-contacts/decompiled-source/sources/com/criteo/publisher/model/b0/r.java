package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.l;
import com.google.gson.f;
import com.google.gson.j;
import java.net.URI;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/r.class */
public abstract class r {
    public static j<r> a(f fVar) {
        return new l.a(fVar);
    }

    public abstract String a();

    public abstract URI b();

    public abstract String c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract o d();

    public URL e() {
        return d().a();
    }

    public abstract String f();

    public abstract String g();
}

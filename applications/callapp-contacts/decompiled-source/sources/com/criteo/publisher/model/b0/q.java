package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.k;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
import java.net.URI;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/q.class */
public abstract class q {
    public static j<q> a(f fVar) {
        return new k.a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "optoutClickUrl")
    public abstract URI a();

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "optoutImageUrl")
    public abstract URL b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "longLegalText")
    public abstract String c();
}

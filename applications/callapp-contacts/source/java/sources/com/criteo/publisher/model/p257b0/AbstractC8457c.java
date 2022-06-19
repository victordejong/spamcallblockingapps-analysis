package com.criteo.publisher.model.p257b0;

import java.net.URL;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b0.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/c.class */
public abstract class AbstractC8457c extends AbstractC8476o {

    /* renamed from: a */
    private final URL f30240a;

    public AbstractC8457c(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f30240a = url;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8476o
    /* renamed from: a */
    public URL mo25617a() {
        return this.f30240a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8476o)) {
            return false;
        }
        return this.f30240a.equals(((AbstractC8476o) obj).mo25617a());
    }

    public int hashCode() {
        return this.f30240a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImage{url=" + this.f30240a + "}";
    }
}

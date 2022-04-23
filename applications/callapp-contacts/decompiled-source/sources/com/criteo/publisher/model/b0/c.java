package com.criteo.publisher.model.b0;

import java.net.URL;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/c.class */
public abstract class c extends o {

    /* renamed from: a  reason: collision with root package name */
    private final URL f17550a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(URL url) {
        Objects.requireNonNull(url, "Null url");
        this.f17550a = url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.o
    public URL a() {
        return this.f17550a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return this.f17550a.equals(((o) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f17550a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImage{url=" + this.f17550a + "}";
    }
}

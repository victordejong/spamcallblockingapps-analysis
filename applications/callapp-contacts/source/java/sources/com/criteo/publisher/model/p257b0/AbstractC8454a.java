package com.criteo.publisher.model.p257b0;

import java.net.URI;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b0.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/a.class */
public abstract class AbstractC8454a extends AbstractC8473m {

    /* renamed from: a */
    private final String f30228a;

    /* renamed from: b */
    private final String f30229b;

    /* renamed from: c */
    private final URI f30230c;

    /* renamed from: d */
    private final AbstractC8476o f30231d;

    public AbstractC8454a(String str, String str2, URI uri, AbstractC8476o abstractC8476o) {
        Objects.requireNonNull(str, "Null domain");
        this.f30228a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f30229b = str2;
        Objects.requireNonNull(uri, "Null logoClickUrl");
        this.f30230c = uri;
        Objects.requireNonNull(abstractC8476o, "Null logo");
        this.f30231d = abstractC8476o;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8473m
    /* renamed from: a */
    public String mo25645a() {
        return this.f30229b;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8473m
    /* renamed from: b */
    public String mo25643b() {
        return this.f30228a;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8473m
    /* renamed from: c */
    public AbstractC8476o mo25642c() {
        return this.f30231d;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8473m
    /* renamed from: d */
    public URI mo25641d() {
        return this.f30230c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8473m)) {
            return false;
        }
        AbstractC8473m abstractC8473m = (AbstractC8473m) obj;
        if (!this.f30228a.equals(abstractC8473m.mo25643b()) || !this.f30229b.equals(abstractC8473m.mo25645a()) || !this.f30230c.equals(abstractC8473m.mo25641d()) || !this.f30231d.equals(abstractC8473m.mo25642c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f30228a.hashCode() ^ 1000003) * 1000003) ^ this.f30229b.hashCode()) * 1000003) ^ this.f30230c.hashCode()) * 1000003) ^ this.f30231d.hashCode();
    }

    public String toString() {
        return "NativeAdvertiser{domain=" + this.f30228a + ", description=" + this.f30229b + ", logoClickUrl=" + this.f30230c + ", logo=" + this.f30231d + "}";
    }
}

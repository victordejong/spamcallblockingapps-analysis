package com.criteo.publisher.model.b0;

import java.net.URI;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/f.class */
public abstract class f extends r {

    /* renamed from: a  reason: collision with root package name */
    private final String f17555a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17556b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17557c;

    /* renamed from: d  reason: collision with root package name */
    private final URI f17558d;
    private final String e;
    private final o f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, String str3, URI uri, String str4, o oVar) {
        Objects.requireNonNull(str, "Null title");
        this.f17555a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f17556b = str2;
        Objects.requireNonNull(str3, "Null price");
        this.f17557c = str3;
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f17558d = uri;
        Objects.requireNonNull(str4, "Null callToAction");
        this.e = str4;
        Objects.requireNonNull(oVar, "Null image");
        this.f = oVar;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String a() {
        return this.e;
    }

    @Override // com.criteo.publisher.model.b0.r
    public URI b() {
        return this.f17558d;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String c() {
        return this.f17556b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.r
    public o d() {
        return this.f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (!this.f17555a.equals(rVar.g()) || !this.f17556b.equals(rVar.c()) || !this.f17557c.equals(rVar.f()) || !this.f17558d.equals(rVar.b()) || !this.e.equals(rVar.a()) || !this.f.equals(rVar.d())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String f() {
        return this.f17557c;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String g() {
        return this.f17555a;
    }

    public int hashCode() {
        return ((((((((((this.f17555a.hashCode() ^ 1000003) * 1000003) ^ this.f17556b.hashCode()) * 1000003) ^ this.f17557c.hashCode()) * 1000003) ^ this.f17558d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f.hashCode();
    }

    public String toString() {
        return "NativeProduct{title=" + this.f17555a + ", description=" + this.f17556b + ", price=" + this.f17557c + ", clickUrl=" + this.f17558d + ", callToAction=" + this.e + ", image=" + this.f + "}";
    }
}

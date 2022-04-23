package com.criteo.publisher.model.b0;

import java.net.URI;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/a.class */
public abstract class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private final String f17538a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17539b;

    /* renamed from: c  reason: collision with root package name */
    private final URI f17540c;

    /* renamed from: d  reason: collision with root package name */
    private final o f17541d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2, URI uri, o oVar) {
        Objects.requireNonNull(str, "Null domain");
        this.f17538a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f17539b = str2;
        Objects.requireNonNull(uri, "Null logoClickUrl");
        this.f17540c = uri;
        Objects.requireNonNull(oVar, "Null logo");
        this.f17541d = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public String a() {
        return this.f17539b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public String b() {
        return this.f17538a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public o c() {
        return this.f17541d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public URI d() {
        return this.f17540c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (!this.f17538a.equals(mVar.b()) || !this.f17539b.equals(mVar.a()) || !this.f17540c.equals(mVar.d()) || !this.f17541d.equals(mVar.c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f17538a.hashCode() ^ 1000003) * 1000003) ^ this.f17539b.hashCode()) * 1000003) ^ this.f17540c.hashCode()) * 1000003) ^ this.f17541d.hashCode();
    }

    public String toString() {
        return "NativeAdvertiser{domain=" + this.f17538a + ", description=" + this.f17539b + ", logoClickUrl=" + this.f17540c + ", logo=" + this.f17541d + "}";
    }
}

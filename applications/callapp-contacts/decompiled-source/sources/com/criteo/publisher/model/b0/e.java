package com.criteo.publisher.model.b0;

import com.google.gson.annotations.b;
import java.net.URI;
import java.net.URL;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/e.class */
public abstract class e extends q {

    /* renamed from: a  reason: collision with root package name */
    private final URI f17552a;

    /* renamed from: b  reason: collision with root package name */
    private final URL f17553b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17554c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(URI uri, URL url, String str) {
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f17552a = uri;
        Objects.requireNonNull(url, "Null imageUrl");
        this.f17553b = url;
        Objects.requireNonNull(str, "Null legalText");
        this.f17554c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @b(a = "optoutClickUrl")
    public URI a() {
        return this.f17552a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @b(a = "optoutImageUrl")
    public URL b() {
        return this.f17553b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @b(a = "longLegalText")
    public String c() {
        return this.f17554c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (!this.f17552a.equals(qVar.a()) || !this.f17553b.equals(qVar.b()) || !this.f17554c.equals(qVar.c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f17552a.hashCode() ^ 1000003) * 1000003) ^ this.f17553b.hashCode()) * 1000003) ^ this.f17554c.hashCode();
    }

    public String toString() {
        return "NativePrivacy{clickUrl=" + this.f17552a + ", imageUrl=" + this.f17553b + ", legalText=" + this.f17554c + "}";
    }
}

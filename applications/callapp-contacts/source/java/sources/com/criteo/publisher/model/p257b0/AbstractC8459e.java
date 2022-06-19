package com.criteo.publisher.model.p257b0;

import com.google.gson.annotations.AbstractC15952b;
import java.net.URI;
import java.net.URL;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b0.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/e.class */
public abstract class AbstractC8459e extends AbstractC8478q {

    /* renamed from: a */
    private final URI f30242a;

    /* renamed from: b */
    private final URL f30243b;

    /* renamed from: c */
    private final String f30244c;

    public AbstractC8459e(URI uri, URL url, String str) {
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f30242a = uri;
        Objects.requireNonNull(url, "Null imageUrl");
        this.f30243b = url;
        Objects.requireNonNull(str, "Null legalText");
        this.f30244c = str;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8478q
    @AbstractC15952b(m7988a = "optoutClickUrl")
    /* renamed from: a */
    public URI mo25613a() {
        return this.f30242a;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8478q
    @AbstractC15952b(m7988a = "optoutImageUrl")
    /* renamed from: b */
    public URL mo25611b() {
        return this.f30243b;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8478q
    @AbstractC15952b(m7988a = "longLegalText")
    /* renamed from: c */
    public String mo25610c() {
        return this.f30244c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8478q)) {
            return false;
        }
        AbstractC8478q abstractC8478q = (AbstractC8478q) obj;
        if (!this.f30242a.equals(abstractC8478q.mo25613a()) || !this.f30243b.equals(abstractC8478q.mo25611b()) || !this.f30244c.equals(abstractC8478q.mo25610c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f30242a.hashCode() ^ 1000003) * 1000003) ^ this.f30243b.hashCode()) * 1000003) ^ this.f30244c.hashCode();
    }

    public String toString() {
        return "NativePrivacy{clickUrl=" + this.f30242a + ", imageUrl=" + this.f30243b + ", legalText=" + this.f30244c + "}";
    }
}

package com.criteo.publisher.model.p257b0;

import java.net.URI;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b0.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/f.class */
public abstract class AbstractC8460f extends AbstractC8479r {

    /* renamed from: a */
    private final String f30245a;

    /* renamed from: b */
    private final String f30246b;

    /* renamed from: c */
    private final String f30247c;

    /* renamed from: d */
    private final URI f30248d;

    /* renamed from: e */
    private final String f30249e;

    /* renamed from: f */
    private final AbstractC8476o f30250f;

    public AbstractC8460f(String str, String str2, String str3, URI uri, String str4, AbstractC8476o abstractC8476o) {
        Objects.requireNonNull(str, "Null title");
        this.f30245a = str;
        Objects.requireNonNull(str2, "Null description");
        this.f30246b = str2;
        Objects.requireNonNull(str3, "Null price");
        this.f30247c = str3;
        Objects.requireNonNull(uri, "Null clickUrl");
        this.f30248d = uri;
        Objects.requireNonNull(str4, "Null callToAction");
        this.f30249e = str4;
        Objects.requireNonNull(abstractC8476o, "Null image");
        this.f30250f = abstractC8476o;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: a */
    public String mo25609a() {
        return this.f30249e;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: b */
    public URI mo25607b() {
        return this.f30248d;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: c */
    public String mo25606c() {
        return this.f30246b;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: d */
    public AbstractC8476o mo25605d() {
        return this.f30250f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8479r)) {
            return false;
        }
        AbstractC8479r abstractC8479r = (AbstractC8479r) obj;
        if (!this.f30245a.equals(abstractC8479r.mo25602g()) || !this.f30246b.equals(abstractC8479r.mo25606c()) || !this.f30247c.equals(abstractC8479r.mo25603f()) || !this.f30248d.equals(abstractC8479r.mo25607b()) || !this.f30249e.equals(abstractC8479r.mo25609a()) || !this.f30250f.equals(abstractC8479r.mo25605d())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: f */
    public String mo25603f() {
        return this.f30247c;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8479r
    /* renamed from: g */
    public String mo25602g() {
        return this.f30245a;
    }

    public int hashCode() {
        return ((((((((((this.f30245a.hashCode() ^ 1000003) * 1000003) ^ this.f30246b.hashCode()) * 1000003) ^ this.f30247c.hashCode()) * 1000003) ^ this.f30248d.hashCode()) * 1000003) ^ this.f30249e.hashCode()) * 1000003) ^ this.f30250f.hashCode();
    }

    public String toString() {
        return "NativeProduct{title=" + this.f30245a + ", description=" + this.f30246b + ", price=" + this.f30247c + ", clickUrl=" + this.f30248d + ", callToAction=" + this.f30249e + ", image=" + this.f30250f + "}";
    }
}

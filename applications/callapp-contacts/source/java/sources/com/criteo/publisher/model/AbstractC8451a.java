package com.criteo.publisher.model;

import com.criteo.publisher.p252k.p253a.AbstractC8373c;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/a.class */
public abstract class AbstractC8451a extends AbstractC8499o {

    /* renamed from: a */
    private final String f30212a;

    /* renamed from: b */
    private final AbstractC8512v f30213b;

    /* renamed from: c */
    private final AbstractC8516z f30214c;

    /* renamed from: d */
    private final String f30215d;

    /* renamed from: e */
    private final int f30216e;

    /* renamed from: f */
    private final AbstractC8373c f30217f;

    /* renamed from: g */
    private final List<AbstractC8501q> f30218g;

    public AbstractC8451a(String str, AbstractC8512v abstractC8512v, AbstractC8516z abstractC8516z, String str2, int i, AbstractC8373c abstractC8373c, List<AbstractC8501q> list) {
        Objects.requireNonNull(str, "Null id");
        this.f30212a = str;
        Objects.requireNonNull(abstractC8512v, "Null publisher");
        this.f30213b = abstractC8512v;
        Objects.requireNonNull(abstractC8516z, "Null user");
        this.f30214c = abstractC8516z;
        Objects.requireNonNull(str2, "Null sdkVersion");
        this.f30215d = str2;
        this.f30216e = i;
        this.f30217f = abstractC8373c;
        Objects.requireNonNull(list, "Null slots");
        this.f30218g = list;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    @AbstractC15952b(m7988a = "gdprConsent")
    /* renamed from: a */
    public AbstractC8373c mo25581a() {
        return this.f30217f;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: b */
    public String mo25578b() {
        return this.f30212a;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: c */
    public int mo25577c() {
        return this.f30216e;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: d */
    public AbstractC8512v mo25576d() {
        return this.f30213b;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: e */
    public String mo25575e() {
        return this.f30215d;
    }

    public boolean equals(Object obj) {
        AbstractC8373c abstractC8373c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8499o)) {
            return false;
        }
        AbstractC8499o abstractC8499o = (AbstractC8499o) obj;
        if (!this.f30212a.equals(abstractC8499o.mo25578b()) || !this.f30213b.equals(abstractC8499o.mo25576d()) || !this.f30214c.equals(abstractC8499o.mo25573g()) || !this.f30215d.equals(abstractC8499o.mo25575e()) || this.f30216e != abstractC8499o.mo25577c() || ((abstractC8373c = this.f30217f) != null ? !abstractC8373c.equals(abstractC8499o.mo25581a()) : abstractC8499o.mo25581a() != null) || !this.f30218g.equals(abstractC8499o.mo25574f())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: f */
    public List<AbstractC8501q> mo25574f() {
        return this.f30218g;
    }

    @Override // com.criteo.publisher.model.AbstractC8499o
    /* renamed from: g */
    public AbstractC8516z mo25573g() {
        return this.f30214c;
    }

    public int hashCode() {
        int hashCode = this.f30212a.hashCode();
        int hashCode2 = this.f30213b.hashCode();
        int hashCode3 = this.f30214c.hashCode();
        int hashCode4 = this.f30215d.hashCode();
        int i = this.f30216e;
        AbstractC8373c abstractC8373c = this.f30217f;
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i) * 1000003) ^ (abstractC8373c == null ? 0 : abstractC8373c.hashCode())) * 1000003) ^ this.f30218g.hashCode();
    }

    public String toString() {
        return "CdbRequest{id=" + this.f30212a + ", publisher=" + this.f30213b + ", user=" + this.f30214c + ", sdkVersion=" + this.f30215d + ", profileId=" + this.f30216e + ", gdprData=" + this.f30217f + ", slots=" + this.f30218g + "}";
    }
}

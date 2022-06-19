package com.criteo.publisher.p252k.p253a;

import java.util.Objects;
/* renamed from: com.criteo.publisher.k.a.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/a.class */
public abstract class AbstractC8370a extends AbstractC8373c {

    /* renamed from: a */
    private final String f30056a;

    /* renamed from: b */
    private final Boolean f30057b;

    /* renamed from: c */
    private final Integer f30058c;

    public AbstractC8370a(String str, Boolean bool, Integer num) {
        Objects.requireNonNull(str, "Null consentData");
        this.f30056a = str;
        this.f30057b = bool;
        Objects.requireNonNull(num, "Null version");
        this.f30058c = num;
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8373c
    /* renamed from: a */
    public final String mo25774a() {
        return this.f30056a;
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8373c
    /* renamed from: b */
    public final Boolean mo25771b() {
        return this.f30057b;
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8373c
    /* renamed from: c */
    public final Integer mo25770c() {
        return this.f30058c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8373c)) {
            return false;
        }
        AbstractC8373c abstractC8373c = (AbstractC8373c) obj;
        if (!this.f30056a.equals(abstractC8373c.mo25774a()) || ((bool = this.f30057b) != null ? !bool.equals(abstractC8373c.mo25771b()) : abstractC8373c.mo25771b() != null) || !this.f30058c.equals(abstractC8373c.mo25770c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f30056a.hashCode();
        Boolean bool = this.f30057b;
        return ((((hashCode ^ 1000003) * 1000003) ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f30058c.hashCode();
    }

    public String toString() {
        return "GdprData{consentData=" + this.f30056a + ", gdprApplies=" + this.f30057b + ", version=" + this.f30058c + "}";
    }
}

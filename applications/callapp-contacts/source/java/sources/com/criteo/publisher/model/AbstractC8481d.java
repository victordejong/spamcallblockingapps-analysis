package com.criteo.publisher.model;

import com.google.gson.annotations.AbstractC15952b;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/d.class */
public abstract class AbstractC8481d extends AbstractC8513w {

    /* renamed from: a */
    private final String f30275a;

    /* renamed from: b */
    private final String f30276b;

    /* renamed from: c */
    private final String f30277c;

    /* renamed from: d */
    private final int f30278d;

    /* renamed from: e */
    private final String f30279e;

    /* renamed from: f */
    private final String f30280f;

    public AbstractC8481d(String str, String str2, String str3, int i, String str4, String str5) {
        Objects.requireNonNull(str, "Null criteoPublisherId");
        this.f30275a = str;
        Objects.requireNonNull(str2, "Null bundleId");
        this.f30276b = str2;
        Objects.requireNonNull(str3, "Null sdkVersion");
        this.f30277c = str3;
        this.f30278d = i;
        this.f30279e = str4;
        Objects.requireNonNull(str5, "Null deviceOs");
        this.f30280f = str5;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    /* renamed from: a */
    public String mo25507a() {
        return this.f30276b;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    @AbstractC15952b(m7988a = "cpId")
    /* renamed from: b */
    public String mo25504b() {
        return this.f30275a;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    /* renamed from: c */
    public String mo25503c() {
        return this.f30279e;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    /* renamed from: d */
    public String mo25502d() {
        return this.f30280f;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    @AbstractC15952b(m7988a = "rtbProfileId")
    /* renamed from: e */
    public int mo25501e() {
        return this.f30278d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8513w)) {
            return false;
        }
        AbstractC8513w abstractC8513w = (AbstractC8513w) obj;
        if (!this.f30275a.equals(abstractC8513w.mo25504b()) || !this.f30276b.equals(abstractC8513w.mo25507a()) || !this.f30277c.equals(abstractC8513w.mo25500f()) || this.f30278d != abstractC8513w.mo25501e() || ((str = this.f30279e) != null ? !str.equals(abstractC8513w.mo25503c()) : abstractC8513w.mo25503c() != null) || !this.f30280f.equals(abstractC8513w.mo25502d())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.AbstractC8513w
    /* renamed from: f */
    public String mo25500f() {
        return this.f30277c;
    }

    public int hashCode() {
        int hashCode = this.f30275a.hashCode();
        int hashCode2 = this.f30276b.hashCode();
        int hashCode3 = this.f30277c.hashCode();
        int i = this.f30278d;
        String str = this.f30279e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f30280f.hashCode();
    }

    public String toString() {
        return "RemoteConfigRequest{criteoPublisherId=" + this.f30275a + ", bundleId=" + this.f30276b + ", sdkVersion=" + this.f30277c + ", profileId=" + this.f30278d + ", deviceId=" + this.f30279e + ", deviceOs=" + this.f30280f + "}";
    }
}

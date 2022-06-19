package com.criteo.publisher.model;

import com.google.gson.annotations.AbstractC15952b;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/c.class */
public abstract class AbstractC8480c extends AbstractC8512v {

    /* renamed from: a */
    private final String f30272a;

    /* renamed from: b */
    private final String f30273b;

    /* renamed from: c */
    private final Map<String, Object> f30274c;

    public AbstractC8480c(String str, String str2, Map<String, Object> map) {
        Objects.requireNonNull(str, "Null bundleId");
        this.f30272a = str;
        Objects.requireNonNull(str2, "Null criteoPublisherId");
        this.f30273b = str2;
        Objects.requireNonNull(map, "Null ext");
        this.f30274c = map;
    }

    @Override // com.criteo.publisher.model.AbstractC8512v
    /* renamed from: a */
    public String mo25512a() {
        return this.f30272a;
    }

    @Override // com.criteo.publisher.model.AbstractC8512v
    @AbstractC15952b(m7988a = "cpId")
    /* renamed from: b */
    public String mo25509b() {
        return this.f30273b;
    }

    @Override // com.criteo.publisher.model.AbstractC8512v
    /* renamed from: c */
    public Map<String, Object> mo25508c() {
        return this.f30274c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8512v)) {
            return false;
        }
        AbstractC8512v abstractC8512v = (AbstractC8512v) obj;
        if (!this.f30272a.equals(abstractC8512v.mo25512a()) || !this.f30273b.equals(abstractC8512v.mo25509b()) || !this.f30274c.equals(abstractC8512v.mo25508c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f30272a.hashCode() ^ 1000003) * 1000003) ^ this.f30273b.hashCode()) * 1000003) ^ this.f30274c.hashCode();
    }

    public String toString() {
        return "Publisher{bundleId=" + this.f30272a + ", criteoPublisherId=" + this.f30273b + ", ext=" + this.f30274c + "}";
    }
}

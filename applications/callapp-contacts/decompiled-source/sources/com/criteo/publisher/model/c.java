package com.criteo.publisher.model;

import com.google.gson.annotations.b;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/c.class */
public abstract class c extends v {

    /* renamed from: a  reason: collision with root package name */
    private final String f17579a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17580b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f17581c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, Map<String, Object> map) {
        Objects.requireNonNull(str, "Null bundleId");
        this.f17579a = str;
        Objects.requireNonNull(str2, "Null criteoPublisherId");
        this.f17580b = str2;
        Objects.requireNonNull(map, "Null ext");
        this.f17581c = map;
    }

    @Override // com.criteo.publisher.model.v
    public String a() {
        return this.f17579a;
    }

    @Override // com.criteo.publisher.model.v
    @b(a = "cpId")
    public String b() {
        return this.f17580b;
    }

    @Override // com.criteo.publisher.model.v
    public Map<String, Object> c() {
        return this.f17581c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (!this.f17579a.equals(vVar.a()) || !this.f17580b.equals(vVar.b()) || !this.f17581c.equals(vVar.c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f17579a.hashCode() ^ 1000003) * 1000003) ^ this.f17580b.hashCode()) * 1000003) ^ this.f17581c.hashCode();
    }

    public String toString() {
        return "Publisher{bundleId=" + this.f17579a + ", criteoPublisherId=" + this.f17580b + ", ext=" + this.f17581c + "}";
    }
}

package com.criteo.publisher.model;

import com.criteo.publisher.k.a.c;
import com.google.gson.annotations.b;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/a.class */
public abstract class a extends o {

    /* renamed from: a  reason: collision with root package name */
    private final String f17526a;

    /* renamed from: b  reason: collision with root package name */
    private final v f17527b;

    /* renamed from: c  reason: collision with root package name */
    private final z f17528c;

    /* renamed from: d  reason: collision with root package name */
    private final String f17529d;
    private final int e;
    private final c f;
    private final List<q> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, v vVar, z zVar, String str2, int i, c cVar, List<q> list) {
        Objects.requireNonNull(str, "Null id");
        this.f17526a = str;
        Objects.requireNonNull(vVar, "Null publisher");
        this.f17527b = vVar;
        Objects.requireNonNull(zVar, "Null user");
        this.f17528c = zVar;
        Objects.requireNonNull(str2, "Null sdkVersion");
        this.f17529d = str2;
        this.e = i;
        this.f = cVar;
        Objects.requireNonNull(list, "Null slots");
        this.g = list;
    }

    @Override // com.criteo.publisher.model.o
    @b(a = "gdprConsent")
    public c a() {
        return this.f;
    }

    @Override // com.criteo.publisher.model.o
    public String b() {
        return this.f17526a;
    }

    @Override // com.criteo.publisher.model.o
    public int c() {
        return this.e;
    }

    @Override // com.criteo.publisher.model.o
    public v d() {
        return this.f17527b;
    }

    @Override // com.criteo.publisher.model.o
    public String e() {
        return this.f17529d;
    }

    public boolean equals(Object obj) {
        c cVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (!this.f17526a.equals(oVar.b()) || !this.f17527b.equals(oVar.d()) || !this.f17528c.equals(oVar.g()) || !this.f17529d.equals(oVar.e()) || this.e != oVar.c() || ((cVar = this.f) != null ? !cVar.equals(oVar.a()) : oVar.a() != null) || !this.g.equals(oVar.f())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.o
    public List<q> f() {
        return this.g;
    }

    @Override // com.criteo.publisher.model.o
    public z g() {
        return this.f17528c;
    }

    public int hashCode() {
        int hashCode = this.f17526a.hashCode();
        int hashCode2 = this.f17527b.hashCode();
        int hashCode3 = this.f17528c.hashCode();
        int hashCode4 = this.f17529d.hashCode();
        int i = this.e;
        c cVar = this.f;
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i) * 1000003) ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003) ^ this.g.hashCode();
    }

    public String toString() {
        return "CdbRequest{id=" + this.f17526a + ", publisher=" + this.f17527b + ", user=" + this.f17528c + ", sdkVersion=" + this.f17529d + ", profileId=" + this.e + ", gdprData=" + this.f + ", slots=" + this.g + "}";
    }
}

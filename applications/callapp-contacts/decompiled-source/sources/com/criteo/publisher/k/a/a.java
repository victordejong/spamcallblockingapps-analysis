package com.criteo.publisher.k.a;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/a.class */
public abstract class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final String f17393a;

    /* renamed from: b  reason: collision with root package name */
    private final Boolean f17394b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f17395c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, Boolean bool, Integer num) {
        Objects.requireNonNull(str, "Null consentData");
        this.f17393a = str;
        this.f17394b = bool;
        Objects.requireNonNull(num, "Null version");
        this.f17395c = num;
    }

    @Override // com.criteo.publisher.k.a.c
    public final String a() {
        return this.f17393a;
    }

    @Override // com.criteo.publisher.k.a.c
    public final Boolean b() {
        return this.f17394b;
    }

    @Override // com.criteo.publisher.k.a.c
    public final Integer c() {
        return this.f17395c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!this.f17393a.equals(cVar.a()) || ((bool = this.f17394b) != null ? !bool.equals(cVar.b()) : cVar.b() != null) || !this.f17395c.equals(cVar.c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f17393a.hashCode();
        Boolean bool = this.f17394b;
        return ((((hashCode ^ 1000003) * 1000003) ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f17395c.hashCode();
    }

    public String toString() {
        return "GdprData{consentData=" + this.f17393a + ", gdprApplies=" + this.f17394b + ", version=" + this.f17395c + "}";
    }
}

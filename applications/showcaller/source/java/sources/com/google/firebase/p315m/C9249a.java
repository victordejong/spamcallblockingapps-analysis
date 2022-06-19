package com.google.firebase.p315m;

import java.util.Objects;
/* renamed from: com.google.firebase.m.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/a.class */
public final class C9249a extends AbstractC9254f {

    /* renamed from: a */
    private final String f39686a;

    /* renamed from: b */
    private final String f39687b;

    public C9249a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f39686a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f39687b = str2;
    }

    @Override // com.google.firebase.p315m.AbstractC9254f
    /* renamed from: b */
    public String mo1403b() {
        return this.f39686a;
    }

    @Override // com.google.firebase.p315m.AbstractC9254f
    /* renamed from: c */
    public String mo1402c() {
        return this.f39687b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9254f)) {
            return false;
        }
        AbstractC9254f abstractC9254f = (AbstractC9254f) obj;
        if (!this.f39686a.equals(abstractC9254f.mo1403b()) || !this.f39687b.equals(abstractC9254f.mo1402c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f39686a.hashCode() ^ 1000003) * 1000003) ^ this.f39687b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f39686a + ", version=" + this.f39687b + "}";
    }
}

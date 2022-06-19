package com.google.firebase.p394f;

import java.util.Objects;
/* renamed from: com.google.firebase.f.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/a.class */
public final class C15745a extends AbstractC15750f {

    /* renamed from: a */
    private final String f56089a;

    /* renamed from: b */
    private final String f56090b;

    public C15745a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f56089a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f56090b = str2;
    }

    @Override // com.google.firebase.p394f.AbstractC15750f
    /* renamed from: a */
    public final String mo8461a() {
        return this.f56089a;
    }

    @Override // com.google.firebase.p394f.AbstractC15750f
    /* renamed from: b */
    public final String mo8459b() {
        return this.f56090b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15750f)) {
            return false;
        }
        AbstractC15750f abstractC15750f = (AbstractC15750f) obj;
        return this.f56089a.equals(abstractC15750f.mo8461a()) && this.f56090b.equals(abstractC15750f.mo8459b());
    }

    public final int hashCode() {
        return ((this.f56089a.hashCode() ^ 1000003) * 1000003) ^ this.f56090b.hashCode();
    }

    public final String toString() {
        return "LibraryVersion{libraryName=" + this.f56089a + ", version=" + this.f56090b + "}";
    }
}

package com.google.firebase.f;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f32304a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32305b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f32304a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f32305b = str2;
    }

    @Override // com.google.firebase.f.f
    public final String a() {
        return this.f32304a;
    }

    @Override // com.google.firebase.f.f
    public final String b() {
        return this.f32305b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f32304a.equals(fVar.a()) && this.f32305b.equals(fVar.b());
    }

    public final int hashCode() {
        return ((this.f32304a.hashCode() ^ 1000003) * 1000003) ^ this.f32305b.hashCode();
    }

    public final String toString() {
        return "LibraryVersion{libraryName=" + this.f32304a + ", version=" + this.f32305b + "}";
    }
}

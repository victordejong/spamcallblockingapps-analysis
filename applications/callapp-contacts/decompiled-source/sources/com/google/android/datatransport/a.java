package com.google.android.datatransport;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/a.class */
public final class a<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f20310a;

    /* renamed from: b  reason: collision with root package name */
    private final T f20311b;

    /* renamed from: c  reason: collision with root package name */
    private final d f20312c;

    public a(Integer num, T t, d dVar) {
        this.f20310a = num;
        Objects.requireNonNull(t, "Null payload");
        this.f20311b = t;
        Objects.requireNonNull(dVar, "Null priority");
        this.f20312c = dVar;
    }

    @Override // com.google.android.datatransport.c
    public final Integer a() {
        return this.f20310a;
    }

    @Override // com.google.android.datatransport.c
    public final T b() {
        return this.f20311b;
    }

    @Override // com.google.android.datatransport.c
    public final d c() {
        return this.f20312c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f20310a;
        if (num == null) {
            if (cVar.a() != null) {
                return false;
            }
        } else if (!num.equals(cVar.a())) {
            return false;
        }
        return this.f20311b.equals(cVar.b()) && this.f20312c.equals(cVar.c());
    }

    public final int hashCode() {
        Integer num = this.f20310a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f20311b.hashCode()) * 1000003) ^ this.f20312c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f20310a + ", payload=" + this.f20311b + ", priority=" + this.f20312c + "}";
    }
}

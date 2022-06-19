package com.google.android.datatransport;

import java.util.Objects;
/* renamed from: com.google.android.datatransport.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/a.class */
public final class C10626a<T> extends AbstractC10628c<T> {

    /* renamed from: a */
    private final Integer f34390a;

    /* renamed from: b */
    private final T f34391b;

    /* renamed from: c */
    private final EnumC10676d f34392c;

    public C10626a(Integer num, T t, EnumC10676d enumC10676d) {
        this.f34390a = num;
        Objects.requireNonNull(t, "Null payload");
        this.f34391b = t;
        Objects.requireNonNull(enumC10676d, "Null priority");
        this.f34392c = enumC10676d;
    }

    @Override // com.google.android.datatransport.AbstractC10628c
    /* renamed from: a */
    public final Integer mo22609a() {
        return this.f34390a;
    }

    @Override // com.google.android.datatransport.AbstractC10628c
    /* renamed from: b */
    public final T mo22608b() {
        return this.f34391b;
    }

    @Override // com.google.android.datatransport.AbstractC10628c
    /* renamed from: c */
    public final EnumC10676d mo22607c() {
        return this.f34392c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10628c)) {
            return false;
        }
        AbstractC10628c abstractC10628c = (AbstractC10628c) obj;
        Integer num = this.f34390a;
        if (num == null) {
            if (abstractC10628c.mo22609a() != null) {
                return false;
            }
        } else if (!num.equals(abstractC10628c.mo22609a())) {
            return false;
        }
        return this.f34391b.equals(abstractC10628c.mo22608b()) && this.f34392c.equals(abstractC10628c.mo22607c());
    }

    public final int hashCode() {
        Integer num = this.f34390a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f34391b.hashCode()) * 1000003) ^ this.f34392c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f34390a + ", payload=" + this.f34391b + ", priority=" + this.f34392c + "}";
    }
}

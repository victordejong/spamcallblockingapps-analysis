package p218r2;

import java.util.Objects;
/* renamed from: r2.a */
/* loaded from: classes-dex2jar.jar:r2/a.class */
public final class C4183a<T> extends AbstractC4185c<T> {

    /* renamed from: a */
    public final T f13171a;

    /* renamed from: b */
    public final EnumC4186d f13172b;

    public C4183a(Integer num, T t, EnumC4186d enumC4186d) {
        Objects.requireNonNull(t, "Null payload");
        this.f13171a = t;
        this.f13172b = enumC4186d;
    }

    @Override // p218r2.AbstractC4185c
    /* renamed from: a */
    public Integer mo1303a() {
        return null;
    }

    @Override // p218r2.AbstractC4185c
    /* renamed from: b */
    public T mo1302b() {
        return this.f13171a;
    }

    @Override // p218r2.AbstractC4185c
    /* renamed from: c */
    public EnumC4186d mo1301c() {
        return this.f13172b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4185c)) {
            return false;
        }
        AbstractC4185c abstractC4185c = (AbstractC4185c) obj;
        if (abstractC4185c.mo1303a() != null || !this.f13171a.equals(abstractC4185c.mo1302b()) || !this.f13172b.equals(abstractC4185c.mo1301c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f13172b.hashCode() ^ (((-721379959) ^ this.f13171a.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + ((Object) null) + ", payload=" + this.f13171a + ", priority=" + this.f13172b + "}";
    }
}

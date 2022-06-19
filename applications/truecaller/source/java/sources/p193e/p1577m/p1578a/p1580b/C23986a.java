package p193e.p1577m.p1578a.p1580b;

import java.util.Objects;
/* renamed from: e.m.a.b.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/a.class */
public final class C23986a<T> extends AbstractC23988c<T> {

    /* renamed from: a */
    public final T f66462a;

    /* renamed from: b */
    public final EnumC23989d f66463b;

    public C23986a(Integer num, T t, EnumC23989d enumC23989d) {
        Objects.requireNonNull(t, "Null payload");
        this.f66462a = t;
        Objects.requireNonNull(enumC23989d, "Null priority");
        this.f66463b = enumC23989d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.AbstractC23988c
    /* renamed from: a */
    public Integer mo5634a() {
        return null;
    }

    @Override // p193e.p1577m.p1578a.p1580b.AbstractC23988c
    /* renamed from: b */
    public T mo5633b() {
        return this.f66462a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.AbstractC23988c
    /* renamed from: c */
    public EnumC23989d mo5632c() {
        return this.f66463b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23988c)) {
            return false;
        }
        AbstractC23988c abstractC23988c = (AbstractC23988c) obj;
        if (abstractC23988c.mo5634a() != null || !this.f66462a.equals(abstractC23988c.mo5633b()) || !this.f66463b.equals(abstractC23988c.mo5632c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f66463b.hashCode() ^ (((-721379959) ^ this.f66462a.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + ((Object) null) + ", payload=" + this.f66462a + ", priority=" + this.f66463b + "}";
    }
}

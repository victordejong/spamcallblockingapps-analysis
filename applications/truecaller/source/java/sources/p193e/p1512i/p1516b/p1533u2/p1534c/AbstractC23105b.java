package p193e.p1512i.p1516b.p1533u2.p1534c;

import e.m.e.d0.b;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.u2.c.b */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/c/b.class */
public abstract class AbstractC23105b extends AbstractC23111n {

    /* renamed from: a */
    public final List<AbstractC23115r> f63949a;

    /* renamed from: b */
    public final AbstractC23110m f63950b;

    /* renamed from: c */
    public final AbstractC23114q f63951c;

    /* renamed from: d */
    public final List<AbstractC23113p> f63952d;

    public AbstractC23105b(List<AbstractC23115r> list, AbstractC23110m abstractC23110m, AbstractC23114q abstractC23114q, List<AbstractC23113p> list2) {
        Objects.requireNonNull(list, "Null nativeProducts");
        this.f63949a = list;
        Objects.requireNonNull(abstractC23110m, "Null advertiser");
        this.f63950b = abstractC23110m;
        Objects.requireNonNull(abstractC23114q, "Null privacy");
        this.f63951c = abstractC23114q;
        Objects.requireNonNull(list2, "Null pixels");
        this.f63952d = list2;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n
    /* renamed from: a */
    public AbstractC23110m mo7547a() {
        return this.f63950b;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n
    @b("products")
    /* renamed from: d */
    public List<AbstractC23115r> mo7544d() {
        return this.f63949a;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n
    @b("impressionPixels")
    /* renamed from: e */
    public List<AbstractC23113p> mo7543e() {
        return this.f63952d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC23111n)) {
            return false;
        }
        AbstractC23111n abstractC23111n = (AbstractC23111n) obj;
        if (!this.f63949a.equals(abstractC23111n.mo7544d()) || !this.f63950b.equals(abstractC23111n.mo7547a()) || !this.f63951c.equals(abstractC23111n.mo7542f()) || !this.f63952d.equals(abstractC23111n.mo7543e())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n
    /* renamed from: f */
    public AbstractC23114q mo7542f() {
        return this.f63951c;
    }

    public int hashCode() {
        return ((((((this.f63949a.hashCode() ^ 1000003) * 1000003) ^ this.f63950b.hashCode()) * 1000003) ^ this.f63951c.hashCode()) * 1000003) ^ this.f63952d.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NativeAssets{nativeProducts=");
        m8728C.append(this.f63949a);
        m8728C.append(", advertiser=");
        m8728C.append(this.f63950b);
        m8728C.append(", privacy=");
        m8728C.append(this.f63951c);
        m8728C.append(", pixels=");
        return C22128a.m8602l(m8728C, this.f63952d, "}");
    }
}

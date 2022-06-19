package p250u2;

import java.util.Set;
import p218r2.AbstractC4187e;
import p218r2.AbstractC4188f;
import p218r2.AbstractC4189g;
import p218r2.C4184b;
/* renamed from: u2.j */
/* loaded from: classes-dex2jar.jar:u2/j.class */
public final class C4471j implements AbstractC4189g {

    /* renamed from: a */
    public final Set<C4184b> f13847a;

    /* renamed from: b */
    public final AbstractC4469i f13848b;

    /* renamed from: c */
    public final AbstractC4473l f13849c;

    public C4471j(Set<C4184b> set, AbstractC4469i abstractC4469i, AbstractC4473l abstractC4473l) {
        this.f13847a = set;
        this.f13848b = abstractC4469i;
        this.f13849c = abstractC4473l;
    }

    @Override // p218r2.AbstractC4189g
    /* renamed from: a */
    public <T> AbstractC4188f<T> mo886a(String str, Class<T> cls, C4184b c4184b, AbstractC4187e<T, byte[]> abstractC4187e) {
        if (this.f13847a.contains(c4184b)) {
            return new C4472k(this.f13848b, str, c4184b, abstractC4187e, this.f13849c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c4184b, this.f13847a));
    }
}

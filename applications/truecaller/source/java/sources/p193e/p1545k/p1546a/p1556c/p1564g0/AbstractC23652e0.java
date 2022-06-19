package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.reflect.Type;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.g0.e0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/e0.class */
public interface AbstractC23652e0 {

    /* renamed from: e.k.a.c.g0.e0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/e0$a.class */
    public static class C23653a implements AbstractC23652e0 {

        /* renamed from: a */
        public final C23887o f65592a;

        /* renamed from: b */
        public final C23884n f65593b;

        public C23653a(C23887o c23887o, C23884n c23884n) {
            this.f65592a = c23887o;
            this.f65593b = c23884n;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0
        /* renamed from: a */
        public AbstractC23698i mo6404a(Type type) {
            return this.f65592a.m5914b(null, type, this.f65593b);
        }
    }

    /* renamed from: e.k.a.c.g0.e0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/e0$b.class */
    public static class C23654b implements AbstractC23652e0 {

        /* renamed from: a */
        public final C23887o f65594a;

        public C23654b(C23887o c23887o) {
            this.f65594a = c23887o;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0
        /* renamed from: a */
        public AbstractC23698i mo6404a(Type type) {
            return this.f65594a.m5914b(null, type, C23887o.f66073e);
        }
    }

    /* renamed from: a */
    AbstractC23698i mo6404a(Type type);
}

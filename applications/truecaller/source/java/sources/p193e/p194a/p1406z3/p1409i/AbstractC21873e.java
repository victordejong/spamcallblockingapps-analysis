package p193e.p194a.p1406z3.p1409i;

import s1.z.c.f;
/* renamed from: e.a.z3.i.e */
/* loaded from: classes9-dex2jar.jar:e/a/z3/i/e.class */
public abstract class AbstractC21873e extends AbstractC21877g {

    /* renamed from: a */
    public final int f60763a;

    /* renamed from: b */
    public final int f60764b;

    /* renamed from: e.a.z3.i.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/z3/i/e$a.class */
    public static final class C21874a extends AbstractC21873e {

        /* renamed from: c */
        public static final C21874a f60765c = new C21874a();

        public C21874a() {
            super(648, 280, null);
        }
    }

    /* renamed from: e.a.z3.i.e$b */
    /* loaded from: classes9-dex2jar.jar:e/a/z3/i/e$b.class */
    public static final class C21875b extends AbstractC21873e {

        /* renamed from: c */
        public static final C21875b f60766c = new C21875b();

        public C21875b() {
            super(64, 64, null);
        }
    }

    public AbstractC21873e(int i, int i2, f fVar) {
        super(null);
        this.f60763a = i;
        this.f60764b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC21873e)) {
            return false;
        }
        AbstractC21873e abstractC21873e = (AbstractC21873e) obj;
        return this.f60763a == abstractC21873e.f60763a && this.f60764b == abstractC21873e.f60764b;
    }

    public int hashCode() {
        return (this.f60763a * 31) + this.f60764b;
    }
}

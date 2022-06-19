package p193e.p194a.p195a.p200c.p204f;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19223c0;
/* renamed from: e.a.a.c.f.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f/b.class */
public final class C5262b {

    /* renamed from: a */
    public final C5268e f18073a;

    /* renamed from: b */
    public final AbstractC15539j2 f18074b;

    /* renamed from: c */
    public final C5262b f18075c = this;

    /* renamed from: d */
    public Provider<C5266d> f18076d;

    /* renamed from: e */
    public Provider<AbstractC5265c> f18077e;

    /* renamed from: f */
    public Provider<C5270g> f18078f;

    /* renamed from: g */
    public Provider<AbstractC5269f> f18079g;

    /* renamed from: e.a.a.c.f.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/b$b.class */
    public static final class C5264b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5262b f18080a;

        /* renamed from: b */
        public final int f18081b;

        public C5264b(C5262b c5262b, int i) {
            this.f18080a = c5262b;
            this.f18081b = i;
        }

        public T get() {
            int i = this.f18081b;
            if (i != 0) {
                if (i != 1) {
                    throw new AssertionError(this.f18081b);
                }
                return (T) new C5266d();
            }
            C5262b c5262b = this.f18080a;
            Long l = c5262b.f18073a.f18084a;
            AbstractC19223c0 mo12349i = c5262b.f18074b.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC18951b0 mo12399e7 = c5262b.f18074b.mo12399e7();
            Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
            return (T) new C5270g(l, mo12349i, mo12399e7, (AbstractC5265c) c5262b.f18077e.get());
        }
    }

    public C5262b(C5268e c5268e, AbstractC15539j2 abstractC15539j2, C5263a c5263a) {
        this.f18073a = c5268e;
        this.f18074b = abstractC15539j2;
        C5264b c5264b = new C5264b(this, 1);
        this.f18076d = c5264b;
        this.f18077e = b.b(c5264b);
        C5264b c5264b2 = new C5264b(this, 0);
        this.f18078f = c5264b2;
        this.f18079g = b.b(c5264b2);
    }
}

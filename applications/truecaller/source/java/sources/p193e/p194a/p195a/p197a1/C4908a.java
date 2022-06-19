package p193e.p194a.p195a.p197a1;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p195a.p231g.AbstractC6248w;
/* renamed from: e.a.a.a1.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/a1/a.class */
public final class C4908a {

    /* renamed from: a */
    public final C4915f f16662a;

    /* renamed from: b */
    public final AbstractC15539j2 f16663b;

    /* renamed from: c */
    public final C4908a f16664c = this;

    /* renamed from: d */
    public Provider<AbstractC6248w> f16665d = new C4910b(this, 0);

    /* renamed from: e.a.a.a1.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a1/a$b.class */
    public static final class C4910b<T> implements Provider<T> {

        /* renamed from: a */
        public final C4908a f16666a;

        public C4910b(C4908a c4908a, int i) {
            this.f16666a = c4908a;
        }

        public T get() {
            T t = (T) this.f16666a.f16663b.mo12144x3();
            Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
            return t;
        }
    }

    public C4908a(C4915f c4915f, AbstractC15539j2 abstractC15539j2, C4909a c4909a) {
        this.f16662a = c4915f;
        this.f16663b = abstractC15539j2;
    }
}

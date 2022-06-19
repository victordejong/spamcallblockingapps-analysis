package p193e.p194a.p1273u4;

import android.content.Context;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1273u4.p1274s.AbstractC20640a;
import p193e.p194a.p1273u4.p1274s.C20642c;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p765f5.AbstractC14046a;
import p193e.p194a.p997k3.p998j.C16461b;
/* renamed from: e.a.u4.d */
/* loaded from: classes12-dex2jar.jar:e/a/u4/d.class */
public final class C20617d {

    /* renamed from: a */
    public final AbstractC15539j2 f58125a;

    /* renamed from: b */
    public final C20617d f58126b = this;

    /* renamed from: c */
    public Provider<C20621f> f58127c;

    /* renamed from: d */
    public Provider<AbstractC20620e> f58128d;

    /* renamed from: e */
    public Provider<C14022p> f58129e;

    /* renamed from: f */
    public Provider<C20625i> f58130f;

    /* renamed from: g */
    public Provider<AbstractC20624h> f58131g;

    /* renamed from: h */
    public Provider<C20642c> f58132h;

    /* renamed from: i */
    public Provider<AbstractC20640a> f58133i;

    /* renamed from: e.a.u4.d$b */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/d$b.class */
    public static final class C20619b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20617d f58134a;

        /* renamed from: b */
        public final int f58135b;

        public C20619b(C20617d c20617d, int i) {
            this.f58134a = c20617d;
            this.f58135b = i;
        }

        public T get() {
            int i = this.f58135b;
            if (i == 0) {
                AbstractC19223c0 mo12349i = this.f58134a.f58125a.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                return (T) new C20621f(mo12349i);
            } else if (i == 1) {
                C20617d c20617d = this.f58134a;
                C14022p c14022p = (C14022p) c20617d.f58129e.get();
                C16461b mo12572R6 = c20617d.f58125a.mo12572R6();
                Objects.requireNonNull(mo12572R6, "Cannot return null from a non-@Nullable component method");
                AbstractC19854f<AbstractC19463a0> mo12217s = c20617d.f58125a.mo12217s();
                Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
                AbstractC14046a mo12735F4 = c20617d.f58125a.mo12735F4();
                Objects.requireNonNull(mo12735F4, "Cannot return null from a non-@Nullable component method");
                AbstractC19462a mo12776C4 = c20617d.f58125a.mo12776C4();
                Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b = c20617d.f58125a.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                return (T) new C20625i(c14022p, mo12572R6, mo12217s, mo12735F4, mo12776C4, mo11648b);
            } else if (i == 2) {
                Context mo12335j = this.f58134a.f58125a.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                C14022p c14022p2 = new C14022p(mo12335j, UUID.randomUUID(), "autoSearch");
                c14022p2.f40565o = 10;
                c14022p2.f40559i = true;
                c14022p2.f40560j = true;
                c14022p2.f40558h = true;
                return (T) c14022p2.m20845c(String.valueOf(91));
            } else if (i != 3) {
                throw new AssertionError(this.f58135b);
            } else {
                C20617d c20617d2 = this.f58134a;
                AbstractC19223c0 mo12349i2 = c20617d2.f58125a.mo12349i();
                Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                AbstractC20629m mo12589Q3 = c20617d2.f58125a.mo12589Q3();
                Objects.requireNonNull(mo12589Q3, "Cannot return null from a non-@Nullable component method");
                AbstractC19219a0 mo11647c = c20617d2.f58125a.mo11647c();
                Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
                AbstractC19462a mo12776C42 = c20617d2.f58125a.mo12776C4();
                Objects.requireNonNull(mo12776C42, "Cannot return null from a non-@Nullable component method");
                return (T) new C20642c(mo12349i2, mo12589Q3, mo11647c, mo12776C42);
            }
        }
    }

    public C20617d(AbstractC15539j2 abstractC15539j2, C20618a c20618a) {
        this.f58125a = abstractC15539j2;
        C20619b c20619b = new C20619b(this, 0);
        this.f58127c = c20619b;
        this.f58128d = b.b(c20619b);
        Provider c20619b2 = new C20619b(this, 2);
        this.f58129e = !(c20619b2 instanceof b) ? new b(c20619b2) : c20619b2;
        C20619b c20619b3 = new C20619b(this, 1);
        this.f58130f = c20619b3;
        this.f58131g = b.b(c20619b3);
        C20619b c20619b4 = new C20619b(this, 3);
        this.f58132h = c20619b4;
        this.f58133i = b.b(c20619b4);
    }
}

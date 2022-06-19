package p193e.p194a.p195a.p271o.p274s;

import android.content.ContentResolver;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.C7282v;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.o.s.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/s/a.class */
public final class C7129a {

    /* renamed from: a */
    public final AbstractC15539j2 f22918a;

    /* renamed from: b */
    public final C7144g f22919b;

    /* renamed from: c */
    public final C7129a f22920c = this;

    /* renamed from: d */
    public Provider<C7149l> f22921d;

    /* renamed from: e */
    public Provider<AbstractC7147j> f22922e;

    /* renamed from: f */
    public Provider<C7133c> f22923f;

    /* renamed from: g */
    public Provider<AbstractC7132b> f22924g;

    /* renamed from: e.a.a.o.s.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/a$b.class */
    public static final class C7131b<T> implements Provider<T> {

        /* renamed from: a */
        public final C7129a f22925a;

        /* renamed from: b */
        public final int f22926b;

        public C7131b(C7129a c7129a, int i) {
            this.f22925a = c7129a;
            this.f22926b = i;
        }

        public T get() {
            int i = this.f22926b;
            if (i == 0) {
                C7129a c7129a = this.f22925a;
                f mo12378g = c7129a.f22918a.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                f mo12315k6 = c7129a.f22918a.mo12315k6();
                Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                ContentResolver mo11652Z = c7129a.f22918a.mo11652Z();
                Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                AbstractC6115g mo12491X6 = c7129a.f22918a.mo12491X6();
                Objects.requireNonNull(mo12491X6, "Cannot return null from a non-@Nullable component method");
                return (T) new C7149l(mo12378g, mo12315k6, mo11652Z, mo12491X6);
            } else if (i != 1) {
                throw new AssertionError(this.f22926b);
            } else {
                C7129a c7129a2 = this.f22925a;
                Objects.requireNonNull(c7129a2);
                AbstractC7146i abstractC7146i = (AbstractC7146i) c7129a2.f22922e.get();
                AbstractC7145h abstractC7145h = (AbstractC7145h) c7129a2.f22922e.get();
                AbstractC7107p mo12216s0 = c7129a2.f22918a.mo12216s0();
                Objects.requireNonNull(mo12216s0, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i = c7129a2.f22918a.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                AbstractC6489q mo12466Z5 = c7129a2.f22918a.mo12466Z5();
                Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                AbstractC18951b0 mo12399e7 = c7129a2.f22918a.mo12399e7();
                Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b = c7129a2.f22918a.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                AbstractC14840m mo11655T = c7129a2.f22918a.mo11655T();
                Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S = c7129a2.f22918a.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k = c7129a2.f22918a.mo11637k();
                Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                C6395c c6395c = new C6395c(mo12349i, mo12466Z5, mo12399e7, mo11648b, mo11655T, mo12565S, mo11637k);
                C7144g c7144g = c7129a2.f22919b;
                Context mo12335j = c7129a2.f22918a.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c7144g);
                l.e(mo12335j, AnalyticsConstants.CONTEXT);
                C19235i0 c19235i0 = new C19235i0(C17422k.m16113E(mo12335j, true));
                AbstractC17405c mo12289m6 = c7129a2.f22918a.mo12289m6();
                Objects.requireNonNull(mo12289m6, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k2 = c7129a2.f22918a.mo11637k();
                Objects.requireNonNull(mo11637k2, "Cannot return null from a non-@Nullable component method");
                return (T) new C7133c(abstractC7146i, abstractC7145h, mo12216s0, c6395c, new C7282v(c19235i0, mo12289m6, mo11637k2));
            }
        }
    }

    public C7129a(C7144g c7144g, AbstractC15539j2 abstractC15539j2, C7130a c7130a) {
        this.f22918a = abstractC15539j2;
        this.f22919b = c7144g;
        C7131b c7131b = new C7131b(this, 0);
        this.f22921d = c7131b;
        this.f22922e = b.b(c7131b);
        C7131b c7131b2 = new C7131b(this, 1);
        this.f22923f = c7131b2;
        this.f22924g = b.b(c7131b2);
    }
}

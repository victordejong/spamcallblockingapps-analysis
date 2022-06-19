package p193e.p194a.p195a.p200c.p205g;

import android.content.ContentResolver;
import android.os.Handler;
import android.os.Looper;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.g.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g/b.class */
public final class C5288b {

    /* renamed from: a */
    public final C5294d f18106a;

    /* renamed from: b */
    public final AbstractC15539j2 f18107b;

    /* renamed from: c */
    public final C5288b f18108c = this;

    /* renamed from: d */
    public Provider<AbstractC19233h0> f18109d;

    /* renamed from: e */
    public Provider<C8243a> f18110e;

    /* renamed from: f */
    public Provider<String> f18111f;

    /* renamed from: g */
    public Provider<Handler> f18112g;

    /* renamed from: h */
    public Provider<C5297g> f18113h;

    /* renamed from: i */
    public Provider<AbstractC5295e> f18114i;

    /* renamed from: e.a.a.c.g.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/b$b.class */
    public static final class C5290b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5288b f18115a;

        /* renamed from: b */
        public final int f18116b;

        public C5290b(C5288b c5288b, int i) {
            this.f18115a = c5288b;
            this.f18116b = i;
        }

        public T get() {
            int i = this.f18116b;
            if (i == 0) {
                C5288b c5288b = this.f18115a;
                C5294d c5294d = c5288b.f18106a;
                AbstractC19233h0 abstractC19233h0 = (AbstractC19233h0) c5288b.f18109d.get();
                Objects.requireNonNull(c5294d);
                l.e(abstractC19233h0, "resourceProvider");
                return (T) new C8243a(abstractC19233h0);
            } else if (i == 1) {
                return (T) new C19235i0(this.f18115a.f18106a.f18124a);
            } else {
                if (i != 2) {
                    if (i == 3) {
                        T t = (T) this.f18115a.f18106a.f18125b;
                        Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
                        return t;
                    } else if (i != 4) {
                        throw new AssertionError(this.f18116b);
                    } else {
                        Objects.requireNonNull(this.f18115a.f18106a);
                        return (T) new Handler(Looper.getMainLooper());
                    }
                }
                C5288b c5288b2 = this.f18115a;
                f mo12315k6 = c5288b2.f18107b.mo12315k6();
                Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                f mo12378g = c5288b2.f18107b.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                String str = (String) c5288b2.f18111f.get();
                AbstractC6448d mo12509W2 = c5288b2.f18107b.mo12509W2();
                Objects.requireNonNull(mo12509W2, "Cannot return null from a non-@Nullable component method");
                Handler handler = (Handler) c5288b2.f18112g.get();
                ContentResolver mo11652Z = c5288b2.f18107b.mo11652Z();
                Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                AbstractC19233h0 abstractC19233h02 = (AbstractC19233h0) c5288b2.f18109d.get();
                AbstractC6392i0 mo12565S = c5288b2.f18107b.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                return (T) new C5297g(mo12315k6, mo12378g, str, mo12509W2, handler, mo11652Z, abstractC19233h02, mo12565S);
            }
        }
    }

    public C5288b(C5294d c5294d, AbstractC15539j2 abstractC15539j2, C5289a c5289a) {
        this.f18106a = c5294d;
        this.f18107b = abstractC15539j2;
        Provider c5290b = new C5290b(this, 1);
        Object obj = b.c;
        this.f18109d = !(c5290b instanceof b) ? new b(c5290b) : c5290b;
        Provider c5290b2 = new C5290b(this, 0);
        this.f18110e = !(c5290b2 instanceof b) ? new b(c5290b2) : c5290b2;
        Provider c5290b3 = new C5290b(this, 3);
        this.f18111f = !(c5290b3 instanceof b) ? new b(c5290b3) : c5290b3;
        Provider c5290b4 = new C5290b(this, 4);
        this.f18112g = !(c5290b4 instanceof b) ? new b(c5290b4) : c5290b4;
        C5290b c5290b5 = new C5290b(this, 2);
        this.f18113h = c5290b5;
        this.f18114i = b.b(c5290b5);
    }
}

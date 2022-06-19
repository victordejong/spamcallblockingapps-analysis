package p193e.p194a.p195a.p271o.p272a;

import android.content.ContentResolver;
import com.truecaller.callrecording.CallRecordingManager;
import java.util.Objects;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17384b;
import p193e.p194a.p1041l0.p1042u.p1044e.C17385c;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1356x2.C21391a;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import p193e.p194a.p982k0.p988m.AbstractC16353a;
import s1.w.f;
/* renamed from: e.a.a.o.a.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/m.class */
public final class C7077m {

    /* renamed from: a */
    public final AbstractC15539j2 f22802a;

    /* renamed from: c */
    public Provider<C17385c> f22804c;

    /* renamed from: d */
    public Provider<AbstractC17384b> f22805d;

    /* renamed from: f */
    public Provider<C7071k> f22807f;

    /* renamed from: g */
    public Provider<AbstractC7067h> f22808g;

    /* renamed from: h */
    public Provider<C7056e> f22809h;

    /* renamed from: i */
    public Provider<AbstractC7055d> f22810i;

    /* renamed from: j */
    public Provider<AbstractC17405c> f22811j;

    /* renamed from: k */
    public Provider<AbstractC17405c> f22812k;

    /* renamed from: b */
    public final C7077m f22803b = this;

    /* renamed from: e */
    public Provider<CallRecordingManager> f22806e = new C7079b(this, 2);

    /* renamed from: e.a.a.o.a.m$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/m$b.class */
    public static final class C7079b<T> implements Provider<T> {

        /* renamed from: a */
        public final C7077m f22813a;

        /* renamed from: b */
        public final int f22814b;

        public C7079b(C7077m c7077m, int i) {
            this.f22813a = c7077m;
            this.f22814b = i;
        }

        public T get() {
            int i = this.f22814b;
            if (i == 0) {
                C7077m c7077m = this.f22813a;
                f mo12378g = c7077m.f22802a.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                f mo12315k6 = c7077m.f22802a.mo12315k6();
                Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                AbstractC17384b abstractC17384b = (AbstractC17384b) c7077m.f22805d.get();
                AbstractC7107p mo12216s0 = c7077m.f22802a.mo12216s0();
                Objects.requireNonNull(mo12216s0, "Cannot return null from a non-@Nullable component method");
                a a = b.a(c7077m.f22806e);
                AbstractC19223c0 mo12349i = c7077m.f22802a.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                AbstractC19462a mo12776C4 = c7077m.f22802a.mo12776C4();
                Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                return (T) new C7071k(mo12378g, mo12315k6, abstractC17384b, mo12216s0, a, mo12349i, mo12776C4);
            } else if (i == 1) {
                C7077m c7077m2 = this.f22813a;
                ContentResolver mo11652Z = c7077m2.f22802a.mo11652Z();
                Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                AbstractC16353a mo12734F5 = c7077m2.f22802a.mo12734F5();
                Objects.requireNonNull(mo12734F5, "Cannot return null from a non-@Nullable component method");
                return (T) new C17385c(mo11652Z, mo12734F5);
            } else if (i == 2) {
                T t = (T) this.f22813a.f22802a.mo12655L4();
                Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                return t;
            } else if (i != 3) {
                if (i != 4) {
                    throw new AssertionError(this.f22814b);
                }
                T t2 = (T) this.f22813a.f22802a.mo12602P3();
                Objects.requireNonNull(t2, "Cannot return null from a non-@Nullable component method");
                return t2;
            } else {
                C7077m c7077m3 = this.f22813a;
                Objects.requireNonNull(c7077m3);
                AbstractC7057f abstractC7057f = (AbstractC7057f) c7077m3.f22808g.get();
                AbstractC7053b abstractC7053b = (AbstractC7053b) c7077m3.f22808g.get();
                AbstractC8584h0 mo12537U1 = c7077m3.f22802a.mo12537U1();
                Objects.requireNonNull(mo12537U1, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i2 = c7077m3.f22802a.mo12349i();
                Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                AbstractC18951b0 mo12399e7 = c7077m3.f22802a.mo12399e7();
                Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                AbstractC19022f0 mo12377g0 = c7077m3.f22802a.mo12377g0();
                Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                return (T) new C7056e(abstractC7057f, abstractC7053b, mo12537U1, mo12349i2, mo12399e7, new C21391a(mo12377g0));
            }
        }
    }

    public C7077m(AbstractC15539j2 abstractC15539j2, C7078a c7078a) {
        this.f22802a = abstractC15539j2;
        C7079b c7079b = new C7079b(this, 1);
        this.f22804c = c7079b;
        this.f22805d = b.b(c7079b);
        C7079b c7079b2 = new C7079b(this, 0);
        this.f22807f = c7079b2;
        this.f22808g = b.b(c7079b2);
        C7079b c7079b3 = new C7079b(this, 3);
        this.f22809h = c7079b3;
        this.f22810i = b.b(c7079b3);
        C7079b c7079b4 = new C7079b(this, 4);
        this.f22811j = c7079b4;
        this.f22812k = b.b(c7079b4);
    }
}

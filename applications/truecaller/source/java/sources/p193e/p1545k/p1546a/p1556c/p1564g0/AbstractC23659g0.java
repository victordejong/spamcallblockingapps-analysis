package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1547a.AbstractC23299f;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23659g0;
/* renamed from: e.k.a.c.g0.g0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/g0.class */
public interface AbstractC23659g0<T extends AbstractC23659g0<T>> {

    /* renamed from: e.k.a.c.g0.g0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/g0$a.class */
    public static class C23660a implements AbstractC23659g0<C23660a>, Serializable {

        /* renamed from: f */
        public static final C23660a f65605f;

        /* renamed from: a */
        public final AbstractC23299f.EnumC23300a f65606a;

        /* renamed from: b */
        public final AbstractC23299f.EnumC23300a f65607b;

        /* renamed from: c */
        public final AbstractC23299f.EnumC23300a f65608c;

        /* renamed from: d */
        public final AbstractC23299f.EnumC23300a f65609d;

        /* renamed from: e */
        public final AbstractC23299f.EnumC23300a f65610e;

        static {
            AbstractC23299f.EnumC23300a enumC23300a = AbstractC23299f.EnumC23300a.PUBLIC_ONLY;
            AbstractC23299f.EnumC23300a enumC23300a2 = AbstractC23299f.EnumC23300a.ANY;
            f65605f = new C23660a(enumC23300a, enumC23300a, enumC23300a2, enumC23300a2, enumC23300a);
        }

        public C23660a(AbstractC23299f.EnumC23300a enumC23300a) {
            if (enumC23300a != AbstractC23299f.EnumC23300a.DEFAULT) {
                this.f65606a = enumC23300a;
                this.f65607b = enumC23300a;
                this.f65608c = enumC23300a;
                this.f65609d = enumC23300a;
                this.f65610e = enumC23300a;
                return;
            }
            AbstractC23299f.EnumC23300a enumC23300a2 = AbstractC23299f.EnumC23300a.PUBLIC_ONLY;
            this.f65606a = enumC23300a2;
            this.f65607b = enumC23300a2;
            AbstractC23299f.EnumC23300a enumC23300a3 = AbstractC23299f.EnumC23300a.ANY;
            this.f65608c = enumC23300a3;
            this.f65609d = enumC23300a3;
            this.f65610e = enumC23300a2;
        }

        public C23660a(AbstractC23299f.EnumC23300a enumC23300a, AbstractC23299f.EnumC23300a enumC23300a2, AbstractC23299f.EnumC23300a enumC23300a3, AbstractC23299f.EnumC23300a enumC23300a4, AbstractC23299f.EnumC23300a enumC23300a5) {
            this.f65606a = enumC23300a;
            this.f65607b = enumC23300a2;
            this.f65608c = enumC23300a3;
            this.f65609d = enumC23300a4;
            this.f65610e = enumC23300a5;
        }

        /* renamed from: a */
        public final AbstractC23299f.EnumC23300a m6397a(AbstractC23299f.EnumC23300a enumC23300a, AbstractC23299f.EnumC23300a enumC23300a2) {
            return enumC23300a2 == AbstractC23299f.EnumC23300a.DEFAULT ? enumC23300a : enumC23300a2;
        }

        /* renamed from: b */
        public C23660a m6396b(AbstractC23299f.EnumC23300a enumC23300a, AbstractC23299f.EnumC23300a enumC23300a2, AbstractC23299f.EnumC23300a enumC23300a3, AbstractC23299f.EnumC23300a enumC23300a4, AbstractC23299f.EnumC23300a enumC23300a5) {
            return (enumC23300a == this.f65606a && enumC23300a2 == this.f65607b && enumC23300a3 == this.f65608c && enumC23300a4 == this.f65609d && enumC23300a5 == this.f65610e) ? this : new C23660a(enumC23300a, enumC23300a2, enumC23300a3, enumC23300a4, enumC23300a5);
        }

        /* renamed from: c */
        public boolean m6395c(AbstractC23663i abstractC23663i) {
            return this.f65609d.m7289a(abstractC23663i.mo6375i());
        }

        /* renamed from: d */
        public C23660a m6394d(AbstractC23299f.EnumC23300a enumC23300a) {
            AbstractC23299f.EnumC23300a enumC23300a2 = enumC23300a;
            if (enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT) {
                enumC23300a2 = AbstractC23299f.EnumC23300a.ANY;
            }
            return this.f65609d == enumC23300a2 ? this : new C23660a(this.f65606a, this.f65607b, this.f65608c, enumC23300a2, this.f65610e);
        }

        /* renamed from: e */
        public C23660a m6393e(AbstractC23299f.EnumC23300a enumC23300a) {
            AbstractC23299f.EnumC23300a enumC23300a2 = enumC23300a;
            if (enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT) {
                enumC23300a2 = AbstractC23299f.EnumC23300a.PUBLIC_ONLY;
            }
            return this.f65610e == enumC23300a2 ? this : new C23660a(this.f65606a, this.f65607b, this.f65608c, this.f65609d, enumC23300a2);
        }

        /* renamed from: f */
        public C23660a m6392f(AbstractC23299f.EnumC23300a enumC23300a) {
            AbstractC23299f.EnumC23300a enumC23300a2 = enumC23300a;
            if (enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT) {
                enumC23300a2 = AbstractC23299f.EnumC23300a.PUBLIC_ONLY;
            }
            return this.f65606a == enumC23300a2 ? this : new C23660a(enumC23300a2, this.f65607b, this.f65608c, this.f65609d, this.f65610e);
        }

        /* renamed from: g */
        public C23660a m6391g(AbstractC23299f.EnumC23300a enumC23300a) {
            AbstractC23299f.EnumC23300a enumC23300a2 = enumC23300a;
            if (enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT) {
                enumC23300a2 = AbstractC23299f.EnumC23300a.PUBLIC_ONLY;
            }
            return this.f65607b == enumC23300a2 ? this : new C23660a(this.f65606a, enumC23300a2, this.f65608c, this.f65609d, this.f65610e);
        }

        /* renamed from: h */
        public C23660a m6390h(AbstractC23299f.EnumC23300a enumC23300a) {
            AbstractC23299f.EnumC23300a enumC23300a2 = enumC23300a;
            if (enumC23300a == AbstractC23299f.EnumC23300a.DEFAULT) {
                enumC23300a2 = AbstractC23299f.EnumC23300a.ANY;
            }
            return this.f65608c == enumC23300a2 ? this : new C23660a(this.f65606a, this.f65607b, enumC23300a2, this.f65609d, this.f65610e);
        }

        public String toString() {
            return String.format("[Visibility: getter=%s,isGetter=%s,setter=%s,creator=%s,field=%s]", this.f65606a, this.f65607b, this.f65608c, this.f65609d, this.f65610e);
        }
    }
}

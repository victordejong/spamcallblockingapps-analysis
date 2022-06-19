package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23921k;
/* renamed from: e.k.a.c.l0.t.o0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/o0.class */
public abstract class AbstractC23843o0 {

    /* renamed from: a */
    public static final AbstractC23890n<Object> f65978a = new C23847d();

    /* renamed from: e.k.a.c.l0.t.o0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/o0$a.class */
    public static class C23844a extends AbstractC23851q0<Object> {

        /* renamed from: c */
        public final int f65979c;

        public C23844a(int i, Class<?> cls) {
            super(cls, false);
            this.f65979c = i;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            String str;
            switch (this.f65979c) {
                case 1:
                    Date date = (Date) obj;
                    Objects.requireNonNull(abstractC23425a0);
                    if (abstractC23425a0.m6889M(EnumC23958z.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                        abstractC23372g.mo5889B0(String.valueOf(date.getTime()));
                        return;
                    } else {
                        abstractC23372g.mo5889B0(abstractC23425a0.m6882r().format(date));
                        return;
                    }
                case 2:
                    long timeInMillis = ((Calendar) obj).getTimeInMillis();
                    Objects.requireNonNull(abstractC23425a0);
                    if (abstractC23425a0.m6889M(EnumC23958z.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
                        abstractC23372g.mo5889B0(String.valueOf(timeInMillis));
                        return;
                    } else {
                        abstractC23372g.mo5889B0(abstractC23425a0.m6882r().format(new Date(timeInMillis)));
                        return;
                    }
                case 3:
                    abstractC23372g.mo5889B0(((Class) obj).getName());
                    return;
                case 4:
                    if (abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUMS_USING_TO_STRING)) {
                        str = obj.toString();
                    } else {
                        Enum r0 = (Enum) obj;
                        str = abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUM_KEYS_USING_INDEX) ? String.valueOf(r0.ordinal()) : r0.name();
                    }
                    abstractC23372g.mo5889B0(str);
                    return;
                case 5:
                case 6:
                    long longValue = ((Number) obj).longValue();
                    Objects.requireNonNull(abstractC23372g);
                    abstractC23372g.mo5889B0(Long.toString(longValue));
                    return;
                case 7:
                    abstractC23372g.mo5889B0(abstractC23425a0.f64991a.f65071b.f65032k.m7262g((byte[]) obj, false));
                    return;
                default:
                    abstractC23372g.mo5889B0(obj.toString());
                    return;
            }
        }
    }

    /* renamed from: e.k.a.c.l0.t.o0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/o0$b.class */
    public static class C23845b extends AbstractC23851q0<Object> {

        /* renamed from: c */
        public transient AbstractC23788l f65980c = AbstractC23788l.C23790b.f65903b;

        public C23845b() {
            super(String.class, false);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            Class<?> cls = obj.getClass();
            AbstractC23788l abstractC23788l = this.f65980c;
            AbstractC23890n<Object> mo6060c = abstractC23788l.mo6060c(cls);
            C23844a c23844a = mo6060c;
            if (mo6060c == null) {
                if (cls == Object.class) {
                    c23844a = new C23844a(8, cls);
                    this.f65980c = abstractC23788l.mo6061b(cls, c23844a);
                } else {
                    AbstractC23890n<Object> m6877w = abstractC23425a0.m6877w(abstractC23425a0.f64991a.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e), null);
                    AbstractC23788l mo6061b = abstractC23788l.mo6061b(cls, m6877w);
                    c23844a = m6877w;
                    if (abstractC23788l != mo6061b) {
                        this.f65980c = mo6061b;
                        c23844a = m6877w;
                    }
                }
            }
            c23844a.mo5894f(obj, abstractC23372g, abstractC23425a0);
        }

        public Object readResolve() {
            this.f65980c = AbstractC23788l.C23790b.f65903b;
            return this;
        }
    }

    /* renamed from: e.k.a.c.l0.t.o0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/o0$c.class */
    public static class C23846c extends AbstractC23851q0<Object> {

        /* renamed from: c */
        public final C23921k f65981c;

        public C23846c(Class<?> cls, C23921k c23921k) {
            super(cls, false);
            this.f65981c = c23921k;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            if (abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUMS_USING_TO_STRING)) {
                abstractC23372g.mo5889B0(obj.toString());
                return;
            }
            Enum r0 = (Enum) obj;
            if (abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUM_KEYS_USING_INDEX)) {
                abstractC23372g.mo5889B0(String.valueOf(r0.ordinal()));
            } else {
                abstractC23372g.mo5833z0(this.f65981c.f66176b[r0.ordinal()]);
            }
        }
    }

    /* renamed from: e.k.a.c.l0.t.o0$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/o0$d.class */
    public static class C23847d extends AbstractC23851q0<Object> {
        public C23847d() {
            super(String.class, false);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            abstractC23372g.mo5889B0((String) obj);
        }
    }
}

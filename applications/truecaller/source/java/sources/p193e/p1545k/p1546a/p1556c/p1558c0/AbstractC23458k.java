package p193e.p1545k.p1546a.p1556c.p1558c0;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23659g0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23692z;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23638c;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23680r;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.c0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/c0/k.class */
public abstract class AbstractC23458k<T extends AbstractC23458k<T>> implements AbstractC23682t.AbstractC23683a, Serializable {

    /* renamed from: a */
    public final int f65070a;

    /* renamed from: b */
    public final C23445a f65071b;

    static {
        AbstractC23331r.C23333b c23333b = AbstractC23331r.C23333b.f64537e;
        AbstractC23331r.C23333b c23333b2 = AbstractC23331r.C23333b.f64537e;
        AbstractC23311k.C23315d c23315d = AbstractC23311k.C23315d.f64497h;
    }

    public AbstractC23458k(C23445a c23445a, int i) {
        this.f65071b = c23445a;
        this.f65070a = i;
    }

    public AbstractC23458k(AbstractC23458k<T> abstractC23458k, int i) {
        this.f65071b = abstractC23458k.f65071b;
        this.f65070a = i;
    }

    /* renamed from: c */
    public static <F extends Enum<F> & AbstractC23449e> int m6866c(Class<F> cls) {
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        int length = enumArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                AbstractC23449e abstractC23449e = (AbstractC23449e) enumArr[i];
                int i4 = i3;
                if (abstractC23449e.mo5648c()) {
                    i4 = i3 | abstractC23449e.mo5649a();
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: b */
    public final boolean m6867b() {
        return m6859o(EnumC23942p.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    /* renamed from: d */
    public final AbstractC23698i m6865d(Class<?> cls) {
        return this.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e);
    }

    /* renamed from: e */
    public AbstractC23426b m6864e() {
        return m6859o(EnumC23942p.USE_ANNOTATIONS) ? this.f65071b.f65024c : AbstractC23692z.f65683a;
    }

    /* renamed from: f */
    public abstract AbstractC23450f mo6858f(Class<?> cls);

    /* renamed from: g */
    public abstract AbstractC23331r.C23333b mo6857g(Class<?> cls, Class<?> cls2);

    /* renamed from: h */
    public abstract AbstractC23311k.C23315d mo6856h(Class<?> cls);

    /* renamed from: i */
    public abstract AbstractC23331r.C23333b mo6855i(Class<?> cls);

    /* renamed from: j */
    public AbstractC23331r.C23333b m6863j(Class<?> cls, AbstractC23331r.C23333b c23333b) {
        ((AbstractC23459l) this).f65080i.m6871a(cls);
        return c23333b;
    }

    /* renamed from: k */
    public abstract AbstractC23659g0<?> mo6854k(Class<?> cls, C23638c c23638c);

    /* renamed from: l */
    public AbstractC23444c m6862l(AbstractC23698i abstractC23698i) {
        C23680r c23680r = (C23680r) this.f65071b.f65023b;
        C23679q m6347b = c23680r.m6347b(this, abstractC23698i);
        C23679q c23679q = m6347b;
        if (m6347b == null) {
            c23679q = C23679q.m6351i(this, abstractC23698i, c23680r.m6346c(this, abstractC23698i, this));
        }
        return c23679q;
    }

    /* renamed from: m */
    public AbstractC23444c m6861m(Class<?> cls) {
        return m6862l(this.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e));
    }

    /* renamed from: n */
    public final boolean m6860n() {
        return m6859o(EnumC23942p.USE_ANNOTATIONS);
    }

    /* renamed from: o */
    public final boolean m6859o(EnumC23942p enumC23942p) {
        return (enumC23942p.f66256b & this.f65070a) != 0;
    }
}

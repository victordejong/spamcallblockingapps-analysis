package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23445a;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23939z;
/* renamed from: e.k.a.c.l0.t.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/l.class */
public abstract class AbstractC23836l<T> extends AbstractC23849p0<T> implements AbstractC23766i {

    /* renamed from: c */
    public final Boolean f65972c;

    /* renamed from: d */
    public final DateFormat f65973d;

    /* renamed from: e */
    public final AtomicReference<DateFormat> f65974e;

    public AbstractC23836l(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this.f65972c = bool;
        this.f65973d = dateFormat;
        this.f65974e = dateFormat == null ? null : new AtomicReference<>();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        TimeZone timeZone;
        Boolean bool = Boolean.FALSE;
        AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, this.f65984a);
        if (m6014l == null) {
            return this;
        }
        AbstractC23311k.EnumC23314c enumC23314c = m6014l.f64499b;
        if (enumC23314c.m7288a()) {
            return mo6021r(Boolean.TRUE, null);
        }
        String str = m6014l.f64498a;
        if (str != null && str.length() > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(m6014l.f64498a, m6014l.m7284d() ? m6014l.f64500c : abstractC23425a0.f64991a.f65071b.f65030i);
            if (m6014l.m7283e()) {
                timeZone = m6014l.m7285c();
            } else {
                TimeZone timeZone2 = abstractC23425a0.f64991a.f65071b.f65031j;
                timeZone = timeZone2;
                if (timeZone2 == null) {
                    timeZone = C23445a.f65021l;
                }
            }
            simpleDateFormat.setTimeZone(timeZone);
            return mo6021r(bool, simpleDateFormat);
        }
        boolean m7284d = m6014l.m7284d();
        boolean m7283e = m6014l.m7283e();
        boolean z = enumC23314c == AbstractC23311k.EnumC23314c.STRING;
        if (!m7284d && !m7283e && !z) {
            return this;
        }
        DateFormat dateFormat = abstractC23425a0.f64991a.f65071b.f65029h;
        if (dateFormat instanceof C23939z) {
            C23939z c23939z = (C23939z) dateFormat;
            C23939z c23939z2 = c23939z;
            if (m6014l.m7284d()) {
                c23939z2 = c23939z.m5686j(m6014l.f64500c);
            }
            C23939z c23939z3 = c23939z2;
            if (m6014l.m7283e()) {
                c23939z3 = c23939z2.m5685k(m6014l.m7285c());
            }
            return mo6021r(bool, c23939z3);
        }
        if (!(dateFormat instanceof SimpleDateFormat)) {
            abstractC23425a0.m6521n(this.f65984a, String.format("Configured `DateFormat` (%s) not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`", dateFormat.getClass().getName()));
        }
        SimpleDateFormat simpleDateFormat2 = (SimpleDateFormat) dateFormat;
        SimpleDateFormat simpleDateFormat3 = m7284d ? new SimpleDateFormat(simpleDateFormat2.toPattern(), m6014l.f64500c) : (SimpleDateFormat) simpleDateFormat2.clone();
        TimeZone m7285c = m6014l.m7285c();
        if (m7285c != null && !m7285c.equals(simpleDateFormat3.getTimeZone())) {
            simpleDateFormat3.setTimeZone(m7285c);
        }
        return mo6021r(bool, simpleDateFormat3);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, T t) {
        return false;
    }

    /* renamed from: p */
    public boolean m6023p(AbstractC23425a0 abstractC23425a0) {
        Boolean bool = this.f65972c;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.f65973d != null) {
            return false;
        }
        if (abstractC23425a0 != null) {
            return abstractC23425a0.m6889M(EnumC23958z.WRITE_DATES_AS_TIMESTAMPS);
        }
        throw new IllegalArgumentException(C22128a.m8647Z1(this.f65984a, C22128a.m8728C("Null SerializerProvider passed for ")));
    }

    /* renamed from: q */
    public void m6022q(Date date, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        if (this.f65973d == null) {
            Objects.requireNonNull(abstractC23425a0);
            if (abstractC23425a0.m6889M(EnumC23958z.WRITE_DATES_AS_TIMESTAMPS)) {
                abstractC23372g.mo5878K0(date.getTime());
                return;
            } else {
                abstractC23372g.mo5868T1(abstractC23425a0.m6882r().format(date));
                return;
            }
        }
        DateFormat andSet = this.f65974e.getAndSet(null);
        DateFormat dateFormat = andSet;
        if (andSet == null) {
            dateFormat = (DateFormat) this.f65973d.clone();
        }
        abstractC23372g.mo5868T1(dateFormat.format(date));
        this.f65974e.compareAndSet(null, dateFormat);
    }

    /* renamed from: r */
    public abstract AbstractC23836l<T> mo6021r(Boolean bool, DateFormat dateFormat);
}

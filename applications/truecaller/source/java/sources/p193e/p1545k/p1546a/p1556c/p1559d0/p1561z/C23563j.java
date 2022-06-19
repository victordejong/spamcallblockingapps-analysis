package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23939z;
/* renamed from: e.k.a.c.d0.z.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/j.class */
public class C23563j {

    /* renamed from: a */
    public static final HashSet<String> f65366a;

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.j$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/j$a.class */
    public static class C23564a extends AbstractC23565b<Calendar> {

        /* renamed from: f */
        public final Constructor<Calendar> f65367f;

        public C23564a() {
            super(Calendar.class);
            this.f65367f = null;
        }

        public C23564a(C23564a c23564a, DateFormat dateFormat, String str) {
            super(c23564a, dateFormat, str);
            this.f65367f = c23564a.f65367f;
        }

        public C23564a(Class<? extends Calendar> cls) {
            super(cls);
            this.f65367f = C23914g.m5755l(cls, false);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            Date mo6581Q = mo6581Q(abstractC23376j, abstractC23632g);
            Calendar calendar = null;
            if (mo6581Q != null) {
                Constructor<Calendar> constructor = this.f65367f;
                if (constructor == null) {
                    calendar = Calendar.getInstance(abstractC23632g.m6504B());
                    calendar.setTime(mo6581Q);
                } else {
                    try {
                        calendar = constructor.newInstance(new Object[0]);
                        calendar.setTimeInMillis(mo6581Q.getTime());
                        TimeZone m6504B = abstractC23632g.m6504B();
                        if (m6504B != null) {
                            calendar.setTimeZone(m6504B);
                        }
                    } catch (Exception e) {
                        abstractC23632g.m6502D(this.f65309a, mo6581Q, e);
                        throw null;
                    }
                }
            }
            return calendar;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23563j.AbstractC23565b
        /* renamed from: m0 */
        public AbstractC23565b<Calendar> mo6580m0(DateFormat dateFormat, String str) {
            return new C23564a(this, dateFormat, str);
        }
    }

    /* renamed from: e.k.a.c.d0.z.j$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/j$b.class */
    public static abstract class AbstractC23565b<T> extends AbstractC23552e0<T> implements AbstractC23474i {

        /* renamed from: d */
        public final DateFormat f65368d;

        /* renamed from: e */
        public final String f65369e;

        public AbstractC23565b(AbstractC23565b<T> abstractC23565b, DateFormat dateFormat, String str) {
            super(abstractC23565b.f65309a);
            this.f65368d = dateFormat;
            this.f65369e = str;
        }

        public AbstractC23565b(Class<?> cls) {
            super(cls);
            this.f65368d = null;
            this.f65369e = null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
        /* renamed from: Q */
        public Date mo6581Q(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            Date parse;
            if (this.f65368d == null || !abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
                return super.mo6581Q(abstractC23376j, abstractC23632g);
            }
            String trim = abstractC23376j.mo5817U0().trim();
            if (trim.isEmpty()) {
                if (m6637v(abstractC23632g, trim, EnumC23876f.DateTime, mo6223m()).ordinal() == 3) {
                    return new Date(0L);
                }
                return null;
            }
            synchronized (this.f65368d) {
                try {
                    parse = this.f65368d.parse(trim);
                } catch (ParseException e) {
                    abstractC23632g.m6492N(this.f65309a, trim, "expected format \"%s\"", this.f65369e);
                    throw null;
                }
            }
            return parse;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
        /* renamed from: a */
        public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
            C23939z c23939z;
            String str;
            C23939z c23939z2;
            AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, this.f65309a);
            if (m6644h0 != null) {
                TimeZone m7285c = m6644h0.m7285c();
                Boolean bool = m6644h0.f64502e;
                String str2 = m6644h0.f64498a;
                if (str2 != null && str2.length() > 0) {
                    String str3 = m6644h0.f64498a;
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str3, m6644h0.m7284d() ? m6644h0.f64500c : abstractC23632g.f65501c.f65071b.f65030i);
                    TimeZone timeZone = m7285c;
                    if (m7285c == null) {
                        timeZone = abstractC23632g.m6504B();
                    }
                    simpleDateFormat.setTimeZone(timeZone);
                    if (bool != null) {
                        simpleDateFormat.setLenient(bool.booleanValue());
                    }
                    return mo6580m0(simpleDateFormat, str3);
                } else if (m7285c != null) {
                    DateFormat dateFormat = abstractC23632g.f65501c.f65071b.f65029h;
                    if (dateFormat.getClass() == C23939z.class) {
                        C23939z m5686j = ((C23939z) dateFormat).m5685k(m7285c).m5686j(m6644h0.m7284d() ? m6644h0.f64500c : abstractC23632g.f65501c.f65071b.f65030i);
                        c23939z2 = m5686j;
                        if (bool != null) {
                            c23939z2 = m5686j.m5687i(bool);
                        }
                    } else {
                        DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
                        dateFormat2.setTimeZone(m7285c);
                        c23939z2 = dateFormat2;
                        if (bool != null) {
                            dateFormat2.setLenient(bool.booleanValue());
                            c23939z2 = dateFormat2;
                        }
                    }
                    return mo6580m0(c23939z2, this.f65369e);
                } else if (bool != null) {
                    DateFormat dateFormat3 = abstractC23632g.f65501c.f65071b.f65029h;
                    String str4 = this.f65369e;
                    if (dateFormat3.getClass() == C23939z.class) {
                        C23939z m5687i = ((C23939z) dateFormat3).m5687i(bool);
                        StringBuilder m8736A = C22128a.m8736A(100, "[one of: '", "yyyy-MM-dd'T'HH:mm:ss.SSSX", "', '", "EEE, dd MMM yyyy HH:mm:ss zzz");
                        m8736A.append("' (");
                        str = C22128a.m8618h(m8736A, Boolean.FALSE.equals(m5687i.f66219c) ? "strict" : "lenient", ")]");
                        c23939z = m5687i;
                    } else {
                        DateFormat dateFormat4 = (DateFormat) dateFormat3.clone();
                        dateFormat4.setLenient(bool.booleanValue());
                        c23939z = dateFormat4;
                        str = str4;
                        if (dateFormat4 instanceof SimpleDateFormat) {
                            ((SimpleDateFormat) dateFormat4).toPattern();
                            str = str4;
                            c23939z = dateFormat4;
                        }
                    }
                    String str5 = str;
                    if (str == null) {
                        str5 = "[unknown]";
                    }
                    return mo6580m0(c23939z, str5);
                }
            }
            return this;
        }

        /* renamed from: m0 */
        public abstract AbstractC23565b<T> mo6580m0(DateFormat dateFormat, String str);

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public EnumC23876f mo6221o() {
            return EnumC23876f.DateTime;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.j$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/j$c.class */
    public static class C23566c extends AbstractC23565b<Date> {

        /* renamed from: f */
        public static final C23566c f65370f = new C23566c();

        public C23566c() {
            super(Date.class);
        }

        public C23566c(C23566c c23566c, DateFormat dateFormat, String str) {
            super(c23566c, dateFormat, str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            return mo6581Q(abstractC23376j, abstractC23632g);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) {
            return new Date(0L);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23563j.AbstractC23565b
        /* renamed from: m0 */
        public AbstractC23565b<Date> mo6580m0(DateFormat dateFormat, String str) {
            return new C23566c(this, dateFormat, str);
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        f65366a = hashSet;
        hashSet.add("java.util.Calendar");
        hashSet.add("java.util.GregorianCalendar");
        hashSet.add("java.util.Date");
    }
}

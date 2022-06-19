package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import com.esotericsoftware.kryo.p278c.C9383b;
import com.esotericsoftware.kryo.p278c.C9384c;
import com.esotericsoftware.kryo.p278c.C9385d;
import com.esotericsoftware.kryo.p278c.C9392g;
import com.esotericsoftware.kryo.p278c.C9394i;
import com.esotericsoftware.kryo.p278c.C9404m;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.kryo.serializers.C9437d;
import com.esotericsoftware.kryo.serializers.C9441f;
import com.esotericsoftware.kryo.serializers.C9452g;
import com.esotericsoftware.kryo.serializers.C9490h;
import com.esotericsoftware.kryo.serializers.C9495j;
import com.esotericsoftware.kryo.serializers.C9497k;
import com.esotericsoftware.kryo.serializers.C9502l;
import com.esotericsoftware.kryo.serializers.C9513n;
import com.esotericsoftware.p274b.C9366a;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.nio.charset.Charset;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.PriorityQueue;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
import org.objenesis.p596a.AbstractC21005a;
import org.objenesis.p603b.AbstractC21022b;
/* renamed from: com.esotericsoftware.kryo.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c.class */
public class C9380c {

    /* renamed from: a */
    public int f32232a;

    /* renamed from: b */
    public boolean f32233b;

    /* renamed from: c */
    public AbstractC9411f f32234c;

    /* renamed from: d */
    public boolean f32235d;

    /* renamed from: e */
    public Object f32236e;

    /* renamed from: f */
    private AbstractC9414i f32237f;

    /* renamed from: g */
    private final ArrayList<C9381a> f32238g;

    /* renamed from: h */
    private final int f32239h;

    /* renamed from: i */
    private final AbstractC9373a f32240i;

    /* renamed from: j */
    private int f32241j;

    /* renamed from: k */
    private ClassLoader f32242k;

    /* renamed from: l */
    private AbstractC21022b f32243l;

    /* renamed from: m */
    private boolean f32244m;

    /* renamed from: n */
    private boolean f32245n;

    /* renamed from: o */
    private int f32246o;

    /* renamed from: p */
    private volatile Thread f32247p;

    /* renamed from: q */
    private C9404m f32248q;

    /* renamed from: r */
    private C9404m f32249r;

    /* renamed from: s */
    private final C9394i f32250s;

    /* renamed from: t */
    private boolean f32251t;

    /* renamed from: u */
    private int f32252u;

    /* renamed from: v */
    private boolean f32253v;

    /* renamed from: w */
    private C9392g f32254w;

    /* renamed from: x */
    private Object f32255x;

    /* renamed from: y */
    private AbstractC9388e f32256y;

    /* renamed from: com.esotericsoftware.kryo.c$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c$a.class */
    public static final class C9381a {

        /* renamed from: a */
        final Class f32257a;

        /* renamed from: b */
        final AbstractC9414i f32258b;

        C9381a(Class cls, AbstractC9414i abstractC9414i) {
            this.f32257a = cls;
            this.f32258b = abstractC9414i;
        }
    }

    public C9380c() {
        this(new C9383b(), null);
    }

    public C9380c(AbstractC9373a abstractC9373a, AbstractC9411f abstractC9411f) {
        this.f32237f = new AbstractC9414i.C9416b();
        ArrayList<C9381a> arrayList = new ArrayList<>(68);
        this.f32238g = arrayList;
        this.f32242k = getClass().getClassLoader();
        this.f32243l = new C9385d();
        this.f32244m = true;
        this.f32246o = Integer.MAX_VALUE;
        this.f32233b = true;
        this.f32250s = new C9394i(0);
        this.f32251t = true;
        this.f32256y = new C9384c(this);
        if (abstractC9373a != null) {
            this.f32240i = abstractC9373a;
            abstractC9373a.mo24353a(this);
            this.f32234c = abstractC9411f;
            if (abstractC9411f != null) {
                abstractC9411f.mo24284a(this);
                this.f32235d = true;
            }
            m24382a(byte[].class, C9441f.C9443b.class);
            m24382a(char[].class, C9441f.C9444c.class);
            m24382a(short[].class, C9441f.C9450i.class);
            m24382a(int[].class, C9441f.C9447f.class);
            m24382a(long[].class, C9441f.C9448g.class);
            m24382a(float[].class, C9441f.C9446e.class);
            m24382a(double[].class, C9441f.C9445d.class);
            m24382a(boolean[].class, C9441f.C9442a.class);
            m24382a(String[].class, C9441f.C9451j.class);
            m24382a(Object[].class, C9441f.C9449h.class);
            m24382a(BigInteger.class, C9452g.C9466c.class);
            m24382a(BigDecimal.class, C9452g.C9465b.class);
            m24382a(Class.class, C9452g.C9473j.class);
            m24382a(Date.class, C9452g.C9482s.class);
            m24382a(Enum.class, C9452g.C9484u.class);
            m24382a(EnumSet.class, C9452g.C9485v.class);
            m24382a(Currency.class, C9452g.C9481r.class);
            m24382a(StringBuffer.class, C9452g.C9457ad.class);
            m24382a(StringBuilder.class, C9452g.C9458ae.class);
            m24382a(Collections.EMPTY_LIST.getClass(), C9452g.C9474k.class);
            m24382a(Collections.EMPTY_MAP.getClass(), C9452g.C9475l.class);
            m24382a(Collections.EMPTY_SET.getClass(), C9452g.C9476m.class);
            m24382a(Collections.singletonList(null).getClass(), C9452g.C9477n.class);
            m24382a(Collections.singletonMap(null, null).getClass(), C9452g.C9478o.class);
            m24382a(Collections.singleton(null).getClass(), C9452g.C9479p.class);
            m24382a(TreeSet.class, C9452g.C9462ai.class);
            m24382a(Collection.class, C9437d.class);
            m24382a(ConcurrentSkipListMap.class, C9452g.C9480q.class);
            m24382a(TreeMap.class, C9452g.C9461ah.class);
            m24382a(Map.class, C9495j.class);
            m24382a(TimeZone.class, C9452g.C9460ag.class);
            m24382a(Calendar.class, C9452g.C9470g.class);
            m24382a(Locale.class, C9452g.C9489z.class);
            m24382a(Charset.class, C9452g.C9472i.class);
            m24382a(URL.class, C9452g.C9463aj.class);
            m24382a(Arrays.asList(new Object[0]).getClass(), C9452g.C9453a.class);
            m24384a(Void.TYPE, new C9452g.C9464ak());
            m24384a(PriorityQueue.class, new C9452g.C9455ab());
            m24384a(BitSet.class, new C9452g.C9467d());
            m24382a(AbstractC9410e.class, C9452g.C9488y.class);
            if (C9408n.m24299a("java.util.Optional")) {
                m24382a(Optional.class, C9497k.C9501d.class);
            }
            if (C9408n.m24299a("java.util.OptionalInt")) {
                m24382a(OptionalInt.class, C9497k.C9499b.class);
            }
            if (C9408n.m24299a("java.util.OptionalLong")) {
                m24382a(OptionalLong.class, C9497k.C9500c.class);
            }
            if (C9408n.m24299a("java.util.OptionalDouble")) {
                m24382a(OptionalDouble.class, C9497k.C9498a.class);
            }
            if (C9408n.m24299a("java.time.Duration")) {
                m24382a(Duration.class, C9513n.C9514a.class);
            }
            if (C9408n.m24299a("java.time.Instant")) {
                m24382a(Instant.class, C9513n.C9515b.class);
            }
            if (C9408n.m24299a("java.time.LocalDate")) {
                m24382a(LocalDate.class, C9513n.C9516c.class);
            }
            if (C9408n.m24299a("java.time.LocalTime")) {
                m24382a(LocalTime.class, C9513n.C9518e.class);
            }
            if (C9408n.m24299a("java.time.LocalDateTime")) {
                m24382a(LocalDateTime.class, C9513n.C9517d.class);
            }
            if (C9408n.m24299a("java.time.ZoneOffset")) {
                m24382a(ZoneOffset.class, C9513n.C9526m.class);
            }
            if (C9408n.m24299a("java.time.ZoneId")) {
                m24382a(ZoneId.class, C9513n.C9525l.class);
            }
            if (C9408n.m24299a("java.time.OffsetTime")) {
                m24382a(OffsetTime.class, C9513n.C9521h.class);
            }
            if (C9408n.m24299a("java.time.OffsetDateTime")) {
                m24382a(OffsetDateTime.class, C9513n.C9520g.class);
            }
            if (C9408n.m24299a("java.time.ZonedDateTime")) {
                m24382a(ZonedDateTime.class, C9513n.C9527n.class);
            }
            if (C9408n.m24299a("java.time.Year")) {
                m24382a(Year.class, C9513n.C9524k.class);
            }
            if (C9408n.m24299a("java.time.YearMonth")) {
                m24382a(YearMonth.class, C9513n.C9523j.class);
            }
            if (C9408n.m24299a("java.time.MonthDay")) {
                m24382a(MonthDay.class, C9513n.C9519f.class);
            }
            if (C9408n.m24299a("java.time.Period")) {
                m24382a(Period.class, C9513n.C9522i.class);
            }
            if (C9408n.m24299a("java.util.ImmutableCollections")) {
                C9490h.C9491a.m24246a(this);
                C9490h.C9492b.m24243a(this);
                C9490h.C9493c.m24242a(this);
            }
            if (C9408n.m24299a("java.lang.Record")) {
                try {
                    m24382a(Class.forName("java.lang.Record"), C9502l.class);
                } catch (ClassNotFoundException e) {
                    throw new KryoException("default serializer cannot be added: ".concat("java.lang.Record"));
                }
            }
            this.f32239h = arrayList.size();
            m24374b(Integer.TYPE, new C9452g.C9487x());
            m24374b(String.class, new C9452g.C9459af());
            m24374b(Float.TYPE, new C9452g.C9486w());
            m24374b(Boolean.TYPE, new C9452g.C9468e());
            m24374b(Byte.TYPE, new C9452g.C9469f());
            m24374b(Character.TYPE, new C9452g.C9471h());
            m24374b(Short.TYPE, new C9452g.C9456ac());
            m24374b(Long.TYPE, new C9452g.C9454aa());
            m24374b(Double.TYPE, new C9452g.C9483t());
            return;
        }
        throw new IllegalArgumentException("classResolver cannot be null.");
    }

    public C9380c(AbstractC9411f abstractC9411f) {
        this(new C9383b(), abstractC9411f);
    }

    /* renamed from: a */
    private int m24390a(C9374a c9374a, Class cls, boolean z) {
        int i;
        Class cls2 = cls;
        if (cls.isPrimitive()) {
            cls2 = C9408n.m24303a(cls);
        }
        boolean mo24283a = this.f32234c.mo24283a(cls2);
        if (z) {
            i = c9374a.m24456b(true);
            if (i == 0) {
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", null, c9374a.m24458b());
                }
                this.f32236e = null;
                return -1;
            } else if (!mo24283a) {
                this.f32250s.m24336a(-2);
                return this.f32250s.f32303b;
            }
        } else if (!mo24283a) {
            this.f32250s.m24336a(-2);
            return this.f32250s.f32303b;
        } else {
            i = c9374a.m24456b(true);
        }
        if (i != 1) {
            int i2 = i - 2;
            this.f32236e = this.f32234c.mo24286a(i2);
            if (!C9366a.f32189d) {
                return -1;
            }
            C9366a.m24496a("kryo", "Read reference " + i2 + ": " + C9408n.m24300a(this.f32236e) + C9408n.m24304a(c9374a.m24458b()));
            return -1;
        }
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Read: <not null>" + C9408n.m24304a(c9374a.m24458b()));
        }
        int mo24287a = this.f32234c.mo24287a();
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Read initial reference " + mo24287a + ": " + C9408n.m24292d(cls2) + C9408n.m24304a(c9374a.m24458b()));
        }
        this.f32250s.m24336a(mo24287a);
        return this.f32250s.f32303b;
    }

    /* renamed from: a */
    private int m24383a(Class cls, AbstractC9414i abstractC9414i) {
        int size = this.f32238g.size();
        int i = this.f32239h;
        int i2 = 0;
        for (int i3 = 0; i3 < size - i; i3++) {
            if (cls.isAssignableFrom(this.f32238g.get(i3).f32257a)) {
                i2 = i3 + 1;
            }
        }
        this.f32238g.add(i2, new C9381a(cls, abstractC9414i));
        return i2;
    }

    /* renamed from: a */
    private void m24382a(Class cls, Class<? extends AbstractC9413h> cls2) {
        if (cls != null) {
            m24383a(cls, new AbstractC9414i.C9417c(cls2));
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    /* renamed from: f */
    public static boolean m24369f(Class cls) {
        if (cls != null) {
            return cls.isArray() ? Modifier.isFinal(C9408n.m24289g(cls).getModifiers()) : Modifier.isFinal(cls.getModifiers());
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    /* renamed from: g */
    private static String m24368g(Class cls) {
        return "Class is not registered: " + C9408n.m24292d(cls) + "\nNote: To register this class use: kryo.register(" + C9408n.m24291e(cls) + ".class);";
    }

    /* renamed from: a */
    public final C9412g m24393a(C9374a c9374a) {
        if (c9374a != null) {
            try {
                return this.f32240i.mo24355a(c9374a);
            } finally {
                if (this.f32232a == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: a */
    public final C9412g m24389a(C9376c c9376c, Class cls) {
        if (c9376c != null) {
            try {
                return this.f32240i.mo24354a(c9376c, cls);
            } finally {
                if (this.f32232a == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    /* renamed from: a */
    public AbstractC9413h mo24385a(Class cls) {
        if (cls.isAnnotationPresent(AbstractC9378b.class)) {
            AbstractC9378b abstractC9378b = (AbstractC9378b) cls.getAnnotation(AbstractC9378b.class);
            return C9408n.m24296b(abstractC9378b.m24395b(), abstractC9378b.m24396a()).mo24277a(this, cls);
        }
        return null;
    }

    /* renamed from: a */
    public final <T> T m24392a(C9374a c9374a, Class<T> cls) {
        Object obj;
        if (c9374a != null) {
            if (cls == null) {
                throw new IllegalArgumentException("type cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d) {
                    int m24390a = m24390a(c9374a, (Class) cls, false);
                    if (m24390a == -1) {
                        return (T) this.f32236e;
                    }
                    Object read = m24372c(cls).f32363d.read(this, c9374a, cls);
                    obj = read;
                    if (m24390a == this.f32250s.f32303b) {
                        m24381a(read);
                        obj = read;
                    }
                } else {
                    obj = m24372c(cls).f32363d.read(this, c9374a, cls);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", obj, c9374a.m24458b());
                }
                int i = this.f32232a - 1;
                this.f32232a = i;
                if (i == 0 && this.f32233b) {
                    m24394a();
                }
                return (T) obj;
            } finally {
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: a */
    public final <T> T m24391a(C9374a c9374a, Class<T> cls, AbstractC9413h abstractC9413h) {
        Object obj;
        if (c9374a != null) {
            if (cls == null) {
                throw new IllegalArgumentException("type cannot be null.");
            }
            if (abstractC9413h == null) {
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d) {
                    int m24390a = m24390a(c9374a, (Class) cls, false);
                    if (m24390a == -1) {
                        return (T) this.f32236e;
                    }
                    Object read = abstractC9413h.read(this, c9374a, cls);
                    obj = read;
                    if (m24390a == this.f32250s.f32303b) {
                        m24381a(read);
                        obj = read;
                    }
                } else {
                    obj = abstractC9413h.read(this, c9374a, cls);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", obj, c9374a.m24458b());
                }
                int i = this.f32232a - 1;
                this.f32232a = i;
                if (i == 0 && this.f32233b) {
                    m24394a();
                }
                return (T) obj;
            } finally {
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: a */
    public final void m24394a() {
        this.f32232a = 0;
        C9404m c9404m = this.f32249r;
        if (c9404m != null) {
            c9404m.m24317a();
        }
        this.f32240i.mo24357a();
        if (this.f32235d) {
            this.f32234c.mo24281b();
            this.f32236e = null;
        }
        this.f32252u = 0;
        C9392g c9392g = this.f32254w;
        if (c9392g != null) {
            c9392g.m24317a();
        }
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Object graph complete.");
        }
    }

    /* renamed from: a */
    public final void m24388a(C9376c c9376c, Object obj) {
        if (c9376c != null) {
            m24380b();
            try {
                if (obj == null) {
                    m24389a(c9376c, (Class) null);
                    int i = this.f32232a - 1;
                    this.f32232a = i;
                    if (i != 0 || !this.f32233b) {
                        return;
                    }
                    m24394a();
                    return;
                }
                C9412g m24389a = m24389a(c9376c, (Class) obj.getClass());
                if (this.f32235d && m24386a(c9376c, obj, false)) {
                    int i2 = this.f32232a - 1;
                    this.f32232a = i2;
                    if (i2 != 0 || !this.f32233b) {
                        return;
                    }
                    m24394a();
                    return;
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Write", obj, c9376c.m24404b());
                }
                m24389a.f32363d.write(this, c9376c, obj);
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 != 0 || !this.f32233b) {
                    return;
                }
                m24394a();
                return;
            } catch (Throwable th) {
                int i4 = this.f32232a - 1;
                this.f32232a = i4;
                if (i4 == 0 && this.f32233b) {
                    m24394a();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    /* renamed from: a */
    public final void m24387a(C9376c c9376c, Object obj, AbstractC9413h abstractC9413h) {
        if (c9376c != null) {
            if (obj == null) {
                throw new IllegalArgumentException("object cannot be null.");
            }
            if (abstractC9413h == null) {
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d && m24386a(c9376c, obj, false)) {
                    int i = this.f32232a - 1;
                    this.f32232a = i;
                    if (i != 0 || !this.f32233b) {
                        return;
                    }
                    m24394a();
                    return;
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Write", obj, c9376c.m24404b());
                }
                abstractC9413h.write(this, c9376c, obj);
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 != 0 || !this.f32233b) {
                    return;
                }
                m24394a();
                return;
            } catch (Throwable th) {
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 == 0 && this.f32233b) {
                    m24394a();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    /* renamed from: a */
    public final void m24384a(Class cls, AbstractC9413h abstractC9413h) {
        if (cls != null) {
            m24383a(cls, new AbstractC9414i.C9418d(abstractC9413h));
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    /* renamed from: a */
    public final void m24381a(Object obj) {
        int m24337a;
        if (this.f32252u <= 0) {
            if (!this.f32235d || obj == null || (m24337a = this.f32250s.m24337a()) == -2) {
                return;
            }
            this.f32234c.mo24285a(m24337a, obj);
            return;
        }
        Object obj2 = this.f32255x;
        if (obj2 == null) {
            return;
        }
        if (obj == null) {
            throw new IllegalArgumentException("object cannot be null.");
        }
        this.f32254w.m24313a((C9392g) obj2, obj);
        this.f32255x = null;
    }

    /* renamed from: a */
    public final boolean m24386a(C9376c c9376c, Object obj, boolean z) {
        if (obj == null) {
            if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                C9408n.m24298a("Write", null, c9376c.m24404b());
            }
            c9376c.m24424a((byte) 0);
            return true;
        } else if (!this.f32234c.mo24283a((Class) obj.getClass())) {
            if (!z) {
                return false;
            }
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Write: <not null>" + C9408n.m24304a(c9376c.m24404b()));
            }
            c9376c.m24424a((byte) 1);
            return false;
        } else {
            int mo24282a = this.f32234c.mo24282a(obj);
            if (mo24282a != -1) {
                if (C9366a.f32189d) {
                    C9366a.m24496a("kryo", "Write reference " + mo24282a + ": " + C9408n.m24300a(obj) + C9408n.m24304a(c9376c.m24404b()));
                }
                c9376c.m24402b(mo24282a + 2, true);
                return true;
            }
            int mo24280b = this.f32234c.mo24280b(obj);
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", "Write: <not null>" + C9408n.m24304a(c9376c.m24404b()));
            }
            c9376c.m24424a((byte) 1);
            if (!C9366a.f32190e) {
                return false;
            }
            C9366a.m24494b("kryo", "Write initial reference " + mo24280b + ": " + C9408n.m24300a(obj) + C9408n.m24304a(c9376c.m24404b()));
            return false;
        }
    }

    /* renamed from: b */
    public final C9412g m24374b(Class cls, AbstractC9413h abstractC9413h) {
        C9412g mo24349b = this.f32240i.mo24349b(cls);
        if (mo24349b != null) {
            mo24349b.m24279a(abstractC9413h);
            return mo24349b;
        }
        return this.f32240i.mo24352a(new C9412g(cls, abstractC9413h, getNextRegistrationId()));
    }

    /* renamed from: b */
    public final AbstractC9413h m24375b(Class cls) {
        if (cls != null) {
            AbstractC9413h mo24385a = mo24385a(cls);
            if (mo24385a != null) {
                return mo24385a;
            }
            int size = this.f32238g.size();
            for (int i = 0; i < size; i++) {
                C9381a c9381a = this.f32238g.get(i);
                if (c9381a.f32257a.isAssignableFrom(cls)) {
                    return c9381a.f32258b.mo24277a(this, cls);
                }
            }
            return this.f32237f.mo24277a(this, cls);
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    /* renamed from: b */
    public final Object m24379b(C9374a c9374a) {
        Object obj;
        if (c9374a != null) {
            m24380b();
            try {
                C9412g m24393a = m24393a(c9374a);
                if (m24393a == null) {
                    int i = this.f32232a - 1;
                    this.f32232a = i;
                    if (i != 0 || !this.f32233b) {
                        return null;
                    }
                    m24394a();
                    return null;
                }
                Class cls = m24393a.f32360a;
                if (this.f32235d) {
                    int m24390a = m24390a(c9374a, cls, false);
                    if (m24390a == -1) {
                        return this.f32236e;
                    }
                    Object read = m24393a.f32363d.read(this, c9374a, cls);
                    obj = read;
                    if (m24390a == this.f32250s.f32303b) {
                        m24381a(read);
                        obj = read;
                    }
                } else {
                    obj = m24393a.f32363d.read(this, c9374a, cls);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", obj, c9374a.m24458b());
                }
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 == 0 && this.f32233b) {
                    m24394a();
                }
                return obj;
            } finally {
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: b */
    public final <T> T m24378b(C9374a c9374a, Class<T> cls) {
        Object obj;
        if (c9374a != null) {
            if (cls == null) {
                throw new IllegalArgumentException("type cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d) {
                    int m24390a = m24390a(c9374a, (Class) cls, true);
                    if (m24390a == -1) {
                        return (T) this.f32236e;
                    }
                    Object read = m24372c(cls).f32363d.read(this, c9374a, cls);
                    obj = read;
                    if (m24390a == this.f32250s.f32303b) {
                        m24381a(read);
                        obj = read;
                    }
                } else {
                    AbstractC9413h abstractC9413h = m24372c(cls).f32363d;
                    if (!abstractC9413h.getAcceptsNull() && c9374a.m24455c() == 0) {
                        if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                            C9408n.m24298a("Read", null, c9374a.m24458b());
                        }
                        int i = this.f32232a - 1;
                        this.f32232a = i;
                        if (i != 0 || !this.f32233b) {
                            return null;
                        }
                        m24394a();
                        return null;
                    }
                    obj = abstractC9413h.read(this, c9374a, cls);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", obj, c9374a.m24458b());
                }
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 == 0 && this.f32233b) {
                    m24394a();
                }
                return (T) obj;
            } finally {
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: b */
    public final <T> T m24377b(C9374a c9374a, Class<T> cls, AbstractC9413h abstractC9413h) {
        Object obj;
        if (c9374a != null) {
            if (cls == null) {
                throw new IllegalArgumentException("type cannot be null.");
            }
            if (abstractC9413h == null) {
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d) {
                    int m24390a = m24390a(c9374a, (Class) cls, true);
                    if (m24390a == -1) {
                        return (T) this.f32236e;
                    }
                    Object read = abstractC9413h.read(this, c9374a, cls);
                    obj = read;
                    if (m24390a == this.f32250s.f32303b) {
                        m24381a(read);
                        obj = read;
                    }
                } else if (!abstractC9413h.getAcceptsNull() && c9374a.m24455c() == 0) {
                    if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                        C9408n.m24298a("Read", null, c9374a.m24458b());
                    }
                    int i = this.f32232a - 1;
                    this.f32232a = i;
                    if (i != 0 || !this.f32233b) {
                        return null;
                    }
                    m24394a();
                    return null;
                } else {
                    obj = abstractC9413h.read(this, c9374a, cls);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Read", obj, c9374a.m24458b());
                }
                int i2 = this.f32232a - 1;
                this.f32232a = i2;
                if (i2 == 0 && this.f32233b) {
                    m24394a();
                }
                return (T) obj;
            } finally {
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 == 0 && this.f32233b) {
                    m24394a();
                }
            }
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: b */
    public final <T> T m24373b(T t) {
        if (t == null) {
            return null;
        }
        if (this.f32253v) {
            return t;
        }
        this.f32252u++;
        try {
            if (this.f32254w == null) {
                this.f32254w = new C9392g();
            }
            T t2 = (T) this.f32254w.m24308c(t);
            if (t2 != null) {
                return t2;
            }
            if (this.f32251t) {
                this.f32255x = t;
            }
            Object m24288a = t instanceof AbstractC9409d ? ((AbstractC9409d) t).m24288a() : m24371d(t.getClass()).copy(this, t);
            if (this.f32255x != null) {
                m24381a(m24288a);
            }
            if (C9366a.f32190e || (C9366a.f32189d && this.f32252u == 1)) {
                C9408n.m24298a("Copy", m24288a, -1);
            }
            int i = this.f32252u - 1;
            this.f32252u = i;
            if (i == 0) {
                m24394a();
            }
            return (T) m24288a;
        } finally {
            int i2 = this.f32252u - 1;
            this.f32252u = i2;
            if (i2 == 0) {
                m24394a();
            }
        }
    }

    /* renamed from: b */
    public final void m24380b() {
        if (C9366a.f32189d) {
            if (this.f32232a == 0) {
                this.f32247p = Thread.currentThread();
            } else if (this.f32247p != Thread.currentThread()) {
                throw new ConcurrentModificationException("Kryo must not be accessed concurrently by multiple threads.");
            }
        }
        int i = this.f32232a;
        if (i != this.f32246o) {
            this.f32232a = i + 1;
            return;
        }
        throw new KryoException("Max depth exceeded: " + this.f32232a);
    }

    /* renamed from: b */
    public final void m24376b(C9376c c9376c, Object obj, AbstractC9413h abstractC9413h) {
        if (c9376c != null) {
            if (abstractC9413h == null) {
                throw new IllegalArgumentException("serializer cannot be null.");
            }
            m24380b();
            try {
                if (this.f32235d) {
                    if (m24386a(c9376c, obj, true)) {
                        int i = this.f32232a - 1;
                        this.f32232a = i;
                        if (i != 0 || !this.f32233b) {
                            return;
                        }
                        m24394a();
                        return;
                    }
                } else if (!abstractC9413h.getAcceptsNull()) {
                    if (obj == null) {
                        if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                            C9408n.m24298a("Write", null, c9376c.m24404b());
                        }
                        c9376c.m24424a((byte) 0);
                        int i2 = this.f32232a - 1;
                        this.f32232a = i2;
                        if (i2 != 0 || !this.f32233b) {
                            return;
                        }
                        m24394a();
                        return;
                    }
                    if (C9366a.f32190e) {
                        C9366a.m24494b("kryo", "Write: <not null>" + C9408n.m24304a(c9376c.m24404b()));
                    }
                    c9376c.m24424a((byte) 1);
                }
                if (C9366a.f32190e || (C9366a.f32189d && this.f32232a == 1)) {
                    C9408n.m24298a("Write", obj, c9376c.m24404b());
                }
                abstractC9413h.write(this, c9376c, obj);
                int i3 = this.f32232a - 1;
                this.f32232a = i3;
                if (i3 != 0 || !this.f32233b) {
                    return;
                }
                m24394a();
                return;
            } catch (Throwable th) {
                int i4 = this.f32232a - 1;
                this.f32232a = i4;
                if (i4 == 0 && this.f32233b) {
                    m24394a();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("output cannot be null.");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.esotericsoftware.kryo.C9412g m24372c(java.lang.Class r5) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.C9380c.m24372c(java.lang.Class):com.esotericsoftware.kryo.g");
    }

    /* renamed from: d */
    public final AbstractC9413h m24371d(Class cls) {
        return m24372c(cls).f32363d;
    }

    /* renamed from: e */
    public final <T> T m24370e(Class<T> cls) {
        C9412g m24372c = m24372c(cls);
        AbstractC21005a<T> abstractC21005a = m24372c.f32364e;
        AbstractC21005a<T> abstractC21005a2 = abstractC21005a;
        if (abstractC21005a == null) {
            abstractC21005a2 = this.f32243l.mo125a(cls);
            if (abstractC21005a2 == null) {
                throw new IllegalArgumentException("instantiator cannot be null.");
            }
            m24372c.f32364e = abstractC21005a2;
        }
        return abstractC21005a2.mo133a();
    }

    public ClassLoader getClassLoader() {
        return this.f32242k;
    }

    public C9404m getContext() {
        if (this.f32248q == null) {
            this.f32248q = new C9404m();
        }
        return this.f32248q;
    }

    public int getDepth() {
        return this.f32232a;
    }

    public AbstractC9388e getGenerics() {
        return this.f32256y;
    }

    public C9404m getGraphContext() {
        if (this.f32249r == null) {
            this.f32249r = new C9404m();
        }
        return this.f32249r;
    }

    public int getNextRegistrationId() {
        while (true) {
            int i = this.f32241j;
            if (i != -2) {
                if (this.f32240i.mo24356a(i) == null) {
                    return this.f32241j;
                }
                this.f32241j++;
            } else {
                throw new KryoException("No registration IDs are available.");
            }
        }
    }

    public AbstractC9411f getReferenceResolver() {
        return this.f32234c;
    }

    public boolean getReferences() {
        return this.f32235d;
    }

    public boolean isRegistrationRequired() {
        return this.f32244m;
    }

    public void setDefaultSerializer(Class<? extends AbstractC9413h> cls) {
        if (cls != null) {
            this.f32237f = new AbstractC9414i.C9417c(cls);
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public void setInstantiatorStrategy(AbstractC21022b abstractC21022b) {
        this.f32243l = abstractC21022b;
    }

    public void setRegistrationRequired(boolean z) {
        this.f32244m = z;
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Registration required: ".concat(String.valueOf(z)));
        }
    }
}

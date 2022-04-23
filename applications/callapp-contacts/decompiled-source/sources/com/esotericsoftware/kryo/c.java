package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.c.d;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.c.g;
import com.esotericsoftware.kryo.c.i;
import com.esotericsoftware.kryo.c.m;
import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.i;
import com.esotericsoftware.kryo.serializers.f;
import com.esotericsoftware.kryo.serializers.g;
import com.esotericsoftware.kryo.serializers.h;
import com.esotericsoftware.kryo.serializers.j;
import com.esotericsoftware.kryo.serializers.k;
import com.esotericsoftware.kryo.serializers.l;
import com.esotericsoftware.kryo.serializers.n;
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
import org.objenesis.b.b;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public int f18968a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f18969b;

    /* renamed from: c  reason: collision with root package name */
    public f f18970c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f18971d;
    public Object e;
    private i f;
    private final ArrayList<a> g;
    private final int h;
    private final com.esotericsoftware.kryo.a i;
    private int j;
    private ClassLoader k;
    private b l;
    private boolean m;
    private boolean n;
    private int o;
    private volatile Thread p;
    private m q;
    private m r;
    private final i s;
    private boolean t;
    private int u;
    private boolean v;
    private g w;
    private Object x;
    private e y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Class f18972a;

        /* renamed from: b  reason: collision with root package name */
        final i f18973b;

        a(Class cls, i iVar) {
            this.f18972a = cls;
            this.f18973b = iVar;
        }
    }

    public c() {
        this(new com.esotericsoftware.kryo.c.b(), null);
    }

    public c(com.esotericsoftware.kryo.a aVar, f fVar) {
        this.f = new i.b();
        ArrayList<a> arrayList = new ArrayList<>(68);
        this.g = arrayList;
        this.k = getClass().getClassLoader();
        this.l = new d();
        this.m = true;
        this.o = Integer.MAX_VALUE;
        this.f18969b = true;
        this.s = new com.esotericsoftware.kryo.c.i(0);
        this.t = true;
        this.y = new com.esotericsoftware.kryo.c.c(this);
        if (aVar != null) {
            this.i = aVar;
            aVar.a(this);
            this.f18970c = fVar;
            if (fVar != null) {
                fVar.a(this);
                this.f18971d = true;
            }
            a(byte[].class, f.b.class);
            a(char[].class, f.c.class);
            a(short[].class, f.i.class);
            a(int[].class, f.C0376f.class);
            a(long[].class, f.g.class);
            a(float[].class, f.e.class);
            a(double[].class, f.d.class);
            a(boolean[].class, f.a.class);
            a(String[].class, f.j.class);
            a(Object[].class, f.h.class);
            a(BigInteger.class, g.c.class);
            a(BigDecimal.class, g.b.class);
            a(Class.class, g.j.class);
            a(Date.class, g.s.class);
            a(Enum.class, g.u.class);
            a(EnumSet.class, g.v.class);
            a(Currency.class, g.r.class);
            a(StringBuffer.class, g.ad.class);
            a(StringBuilder.class, g.ae.class);
            a(Collections.EMPTY_LIST.getClass(), g.k.class);
            a(Collections.EMPTY_MAP.getClass(), g.l.class);
            a(Collections.EMPTY_SET.getClass(), g.m.class);
            a(Collections.singletonList(null).getClass(), g.n.class);
            a(Collections.singletonMap(null, null).getClass(), g.o.class);
            a(Collections.singleton(null).getClass(), g.p.class);
            a(TreeSet.class, g.ai.class);
            a(Collection.class, com.esotericsoftware.kryo.serializers.d.class);
            a(ConcurrentSkipListMap.class, g.q.class);
            a(TreeMap.class, g.ah.class);
            a(Map.class, j.class);
            a(TimeZone.class, g.ag.class);
            a(Calendar.class, g.C0377g.class);
            a(Locale.class, g.z.class);
            a(Charset.class, g.i.class);
            a(URL.class, g.aj.class);
            a(Arrays.asList(new Object[0]).getClass(), g.a.class);
            a(Void.TYPE, new g.ak());
            a(PriorityQueue.class, new g.ab());
            a(BitSet.class, new g.d());
            a(e.class, g.y.class);
            if (n.a("java.util.Optional")) {
                a(Optional.class, k.d.class);
            }
            if (n.a("java.util.OptionalInt")) {
                a(OptionalInt.class, k.b.class);
            }
            if (n.a("java.util.OptionalLong")) {
                a(OptionalLong.class, k.c.class);
            }
            if (n.a("java.util.OptionalDouble")) {
                a(OptionalDouble.class, k.a.class);
            }
            if (n.a("java.time.Duration")) {
                a(Duration.class, n.a.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.Instant")) {
                a(Instant.class, n.b.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.LocalDate")) {
                a(LocalDate.class, n.c.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.LocalTime")) {
                a(LocalTime.class, n.e.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.LocalDateTime")) {
                a(LocalDateTime.class, n.d.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.ZoneOffset")) {
                a(ZoneOffset.class, n.m.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.ZoneId")) {
                a(ZoneId.class, n.l.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.OffsetTime")) {
                a(OffsetTime.class, n.h.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.OffsetDateTime")) {
                a(OffsetDateTime.class, n.g.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.ZonedDateTime")) {
                a(ZonedDateTime.class, n.C0378n.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.Year")) {
                a(Year.class, n.k.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.YearMonth")) {
                a(YearMonth.class, n.j.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.MonthDay")) {
                a(MonthDay.class, n.f.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.time.Period")) {
                a(Period.class, n.i.class);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.util.ImmutableCollections")) {
                h.a.a(this);
                h.b.a(this);
                h.c.a(this);
            }
            if (com.esotericsoftware.kryo.c.n.a("java.lang.Record")) {
                try {
                    a(Class.forName("java.lang.Record"), l.class);
                } catch (ClassNotFoundException e) {
                    throw new KryoException("default serializer cannot be added: ".concat("java.lang.Record"));
                }
            }
            this.h = arrayList.size();
            b(Integer.TYPE, new g.x());
            b(String.class, new g.af());
            b(Float.TYPE, new g.w());
            b(Boolean.TYPE, new g.e());
            b(Byte.TYPE, new g.f());
            b(Character.TYPE, new g.h());
            b(Short.TYPE, new g.ac());
            b(Long.TYPE, new g.aa());
            b(Double.TYPE, new g.t());
            return;
        }
        throw new IllegalArgumentException("classResolver cannot be null.");
    }

    public c(f fVar) {
        this(new com.esotericsoftware.kryo.c.b(), fVar);
    }

    private int a(com.esotericsoftware.kryo.a.a aVar, Class cls, boolean z) {
        int i;
        Class cls2 = cls;
        if (cls.isPrimitive()) {
            cls2 = com.esotericsoftware.kryo.c.n.a(cls);
        }
        boolean a2 = this.f18970c.a(cls2);
        if (z) {
            i = aVar.b(true);
            if (i == 0) {
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", null, aVar.b());
                }
                this.e = null;
                return -1;
            } else if (!a2) {
                this.s.a(-2);
                return this.s.f19000b;
            }
        } else if (!a2) {
            this.s.a(-2);
            return this.s.f19000b;
        } else {
            i = aVar.b(true);
        }
        if (i == 1) {
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Read: <not null>" + com.esotericsoftware.kryo.c.n.a(aVar.b()));
            }
            int a3 = this.f18970c.a();
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Read initial reference " + a3 + ": " + com.esotericsoftware.kryo.c.n.d(cls2) + com.esotericsoftware.kryo.c.n.a(aVar.b()));
            }
            this.s.a(a3);
            return this.s.f19000b;
        }
        int i2 = i - 2;
        this.e = this.f18970c.a(i2);
        if (!com.esotericsoftware.b.a.f18945d) {
            return -1;
        }
        com.esotericsoftware.b.a.a("kryo", "Read reference " + i2 + ": " + com.esotericsoftware.kryo.c.n.a(this.e) + com.esotericsoftware.kryo.c.n.a(aVar.b()));
        return -1;
    }

    private int a(Class cls, i iVar) {
        int size = this.g.size();
        int i = this.h;
        int i2 = 0;
        for (int i3 = 0; i3 < size - i; i3++) {
            if (cls.isAssignableFrom(this.g.get(i3).f18972a)) {
                i2 = i3 + 1;
            }
        }
        this.g.add(i2, new a(cls, iVar));
        return i2;
    }

    private void a(Class cls, Class<? extends h> cls2) {
        if (cls != null) {
            a(cls, new i.c(cls2));
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public static boolean f(Class cls) {
        if (cls != null) {
            return cls.isArray() ? Modifier.isFinal(com.esotericsoftware.kryo.c.n.g(cls).getModifiers()) : Modifier.isFinal(cls.getModifiers());
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    private static String g(Class cls) {
        return "Class is not registered: " + com.esotericsoftware.kryo.c.n.d(cls) + "\nNote: To register this class use: kryo.register(" + com.esotericsoftware.kryo.c.n.e(cls) + ".class);";
    }

    public final g a(com.esotericsoftware.kryo.a.a aVar) {
        if (aVar != null) {
            try {
                return this.i.a(aVar);
            } finally {
                if (this.f18968a == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("input cannot be null.");
        }
    }

    public final g a(com.esotericsoftware.kryo.a.c cVar, Class cls) {
        if (cVar != null) {
            try {
                return this.i.a(cVar, cls);
            } finally {
                if (this.f18968a == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("output cannot be null.");
        }
    }

    public h a(Class cls) {
        if (!cls.isAnnotationPresent(b.class)) {
            return null;
        }
        b bVar = (b) cls.getAnnotation(b.class);
        return com.esotericsoftware.kryo.c.n.b(bVar.b(), bVar.a()).a(this, cls);
    }

    public final <T> T a(com.esotericsoftware.kryo.a.a aVar, Class<T> cls) {
        T t;
        if (aVar == null) {
            throw new IllegalArgumentException("input cannot be null.");
        } else if (cls != null) {
            b();
            try {
                if (this.f18971d) {
                    int a2 = a(aVar, (Class) cls, false);
                    if (a2 == -1) {
                        return (T) this.e;
                    }
                    Object read = c(cls).f19042d.read(this, aVar, cls);
                    t = (T) read;
                    if (a2 == this.s.f19000b) {
                        a(read);
                        t = (T) read;
                    }
                } else {
                    t = (T) c(cls).f19042d.read(this, aVar, cls);
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", t, aVar.b());
                }
                int i = this.f18968a - 1;
                this.f18968a = i;
                if (i == 0 && this.f18969b) {
                    a();
                }
                return t;
            } finally {
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("type cannot be null.");
        }
    }

    public final <T> T a(com.esotericsoftware.kryo.a.a aVar, Class<T> cls, h hVar) {
        T t;
        if (aVar == null) {
            throw new IllegalArgumentException("input cannot be null.");
        } else if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        } else if (hVar != null) {
            b();
            try {
                if (this.f18971d) {
                    int a2 = a(aVar, (Class) cls, false);
                    if (a2 == -1) {
                        return (T) this.e;
                    }
                    Object read = hVar.read(this, aVar, cls);
                    t = (T) read;
                    if (a2 == this.s.f19000b) {
                        a(read);
                        t = (T) read;
                    }
                } else {
                    t = (T) hVar.read(this, aVar, cls);
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", t, aVar.b());
                }
                int i = this.f18968a - 1;
                this.f18968a = i;
                if (i == 0 && this.f18969b) {
                    a();
                }
                return t;
            } finally {
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("serializer cannot be null.");
        }
    }

    public final void a() {
        this.f18968a = 0;
        m mVar = this.r;
        if (mVar != null) {
            mVar.a();
        }
        this.i.a();
        if (this.f18971d) {
            this.f18970c.b();
            this.e = null;
        }
        this.u = 0;
        com.esotericsoftware.kryo.c.g gVar = this.w;
        if (gVar != null) {
            gVar.a();
        }
        if (com.esotericsoftware.b.a.e) {
            com.esotericsoftware.b.a.b("kryo", "Object graph complete.");
        }
    }

    public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj) {
        if (cVar != null) {
            b();
            try {
                if (obj == null) {
                    a(cVar, (Class) null);
                    int i = this.f18968a - 1;
                    this.f18968a = i;
                    if (i == 0 && this.f18969b) {
                        a();
                        return;
                    }
                    return;
                }
                g a2 = a(cVar, (Class) obj.getClass());
                if (!this.f18971d || !a(cVar, obj, false)) {
                    if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                        com.esotericsoftware.kryo.c.n.a("Write", obj, cVar.b());
                    }
                    a2.f19042d.write(this, cVar, obj);
                    int i2 = this.f18968a - 1;
                    this.f18968a = i2;
                    if (i2 == 0 && this.f18969b) {
                        a();
                        return;
                    }
                    return;
                }
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
            } catch (Throwable th) {
                int i4 = this.f18968a - 1;
                this.f18968a = i4;
                if (i4 == 0 && this.f18969b) {
                    a();
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("output cannot be null.");
        }
    }

    public final void a(com.esotericsoftware.kryo.a.c cVar, Object obj, h hVar) {
        if (cVar == null) {
            throw new IllegalArgumentException("output cannot be null.");
        } else if (obj == null) {
            throw new IllegalArgumentException("object cannot be null.");
        } else if (hVar != null) {
            b();
            try {
                if (!this.f18971d || !a(cVar, obj, false)) {
                    if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                        com.esotericsoftware.kryo.c.n.a("Write", obj, cVar.b());
                    }
                    hVar.write(this, cVar, obj);
                    int i = this.f18968a - 1;
                    this.f18968a = i;
                    if (i == 0 && this.f18969b) {
                        a();
                        return;
                    }
                    return;
                }
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
            } catch (Throwable th) {
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("serializer cannot be null.");
        }
    }

    public final void a(Class cls, h hVar) {
        if (cls != null) {
            a(cls, new i.d(hVar));
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public final void a(Object obj) {
        int a2;
        if (this.u > 0) {
            Object obj2 = this.x;
            if (obj2 == null) {
                return;
            }
            if (obj != null) {
                this.w.a((com.esotericsoftware.kryo.c.g) obj2, obj);
                this.x = null;
                return;
            }
            throw new IllegalArgumentException("object cannot be null.");
        } else if (this.f18971d && obj != null && (a2 = this.s.a()) != -2) {
            this.f18970c.a(a2, obj);
        }
    }

    public final boolean a(com.esotericsoftware.kryo.a.c cVar, Object obj, boolean z) {
        if (obj == null) {
            if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                com.esotericsoftware.kryo.c.n.a("Write", null, cVar.b());
            }
            cVar.a((byte) 0);
            return true;
        } else if (this.f18970c.a((Class) obj.getClass())) {
            int a2 = this.f18970c.a(obj);
            if (a2 != -1) {
                if (com.esotericsoftware.b.a.f18945d) {
                    com.esotericsoftware.b.a.a("kryo", "Write reference " + a2 + ": " + com.esotericsoftware.kryo.c.n.a(obj) + com.esotericsoftware.kryo.c.n.a(cVar.b()));
                }
                cVar.b(a2 + 2, true);
                return true;
            }
            int b2 = this.f18970c.b(obj);
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Write: <not null>" + com.esotericsoftware.kryo.c.n.a(cVar.b()));
            }
            cVar.a((byte) 1);
            if (!com.esotericsoftware.b.a.e) {
                return false;
            }
            com.esotericsoftware.b.a.b("kryo", "Write initial reference " + b2 + ": " + com.esotericsoftware.kryo.c.n.a(obj) + com.esotericsoftware.kryo.c.n.a(cVar.b()));
            return false;
        } else if (!z) {
            return false;
        } else {
            if (com.esotericsoftware.b.a.e) {
                com.esotericsoftware.b.a.b("kryo", "Write: <not null>" + com.esotericsoftware.kryo.c.n.a(cVar.b()));
            }
            cVar.a((byte) 1);
            return false;
        }
    }

    public final g b(Class cls, h hVar) {
        g b2 = this.i.b(cls);
        if (b2 == null) {
            return this.i.a(new g(cls, hVar, getNextRegistrationId()));
        }
        b2.a(hVar);
        return b2;
    }

    public final h b(Class cls) {
        if (cls != null) {
            h a2 = a(cls);
            if (a2 != null) {
                return a2;
            }
            int size = this.g.size();
            for (int i = 0; i < size; i++) {
                a aVar = this.g.get(i);
                if (aVar.f18972a.isAssignableFrom(cls)) {
                    return aVar.f18973b.a(this, cls);
                }
            }
            return this.f.a(this, cls);
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public final Object b(com.esotericsoftware.kryo.a.a aVar) {
        Object obj;
        if (aVar != null) {
            b();
            try {
                g a2 = a(aVar);
                if (a2 == null) {
                    int i = this.f18968a - 1;
                    this.f18968a = i;
                    if (i != 0 || !this.f18969b) {
                        return null;
                    }
                    a();
                    return null;
                }
                Class cls = a2.f19039a;
                if (this.f18971d) {
                    int a3 = a(aVar, cls, false);
                    if (a3 == -1) {
                        return this.e;
                    }
                    Object read = a2.f19042d.read(this, aVar, cls);
                    obj = read;
                    if (a3 == this.s.f19000b) {
                        a(read);
                        obj = read;
                    }
                } else {
                    obj = a2.f19042d.read(this, aVar, cls);
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", obj, aVar.b());
                }
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
                return obj;
            } finally {
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("input cannot be null.");
        }
    }

    public final <T> T b(com.esotericsoftware.kryo.a.a aVar, Class<T> cls) {
        T t;
        if (aVar == null) {
            throw new IllegalArgumentException("input cannot be null.");
        } else if (cls != null) {
            b();
            try {
                if (this.f18971d) {
                    int a2 = a(aVar, (Class) cls, true);
                    if (a2 == -1) {
                        return (T) this.e;
                    }
                    Object read = c(cls).f19042d.read(this, aVar, cls);
                    t = (T) read;
                    if (a2 == this.s.f19000b) {
                        a(read);
                        t = (T) read;
                    }
                } else {
                    h hVar = c(cls).f19042d;
                    if (hVar.getAcceptsNull() || aVar.c() != 0) {
                        t = (T) hVar.read(this, aVar, cls);
                    } else {
                        if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                            com.esotericsoftware.kryo.c.n.a("Read", null, aVar.b());
                        }
                        int i = this.f18968a - 1;
                        this.f18968a = i;
                        if (i != 0 || !this.f18969b) {
                            return null;
                        }
                        a();
                        return null;
                    }
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", t, aVar.b());
                }
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
                return t;
            } finally {
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("type cannot be null.");
        }
    }

    public final <T> T b(com.esotericsoftware.kryo.a.a aVar, Class<T> cls, h hVar) {
        T t;
        if (aVar == null) {
            throw new IllegalArgumentException("input cannot be null.");
        } else if (cls == null) {
            throw new IllegalArgumentException("type cannot be null.");
        } else if (hVar != null) {
            b();
            try {
                if (this.f18971d) {
                    int a2 = a(aVar, (Class) cls, true);
                    if (a2 == -1) {
                        return (T) this.e;
                    }
                    Object read = hVar.read(this, aVar, cls);
                    t = (T) read;
                    if (a2 == this.s.f19000b) {
                        a(read);
                        t = (T) read;
                    }
                } else if (hVar.getAcceptsNull() || aVar.c() != 0) {
                    t = (T) hVar.read(this, aVar, cls);
                } else {
                    if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                        com.esotericsoftware.kryo.c.n.a("Read", null, aVar.b());
                    }
                    int i = this.f18968a - 1;
                    this.f18968a = i;
                    if (i != 0 || !this.f18969b) {
                        return null;
                    }
                    a();
                    return null;
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Read", t, aVar.b());
                }
                int i2 = this.f18968a - 1;
                this.f18968a = i2;
                if (i2 == 0 && this.f18969b) {
                    a();
                }
                return t;
            } finally {
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
            }
        } else {
            throw new IllegalArgumentException("serializer cannot be null.");
        }
    }

    public final <T> T b(T t) {
        if (t == null) {
            return null;
        }
        if (this.v) {
            return t;
        }
        this.u++;
        try {
            if (this.w == null) {
                this.w = new com.esotericsoftware.kryo.c.g();
            }
            T t2 = (T) this.w.c(t);
            if (t2 != null) {
                return t2;
            }
            if (this.t) {
                this.x = t;
            }
            T t3 = t instanceof d ? (T) ((d) t).a() : (T) d(t.getClass()).copy(this, t);
            if (this.x != null) {
                a(t3);
            }
            if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.u == 1)) {
                com.esotericsoftware.kryo.c.n.a("Copy", t3, -1);
            }
            int i = this.u - 1;
            this.u = i;
            if (i == 0) {
                a();
            }
            return t3;
        } finally {
            int i2 = this.u - 1;
            this.u = i2;
            if (i2 == 0) {
                a();
            }
        }
    }

    public final void b() {
        if (com.esotericsoftware.b.a.f18945d) {
            if (this.f18968a == 0) {
                this.p = Thread.currentThread();
            } else if (this.p != Thread.currentThread()) {
                throw new ConcurrentModificationException("Kryo must not be accessed concurrently by multiple threads.");
            }
        }
        int i = this.f18968a;
        if (i != this.o) {
            this.f18968a = i + 1;
            return;
        }
        throw new KryoException("Max depth exceeded: " + this.f18968a);
    }

    public final void b(com.esotericsoftware.kryo.a.c cVar, Object obj, h hVar) {
        if (cVar == null) {
            throw new IllegalArgumentException("output cannot be null.");
        } else if (hVar != null) {
            b();
            try {
                if (this.f18971d) {
                    if (a(cVar, obj, true)) {
                        int i = this.f18968a - 1;
                        this.f18968a = i;
                        if (i == 0 && this.f18969b) {
                            a();
                            return;
                        }
                        return;
                    }
                } else if (!hVar.getAcceptsNull()) {
                    if (obj == null) {
                        if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                            com.esotericsoftware.kryo.c.n.a("Write", null, cVar.b());
                        }
                        cVar.a((byte) 0);
                        int i2 = this.f18968a - 1;
                        this.f18968a = i2;
                        if (i2 == 0 && this.f18969b) {
                            a();
                            return;
                        }
                        return;
                    }
                    if (com.esotericsoftware.b.a.e) {
                        com.esotericsoftware.b.a.b("kryo", "Write: <not null>" + com.esotericsoftware.kryo.c.n.a(cVar.b()));
                    }
                    cVar.a((byte) 1);
                }
                if (com.esotericsoftware.b.a.e || (com.esotericsoftware.b.a.f18945d && this.f18968a == 1)) {
                    com.esotericsoftware.kryo.c.n.a("Write", obj, cVar.b());
                }
                hVar.write(this, cVar, obj);
                int i3 = this.f18968a - 1;
                this.f18968a = i3;
                if (i3 == 0 && this.f18969b) {
                    a();
                }
            } catch (Throwable th) {
                int i4 = this.f18968a - 1;
                this.f18968a = i4;
                if (i4 == 0 && this.f18969b) {
                    a();
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("serializer cannot be null.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.esotericsoftware.kryo.g c(java.lang.Class r5) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.c(java.lang.Class):com.esotericsoftware.kryo.g");
    }

    public final h d(Class cls) {
        return c(cls).f19042d;
    }

    public final <T> T e(Class<T> cls) {
        g c2 = c(cls);
        org.objenesis.a.a<T> aVar = c2.e;
        org.objenesis.a.a<T> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = this.l.a(cls);
            if (aVar2 != null) {
                c2.e = aVar2;
            } else {
                throw new IllegalArgumentException("instantiator cannot be null.");
            }
        }
        return aVar2.a();
    }

    public ClassLoader getClassLoader() {
        return this.k;
    }

    public m getContext() {
        if (this.q == null) {
            this.q = new m();
        }
        return this.q;
    }

    public int getDepth() {
        return this.f18968a;
    }

    public e getGenerics() {
        return this.y;
    }

    public m getGraphContext() {
        if (this.r == null) {
            this.r = new m();
        }
        return this.r;
    }

    public int getNextRegistrationId() {
        while (true) {
            int i = this.j;
            if (i == -2) {
                throw new KryoException("No registration IDs are available.");
            } else if (this.i.a(i) == null) {
                return this.j;
            } else {
                this.j++;
            }
        }
    }

    public f getReferenceResolver() {
        return this.f18970c;
    }

    public boolean getReferences() {
        return this.f18971d;
    }

    public boolean isRegistrationRequired() {
        return this.m;
    }

    public void setDefaultSerializer(Class<? extends h> cls) {
        if (cls != null) {
            this.f = new i.c(cls);
            return;
        }
        throw new IllegalArgumentException("serializer cannot be null.");
    }

    public void setInstantiatorStrategy(b bVar) {
        this.l = bVar;
    }

    public void setRegistrationRequired(boolean z) {
        this.m = z;
        if (com.esotericsoftware.b.a.e) {
            com.esotericsoftware.b.a.b("kryo", "Registration required: ".concat(String.valueOf(z)));
        }
    }
}

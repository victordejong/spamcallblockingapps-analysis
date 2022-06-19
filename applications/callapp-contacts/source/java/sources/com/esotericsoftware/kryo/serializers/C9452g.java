package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9410e;
import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.C9412g;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.C9408n;
import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
/* renamed from: com.esotericsoftware.kryo.serializers.g */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g.class */
public final class C9452g {

    /* renamed from: com.esotericsoftware.kryo.serializers.g$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$a.class */
    public static class C9453a extends C9437d<List> {
        /* renamed from: a */
        private static List m24261a(C9380c c9380c, List list) {
            Object[] objArr = new Object[list.size()];
            List asList = Arrays.asList(objArr);
            c9380c.m24381a(asList);
            for (int i = 0; i < list.size(); i++) {
                objArr[i] = c9380c.m24373b((C9380c) list.get(i));
            }
            return asList;
        }

        /* renamed from: b */
        public List read(C9380c c9380c, C9374a c9374a, Class cls) {
            List list = (List) super.read(c9380c, c9374a, cls);
            if (list == null) {
                return null;
            }
            return Arrays.asList(list.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ List mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends List> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: b */
        public final /* synthetic */ List mo24236b(C9380c c9380c, List list) {
            return m24261a(c9380c, list);
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d, com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object copy(C9380c c9380c, Object obj) {
            return m24261a(c9380c, (List) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$aa */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$aa.class */
    public static final class C9454aa extends AbstractC9494i<Long> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Long.valueOf(c9374a.m24453c(false));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24417a(((Long) obj).longValue(), false);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ab */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ab.class */
    public static final class C9455ab extends C9437d<PriorityQueue> {
        /* renamed from: a */
        private static PriorityQueue m24259a(Class<? extends Collection> cls, int i, Comparator comparator) {
            if (cls == PriorityQueue.class || cls == null) {
                return new PriorityQueue(i, comparator);
            }
            try {
                Constructor<? extends Collection> constructor = cls.getConstructor(Integer.TYPE, Comparator.class);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return (PriorityQueue) constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ PriorityQueue mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends PriorityQueue> cls, int i) {
            return m24259a(cls, i, (Comparator) c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ PriorityQueue mo24239a(C9380c c9380c, PriorityQueue priorityQueue) {
            PriorityQueue priorityQueue2 = priorityQueue;
            return m24259a((Class<? extends Collection>) priorityQueue2.getClass(), priorityQueue2.size(), priorityQueue2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ void mo24255a(C9380c c9380c, C9376c c9376c, PriorityQueue priorityQueue) {
            c9380c.m24388a(c9376c, priorityQueue.comparator());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ac */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ac.class */
    public static final class C9456ac extends AbstractC9494i<Short> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Short.valueOf(c9374a.m24439j());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24399c(((Short) obj).shortValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ad */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ad.class */
    public static class C9457ad extends AbstractC9413h<StringBuffer> {
        public C9457ad() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ StringBuffer copy(C9380c c9380c, StringBuffer stringBuffer) {
            return new StringBuffer(stringBuffer);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ StringBuffer read(C9380c c9380c, C9374a c9374a, Class<? extends StringBuffer> cls) {
            String m24433m = c9374a.m24433m();
            if (m24433m == null) {
                return null;
            }
            return new StringBuffer(m24433m);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, StringBuffer stringBuffer) {
            StringBuffer stringBuffer2 = stringBuffer;
            c9376c.m24416a(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ae */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ae.class */
    public static class C9458ae extends AbstractC9413h<StringBuilder> {
        public C9458ae() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ StringBuilder copy(C9380c c9380c, StringBuilder sb) {
            return new StringBuilder(sb);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ StringBuilder read(C9380c c9380c, C9374a c9374a, Class<? extends StringBuilder> cls) {
            return c9374a.m24431n();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, StringBuilder sb) {
            StringBuilder sb2 = sb;
            c9376c.m24416a(sb2 == null ? null : sb2.toString());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$af */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$af.class */
    public static final class C9459af extends AbstractC9494i<String> {
        public C9459af() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return c9374a.m24433m();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24416a((String) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ag */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ag.class */
    public static class C9460ag extends AbstractC9494i<TimeZone> {
        /* renamed from: a */
        public static TimeZone m24258a(C9374a c9374a) {
            return TimeZone.getTimeZone(c9374a.m24433m());
        }

        /* renamed from: a */
        public static void m24257a(C9376c c9376c, TimeZone timeZone) {
            c9376c.m24416a(timeZone.getID());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return TimeZone.getTimeZone(c9374a.m24433m());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24257a(c9376c, (TimeZone) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ah */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ah.class */
    public static class C9461ah extends C9495j<TreeMap> {
        /* renamed from: a */
        private static TreeMap m24256a(Class<? extends TreeMap> cls, Comparator comparator) {
            if (cls == TreeMap.class || cls == null) {
                return new TreeMap(comparator);
            }
            try {
                Constructor<? extends TreeMap> constructor = cls.getConstructor(Comparator.class);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ TreeMap mo24234a(C9380c c9380c, C9374a c9374a, Class<? extends TreeMap> cls, int i) {
            return m24256a(cls, (Comparator) c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ TreeMap mo24232a(C9380c c9380c, TreeMap treeMap) {
            TreeMap treeMap2 = treeMap;
            return m24256a((Class<? extends TreeMap>) treeMap2.getClass(), treeMap2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ void mo24233a(C9380c c9380c, C9376c c9376c, TreeMap treeMap) {
            c9380c.m24388a(c9376c, treeMap.comparator());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ai */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ai.class */
    public static class C9462ai extends C9437d<TreeSet> {
        /* renamed from: a */
        private static TreeSet m24254a(Class<? extends Collection> cls, Comparator comparator) {
            if (cls == TreeSet.class || cls == null) {
                return new TreeSet(comparator);
            }
            try {
                Constructor<? extends Collection> constructor = cls.getConstructor(Comparator.class);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return (TreeSet) constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ TreeSet mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends TreeSet> cls, int i) {
            return m24254a(cls, (Comparator) c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ TreeSet mo24239a(C9380c c9380c, TreeSet treeSet) {
            TreeSet treeSet2 = treeSet;
            return m24254a((Class<? extends Collection>) treeSet2.getClass(), treeSet2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ void mo24255a(C9380c c9380c, C9376c c9376c, TreeSet treeSet) {
            c9380c.m24388a(c9376c, treeSet.comparator());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$aj */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$aj.class */
    public static class C9463aj extends AbstractC9494i<URL> {
        /* renamed from: a */
        private static URL m24253a(C9374a c9374a) {
            try {
                return new URL(c9374a.m24433m());
            } catch (MalformedURLException e) {
                throw new KryoException(e);
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24253a(c9374a);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24416a(((URL) obj).toExternalForm());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$ak */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ak.class */
    public static final class C9464ak extends AbstractC9494i {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return null;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final void write(C9380c c9380c, C9376c c9376c, Object obj) {
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$b.class */
    public static class C9465b extends AbstractC9494i<BigDecimal> {

        /* renamed from: a */
        private final C9466c f32404a = new C9466c();

        public C9465b() {
            setAcceptsNull(true);
        }

        /* renamed from: a */
        private static BigDecimal m24252a(C9374a c9374a, Class<? extends BigDecimal> cls) {
            BigInteger m24251a = C9466c.m24251a(c9374a, BigInteger.class);
            if (m24251a == null) {
                return null;
            }
            int m24459a = c9374a.m24459a(false);
            if (cls == BigDecimal.class || cls == null) {
                return (m24251a == BigInteger.ZERO && m24459a == 0) ? BigDecimal.ZERO : new BigDecimal(m24251a, m24459a);
            }
            try {
                Constructor<? extends BigDecimal> constructor = cls.getConstructor(BigInteger.class, Integer.TYPE);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return constructor.newInstance(m24251a, Integer.valueOf(m24459a));
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24252a(c9374a, cls);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            BigDecimal bigDecimal = (BigDecimal) obj;
            if (bigDecimal == null) {
                c9376c.m24424a((byte) 0);
            } else if (bigDecimal == BigDecimal.ZERO) {
                C9466c.m24250a(c9376c, BigInteger.ZERO);
                c9376c.m24419a(0, false);
            } else {
                C9466c.m24250a(c9376c, bigDecimal.unscaledValue());
                c9376c.m24419a(bigDecimal.scale(), false);
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$c.class */
    public static class C9466c extends AbstractC9494i<BigInteger> {
        public C9466c() {
            setAcceptsNull(true);
        }

        /* renamed from: a */
        public static BigInteger m24251a(C9374a c9374a, Class<? extends BigInteger> cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            byte[] m24457b = c9374a.m24457b(m24456b - 1);
            if (cls != BigInteger.class && cls != null) {
                try {
                    Constructor<? extends BigInteger> constructor = cls.getConstructor(byte[].class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException e) {
                        }
                    }
                    return constructor.newInstance(m24457b);
                } catch (Exception e2) {
                    throw new KryoException(e2);
                }
            }
            if (m24456b == 2) {
                byte b = m24457b[0];
                if (b == 0) {
                    return BigInteger.ZERO;
                }
                if (b == 1) {
                    return BigInteger.ONE;
                }
                if (b == 10) {
                    return BigInteger.TEN;
                }
            }
            return new BigInteger(m24457b);
        }

        /* renamed from: a */
        public static void m24250a(C9376c c9376c, BigInteger bigInteger) {
            if (bigInteger == null) {
                c9376c.m24424a((byte) 0);
            } else if (bigInteger == BigInteger.ZERO) {
                c9376c.m24420a(2);
                c9376c.m24420a(0);
            } else {
                byte[] byteArray = bigInteger.toByteArray();
                c9376c.m24402b(byteArray.length + 1, true);
                c9376c.m24412a(byteArray);
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24251a(c9374a, cls);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24250a(c9376c, (BigInteger) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$d.class */
    public static final class C9467d extends AbstractC9413h<BitSet> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ BitSet copy(C9380c c9380c, BitSet bitSet) {
            return BitSet.valueOf(bitSet.toLongArray());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ BitSet read(C9380c c9380c, C9374a c9374a, Class<? extends BitSet> cls) {
            return BitSet.valueOf(c9374a.m24451d(c9374a.m24456b(true)));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, BitSet bitSet) {
            long[] longArray = bitSet.toLongArray();
            c9376c.m24402b(longArray.length, true);
            c9376c.m24406a(longArray, 0, longArray.length);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$e.class */
    public static final class C9468e extends AbstractC9494i<Boolean> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Boolean.valueOf(c9374a.m24435l());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24414a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$f */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$f.class */
    public static final class C9469f extends AbstractC9494i<Byte> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Byte.valueOf(c9374a.m24455c());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24424a(((Byte) obj).byteValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$g */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$g.class */
    public static class C9470g extends AbstractC9413h<Calendar> {

        /* renamed from: a */
        C9460ag f32405a = new C9460ag();

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Calendar copy(C9380c c9380c, Calendar calendar) {
            return (Calendar) calendar.clone();
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Calendar read(C9380c c9380c, C9374a c9374a, Class<? extends Calendar> cls) {
            Calendar calendar = Calendar.getInstance(C9460ag.m24258a(c9374a));
            calendar.setTimeInMillis(c9374a.m24453c(true));
            calendar.setLenient(c9374a.m24435l());
            calendar.setFirstDayOfWeek(c9374a.m24459a(true));
            calendar.setMinimalDaysInFirstWeek(c9374a.m24459a(true));
            long m24453c = c9374a.m24453c(false);
            if (m24453c != -12219292800000L && (calendar instanceof GregorianCalendar)) {
                ((GregorianCalendar) calendar).setGregorianChange(new Date(m24453c));
            }
            return calendar;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Calendar calendar) {
            Calendar calendar2 = calendar;
            C9460ag.m24257a(c9376c, calendar2.getTimeZone());
            c9376c.m24417a(calendar2.getTimeInMillis(), true);
            c9376c.m24414a(calendar2.isLenient());
            c9376c.m24419a(calendar2.getFirstDayOfWeek(), true);
            c9376c.m24419a(calendar2.getMinimalDaysInFirstWeek(), true);
            if (calendar2 instanceof GregorianCalendar) {
                c9376c.m24417a(((GregorianCalendar) calendar2).getGregorianChange().getTime(), false);
            } else {
                c9376c.m24417a(-12219292800000L, false);
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$h */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$h.class */
    public static final class C9471h extends AbstractC9494i<Character> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Character.valueOf(c9374a.m24437k());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24423a(((Character) obj).charValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$i */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$i.class */
    public static class C9472i extends AbstractC9494i<Charset> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Charset.forName(c9374a.m24433m());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24416a(((Charset) obj).name());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$j */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$j.class */
    public static class C9473j extends AbstractC9494i<Class> {
        public C9473j() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            C9412g m24393a = c9380c.m24393a(c9374a);
            if (m24393a == null) {
                return null;
            }
            Class cls2 = m24393a.f32360a;
            Class cls3 = cls2;
            if (cls2.isPrimitive()) {
                cls3 = c9374a.m24435l() ? cls2 : C9408n.m24303a(cls2);
            }
            return cls3;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Class cls = (Class) obj;
            c9380c.m24389a(c9376c, cls);
            if (cls != null) {
                if (!cls.isPrimitive() && !C9408n.m24297b(cls)) {
                    return;
                }
                c9376c.m24414a(cls.isPrimitive());
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$k */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$k.class */
    public static class C9474k extends AbstractC9494i<Collection> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Collections.EMPTY_LIST;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$l */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$l.class */
    public static class C9475l extends AbstractC9494i<Map> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Collections.EMPTY_MAP;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$m */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$m.class */
    public static class C9476m extends AbstractC9494i<Set> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Collections.EMPTY_SET;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$n */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$n.class */
    public static class C9477n extends AbstractC9413h<List> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ List copy(C9380c c9380c, List list) {
            return Collections.singletonList(c9380c.m24373b((C9380c) list.get(0)));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ List read(C9380c c9380c, C9374a c9374a, Class<? extends List> cls) {
            return Collections.singletonList(c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, List list) {
            c9380c.m24388a(c9376c, list.get(0));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$o */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$o.class */
    public static class C9478o extends AbstractC9413h<Map> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Map copy(C9380c c9380c, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            return Collections.singletonMap(c9380c.m24373b((C9380c) entry.getKey()), c9380c.m24373b((C9380c) entry.getValue()));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Map read(C9380c c9380c, C9374a c9374a, Class<? extends Map> cls) {
            return Collections.singletonMap(c9380c.m24379b(c9374a), c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            c9380c.m24388a(c9376c, entry.getKey());
            c9380c.m24388a(c9376c, entry.getValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$p */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$p.class */
    public static class C9479p extends AbstractC9413h<Set> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Set copy(C9380c c9380c, Set set) {
            return Collections.singleton(c9380c.m24373b((C9380c) set.iterator().next()));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Set read(C9380c c9380c, C9374a c9374a, Class<? extends Set> cls) {
            return Collections.singleton(c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Set set) {
            c9380c.m24388a(c9376c, set.iterator().next());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$q */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$q.class */
    public static class C9480q extends C9495j<ConcurrentSkipListMap> {
        /* renamed from: a */
        private static ConcurrentSkipListMap m24249a(Class<? extends ConcurrentSkipListMap> cls, Comparator comparator) {
            if (cls == ConcurrentSkipListMap.class || cls == null) {
                return new ConcurrentSkipListMap(comparator);
            }
            try {
                Constructor<? extends ConcurrentSkipListMap> constructor = cls.getConstructor(Comparator.class);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ ConcurrentSkipListMap mo24234a(C9380c c9380c, C9374a c9374a, Class<? extends ConcurrentSkipListMap> cls, int i) {
            return m24249a(cls, (Comparator) c9380c.m24379b(c9374a));
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ ConcurrentSkipListMap mo24232a(C9380c c9380c, ConcurrentSkipListMap concurrentSkipListMap) {
            ConcurrentSkipListMap concurrentSkipListMap2 = concurrentSkipListMap;
            return m24249a((Class<? extends ConcurrentSkipListMap>) concurrentSkipListMap2.getClass(), concurrentSkipListMap2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final /* synthetic */ void mo24233a(C9380c c9380c, C9376c c9376c, ConcurrentSkipListMap concurrentSkipListMap) {
            c9380c.m24388a(c9376c, concurrentSkipListMap.comparator());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$r */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$r.class */
    public static class C9481r extends AbstractC9494i<Currency> {
        public C9481r() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            String m24433m = c9374a.m24433m();
            if (m24433m == null) {
                return null;
            }
            return Currency.getInstance(m24433m);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Currency currency = (Currency) obj;
            c9376c.m24416a(currency == null ? null : currency.getCurrencyCode());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$s */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$s.class */
    public static class C9482s extends AbstractC9413h<Date> {
        /* renamed from: a */
        private static Date m24248a(C9380c c9380c, Class<? extends Date> cls, long j) throws KryoException {
            if (cls == Date.class || cls == null) {
                return new Date(j);
            }
            if (cls == Timestamp.class) {
                return new Timestamp(j);
            }
            if (cls == java.sql.Date.class) {
                return new java.sql.Date(j);
            }
            if (cls == Time.class) {
                return new Time(j);
            }
            try {
                Constructor<? extends Date> constructor = cls.getConstructor(Long.TYPE);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return constructor.newInstance(Long.valueOf(j));
            } catch (Exception e2) {
                Date date = (Date) c9380c.m24370e(cls);
                date.setTime(j);
                return date;
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Date copy(C9380c c9380c, Date date) {
            Date date2 = date;
            return m24248a(c9380c, date2.getClass(), date2.getTime());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Date read(C9380c c9380c, C9374a c9374a, Class<? extends Date> cls) {
            return m24248a(c9380c, cls, c9374a.m24453c(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Date date) {
            c9376c.m24417a(date.getTime(), true);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$t */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$t.class */
    public static final class C9483t extends AbstractC9494i<Double> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Double.valueOf(c9374a.m24441i());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24422a(((Double) obj).doubleValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$u */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$u.class */
    public static class C9484u extends AbstractC9494i<Enum> {

        /* renamed from: a */
        private Object[] f32406a;

        public C9484u(Class<? extends Enum> cls) {
            setAcceptsNull(true);
            Object[] enumConstants = cls.getEnumConstants();
            this.f32406a = enumConstants;
            if (enumConstants != null || Enum.class.equals(cls)) {
                return;
            }
            throw new IllegalArgumentException("The type must be an enum: ".concat(String.valueOf(cls)));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            int m24456b = c9374a.m24456b(true);
            if (m24456b == 0) {
                return null;
            }
            int i = m24456b - 1;
            if (i >= 0) {
                Object[] objArr = this.f32406a;
                if (i <= objArr.length - 1) {
                    return (Enum) objArr[i];
                }
            }
            throw new KryoException("Invalid ordinal for enum \"" + cls.getName() + "\": " + i);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Enum r0 = (Enum) obj;
            if (r0 == null) {
                c9376c.m24402b(0, true);
            } else {
                c9376c.m24402b(r0.ordinal() + 1, true);
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$v */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$v.class */
    public static class C9485v extends AbstractC9413h<EnumSet> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ EnumSet copy(C9380c c9380c, EnumSet enumSet) {
            return EnumSet.copyOf(enumSet);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ EnumSet read(C9380c c9380c, C9374a c9374a, Class<? extends EnumSet> cls) {
            C9412g m24393a = c9380c.m24393a(c9374a);
            EnumSet noneOf = EnumSet.noneOf(m24393a.f32360a);
            AbstractC9413h abstractC9413h = m24393a.f32363d;
            int m24456b = c9374a.m24456b(true);
            for (int i = 0; i < m24456b; i++) {
                noneOf.add(abstractC9413h.read(c9380c, c9374a, null));
            }
            return noneOf;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, EnumSet enumSet) {
            AbstractC9413h abstractC9413h;
            EnumSet enumSet2 = enumSet;
            if (enumSet2.isEmpty()) {
                EnumSet complementOf = EnumSet.complementOf(enumSet2);
                if (complementOf.isEmpty()) {
                    throw new KryoException("An EnumSet must have a defined Enum to be serialized.");
                }
                abstractC9413h = c9380c.m24389a(c9376c, (Class) complementOf.iterator().next().getClass()).f32363d;
            } else {
                abstractC9413h = c9380c.m24389a(c9376c, (Class) enumSet2.iterator().next().getClass()).f32363d;
            }
            c9376c.m24402b(enumSet2.size(), true);
            Iterator it2 = enumSet2.iterator();
            while (it2.hasNext()) {
                abstractC9413h.write(c9380c, c9376c, it2.next());
            }
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$w */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$w.class */
    public static final class C9486w extends AbstractC9494i<Float> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Float.valueOf(c9374a.m24443h());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24421a(((Float) obj).floatValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$x */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$x.class */
    public static final class C9487x extends AbstractC9494i<Integer> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Integer.valueOf(c9374a.m24459a(false));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public final /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24419a(((Integer) obj).intValue(), false);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$y */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$y.class */
    public static class C9488y extends AbstractC9413h<AbstractC9410e> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ AbstractC9410e read(C9380c c9380c, C9374a c9374a, Class<? extends AbstractC9410e> cls) {
            AbstractC9410e abstractC9410e = (AbstractC9410e) c9380c.m24370e(cls);
            c9380c.m24381a(abstractC9410e);
            return abstractC9410e;
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* bridge */ /* synthetic */ void write(C9380c c9380c, C9376c c9376c, AbstractC9410e abstractC9410e) {
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$z */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$z.class */
    public static class C9489z extends AbstractC9494i<Locale> {

        /* renamed from: a */
        public static final Locale f32407a = new Locale("es", "", "");

        /* renamed from: b */
        public static final Locale f32408b = new Locale("es", "ES", "");

        /* renamed from: a */
        private static boolean m24247a(Locale locale, String str, String str2, String str3) {
            return locale.getLanguage().equals(str) && locale.getCountry().equals(str2) && locale.getVariant().equals(str3);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            String m24433m = c9374a.m24433m();
            String m24433m2 = c9374a.m24433m();
            String m24433m3 = c9374a.m24433m();
            Locale locale = Locale.getDefault();
            if (m24247a(locale, m24433m, m24433m2, m24433m3)) {
                return locale;
            }
            if (locale != Locale.US && m24247a(Locale.US, m24433m, m24433m2, m24433m3)) {
                return Locale.US;
            }
            if (m24247a(Locale.ENGLISH, m24433m, m24433m2, m24433m3)) {
                return Locale.ENGLISH;
            }
            if (m24247a(Locale.GERMAN, m24433m, m24433m2, m24433m3)) {
                return Locale.GERMAN;
            }
            Locale locale2 = f32407a;
            if (m24247a(locale2, m24433m, m24433m2, m24433m3)) {
                return locale2;
            }
            if (m24247a(Locale.FRENCH, m24433m, m24433m2, m24433m3)) {
                return Locale.FRENCH;
            }
            if (m24247a(Locale.ITALIAN, m24433m, m24433m2, m24433m3)) {
                return Locale.ITALIAN;
            }
            if (m24247a(Locale.JAPANESE, m24433m, m24433m2, m24433m3)) {
                return Locale.JAPANESE;
            }
            if (m24247a(Locale.KOREAN, m24433m, m24433m2, m24433m3)) {
                return Locale.KOREAN;
            }
            if (m24247a(Locale.SIMPLIFIED_CHINESE, m24433m, m24433m2, m24433m3)) {
                return Locale.SIMPLIFIED_CHINESE;
            }
            if (m24247a(Locale.CHINESE, m24433m, m24433m2, m24433m3)) {
                return Locale.CHINESE;
            }
            if (m24247a(Locale.TRADITIONAL_CHINESE, m24433m, m24433m2, m24433m3)) {
                return Locale.TRADITIONAL_CHINESE;
            }
            if (m24247a(Locale.UK, m24433m, m24433m2, m24433m3)) {
                return Locale.UK;
            }
            if (m24247a(Locale.GERMANY, m24433m, m24433m2, m24433m3)) {
                return Locale.GERMANY;
            }
            Locale locale3 = f32408b;
            return m24247a(locale3, m24433m, m24433m2, m24433m3) ? locale3 : m24247a(Locale.FRANCE, m24433m, m24433m2, m24433m3) ? Locale.FRANCE : m24247a(Locale.ITALY, m24433m, m24433m2, m24433m3) ? Locale.ITALY : m24247a(Locale.JAPAN, m24433m, m24433m2, m24433m3) ? Locale.JAPAN : m24247a(Locale.KOREA, m24433m, m24433m2, m24433m3) ? Locale.KOREA : m24247a(Locale.CANADA, m24433m, m24433m2, m24433m3) ? Locale.CANADA : m24247a(Locale.CANADA_FRENCH, m24433m, m24433m2, m24433m3) ? Locale.CANADA_FRENCH : new Locale(m24433m, m24433m2, m24433m3);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Locale locale = (Locale) obj;
            c9376c.m24401b(locale.getLanguage());
            c9376c.m24401b(locale.getCountry());
            c9376c.m24416a(locale.getVariant());
        }
    }
}

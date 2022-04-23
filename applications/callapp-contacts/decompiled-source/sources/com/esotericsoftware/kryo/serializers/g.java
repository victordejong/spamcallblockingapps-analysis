package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
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
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g.class */
public final class g {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$a.class */
    public static class a extends com.esotericsoftware.kryo.serializers.d<List> {
        private static List a(com.esotericsoftware.kryo.c cVar, List list) {
            Object[] objArr = new Object[list.size()];
            List asList = Arrays.asList(objArr);
            cVar.a(asList);
            for (int i = 0; i < list.size(); i++) {
                objArr[i] = cVar.b((com.esotericsoftware.kryo.c) list.get(i));
            }
            return asList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public List read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            List list = (List) super.read(cVar, aVar, cls);
            if (list == null) {
                return null;
            }
            return Arrays.asList(list.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ List a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends List> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        public final /* synthetic */ List b(com.esotericsoftware.kryo.c cVar, List list) {
            return a(cVar, list);
        }

        @Override // com.esotericsoftware.kryo.serializers.d, com.esotericsoftware.kryo.h
        public /* synthetic */ Object copy(com.esotericsoftware.kryo.c cVar, Object obj) {
            return a(cVar, (List) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$aa.class */
    public static final class aa extends com.esotericsoftware.kryo.serializers.i<Long> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Long.valueOf(aVar.c(false));
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Long) obj).longValue(), false);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ab.class */
    public static final class ab extends com.esotericsoftware.kryo.serializers.d<PriorityQueue> {
        private static PriorityQueue a(Class<? extends Collection> cls, int i, Comparator comparator) {
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

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ PriorityQueue a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends PriorityQueue> cls, int i) {
            return a(cls, i, (Comparator) cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ PriorityQueue a(com.esotericsoftware.kryo.c cVar, PriorityQueue priorityQueue) {
            PriorityQueue priorityQueue2 = priorityQueue;
            return a((Class<? extends Collection>) priorityQueue2.getClass(), priorityQueue2.size(), priorityQueue2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ void a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, PriorityQueue priorityQueue) {
            cVar.a(cVar2, priorityQueue.comparator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ac.class */
    public static final class ac extends com.esotericsoftware.kryo.serializers.i<Short> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Short.valueOf(aVar.j());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.c(((Short) obj).shortValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ad.class */
    public static class ad extends com.esotericsoftware.kryo.h<StringBuffer> {
        public ad() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ StringBuffer copy(com.esotericsoftware.kryo.c cVar, StringBuffer stringBuffer) {
            return new StringBuffer(stringBuffer);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ StringBuffer read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends StringBuffer> cls) {
            String m = aVar.m();
            if (m == null) {
                return null;
            }
            return new StringBuffer(m);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, StringBuffer stringBuffer) {
            StringBuffer stringBuffer2 = stringBuffer;
            cVar2.a(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ae.class */
    public static class ae extends com.esotericsoftware.kryo.h<StringBuilder> {
        public ae() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ StringBuilder copy(com.esotericsoftware.kryo.c cVar, StringBuilder sb) {
            return new StringBuilder(sb);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ StringBuilder read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends StringBuilder> cls) {
            return aVar.n();
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, StringBuilder sb) {
            StringBuilder sb2 = sb;
            cVar2.a(sb2 == null ? null : sb2.toString());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$af.class */
    public static final class af extends com.esotericsoftware.kryo.serializers.i<String> {
        public af() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return aVar.m();
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a((String) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ag.class */
    public static class ag extends com.esotericsoftware.kryo.serializers.i<TimeZone> {
        public static TimeZone a(com.esotericsoftware.kryo.a.a aVar) {
            return TimeZone.getTimeZone(aVar.m());
        }

        public static void a(com.esotericsoftware.kryo.a.c cVar, TimeZone timeZone) {
            cVar.a(timeZone.getID());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return TimeZone.getTimeZone(aVar.m());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (TimeZone) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ah.class */
    public static class ah extends com.esotericsoftware.kryo.serializers.j<TreeMap> {
        private static TreeMap a(Class<? extends TreeMap> cls, Comparator comparator) {
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
                return (TreeMap) constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ TreeMap a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends TreeMap> cls, int i) {
            return a(cls, (Comparator) cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ TreeMap a(com.esotericsoftware.kryo.c cVar, TreeMap treeMap) {
            TreeMap treeMap2 = treeMap;
            return a((Class<? extends TreeMap>) treeMap2.getClass(), treeMap2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ void a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, TreeMap treeMap) {
            cVar.a(cVar2, treeMap.comparator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ai.class */
    public static class ai extends com.esotericsoftware.kryo.serializers.d<TreeSet> {
        private static TreeSet a(Class<? extends Collection> cls, Comparator comparator) {
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

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ TreeSet a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends TreeSet> cls, int i) {
            return a(cls, (Comparator) cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ TreeSet a(com.esotericsoftware.kryo.c cVar, TreeSet treeSet) {
            TreeSet treeSet2 = treeSet;
            return a((Class<? extends Collection>) treeSet2.getClass(), treeSet2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ void a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, TreeSet treeSet) {
            cVar.a(cVar2, treeSet.comparator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$aj.class */
    public static class aj extends com.esotericsoftware.kryo.serializers.i<URL> {
        private static URL a(com.esotericsoftware.kryo.a.a aVar) {
            try {
                return new URL(aVar.m());
            } catch (MalformedURLException e) {
                throw new KryoException(e);
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((URL) obj).toExternalForm());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$ak.class */
    public static final class ak extends com.esotericsoftware.kryo.serializers.i {
        @Override // com.esotericsoftware.kryo.h
        public final Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return null;
        }

        @Override // com.esotericsoftware.kryo.h
        public final void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$b.class */
    public static class b extends com.esotericsoftware.kryo.serializers.i<BigDecimal> {

        /* renamed from: a  reason: collision with root package name */
        private final c f19066a = new c();

        public b() {
            setAcceptsNull(true);
        }

        private static BigDecimal a(com.esotericsoftware.kryo.a.a aVar, Class<? extends BigDecimal> cls) {
            BigInteger a2 = c.a(aVar, BigInteger.class);
            if (a2 == null) {
                return null;
            }
            int a3 = aVar.a(false);
            if (cls == BigDecimal.class || cls == null) {
                return (a2 == BigInteger.ZERO && a3 == 0) ? BigDecimal.ZERO : new BigDecimal(a2, a3);
            }
            try {
                Constructor<? extends BigDecimal> constructor = cls.getConstructor(BigInteger.class, Integer.TYPE);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return (BigDecimal) constructor.newInstance(a2, Integer.valueOf(a3));
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar, cls);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            BigDecimal bigDecimal = (BigDecimal) obj;
            if (bigDecimal == null) {
                cVar2.a((byte) 0);
            } else if (bigDecimal == BigDecimal.ZERO) {
                c.a(cVar2, BigInteger.ZERO);
                cVar2.a(0, false);
            } else {
                c.a(cVar2, bigDecimal.unscaledValue());
                cVar2.a(bigDecimal.scale(), false);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$c.class */
    public static class c extends com.esotericsoftware.kryo.serializers.i<BigInteger> {
        public c() {
            setAcceptsNull(true);
        }

        public static BigInteger a(com.esotericsoftware.kryo.a.a aVar, Class<? extends BigInteger> cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            byte[] b3 = aVar.b(b2 - 1);
            if (cls == BigInteger.class || cls == null) {
                if (b2 == 2) {
                    byte b4 = b3[0];
                    if (b4 == 0) {
                        return BigInteger.ZERO;
                    }
                    if (b4 == 1) {
                        return BigInteger.ONE;
                    }
                    if (b4 == 10) {
                        return BigInteger.TEN;
                    }
                }
                return new BigInteger(b3);
            }
            try {
                Constructor<? extends BigInteger> constructor = cls.getConstructor(byte[].class);
                if (!constructor.isAccessible()) {
                    try {
                        constructor.setAccessible(true);
                    } catch (SecurityException e) {
                    }
                }
                return (BigInteger) constructor.newInstance(b3);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        public static void a(com.esotericsoftware.kryo.a.c cVar, BigInteger bigInteger) {
            if (bigInteger == null) {
                cVar.a((byte) 0);
            } else if (bigInteger == BigInteger.ZERO) {
                cVar.a(2);
                cVar.a(0);
            } else {
                byte[] byteArray = bigInteger.toByteArray();
                cVar.b(byteArray.length + 1, true);
                cVar.a(byteArray);
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar, cls);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (BigInteger) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$d.class */
    public static final class d extends com.esotericsoftware.kryo.h<BitSet> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ BitSet copy(com.esotericsoftware.kryo.c cVar, BitSet bitSet) {
            return BitSet.valueOf(bitSet.toLongArray());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ BitSet read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends BitSet> cls) {
            return BitSet.valueOf(aVar.d(aVar.b(true)));
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, BitSet bitSet) {
            long[] longArray = bitSet.toLongArray();
            cVar2.b(longArray.length, true);
            cVar2.a(longArray, 0, longArray.length);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$e.class */
    public static final class e extends com.esotericsoftware.kryo.serializers.i<Boolean> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Boolean.valueOf(aVar.l());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Boolean) obj).booleanValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$f.class */
    public static final class f extends com.esotericsoftware.kryo.serializers.i<Byte> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Byte.valueOf(aVar.c());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Byte) obj).byteValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.g$g  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$g.class */
    public static class C0377g extends com.esotericsoftware.kryo.h<Calendar> {

        /* renamed from: a  reason: collision with root package name */
        ag f19067a = new ag();

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Calendar copy(com.esotericsoftware.kryo.c cVar, Calendar calendar) {
            return (Calendar) calendar.clone();
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Calendar read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Calendar> cls) {
            Calendar instance = Calendar.getInstance(ag.a(aVar));
            instance.setTimeInMillis(aVar.c(true));
            instance.setLenient(aVar.l());
            instance.setFirstDayOfWeek(aVar.a(true));
            instance.setMinimalDaysInFirstWeek(aVar.a(true));
            long c2 = aVar.c(false);
            if (c2 != -12219292800000L && (instance instanceof GregorianCalendar)) {
                ((GregorianCalendar) instance).setGregorianChange(new Date(c2));
            }
            return instance;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Calendar calendar) {
            Calendar calendar2 = calendar;
            ag.a(cVar2, calendar2.getTimeZone());
            cVar2.a(calendar2.getTimeInMillis(), true);
            cVar2.a(calendar2.isLenient());
            cVar2.a(calendar2.getFirstDayOfWeek(), true);
            cVar2.a(calendar2.getMinimalDaysInFirstWeek(), true);
            if (calendar2 instanceof GregorianCalendar) {
                cVar2.a(((GregorianCalendar) calendar2).getGregorianChange().getTime(), false);
            } else {
                cVar2.a(-12219292800000L, false);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$h.class */
    public static final class h extends com.esotericsoftware.kryo.serializers.i<Character> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Character.valueOf(aVar.k());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Character) obj).charValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$i.class */
    public static class i extends com.esotericsoftware.kryo.serializers.i<Charset> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Charset.forName(aVar.m());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Charset) obj).name());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$j.class */
    public static class j extends com.esotericsoftware.kryo.serializers.i<Class> {
        public j() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            com.esotericsoftware.kryo.g a2 = cVar.a(aVar);
            if (a2 == null) {
                return null;
            }
            Class cls2 = a2.f19039a;
            Class cls3 = cls2;
            if (cls2.isPrimitive()) {
                cls3 = aVar.l() ? cls2 : com.esotericsoftware.kryo.c.n.a(cls2);
            }
            return cls3;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Class cls = (Class) obj;
            cVar.a(cVar2, cls);
            if (cls == null) {
                return;
            }
            if (cls.isPrimitive() || com.esotericsoftware.kryo.c.n.b(cls)) {
                cVar2.a(cls.isPrimitive());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$k.class */
    public static class k extends com.esotericsoftware.kryo.serializers.i<Collection> {
        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Collections.EMPTY_LIST;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$l.class */
    public static class l extends com.esotericsoftware.kryo.serializers.i<Map> {
        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Collections.EMPTY_MAP;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$m.class */
    public static class m extends com.esotericsoftware.kryo.serializers.i<Set> {
        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Collections.EMPTY_SET;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$n.class */
    public static class n extends com.esotericsoftware.kryo.h<List> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ List copy(com.esotericsoftware.kryo.c cVar, List list) {
            return Collections.singletonList(cVar.b((com.esotericsoftware.kryo.c) list.get(0)));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ List read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends List> cls) {
            return Collections.singletonList(cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, List list) {
            cVar.a(cVar2, list.get(0));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$o.class */
    public static class o extends com.esotericsoftware.kryo.h<Map> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Map copy(com.esotericsoftware.kryo.c cVar, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            return Collections.singletonMap(cVar.b((com.esotericsoftware.kryo.c) entry.getKey()), cVar.b((com.esotericsoftware.kryo.c) entry.getValue()));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Map read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Map> cls) {
            return Collections.singletonMap(cVar.b(aVar), cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            cVar.a(cVar2, entry.getKey());
            cVar.a(cVar2, entry.getValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$p.class */
    public static class p extends com.esotericsoftware.kryo.h<Set> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Set copy(com.esotericsoftware.kryo.c cVar, Set set) {
            return Collections.singleton(cVar.b((com.esotericsoftware.kryo.c) set.iterator().next()));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Set read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Set> cls) {
            return Collections.singleton(cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Set set) {
            cVar.a(cVar2, set.iterator().next());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$q.class */
    public static class q extends com.esotericsoftware.kryo.serializers.j<ConcurrentSkipListMap> {
        private static ConcurrentSkipListMap a(Class<? extends ConcurrentSkipListMap> cls, Comparator comparator) {
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
                return (ConcurrentSkipListMap) constructor.newInstance(comparator);
            } catch (Exception e2) {
                throw new KryoException(e2);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ ConcurrentSkipListMap a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends ConcurrentSkipListMap> cls, int i) {
            return a(cls, (Comparator) cVar.b(aVar));
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ ConcurrentSkipListMap a(com.esotericsoftware.kryo.c cVar, ConcurrentSkipListMap concurrentSkipListMap) {
            ConcurrentSkipListMap concurrentSkipListMap2 = concurrentSkipListMap;
            return a((Class<? extends ConcurrentSkipListMap>) concurrentSkipListMap2.getClass(), concurrentSkipListMap2.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final /* synthetic */ void a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, ConcurrentSkipListMap concurrentSkipListMap) {
            cVar.a(cVar2, concurrentSkipListMap.comparator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$r.class */
    public static class r extends com.esotericsoftware.kryo.serializers.i<Currency> {
        public r() {
            setAcceptsNull(true);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            String m = aVar.m();
            if (m == null) {
                return null;
            }
            return Currency.getInstance(m);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Currency currency = (Currency) obj;
            cVar2.a(currency == null ? null : currency.getCurrencyCode());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$s.class */
    public static class s extends com.esotericsoftware.kryo.h<Date> {
        private static Date a(com.esotericsoftware.kryo.c cVar, Class<? extends Date> cls, long j) throws KryoException {
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
                return (Date) constructor.newInstance(Long.valueOf(j));
            } catch (Exception e2) {
                Date date = (Date) cVar.e(cls);
                date.setTime(j);
                return date;
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Date copy(com.esotericsoftware.kryo.c cVar, Date date) {
            Date date2 = date;
            return a(cVar, date2.getClass(), date2.getTime());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Date read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Date> cls) {
            return a(cVar, cls, aVar.c(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Date date) {
            cVar2.a(date.getTime(), true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$t.class */
    public static final class t extends com.esotericsoftware.kryo.serializers.i<Double> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Double.valueOf(aVar.i());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Double) obj).doubleValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$u.class */
    public static class u extends com.esotericsoftware.kryo.serializers.i<Enum> {

        /* renamed from: a  reason: collision with root package name */
        private Object[] f19068a;

        public u(Class<? extends Enum> cls) {
            setAcceptsNull(true);
            Object[] enumConstants = cls.getEnumConstants();
            this.f19068a = enumConstants;
            if (enumConstants == null && !Enum.class.equals(cls)) {
                throw new IllegalArgumentException("The type must be an enum: ".concat(String.valueOf(cls)));
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            int b2 = aVar.b(true);
            if (b2 == 0) {
                return null;
            }
            int i = b2 - 1;
            if (i >= 0) {
                Object[] objArr = this.f19068a;
                if (i <= objArr.length - 1) {
                    return (Enum) objArr[i];
                }
            }
            throw new KryoException("Invalid ordinal for enum \"" + cls.getName() + "\": " + i);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Enum r0 = (Enum) obj;
            if (r0 == null) {
                cVar2.b(0, true);
            } else {
                cVar2.b(r0.ordinal() + 1, true);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$v.class */
    public static class v extends com.esotericsoftware.kryo.h<EnumSet> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ EnumSet copy(com.esotericsoftware.kryo.c cVar, EnumSet enumSet) {
            return EnumSet.copyOf(enumSet);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ EnumSet read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends EnumSet> cls) {
            com.esotericsoftware.kryo.g a2 = cVar.a(aVar);
            EnumSet noneOf = EnumSet.noneOf(a2.f19039a);
            com.esotericsoftware.kryo.h hVar = a2.f19042d;
            int b2 = aVar.b(true);
            for (int i = 0; i < b2; i++) {
                noneOf.add(hVar.read(cVar, aVar, null));
            }
            return noneOf;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, EnumSet enumSet) {
            com.esotericsoftware.kryo.h hVar;
            EnumSet enumSet2 = enumSet;
            if (enumSet2.isEmpty()) {
                EnumSet complementOf = EnumSet.complementOf(enumSet2);
                if (!complementOf.isEmpty()) {
                    hVar = cVar.a(cVar2, (Class) complementOf.iterator().next().getClass()).f19042d;
                } else {
                    throw new KryoException("An EnumSet must have a defined Enum to be serialized.");
                }
            } else {
                hVar = cVar.a(cVar2, (Class) enumSet2.iterator().next().getClass()).f19042d;
            }
            cVar2.b(enumSet2.size(), true);
            Iterator it2 = enumSet2.iterator();
            while (it2.hasNext()) {
                hVar.write(cVar, cVar2, it2.next());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$w.class */
    public static final class w extends com.esotericsoftware.kryo.serializers.i<Float> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Float.valueOf(aVar.h());
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Float) obj).floatValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$x.class */
    public static final class x extends com.esotericsoftware.kryo.serializers.i<Integer> {
        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Integer.valueOf(aVar.a(false));
        }

        @Override // com.esotericsoftware.kryo.h
        public final /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.a(((Integer) obj).intValue(), false);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$y.class */
    public static class y extends com.esotericsoftware.kryo.h<com.esotericsoftware.kryo.e> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ com.esotericsoftware.kryo.e read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends com.esotericsoftware.kryo.e> cls) {
            com.esotericsoftware.kryo.e eVar = (com.esotericsoftware.kryo.e) cVar.e(cls);
            cVar.a(eVar);
            return eVar;
        }

        @Override // com.esotericsoftware.kryo.h
        public /* bridge */ /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, com.esotericsoftware.kryo.e eVar) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/g$z.class */
    public static class z extends com.esotericsoftware.kryo.serializers.i<Locale> {

        /* renamed from: a  reason: collision with root package name */
        public static final Locale f19069a = new Locale("es", "", "");

        /* renamed from: b  reason: collision with root package name */
        public static final Locale f19070b = new Locale("es", "ES", "");

        private static boolean a(Locale locale, String str, String str2, String str3) {
            return locale.getLanguage().equals(str) && locale.getCountry().equals(str2) && locale.getVariant().equals(str3);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            String m = aVar.m();
            String m2 = aVar.m();
            String m3 = aVar.m();
            Locale locale = Locale.getDefault();
            if (a(locale, m, m2, m3)) {
                return locale;
            }
            if (locale != Locale.US && a(Locale.US, m, m2, m3)) {
                return Locale.US;
            }
            if (a(Locale.ENGLISH, m, m2, m3)) {
                return Locale.ENGLISH;
            }
            if (a(Locale.GERMAN, m, m2, m3)) {
                return Locale.GERMAN;
            }
            Locale locale2 = f19069a;
            if (a(locale2, m, m2, m3)) {
                return locale2;
            }
            if (a(Locale.FRENCH, m, m2, m3)) {
                return Locale.FRENCH;
            }
            if (a(Locale.ITALIAN, m, m2, m3)) {
                return Locale.ITALIAN;
            }
            if (a(Locale.JAPANESE, m, m2, m3)) {
                return Locale.JAPANESE;
            }
            if (a(Locale.KOREAN, m, m2, m3)) {
                return Locale.KOREAN;
            }
            if (a(Locale.SIMPLIFIED_CHINESE, m, m2, m3)) {
                return Locale.SIMPLIFIED_CHINESE;
            }
            if (a(Locale.CHINESE, m, m2, m3)) {
                return Locale.CHINESE;
            }
            if (a(Locale.TRADITIONAL_CHINESE, m, m2, m3)) {
                return Locale.TRADITIONAL_CHINESE;
            }
            if (a(Locale.UK, m, m2, m3)) {
                return Locale.UK;
            }
            if (a(Locale.GERMANY, m, m2, m3)) {
                return Locale.GERMANY;
            }
            Locale locale3 = f19070b;
            return a(locale3, m, m2, m3) ? locale3 : a(Locale.FRANCE, m, m2, m3) ? Locale.FRANCE : a(Locale.ITALY, m, m2, m3) ? Locale.ITALY : a(Locale.JAPAN, m, m2, m3) ? Locale.JAPAN : a(Locale.KOREA, m, m2, m3) ? Locale.KOREA : a(Locale.CANADA, m, m2, m3) ? Locale.CANADA : a(Locale.CANADA_FRENCH, m, m2, m3) ? Locale.CANADA_FRENCH : new Locale(m, m2, m3);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Locale locale = (Locale) obj;
            cVar2.b(locale.getLanguage());
            cVar2.b(locale.getCountry());
            cVar2.a(locale.getVariant());
        }
    }
}

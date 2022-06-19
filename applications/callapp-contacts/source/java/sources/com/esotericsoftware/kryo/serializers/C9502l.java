package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.p274b.C9366a;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: com.esotericsoftware.kryo.serializers.l */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/l.class */
public class C9502l<T> extends AbstractC9494i<T> {

    /* renamed from: a */
    private static final Method f32415a;

    /* renamed from: b */
    private static final Method f32416b;

    /* renamed from: c */
    private static final Method f32417c;

    /* renamed from: d */
    private static final Method f32418d;

    /* renamed from: com.esotericsoftware.kryo.serializers.l$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/l$a.class */
    public static final class C9503a {

        /* renamed from: a */
        private final String f32419a;

        /* renamed from: b */
        private final Class<?> f32420b;

        /* renamed from: c */
        private final int f32421c;

        C9503a(String str, Class<?> cls, int i) {
            this.f32419a = str;
            this.f32420b = cls;
            this.f32421c = i;
        }

        /* renamed from: a */
        public final String m24217a() {
            return this.f32419a;
        }

        /* renamed from: b */
        public final Class<?> m24216b() {
            return this.f32420b;
        }

        /* renamed from: c */
        public final int m24215c() {
            return this.f32421c;
        }
    }

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4 = null;
        try {
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            Method declaredMethod = Class.class.getDeclaredMethod("isRecord", new Class[0]);
            method2 = Class.class.getMethod("getRecordComponents", new Class[0]);
            method = cls.getMethod("getName", new Class[0]);
            method3 = cls.getMethod("getType", new Class[0]);
            method4 = declaredMethod;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            method3 = null;
            method2 = null;
            method = null;
        }
        f32415a = method4;
        f32416b = method2;
        f32417c = method;
        f32418d = method3;
    }

    /* renamed from: a */
    private static <T> T m24219a(Class<T> cls, C9503a[] c9503aArr, Object[] objArr) {
        try {
            return cls.getConstructor((Class[]) Arrays.stream(c9503aArr).map(_$$Lambda$r2LDO30PzrxrujTVea7sazxarcs.INSTANCE).toArray(_$$Lambda$l$pgGCSuRGApYTLX6EbOO5sUNgGCk.INSTANCE)).newInstance(objArr);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a("Could not construct type (" + cls.getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: a */
    private static Object m24218a(Object obj, C9503a c9503a) {
        try {
            return obj.getClass().getDeclaredMethod(c9503a.m24217a(), new Class[0]).invoke(obj, new Object[0]);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a("Could not retrieve record components (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: a */
    private static boolean m24221a(Class<?> cls) {
        try {
            return ((Boolean) f32415a.invoke(cls, new Object[0])).booleanValue();
        } catch (Throwable th) {
            throw new KryoException("Could not determine type (" + cls + ")");
        }
    }

    /* renamed from: a */
    private static <T> C9503a[] m24220a(Class<T> cls, Comparator<C9503a> comparator) {
        try {
            Object[] objArr = (Object[]) f32416b.invoke(cls, new Object[0]);
            C9503a[] c9503aArr = new C9503a[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                c9503aArr[i] = new C9503a((String) f32417c.invoke(obj, new Object[0]), (Class) f32418d.invoke(obj, new Object[0]), i);
            }
            if (comparator != null) {
                Arrays.sort(c9503aArr, comparator);
            }
            return c9503aArr;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.m24463a("Could not retrieve record components (" + cls.getName() + ")");
            throw kryoException;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Class[] m24222a(int i) {
        return new Class[i];
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public T read(C9380c c9380c, C9374a c9374a, Class<? extends T> cls) {
        if (!m24221a(cls)) {
            throw new KryoException("Not a record (" + cls + ")");
        }
        C9503a[] m24220a = m24220a(cls, Comparator.comparing(_$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY.INSTANCE));
        Object[] objArr = new Object[m24220a.length];
        for (C9503a c9503a : m24220a) {
            String m24217a = c9503a.m24217a();
            try {
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Read property: " + m24217a + " (" + cls.getName() + ")");
                }
                objArr[c9503a.m24215c()] = c9503a.m24216b().isPrimitive() ? c9380c.m24392a(c9374a, c9503a.m24216b()) : c9380c.m24378b(c9374a, c9503a.m24216b());
            } catch (KryoException e) {
                e.m24463a(m24217a + " (" + cls.getName() + ")");
                throw e;
            } catch (Throwable th) {
                KryoException kryoException = new KryoException(th);
                kryoException.m24463a(m24217a + " (" + cls.getName() + ")");
                throw kryoException;
            }
        }
        Arrays.sort(m24220a, Comparator.comparing(_$$Lambda$DI0mWtLjGr7WxrMT0YGs2V2bW04.INSTANCE));
        return (T) m24219a(cls, m24220a, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0288 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0206 A[Catch: all -> 0x02bc, KryoException -> 0x02f7, TRY_ENTER, TRY_LEAVE, TryCatch #4 {KryoException -> 0x02f7, all -> 0x02bc, blocks: (B:8:0x003f, B:10:0x0049, B:12:0x0084, B:14:0x0091, B:18:0x00a2, B:24:0x00bc, B:26:0x00cf, B:29:0x00d7, B:41:0x0110, B:43:0x0122, B:47:0x012d, B:49:0x0140, B:51:0x0147, B:53:0x014c, B:54:0x014d, B:54:0x014d, B:55:0x0150, B:56:0x0159, B:57:0x015a, B:57:0x015a, B:58:0x015d, B:59:0x0166, B:61:0x0168, B:63:0x0173, B:69:0x0198, B:71:0x01ab, B:74:0x01b3, B:89:0x01f4, B:91:0x0206, B:109:0x026c, B:111:0x027e, B:116:0x028f, B:118:0x02a2, B:120:0x02a9, B:122:0x02ae, B:123:0x02af, B:123:0x02af, B:124:0x02b2, B:125:0x02bb), top: B:139:0x003f }] */
    @Override // com.esotericsoftware.kryo.AbstractC9413h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.esotericsoftware.kryo.C9380c r6, com.esotericsoftware.kryo.p276a.C9376c r7, T r8) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.C9502l.write(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.c, java.lang.Object):void");
    }
}

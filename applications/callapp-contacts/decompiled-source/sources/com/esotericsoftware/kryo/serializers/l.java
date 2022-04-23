package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/l.class */
public class l<T> extends i<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f19075a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f19076b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f19077c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f19078d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f19079a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f19080b;

        /* renamed from: c  reason: collision with root package name */
        private final int f19081c;

        a(String str, Class<?> cls, int i) {
            this.f19079a = str;
            this.f19080b = cls;
            this.f19081c = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String a() {
            return this.f19079a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Class<?> b() {
            return this.f19080b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int c() {
            return this.f19081c;
        }
    }

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4 = null;
        try {
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            method4 = Class.class.getDeclaredMethod("isRecord", new Class[0]);
            method2 = Class.class.getMethod("getRecordComponents", new Class[0]);
            method = cls.getMethod("getName", new Class[0]);
            method3 = cls.getMethod("getType", new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            method3 = null;
            method2 = null;
            method = null;
        }
        f19075a = method4;
        f19076b = method2;
        f19077c = method;
        f19078d = method3;
    }

    private static <T> T a(Class<T> cls, a[] aVarArr, Object[] objArr) {
        try {
            return cls.getConstructor((Class[]) Arrays.stream(aVarArr).map(_$$Lambda$r2LDO30PzrxrujTVea7sazxarcs.INSTANCE).toArray(_$$Lambda$l$pgGCSuRGApYTLX6EbOO5sUNgGCk.INSTANCE)).newInstance(objArr);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a("Could not construct type (" + cls.getName() + ")");
            throw kryoException;
        }
    }

    private static Object a(Object obj, a aVar) {
        try {
            return obj.getClass().getDeclaredMethod(aVar.a(), new Class[0]).invoke(obj, new Object[0]);
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a("Could not retrieve record components (" + obj.getClass().getName() + ")");
            throw kryoException;
        }
    }

    private static boolean a(Class<?> cls) {
        try {
            return ((Boolean) f19075a.invoke(cls, new Object[0])).booleanValue();
        } catch (Throwable th) {
            throw new KryoException("Could not determine type (" + cls + ")");
        }
    }

    private static <T> a[] a(Class<T> cls, Comparator<a> comparator) {
        try {
            Object[] objArr = (Object[]) f19076b.invoke(cls, new Object[0]);
            a[] aVarArr = new a[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                aVarArr[i] = new a((String) f19077c.invoke(obj, new Object[0]), (Class) f19078d.invoke(obj, new Object[0]), i);
            }
            if (comparator != null) {
                Arrays.sort(aVarArr, comparator);
            }
            return aVarArr;
        } catch (Throwable th) {
            KryoException kryoException = new KryoException(th);
            kryoException.a("Could not retrieve record components (" + cls.getName() + ")");
            throw kryoException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Class[] a(int i) {
        return new Class[i];
    }

    @Override // com.esotericsoftware.kryo.h
    public T read(c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls) {
        if (a(cls)) {
            a[] a2 = a(cls, Comparator.comparing(_$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY.INSTANCE));
            Object[] objArr = new Object[a2.length];
            for (a aVar2 : a2) {
                String a3 = aVar2.a();
                try {
                    if (com.esotericsoftware.b.a.e) {
                        com.esotericsoftware.b.a.b("kryo", "Read property: " + a3 + " (" + cls.getName() + ")");
                    }
                    objArr[aVar2.c()] = aVar2.b().isPrimitive() ? cVar.a(aVar, aVar2.b()) : cVar.b(aVar, aVar2.b());
                } catch (KryoException e) {
                    e.a(a3 + " (" + cls.getName() + ")");
                    throw e;
                } catch (Throwable th) {
                    KryoException kryoException = new KryoException(th);
                    kryoException.a(a3 + " (" + cls.getName() + ")");
                    throw kryoException;
                }
            }
            Arrays.sort(a2, Comparator.comparing(_$$Lambda$DI0mWtLjGr7WxrMT0YGs2V2bW04.INSTANCE));
            return (T) a(cls, a2, objArr);
        }
        throw new KryoException("Not a record (" + cls + ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0288 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0206 A[Catch: all -> 0x02bc, KryoException -> 0x02f7, TRY_ENTER, TRY_LEAVE, TryCatch #4 {KryoException -> 0x02f7, all -> 0x02bc, blocks: (B:8:0x003f, B:10:0x0049, B:12:0x0084, B:14:0x0091, B:18:0x00a2, B:24:0x00bc, B:26:0x00cf, B:29:0x00d7, B:41:0x0110, B:43:0x0122, B:47:0x012d, B:49:0x0140, B:51:0x0147, B:53:0x014c, B:54:0x014d, B:54:0x014d, B:55:0x0150, B:56:0x0159, B:57:0x015a, B:57:0x015a, B:58:0x015d, B:59:0x0166, B:61:0x0168, B:63:0x0173, B:69:0x0198, B:71:0x01ab, B:74:0x01b3, B:89:0x01f4, B:91:0x0206, B:109:0x026c, B:111:0x027e, B:116:0x028f, B:118:0x02a2, B:120:0x02a9, B:122:0x02ae, B:123:0x02af, B:123:0x02af, B:124:0x02b2, B:125:0x02bb), top: B:139:0x003f }] */
    @Override // com.esotericsoftware.kryo.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.esotericsoftware.kryo.c r6, com.esotericsoftware.kryo.a.c r7, T r8) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.l.write(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.c, java.lang.Object):void");
    }
}

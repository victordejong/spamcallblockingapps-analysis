package com.google.api.client.json;

import com.google.api.client.json.AbstractC8673g;
import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8710i;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.C8732x;
import com.google.api.client.util.GenericData;
import java.io.Closeable;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.api.client.json.f */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/f.class */
public abstract class AbstractC8671f implements Closeable {

    /* renamed from: d */
    private static WeakHashMap<Class<?>, Field> f38447d = new WeakHashMap<>();

    /* renamed from: e */
    private static final Lock f38448e = new ReentrantLock();

    /* renamed from: com.google.api.client.json.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/f$a.class */
    public static /* synthetic */ class C8672a {

        /* renamed from: a */
        static final /* synthetic */ int[] f38449a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0089 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:56:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:54:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:48:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:42:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:36:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:52:0x007c). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f38449a = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38449a[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38449a[JsonToken.END_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38449a[JsonToken.FIELD_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f38449a[JsonToken.END_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f38449a[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f38449a[JsonToken.VALUE_FALSE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f38449a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f38449a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f38449a[JsonToken.VALUE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f38449a[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* renamed from: P */
    private void m3012P(ArrayList<Type> arrayList, Object obj, C8665a c8665a) {
        if (obj instanceof C8666b) {
            ((C8666b) obj).setFactory(mo2968u());
        }
        JsonToken m3002h0 = m3002h0();
        Class<?> cls = obj.getClass();
        C8710i m2886e = C8710i.m2886e(cls);
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        JsonToken jsonToken = m3002h0;
        if (!isAssignableFrom) {
            jsonToken = m3002h0;
            if (Map.class.isAssignableFrom(cls)) {
                m3008W(null, (Map) obj, C8695d0.m2923e(cls), arrayList, c8665a);
                return;
            }
        }
        while (jsonToken == JsonToken.FIELD_NAME) {
            String mo2978D = mo2978D();
            mo2977E();
            if (c8665a != null) {
                throw null;
            }
            C8717l m2889b = m2886e.m2889b(mo2978D);
            if (m2889b != null) {
                if (m2889b.m2859h() && !m2889b.m2858i()) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field m2865b = m2889b.m2865b();
                int size = arrayList.size();
                arrayList.add(m2865b.getGenericType());
                Object m3007Y = m3007Y(m2865b, m2889b.m2863d(), arrayList, obj, c8665a, true);
                arrayList.remove(size);
                m2889b.m2854m(obj, m3007Y);
            } else if (isAssignableFrom) {
                ((GenericData) obj).set(mo2978D, m3007Y(null, null, arrayList, obj, c8665a, true));
            } else if (c8665a != null) {
                throw null;
            } else {
                mo2976Z();
            }
            jsonToken = mo2977E();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: U */
    private <T> void m3009U(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, C8665a c8665a) {
        JsonToken m3002h0 = m3002h0();
        while (m3002h0 != JsonToken.END_ARRAY) {
            collection.add(m3007Y(field, type, arrayList, collection, c8665a, true));
            m3002h0 = mo2977E();
        }
    }

    /* renamed from: W */
    private void m3008W(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, C8665a c8665a) {
        JsonToken m3002h0 = m3002h0();
        while (m3002h0 == JsonToken.FIELD_NAME) {
            String mo2978D = mo2978D();
            mo2977E();
            if (c8665a != null) {
                throw null;
            }
            map.put(mo2978D, m3007Y(field, type, arrayList, map, c8665a, true));
            m3002h0 = mo2977E();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b1, code lost:
        if (r12.isPrimitive() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x016d, code lost:
        if (r9.getAnnotation(com.google.api.client.json.AbstractC8675h.class) != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0193, code lost:
        if (r9.getAnnotation(com.google.api.client.json.AbstractC8675h.class) == null) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02cc A[Catch: IllegalArgumentException -> 0x0560, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x0560, blocks: (B:14:0x0049, B:21:0x00ac, B:25:0x00b7, B:27:0x00c3, B:29:0x00cf, B:31:0x00d9, B:34:0x00e7, B:36:0x00ef, B:39:0x00fc, B:42:0x0106, B:47:0x0122, B:52:0x0131, B:54:0x013a, B:56:0x0143, B:60:0x0151, B:66:0x0167, B:70:0x0173, B:72:0x017d, B:77:0x018d, B:81:0x0199, B:83:0x01a6, B:88:0x01bc, B:93:0x01c8, B:98:0x01db, B:103:0x01ed, B:108:0x0200, B:113:0x0213, B:118:0x0226, B:121:0x0231, B:122:0x0255, B:124:0x0257, B:127:0x025f, B:130:0x0267, B:133:0x026f, B:136:0x0277, B:139:0x027f, B:142:0x0287, B:146:0x0290, B:150:0x029d, B:155:0x02b4, B:157:0x02cc, B:159:0x02d5, B:163:0x02dd, B:169:0x02f3, B:174:0x0309, B:180:0x0328, B:182:0x0334, B:186:0x0348, B:188:0x0353, B:190:0x035a, B:192:0x036f, B:196:0x037d, B:201:0x038e, B:203:0x03a4, B:213:0x03c5, B:220:0x03dd, B:225:0x03f5, B:226:0x03fe, B:228:0x0405, B:230:0x040f, B:233:0x041b, B:235:0x0425, B:237:0x042f, B:241:0x0441), top: B:285:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02d5 A[Catch: IllegalArgumentException -> 0x0560, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x0560, blocks: (B:14:0x0049, B:21:0x00ac, B:25:0x00b7, B:27:0x00c3, B:29:0x00cf, B:31:0x00d9, B:34:0x00e7, B:36:0x00ef, B:39:0x00fc, B:42:0x0106, B:47:0x0122, B:52:0x0131, B:54:0x013a, B:56:0x0143, B:60:0x0151, B:66:0x0167, B:70:0x0173, B:72:0x017d, B:77:0x018d, B:81:0x0199, B:83:0x01a6, B:88:0x01bc, B:93:0x01c8, B:98:0x01db, B:103:0x01ed, B:108:0x0200, B:113:0x0213, B:118:0x0226, B:121:0x0231, B:122:0x0255, B:124:0x0257, B:127:0x025f, B:130:0x0267, B:133:0x026f, B:136:0x0277, B:139:0x027f, B:142:0x0287, B:146:0x0290, B:150:0x029d, B:155:0x02b4, B:157:0x02cc, B:159:0x02d5, B:163:0x02dd, B:169:0x02f3, B:174:0x0309, B:180:0x0328, B:182:0x0334, B:186:0x0348, B:188:0x0353, B:190:0x035a, B:192:0x036f, B:196:0x037d, B:201:0x038e, B:203:0x03a4, B:213:0x03c5, B:220:0x03dd, B:225:0x03f5, B:226:0x03fe, B:228:0x0405, B:230:0x040f, B:233:0x041b, B:235:0x0425, B:237:0x042f, B:241:0x0441), top: B:285:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0334 A[Catch: IllegalArgumentException -> 0x0560, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x0560, blocks: (B:14:0x0049, B:21:0x00ac, B:25:0x00b7, B:27:0x00c3, B:29:0x00cf, B:31:0x00d9, B:34:0x00e7, B:36:0x00ef, B:39:0x00fc, B:42:0x0106, B:47:0x0122, B:52:0x0131, B:54:0x013a, B:56:0x0143, B:60:0x0151, B:66:0x0167, B:70:0x0173, B:72:0x017d, B:77:0x018d, B:81:0x0199, B:83:0x01a6, B:88:0x01bc, B:93:0x01c8, B:98:0x01db, B:103:0x01ed, B:108:0x0200, B:113:0x0213, B:118:0x0226, B:121:0x0231, B:122:0x0255, B:124:0x0257, B:127:0x025f, B:130:0x0267, B:133:0x026f, B:136:0x0277, B:139:0x027f, B:142:0x0287, B:146:0x0290, B:150:0x029d, B:155:0x02b4, B:157:0x02cc, B:159:0x02d5, B:163:0x02dd, B:169:0x02f3, B:174:0x0309, B:180:0x0328, B:182:0x0334, B:186:0x0348, B:188:0x0353, B:190:0x035a, B:192:0x036f, B:196:0x037d, B:201:0x038e, B:203:0x03a4, B:213:0x03c5, B:220:0x03dd, B:225:0x03f5, B:226:0x03fe, B:228:0x0405, B:230:0x040f, B:233:0x041b, B:235:0x0425, B:237:0x042f, B:241:0x0441), top: B:285:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x036f A[Catch: IllegalArgumentException -> 0x0560, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x0560, blocks: (B:14:0x0049, B:21:0x00ac, B:25:0x00b7, B:27:0x00c3, B:29:0x00cf, B:31:0x00d9, B:34:0x00e7, B:36:0x00ef, B:39:0x00fc, B:42:0x0106, B:47:0x0122, B:52:0x0131, B:54:0x013a, B:56:0x0143, B:60:0x0151, B:66:0x0167, B:70:0x0173, B:72:0x017d, B:77:0x018d, B:81:0x0199, B:83:0x01a6, B:88:0x01bc, B:93:0x01c8, B:98:0x01db, B:103:0x01ed, B:108:0x0200, B:113:0x0213, B:118:0x0226, B:121:0x0231, B:122:0x0255, B:124:0x0257, B:127:0x025f, B:130:0x0267, B:133:0x026f, B:136:0x0277, B:139:0x027f, B:142:0x0287, B:146:0x0290, B:150:0x029d, B:155:0x02b4, B:157:0x02cc, B:159:0x02d5, B:163:0x02dd, B:169:0x02f3, B:174:0x0309, B:180:0x0328, B:182:0x0334, B:186:0x0348, B:188:0x0353, B:190:0x035a, B:192:0x036f, B:196:0x037d, B:201:0x038e, B:203:0x03a4, B:213:0x03c5, B:220:0x03dd, B:225:0x03f5, B:226:0x03fe, B:228:0x0405, B:230:0x040f, B:233:0x041b, B:235:0x0425, B:237:0x042f, B:241:0x0441), top: B:285:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x037a  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object m3007Y(java.lang.reflect.Field r9, java.lang.reflect.Type r10, java.util.ArrayList<java.lang.reflect.Type> r11, java.lang.Object r12, com.google.api.client.json.C8665a r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.json.AbstractC8671f.m3007Y(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, java.lang.Object, com.google.api.client.json.a, boolean):java.lang.Object");
    }

    /* renamed from: e0 */
    private JsonToken m3004e0() {
        JsonToken mo2971k = mo2971k();
        JsonToken jsonToken = mo2971k;
        if (mo2971k == null) {
            jsonToken = mo2977E();
        }
        C8731w.m2838b(jsonToken != null, "no JSON input found");
        return jsonToken;
    }

    /* renamed from: f */
    private static Field m3003f(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock = f38448e;
        lock.lock();
        try {
            if (f38447d.containsKey(cls)) {
                Field field2 = f38447d.get(cls);
                lock.unlock();
                return field2;
            }
            for (C8717l c8717l : C8710i.m2886e(cls).m2888c()) {
                Field m2865b = c8717l.m2865b();
                AbstractC8673g abstractC8673g = (AbstractC8673g) m2865b.getAnnotation(AbstractC8673g.class);
                if (abstractC8673g != null) {
                    C8731w.m2837c(field == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    C8731w.m2837c(C8712j.m2879e(m2865b.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, m2865b.getType());
                    AbstractC8673g.AbstractC8674a[] typeDefinitions = abstractC8673g.typeDefinitions();
                    HashSet m2831a = C8732x.m2831a();
                    C8731w.m2838b(typeDefinitions.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (AbstractC8673g.AbstractC8674a abstractC8674a : typeDefinitions) {
                        C8731w.m2837c(m2831a.add(abstractC8674a.key()), "Class contains two @TypeDef annotations with identical key: %s", abstractC8674a.key());
                    }
                    field = m2865b;
                }
            }
            f38447d.put(cls, field);
            f38448e.unlock();
            return field;
        } catch (Throwable th) {
            f38448e.unlock();
            throw th;
        }
    }

    /* renamed from: h0 */
    private JsonToken m3002h0() {
        JsonToken m3004e0 = m3004e0();
        int i = C8672a.f38449a[m3004e0.ordinal()];
        if (i == 1) {
            m3004e0 = mo2977E();
            boolean z = true;
            if (m3004e0 != JsonToken.FIELD_NAME) {
                z = m3004e0 == JsonToken.END_OBJECT;
            }
            C8731w.m2838b(z, m3004e0);
        } else if (i == 2) {
            m3004e0 = mo2977E();
        }
        return m3004e0;
    }

    /* renamed from: A */
    public abstract long mo2980A();

    /* renamed from: C */
    public abstract short mo2979C();

    /* renamed from: D */
    public abstract String mo2978D();

    /* renamed from: E */
    public abstract JsonToken mo2977E();

    /* renamed from: I */
    public final <T> T m3015I(Class<T> cls, C8665a c8665a) {
        return (T) m3013N(cls, false, c8665a);
    }

    /* renamed from: L */
    public Object m3014L(Type type, boolean z) {
        return m3013N(type, z, null);
    }

    /* renamed from: N */
    public Object m3013N(Type type, boolean z, C8665a c8665a) {
        try {
            if (!Void.class.equals(type)) {
                m3004e0();
            }
            Object m3007Y = m3007Y(null, type, new ArrayList<>(), null, c8665a, true);
            if (z) {
                close();
            }
            return m3007Y;
        } catch (Throwable th) {
            if (z) {
                close();
            }
            throw th;
        }
    }

    /* renamed from: Q */
    public final <T> T m3011Q(Class<T> cls) {
        return (T) m3010R(cls, null);
    }

    /* renamed from: R */
    public final <T> T m3010R(Class<T> cls, C8665a c8665a) {
        try {
            return (T) m3015I(cls, c8665a);
        } finally {
            close();
        }
    }

    /* renamed from: Z */
    public abstract AbstractC8671f mo2976Z();

    /* renamed from: a */
    public abstract BigInteger mo2975a();

    /* renamed from: a0 */
    public final String m3006a0(Set<String> set) {
        JsonToken m3002h0 = m3002h0();
        while (m3002h0 == JsonToken.FIELD_NAME) {
            String mo2978D = mo2978D();
            mo2977E();
            if (set.contains(mo2978D)) {
                return mo2978D;
            }
            mo2976Z();
            m3002h0 = mo2977E();
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    /* renamed from: d0 */
    public final void m3005d0(String str) {
        m3006a0(Collections.singleton(str));
    }

    /* renamed from: e */
    public abstract byte mo2974e();

    /* renamed from: g */
    public abstract String mo2973g();

    /* renamed from: k */
    public abstract JsonToken mo2971k();

    /* renamed from: p */
    public abstract BigDecimal mo2970p();

    /* renamed from: q */
    public abstract double mo2969q();

    /* renamed from: u */
    public abstract AbstractC8667c mo2968u();

    /* renamed from: y */
    public abstract float mo2967y();

    /* renamed from: z */
    public abstract int mo2966z();
}

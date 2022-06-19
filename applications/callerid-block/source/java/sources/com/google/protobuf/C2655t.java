package com.google.protobuf;

import com.google.protobuf.AbstractC2639m0;
import com.google.protobuf.C2655t.AbstractC2657b;
import com.google.protobuf.C2665x;
import com.google.protobuf.C2678z;
import com.google.protobuf.WireFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.protobuf.t */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/t.class */
public final class C2655t<T extends AbstractC2657b<T>> {

    /* renamed from: d */
    private static final C2655t f11207d = new C2655t(true);

    /* renamed from: a */
    private final C2584d1<T, Object> f11208a;

    /* renamed from: b */
    private boolean f11209b;

    /* renamed from: c */
    private boolean f11210c;

    /* renamed from: com.google.protobuf.t$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/t$a.class */
    public static /* synthetic */ class C2656a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11211a;

        /* renamed from: b */
        static final /* synthetic */ int[] f11212b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x014d -> B:97:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0151 -> B:93:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0155 -> B:105:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0159 -> B:101:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x015d -> B:113:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0161 -> B:109:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0165 -> B:121:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0169 -> B:117:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x016d -> B:129:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0171 -> B:125:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0175 -> B:133:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0179 -> B:131:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x017d -> B:137:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0181 -> B:135:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0185 -> B:89:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0189 -> B:85:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x018d -> B:95:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0191 -> B:38:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0195 -> B:103:0x00f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0199 -> B:99:0x00fb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x019d -> B:111:0x0106). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01a1 -> B:107:0x0111). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01a5 -> B:119:0x011c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x01a9 -> B:115:0x0128). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01ad -> B:127:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01b1 -> B:123:0x0140). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f11212b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11212b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11212b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11212b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11212b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11212b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11212b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11212b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11212b[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11212b[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11212b[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f11212b[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f11212b[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f11212b[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f11212b[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f11212b[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f11212b[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f11212b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            f11211a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f11211a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f11211a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f11211a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f11211a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f11211a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f11211a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f11211a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f11211a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e27) {
            }
        }
    }

    /* renamed from: com.google.protobuf.t$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/t$b.class */
    public interface AbstractC2657b<T extends AbstractC2657b<T>> extends Comparable<T> {
        /* renamed from: d */
        boolean mo2290d();

        /* renamed from: f */
        WireFormat.FieldType mo2289f();

        /* renamed from: g */
        AbstractC2639m0.AbstractC2640a mo2288g(AbstractC2639m0.AbstractC2640a abstractC2640a, AbstractC2639m0 abstractC2639m0);

        int getNumber();

        /* renamed from: i */
        WireFormat.JavaType mo2287i();

        boolean isPacked();
    }

    private C2655t() {
        this.f11208a = C2584d1.m2810q(16);
    }

    private C2655t(C2584d1<T, Object> c2584d1) {
        this.f11208a = c2584d1;
        m2297t();
    }

    private C2655t(boolean z) {
        this(C2584d1.m2810q(0));
        m2297t();
    }

    /* renamed from: A */
    static void m2317A(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) {
        switch (C2656a.f11212b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.m3091p0(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.m3079x0(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.m3143F0(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.mo3062Y0(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.mo3073D0(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.mo3049v0(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.mo3051t0(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.m3100j0(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.m3151A0((AbstractC2639m0) obj);
                return;
            case 10:
                codedOutputStream.mo3071H0((AbstractC2639m0) obj);
                return;
            case 11:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.mo3067T0((String) obj);
                    return;
                }
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.m3098k0((byte[]) obj);
                    return;
                }
                break;
            case 13:
                codedOutputStream.mo3064W0(((Integer) obj).intValue());
                return;
            case 14:
                codedOutputStream.m3135L0(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.m3131N0(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.m3127P0(((Integer) obj).intValue());
                return;
            case 17:
                codedOutputStream.m3123R0(((Long) obj).longValue());
                return;
            case 18:
                codedOutputStream.m3087r0(obj instanceof C2665x.AbstractC2668c ? ((C2665x.AbstractC2668c) obj).getNumber() : ((Integer) obj).intValue());
                return;
            default:
                return;
        }
        codedOutputStream.mo3053n0((ByteString) obj);
    }

    /* renamed from: c */
    private static Object m2314c(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* renamed from: d */
    public static int m2313d(WireFormat.FieldType fieldType, int i, Object obj) {
        int m3119V = CodedOutputStream.m3119V(i);
        int i2 = m3119V;
        if (fieldType == WireFormat.FieldType.GROUP) {
            i2 = m3119V * 2;
        }
        return i2 + m2312e(fieldType, obj);
    }

    /* renamed from: e */
    static int m2312e(WireFormat.FieldType fieldType, Object obj) {
        switch (C2656a.f11212b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.m3099k(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.m3086s(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.m3076z(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.m3115Z(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.m3080x(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.m3090q(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.m3094o(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.m3106f(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.m3084u((AbstractC2639m0) obj);
            case 10:
                return obj instanceof C2678z ? CodedOutputStream.m3148C((C2678z) obj) : CodedOutputStream.m3141H((AbstractC2639m0) obj);
            case 11:
                return obj instanceof ByteString ? CodedOutputStream.m3102i((ByteString) obj) : CodedOutputStream.m3120U((String) obj);
            case 12:
                return obj instanceof ByteString ? CodedOutputStream.m3102i((ByteString) obj) : CodedOutputStream.m3104g((byte[]) obj);
            case 13:
                return CodedOutputStream.m3117X(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.m3134M(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.m3130O(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.m3126Q(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.m3122S(((Long) obj).longValue());
            case 18:
                return obj instanceof C2665x.AbstractC2668c ? CodedOutputStream.m3096m(((C2665x.AbstractC2668c) obj).getNumber()) : CodedOutputStream.m3096m(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: f */
    public static int m2311f(AbstractC2657b<?> abstractC2657b, Object obj) {
        WireFormat.FieldType mo2289f = abstractC2657b.mo2289f();
        int number = abstractC2657b.getNumber();
        if (abstractC2657b.mo2290d()) {
            int i = 0;
            List<Object> list = (List) obj;
            if (abstractC2657b.isPacked()) {
                for (Object obj2 : list) {
                    i += m2312e(mo2289f, obj2);
                }
                return CodedOutputStream.m3119V(number) + i + CodedOutputStream.m3138K(i);
            }
            Iterator it = list.iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + m2313d(mo2289f, number, it.next());
            }
        } else {
            return m2313d(mo2289f, number, obj);
        }
    }

    /* renamed from: h */
    public static <T extends AbstractC2657b<T>> C2655t<T> m2309h() {
        return f11207d;
    }

    /* renamed from: k */
    private int m2306k(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.mo2287i() != WireFormat.JavaType.MESSAGE || key.mo2290d() || key.isPacked()) {
            return m2311f(key, value);
        }
        boolean z = value instanceof C2678z;
        int number = entry.getKey().getNumber();
        return z ? CodedOutputStream.m3152A(number, (C2678z) value) : CodedOutputStream.m3146E(number, (AbstractC2639m0) value);
    }

    /* renamed from: m */
    static int m2304m(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    /* renamed from: q */
    private static <T extends AbstractC2657b<T>> boolean m2300q(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo2287i() == WireFormat.JavaType.MESSAGE) {
            boolean mo2290d = key.mo2290d();
            Object value = entry.getValue();
            if (!mo2290d) {
                if (value instanceof AbstractC2639m0) {
                    return ((AbstractC2639m0) value).mo2413o();
                } else if (value instanceof C2678z) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
            for (AbstractC2639m0 abstractC2639m0 : (List) value) {
                if (!abstractC2639m0.mo2413o()) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: r */
    private static boolean m2299r(WireFormat.FieldType fieldType, Object obj) {
        C2665x.m2251a(obj);
        switch (C2656a.f11211a[fieldType.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                boolean z = true;
                if (!(obj instanceof ByteString)) {
                    z = obj instanceof byte[];
                }
                return z;
            case 8:
                boolean z2 = true;
                if (!(obj instanceof Integer)) {
                    z2 = obj instanceof C2665x.AbstractC2668c;
                }
                return z2;
            case 9:
                boolean z3 = true;
                if (!(obj instanceof AbstractC2639m0)) {
                    z3 = obj instanceof C2678z;
                }
                return z3;
            default:
                return false;
        }
    }

    /* renamed from: v */
    private void m2295v(Map.Entry<T, Object> entry) {
        Object obj;
        C2584d1<T, Object> c2584d1;
        Object m2308i;
        T key = entry.getKey();
        Object value = entry.getValue();
        AbstractC2639m0 abstractC2639m0 = value;
        if (value instanceof C2678z) {
            abstractC2639m0 = ((C2678z) value).m2223f();
        }
        if (key.mo2290d()) {
            Object m2308i2 = m2308i(key);
            ArrayList arrayList = m2308i2;
            if (m2308i2 == null) {
                arrayList = new ArrayList();
            }
            for (Object obj2 : (List) abstractC2639m0) {
                ((List) arrayList).add(m2314c(obj2));
            }
            this.f11208a.put(key, arrayList);
            return;
        }
        if (key.mo2287i() != WireFormat.JavaType.MESSAGE || (m2308i = m2308i(key)) == null) {
            C2584d1<T, Object> c2584d12 = this.f11208a;
            obj = m2314c(abstractC2639m0);
            c2584d1 = c2584d12;
        } else {
            obj = key.mo2288g(((AbstractC2639m0) m2308i).mo2425e(), (AbstractC2639m0) abstractC2639m0).mo2420a();
            c2584d1 = this.f11208a;
        }
        c2584d1.put(key, obj);
    }

    /* renamed from: w */
    public static <T extends AbstractC2657b<T>> C2655t<T> m2294w() {
        return new C2655t<>();
    }

    /* renamed from: y */
    private void m2292y(WireFormat.FieldType fieldType, Object obj) {
        if (m2299r(fieldType, obj)) {
            return;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: z */
    public static void m2291z(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.m3077y0(i, (AbstractC2639m0) obj);
            return;
        }
        codedOutputStream.mo3066U0(i, m2304m(fieldType, false));
        m2317A(codedOutputStream, fieldType, obj);
    }

    /* renamed from: a */
    public void m2316a(T t, Object obj) {
        ArrayList arrayList;
        if (t.mo2290d()) {
            m2292y(t.mo2289f(), obj);
            Object m2308i = m2308i(t);
            if (m2308i == null) {
                ArrayList arrayList2 = new ArrayList();
                this.f11208a.put(t, arrayList2);
                arrayList = arrayList2;
            } else {
                arrayList = (List) m2308i;
            }
            arrayList.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: b */
    public C2655t<T> clone() {
        C2655t<T> m2294w = m2294w();
        for (int i = 0; i < this.f11208a.m2815k(); i++) {
            Map.Entry<T, Object> m2816j = this.f11208a.m2816j(i);
            m2294w.m2293x(m2816j.getKey(), m2816j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f11208a.m2813m()) {
            m2294w.m2293x(entry.getKey(), entry.getValue());
        }
        m2294w.f11210c = this.f11210c;
        return m2294w;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2655t) {
            return this.f11208a.equals(((C2655t) obj).f11208a);
        }
        return false;
    }

    /* renamed from: g */
    public Iterator<Map.Entry<T, Object>> m2310g() {
        return this.f11210c ? new C2678z.C2681c(this.f11208a.m2818h().iterator()) : this.f11208a.m2818h().iterator();
    }

    public int hashCode() {
        return this.f11208a.hashCode();
    }

    /* renamed from: i */
    public Object m2308i(T t) {
        Object obj = this.f11208a.get(t);
        AbstractC2639m0 abstractC2639m0 = obj;
        if (obj instanceof C2678z) {
            abstractC2639m0 = ((C2678z) obj).m2223f();
        }
        return abstractC2639m0;
    }

    /* renamed from: j */
    public int m2307j() {
        int i = 0;
        for (int i2 = 0; i2 < this.f11208a.m2815k(); i2++) {
            i += m2306k(this.f11208a.m2816j(i2));
        }
        for (Map.Entry<T, Object> entry : this.f11208a.m2813m()) {
            i += m2306k(entry);
        }
        return i;
    }

    /* renamed from: l */
    public int m2305l() {
        int i = 0;
        for (int i2 = 0; i2 < this.f11208a.m2815k(); i2++) {
            Map.Entry<T, Object> m2816j = this.f11208a.m2816j(i2);
            i += m2311f(m2816j.getKey(), m2816j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f11208a.m2813m()) {
            i += m2311f(entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: n */
    public boolean m2303n() {
        return this.f11208a.isEmpty();
    }

    /* renamed from: o */
    public boolean m2302o() {
        return this.f11209b;
    }

    /* renamed from: p */
    public boolean m2301p() {
        for (int i = 0; i < this.f11208a.m2815k(); i++) {
            if (!m2300q(this.f11208a.m2816j(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f11208a.m2813m()) {
            if (!m2300q(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: s */
    public Iterator<Map.Entry<T, Object>> m2298s() {
        return this.f11210c ? new C2678z.C2681c(this.f11208a.entrySet().iterator()) : this.f11208a.entrySet().iterator();
    }

    /* renamed from: t */
    public void m2297t() {
        if (this.f11209b) {
            return;
        }
        this.f11208a.mo2807p();
        this.f11209b = true;
    }

    /* renamed from: u */
    public void m2296u(C2655t<T> c2655t) {
        for (int i = 0; i < c2655t.f11208a.m2815k(); i++) {
            m2295v(c2655t.f11208a.m2816j(i));
        }
        for (Map.Entry<T, Object> entry : c2655t.f11208a.m2813m()) {
            m2295v(entry);
        }
    }

    /* renamed from: x */
    public void m2293x(T t, Object obj) {
        if (!t.mo2290d()) {
            m2292y(t.mo2289f(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList<Object> arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            for (Object obj2 : arrayList) {
                m2292y(t.mo2289f(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof C2678z) {
            this.f11210c = true;
        }
        this.f11208a.put(t, obj);
    }
}

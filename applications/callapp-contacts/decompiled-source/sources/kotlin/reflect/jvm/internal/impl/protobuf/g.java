package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.g.a;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.protobuf.x;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g.class */
public final class g<FieldDescriptorType extends a<FieldDescriptorType>> {

    /* renamed from: d  reason: collision with root package name */
    private static final g f38131d = new g(true);

    /* renamed from: c  reason: collision with root package name */
    private boolean f38134c;

    /* renamed from: b  reason: collision with root package name */
    boolean f38133b = false;

    /* renamed from: a  reason: collision with root package name */
    final u<FieldDescriptorType, Object> f38132a = u.a(16);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.g$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38135a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f38136b;

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
            int[] iArr = new int[x.a.values().length];
            f38136b = iArr;
            try {
                iArr[x.a.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38136b[x.a.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38136b[x.a.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f38136b[x.a.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f38136b[x.a.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f38136b[x.a.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f38136b[x.a.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f38136b[x.a.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f38136b[x.a.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f38136b[x.a.BYTES.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f38136b[x.a.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f38136b[x.a.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f38136b[x.a.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f38136b[x.a.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f38136b[x.a.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f38136b[x.a.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f38136b[x.a.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f38136b[x.a.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            int[] iArr2 = new int[x.b.values().length];
            f38135a = iArr2;
            try {
                iArr2[x.b.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f38135a[x.b.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f38135a[x.b.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f38135a[x.b.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f38135a[x.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f38135a[x.b.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f38135a[x.b.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f38135a[x.b.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f38135a[x.b.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e27) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g$a.class */
    public interface a<T extends a<T>> extends Comparable<T> {
        int a();

        p.a a(p.a aVar, p pVar);

        x.a b();

        x.b c();

        boolean d();

        boolean e();
    }

    private g() {
    }

    private g(boolean z) {
        c();
    }

    private static int a(x.a aVar, int i, Object obj) {
        int d2 = CodedOutputStream.d(i);
        int i2 = d2;
        if (aVar == x.a.GROUP) {
            i2 = d2 * 2;
        }
        return i2 + b(aVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(x.a aVar, boolean z) {
        if (z) {
            return 2;
        }
        return aVar.getWireType();
    }

    private static Object a(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static Object a(e eVar, x.a aVar) throws IOException {
        switch (AnonymousClass1.f38136b[aVar.ordinal()]) {
            case 1:
                return Double.valueOf(Double.longBitsToDouble(eVar.g()));
            case 2:
                return Float.valueOf(Float.intBitsToFloat(eVar.f()));
            case 3:
                return Long.valueOf(eVar.e());
            case 4:
                return Long.valueOf(eVar.e());
            case 5:
                return Integer.valueOf(eVar.d());
            case 6:
                return Long.valueOf(eVar.g());
            case 7:
                return Integer.valueOf(eVar.f());
            case 8:
                return Boolean.valueOf(eVar.b());
            case 9:
                int d2 = eVar.d();
                if (d2 > eVar.f38123b - eVar.f38124c || d2 <= 0) {
                    return d2 == 0 ? "" : new String(eVar.d(d2), "UTF-8");
                }
                String str = new String(eVar.f38122a, eVar.f38124c, d2, "UTF-8");
                eVar.f38124c += d2;
                return str;
            case 10:
                return eVar.c();
            case 11:
                return Integer.valueOf(eVar.d());
            case 12:
                return Integer.valueOf(eVar.f());
            case 13:
                return Long.valueOf(eVar.g());
            case 14:
                int d3 = eVar.d();
                return Integer.valueOf((-(d3 & 1)) ^ (d3 >>> 1));
            case 15:
                return Long.valueOf(e.a(eVar.e()));
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static <T extends a<T>> g<T> a() {
        return new g<>();
    }

    private static void a(CodedOutputStream codedOutputStream, x.a aVar, int i, Object obj) throws IOException {
        if (aVar == x.a.GROUP) {
            codedOutputStream.e(i, 3);
            ((p) obj).a(codedOutputStream);
            codedOutputStream.e(i, 4);
            return;
        }
        codedOutputStream.e(i, a(aVar, false));
        a(codedOutputStream, aVar, obj);
    }

    private static void a(CodedOutputStream codedOutputStream, x.a aVar, Object obj) throws IOException {
        switch (AnonymousClass1.f38136b[aVar.ordinal()]) {
            case 1:
                codedOutputStream.a(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.a(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.c(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.c(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.a(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.e(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.g(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.b(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.a((String) obj);
                return;
            case 10:
                if (obj instanceof d) {
                    codedOutputStream.a((d) obj);
                    return;
                } else {
                    codedOutputStream.a((byte[]) obj);
                    return;
                }
            case 11:
                codedOutputStream.e(((Integer) obj).intValue());
                return;
            case 12:
                codedOutputStream.g(((Integer) obj).intValue());
                return;
            case 13:
                codedOutputStream.e(((Long) obj).longValue());
                return;
            case 14:
                codedOutputStream.b(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.a(((Long) obj).longValue());
                return;
            case 16:
                ((p) obj).a(codedOutputStream);
                return;
            case 17:
                codedOutputStream.a((p) obj);
                return;
            case 18:
                if (obj instanceof j.a) {
                    codedOutputStream.a(((j.a) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static void a(a<?> aVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        x.a b2 = aVar.b();
        int a2 = aVar.a();
        if (aVar.d()) {
            List<Object> list = (List) obj;
            if (aVar.e()) {
                codedOutputStream.e(a2, 2);
                int i = 0;
                for (Object obj2 : list) {
                    i += b(b2, obj2);
                }
                codedOutputStream.e(i);
                for (Object obj3 : list) {
                    a(codedOutputStream, b2, obj3);
                }
                return;
            }
            for (Object obj4 : list) {
                a(codedOutputStream, b2, a2, obj4);
            }
        } else if (obj instanceof k) {
            a(codedOutputStream, b2, a2, ((k) obj).a());
        } else {
            a(codedOutputStream, b2, a2, obj);
        }
    }

    private static void a(x.a aVar, Object obj) {
        Objects.requireNonNull(obj);
        boolean z = false;
        switch (AnonymousClass1.f38135a[aVar.getJavaType().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                z = true;
                if (!(obj instanceof d)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof j.a) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof p)) {
                    if (obj instanceof k) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    private static int b(x.a aVar, Object obj) {
        switch (AnonymousClass1.f38136b[aVar.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                return 8;
            case 2:
                ((Float) obj).floatValue();
                return 4;
            case 3:
                return CodedOutputStream.d(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.d(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.c(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                return 8;
            case 7:
                ((Integer) obj).intValue();
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                return 1;
            case 9:
                return CodedOutputStream.b((String) obj);
            case 10:
                return obj instanceof d ? CodedOutputStream.c((d) obj) : CodedOutputStream.b((byte[]) obj);
            case 11:
                return CodedOutputStream.f(((Integer) obj).intValue());
            case 12:
                ((Integer) obj).intValue();
                return 4;
            case 13:
                ((Long) obj).longValue();
                return 8;
            case 14:
                return CodedOutputStream.f(CodedOutputStream.h(((Integer) obj).intValue()));
            case 15:
                return CodedOutputStream.d(CodedOutputStream.f(((Long) obj).longValue()));
            case 16:
                return ((p) obj).f();
            case 17:
                return obj instanceof k ? CodedOutputStream.a((k) obj) : CodedOutputStream.b((p) obj);
            case 18:
                return obj instanceof j.a ? CodedOutputStream.c(((j.a) obj).getNumber()) : CodedOutputStream.c(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static <T extends a<T>> g<T> b() {
        return f38131d;
    }

    private static boolean b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.c() != x.b.MESSAGE) {
            return true;
        }
        if (key.d()) {
            for (p pVar : (List) entry.getValue()) {
                if (!pVar.e()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof p) {
            return ((p) value).e();
        }
        if (value instanceof k) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public static int c(a<?> aVar, Object obj) {
        x.a b2 = aVar.b();
        int a2 = aVar.a();
        if (!aVar.d()) {
            return a(b2, a2, obj);
        }
        int i = 0;
        int i2 = 0;
        if (aVar.e()) {
            for (Object obj2 : (List) obj) {
                i2 += b(b2, obj2);
            }
            return CodedOutputStream.d(a2) + i2 + CodedOutputStream.f(i2);
        }
        for (Object obj3 : (List) obj) {
            i += a(b2, a2, obj3);
        }
        return i;
    }

    public final Object a(FieldDescriptorType fielddescriptortype, int i) {
        if (fielddescriptortype.d()) {
            Object b2 = b((g<FieldDescriptorType>) fielddescriptortype);
            if (b2 != null) {
                return ((List) b2).get(i);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        p pVar = value;
        if (value instanceof k) {
            pVar = ((k) value).a();
        }
        if (key.d()) {
            Object b2 = b((g<FieldDescriptorType>) key);
            Object obj = b2;
            if (b2 == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) pVar) {
                ((List) obj).add(a(obj2));
            }
            this.f38132a.a((u<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj);
        } else if (key.c() == x.b.MESSAGE) {
            Object b3 = b((g<FieldDescriptorType>) key);
            if (b3 == null) {
                this.f38132a.a((u<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(pVar));
                return;
            }
            this.f38132a.a((u<FieldDescriptorType, Object>) key, (FieldDescriptorType) key.a(((p) b3).h(), (p) pVar).d());
        } else {
            this.f38132a.a((u<FieldDescriptorType, Object>) key, (FieldDescriptorType) a(pVar));
        }
    }

    public final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.d()) {
            a(fielddescriptortype.b(), obj);
        } else if (obj instanceof List) {
            ArrayList<Object> arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            for (Object obj2 : arrayList) {
                a(fielddescriptortype.b(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof k) {
            this.f38133b = true;
        }
        this.f38132a.a((u<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    public final boolean a(FieldDescriptorType fielddescriptortype) {
        if (!fielddescriptortype.d()) {
            return this.f38132a.get(fielddescriptortype) != null;
        }
        throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    }

    public final Object b(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f38132a.get(fielddescriptortype);
        p pVar = obj;
        if (obj instanceof k) {
            pVar = ((k) obj).a();
        }
        return pVar;
    }

    public final void b(FieldDescriptorType fielddescriptortype, Object obj) {
        List list;
        if (fielddescriptortype.d()) {
            a(fielddescriptortype.b(), obj);
            Object b2 = b((g<FieldDescriptorType>) fielddescriptortype);
            if (b2 == null) {
                ArrayList arrayList = new ArrayList();
                this.f38132a.a((u<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) arrayList);
                list = arrayList;
            } else {
                list = (List) b2;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public final int c(FieldDescriptorType fielddescriptortype) {
        if (fielddescriptortype.d()) {
            Object b2 = b((g<FieldDescriptorType>) fielddescriptortype);
            if (b2 == null) {
                return 0;
            }
            return ((List) b2).size();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public final void c() {
        if (!this.f38134c) {
            this.f38132a.a();
            this.f38134c = true;
        }
    }

    /* renamed from: d */
    public final g<FieldDescriptorType> clone() {
        g<FieldDescriptorType> gVar = new g<>();
        for (int i = 0; i < this.f38132a.c(); i++) {
            Map.Entry<FieldDescriptorType, Object> b2 = this.f38132a.b(i);
            gVar.a((g<FieldDescriptorType>) b2.getKey(), b2.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f38132a.d()) {
            gVar.a((g<FieldDescriptorType>) entry.getKey(), entry.getValue());
        }
        gVar.f38133b = this.f38133b;
        return gVar;
    }

    public final boolean e() {
        for (int i = 0; i < this.f38132a.c(); i++) {
            if (!b(this.f38132a.b(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f38132a.d()) {
            if (!b(entry)) {
                return false;
            }
        }
        return true;
    }
}

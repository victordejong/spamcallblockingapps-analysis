package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.protobuf.C19680g.AbstractC19682a;
import kotlin.reflect.jvm.internal.impl.protobuf.C19692j;
import kotlin.reflect.jvm.internal.impl.protobuf.C19728x;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g.class */
public final class C19680g<FieldDescriptorType extends AbstractC19682a<FieldDescriptorType>> {

    /* renamed from: d */
    private static final C19680g f65832d = new C19680g(true);

    /* renamed from: c */
    private boolean f65835c;

    /* renamed from: b */
    boolean f65834b = false;

    /* renamed from: a */
    final C19716u<FieldDescriptorType, Object> f65833a = C19716u.m1623a(16);

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.g$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g$1.class */
    public static final /* synthetic */ class C196811 {

        /* renamed from: a */
        static final /* synthetic */ int[] f65836a;

        /* renamed from: b */
        static final /* synthetic */ int[] f65837b;

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
            int[] iArr = new int[C19728x.EnumC19730a.values().length];
            f65837b = iArr;
            try {
                iArr[C19728x.EnumC19730a.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f65837b[C19728x.EnumC19730a.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f65837b[C19728x.EnumC19730a.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f65837b[C19728x.EnumC19730a.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f65837b[C19728x.EnumC19730a.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f65837b[C19728x.EnumC19730a.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f65837b[C19728x.EnumC19730a.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f65837b[C19728x.EnumC19730a.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f65837b[C19728x.EnumC19730a.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f65837b[C19728x.EnumC19730a.BYTES.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f65837b[C19728x.EnumC19730a.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f65837b[C19728x.EnumC19730a.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f65837b[C19728x.EnumC19730a.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f65837b[C19728x.EnumC19730a.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f65837b[C19728x.EnumC19730a.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f65837b[C19728x.EnumC19730a.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f65837b[C19728x.EnumC19730a.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f65837b[C19728x.EnumC19730a.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            int[] iArr2 = new int[C19728x.EnumC19735b.values().length];
            f65836a = iArr2;
            try {
                iArr2[C19728x.EnumC19735b.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f65836a[C19728x.EnumC19735b.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f65836a[C19728x.EnumC19735b.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f65836a[C19728x.EnumC19735b.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f65836a[C19728x.EnumC19735b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f65836a[C19728x.EnumC19735b.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f65836a[C19728x.EnumC19735b.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f65836a[C19728x.EnumC19735b.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f65836a[C19728x.EnumC19735b.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e27) {
            }
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/g$a.class */
    public interface AbstractC19682a<T extends AbstractC19682a<T>> extends Comparable<T> {
        /* renamed from: a */
        int mo1683a();

        /* renamed from: a */
        AbstractC19705p.AbstractC19706a mo1682a(AbstractC19705p.AbstractC19706a abstractC19706a, AbstractC19705p abstractC19705p);

        /* renamed from: b */
        C19728x.EnumC19730a mo1681b();

        /* renamed from: c */
        C19728x.EnumC19735b mo1680c();

        /* renamed from: d */
        boolean mo1679d();

        /* renamed from: e */
        boolean mo1678e();
    }

    private C19680g() {
    }

    private C19680g(boolean z) {
        m1713c();
    }

    /* renamed from: a */
    private static int m1721a(C19728x.EnumC19730a enumC19730a, int i, Object obj) {
        int m1799d = CodedOutputStream.m1799d(i);
        int i2 = m1799d;
        if (enumC19730a == C19728x.EnumC19730a.GROUP) {
            i2 = m1799d * 2;
        }
        return i2 + m1714b(enumC19730a, obj);
    }

    /* renamed from: a */
    public static int m1719a(C19728x.EnumC19730a enumC19730a, boolean z) {
        if (z) {
            return 2;
        }
        return enumC19730a.getWireType();
    }

    /* renamed from: a */
    private static Object m1730a(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* renamed from: a */
    public static Object m1726a(C19676e c19676e, C19728x.EnumC19730a enumC19730a) throws IOException {
        switch (C196811.f65837b[enumC19730a.ordinal()]) {
            case 1:
                return Double.valueOf(Double.longBitsToDouble(c19676e.m1742g()));
            case 2:
                return Float.valueOf(Float.intBitsToFloat(c19676e.m1744f()));
            case 3:
                return Long.valueOf(c19676e.m1746e());
            case 4:
                return Long.valueOf(c19676e.m1746e());
            case 5:
                return Integer.valueOf(c19676e.m1748d());
            case 6:
                return Long.valueOf(c19676e.m1742g());
            case 7:
                return Integer.valueOf(c19676e.m1744f());
            case 8:
                return Boolean.valueOf(c19676e.m1752b());
            case 9:
                int m1748d = c19676e.m1748d();
                if (m1748d > c19676e.f65814b - c19676e.f65815c || m1748d <= 0) {
                    return m1748d == 0 ? "" : new String(c19676e.m1747d(m1748d), "UTF-8");
                }
                String str = new String(c19676e.f65813a, c19676e.f65815c, m1748d, "UTF-8");
                c19676e.f65815c += m1748d;
                return str;
            case 10:
                return c19676e.m1750c();
            case 11:
                return Integer.valueOf(c19676e.m1748d());
            case 12:
                return Integer.valueOf(c19676e.m1744f());
            case 13:
                return Long.valueOf(c19676e.m1742g());
            case 14:
                int m1748d2 = c19676e.m1748d();
                return Integer.valueOf((-(m1748d2 & 1)) ^ (m1748d2 >>> 1));
            case 15:
                return Long.valueOf(C19676e.m1756a(c19676e.m1746e()));
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

    /* renamed from: a */
    public static <T extends AbstractC19682a<T>> C19680g<T> m1731a() {
        return new C19680g<>();
    }

    /* renamed from: a */
    private static void m1728a(CodedOutputStream codedOutputStream, C19728x.EnumC19730a enumC19730a, int i, Object obj) throws IOException {
        if (enumC19730a != C19728x.EnumC19730a.GROUP) {
            codedOutputStream.m1794e(i, m1719a(enumC19730a, false));
            m1727a(codedOutputStream, enumC19730a, obj);
            return;
        }
        codedOutputStream.m1794e(i, 3);
        ((AbstractC19705p) obj).mo1662a(codedOutputStream);
        codedOutputStream.m1794e(i, 4);
    }

    /* renamed from: a */
    private static void m1727a(CodedOutputStream codedOutputStream, C19728x.EnumC19730a enumC19730a, Object obj) throws IOException {
        switch (C196811.f65837b[enumC19730a.ordinal()]) {
            case 1:
                codedOutputStream.m1830a(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.m1829a(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.m1801c(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.m1801c(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.m1828a(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.m1793e(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.m1790g(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.m1806b(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.m1822a((String) obj);
                return;
            case 10:
                if (obj instanceof AbstractC19673d) {
                    codedOutputStream.m1821a((AbstractC19673d) obj);
                    return;
                } else {
                    codedOutputStream.m1816a((byte[]) obj);
                    return;
                }
            case 11:
                codedOutputStream.m1795e(((Integer) obj).intValue());
                return;
            case 12:
                codedOutputStream.m1790g(((Integer) obj).intValue());
                return;
            case 13:
                codedOutputStream.m1793e(((Long) obj).longValue());
                return;
            case 14:
                codedOutputStream.m1813b(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.m1824a(((Long) obj).longValue());
                return;
            case 16:
                ((AbstractC19705p) obj).mo1662a(codedOutputStream);
                return;
            case 17:
                codedOutputStream.m1818a((AbstractC19705p) obj);
                return;
            case 18:
                if (obj instanceof C19692j.AbstractC19693a) {
                    codedOutputStream.m1828a(((C19692j.AbstractC19693a) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.m1828a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: a */
    public static void m1722a(AbstractC19682a<?> abstractC19682a, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        C19728x.EnumC19730a mo1681b = abstractC19682a.mo1681b();
        int mo1683a = abstractC19682a.mo1683a();
        if (!abstractC19682a.mo1679d()) {
            if (obj instanceof C19695k) {
                m1728a(codedOutputStream, mo1681b, mo1683a, ((C19695k) obj).m1671a());
                return;
            } else {
                m1728a(codedOutputStream, mo1681b, mo1683a, obj);
                return;
            }
        }
        List<Object> list = (List) obj;
        if (!abstractC19682a.mo1678e()) {
            for (Object obj2 : list) {
                m1728a(codedOutputStream, mo1681b, mo1683a, obj2);
            }
            return;
        }
        codedOutputStream.m1794e(mo1683a, 2);
        int i = 0;
        for (Object obj3 : list) {
            i += m1714b(mo1681b, obj3);
        }
        codedOutputStream.m1795e(i);
        for (Object obj4 : list) {
            m1727a(codedOutputStream, mo1681b, obj4);
        }
    }

    /* renamed from: a */
    private static void m1720a(C19728x.EnumC19730a enumC19730a, Object obj) {
        Objects.requireNonNull(obj);
        boolean z = false;
        switch (C196811.f65836a[enumC19730a.getJavaType().ordinal()]) {
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
                if (!(obj instanceof AbstractC19673d)) {
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
                    if (obj instanceof C19692j.AbstractC19693a) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 9:
                z = true;
                if (!(obj instanceof AbstractC19705p)) {
                    if (obj instanceof C19695k) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: b */
    private static int m1714b(C19728x.EnumC19730a enumC19730a, Object obj) {
        switch (C196811.f65837b[enumC19730a.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                return 8;
            case 2:
                ((Float) obj).floatValue();
                return 4;
            case 3:
                return CodedOutputStream.m1797d(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.m1797d(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.m1804c(((Integer) obj).intValue());
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
                return CodedOutputStream.m1809b((String) obj);
            case 10:
                return obj instanceof AbstractC19673d ? CodedOutputStream.m1800c((AbstractC19673d) obj) : CodedOutputStream.m1805b((byte[]) obj);
            case 11:
                return CodedOutputStream.m1792f(((Integer) obj).intValue());
            case 12:
                ((Integer) obj).intValue();
                return 4;
            case 13:
                ((Long) obj).longValue();
                return 8;
            case 14:
                return CodedOutputStream.m1792f(CodedOutputStream.m1789h(((Integer) obj).intValue()));
            case 15:
                return CodedOutputStream.m1797d(CodedOutputStream.m1791f(((Long) obj).longValue()));
            case 16:
                return ((AbstractC19705p) obj).mo1660f();
            case 17:
                return obj instanceof C19695k ? CodedOutputStream.m1819a((C19695k) obj) : CodedOutputStream.m1807b((AbstractC19705p) obj);
            case 18:
                return obj instanceof C19692j.AbstractC19693a ? CodedOutputStream.m1804c(((C19692j.AbstractC19693a) obj).getNumber()) : CodedOutputStream.m1804c(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static <T extends AbstractC19682a<T>> C19680g<T> m1718b() {
        return f65832d;
    }

    /* renamed from: b */
    private static boolean m1717b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.mo1680c() == C19728x.EnumC19735b.MESSAGE) {
            if (key.mo1679d()) {
                for (AbstractC19705p abstractC19705p : (List) entry.getValue()) {
                    if (!abstractC19705p.mo1655e()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof AbstractC19705p) {
                return ((AbstractC19705p) value).mo1655e();
            } else if (value instanceof C19695k) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    /* renamed from: c */
    public static int m1711c(AbstractC19682a<?> abstractC19682a, Object obj) {
        C19728x.EnumC19730a mo1681b = abstractC19682a.mo1681b();
        int mo1683a = abstractC19682a.mo1683a();
        if (abstractC19682a.mo1679d()) {
            int i = 0;
            if (abstractC19682a.mo1678e()) {
                for (Object obj2 : (List) obj) {
                    i += m1714b(mo1681b, obj2);
                }
                return CodedOutputStream.m1799d(mo1683a) + i + CodedOutputStream.m1792f(i);
            }
            Iterator it2 = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it2.hasNext()) {
                    return i3;
                }
                i2 = i3 + m1721a(mo1681b, mo1683a, it2.next());
            }
        } else {
            return m1721a(mo1681b, mo1683a, obj);
        }
    }

    /* renamed from: a */
    public final Object m1724a(FieldDescriptorType fielddescriptortype, int i) {
        if (fielddescriptortype.mo1679d()) {
            Object m1716b = m1716b((C19680g<FieldDescriptorType>) fielddescriptortype);
            if (m1716b == null) {
                throw new IndexOutOfBoundsException();
            }
            return ((List) m1716b).get(i);
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: a */
    public final void m1729a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        AbstractC19705p abstractC19705p = value;
        if (value instanceof C19695k) {
            abstractC19705p = ((C19695k) value).m1671a();
        }
        if (key.mo1679d()) {
            Object m1716b = m1716b((C19680g<FieldDescriptorType>) key);
            ArrayList arrayList = m1716b;
            if (m1716b == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) abstractC19705p) {
                ((List) arrayList).add(m1730a(obj));
            }
            this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) key, (FieldDescriptorType) arrayList);
        } else if (key.mo1680c() != C19728x.EnumC19735b.MESSAGE) {
            this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) key, (FieldDescriptorType) m1730a(abstractC19705p));
        } else {
            Object m1716b2 = m1716b((C19680g<FieldDescriptorType>) key);
            if (m1716b2 == null) {
                this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) key, (FieldDescriptorType) m1730a(abstractC19705p));
                return;
            }
            this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) key, (FieldDescriptorType) key.mo1682a(((AbstractC19705p) m1716b2).mo1659h(), (AbstractC19705p) abstractC19705p).mo1656d());
        }
    }

    /* renamed from: a */
    public final void m1723a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.mo1679d()) {
            m1720a(fielddescriptortype.mo1681b(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList<Object> arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            for (Object obj2 : arrayList) {
                m1720a(fielddescriptortype.mo1681b(), obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof C19695k) {
            this.f65834b = true;
        }
        this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* renamed from: a */
    public final boolean m1725a(FieldDescriptorType fielddescriptortype) {
        if (!fielddescriptortype.mo1679d()) {
            return this.f65833a.get(fielddescriptortype) != null;
        }
        throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    }

    /* renamed from: b */
    public final Object m1716b(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f65833a.get(fielddescriptortype);
        AbstractC19705p abstractC19705p = obj;
        if (obj instanceof C19695k) {
            abstractC19705p = ((C19695k) obj).m1671a();
        }
        return abstractC19705p;
    }

    /* renamed from: b */
    public final void m1715b(FieldDescriptorType fielddescriptortype, Object obj) {
        ArrayList arrayList;
        if (fielddescriptortype.mo1679d()) {
            m1720a(fielddescriptortype.mo1681b(), obj);
            Object m1716b = m1716b((C19680g<FieldDescriptorType>) fielddescriptortype);
            if (m1716b == null) {
                ArrayList arrayList2 = new ArrayList();
                this.f65833a.m1621a((C19716u<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) arrayList2);
                arrayList = arrayList2;
            } else {
                arrayList = (List) m1716b;
            }
            arrayList.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: c */
    public final int m1712c(FieldDescriptorType fielddescriptortype) {
        if (fielddescriptortype.mo1679d()) {
            Object m1716b = m1716b((C19680g<FieldDescriptorType>) fielddescriptortype);
            if (m1716b != null) {
                return ((List) m1716b).size();
            }
            return 0;
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    /* renamed from: c */
    public final void m1713c() {
        if (this.f65835c) {
            return;
        }
        this.f65833a.mo1608a();
        this.f65835c = true;
    }

    /* renamed from: d */
    public final C19680g<FieldDescriptorType> clone() {
        C19680g<FieldDescriptorType> c19680g = new C19680g<>();
        for (int i = 0; i < this.f65833a.m1615c(); i++) {
            Map.Entry<FieldDescriptorType, Object> m1617b = this.f65833a.m1617b(i);
            c19680g.m1723a((C19680g<FieldDescriptorType>) m1617b.getKey(), m1617b.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f65833a.m1612d()) {
            c19680g.m1723a((C19680g<FieldDescriptorType>) entry.getKey(), entry.getValue());
        }
        c19680g.f65834b = this.f65834b;
        return c19680g;
    }

    /* renamed from: e */
    public final boolean m1709e() {
        for (int i = 0; i < this.f65833a.m1615c(); i++) {
            if (!m1717b(this.f65833a.m1617b(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f65833a.m1612d()) {
            if (!m1717b(entry)) {
                return false;
            }
        }
        return true;
    }
}

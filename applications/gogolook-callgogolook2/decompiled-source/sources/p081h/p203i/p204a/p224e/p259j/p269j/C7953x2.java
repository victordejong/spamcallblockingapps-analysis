package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.j.x2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/x2.class */
public final class C7953x2<T> implements AbstractC7849k3<T> {

    /* renamed from: r */
    public static final int[] f18642r = new int[0];

    /* renamed from: s */
    public static final Unsafe f18643s = C7838j4.m19309d();

    /* renamed from: a */
    public final int[] f18644a;

    /* renamed from: b */
    public final Object[] f18645b;

    /* renamed from: c */
    public final int f18646c;

    /* renamed from: d */
    public final int f18647d;

    /* renamed from: e */
    public final AbstractC7925t2 f18648e;

    /* renamed from: f */
    public final boolean f18649f;

    /* renamed from: g */
    public final boolean f18650g;

    /* renamed from: h */
    public final boolean f18651h;

    /* renamed from: i */
    public final boolean f18652i;

    /* renamed from: j */
    public final int[] f18653j;

    /* renamed from: k */
    public final int f18654k;

    /* renamed from: l */
    public final int f18655l;

    /* renamed from: m */
    public final AbstractC7770b3 f18656m;

    /* renamed from: n */
    public final AbstractC7793e2 f18657n;

    /* renamed from: o */
    public final AbstractC7787d4<?, ?> f18658o;

    /* renamed from: p */
    public final AbstractC7768b1<?> f18659p;

    /* renamed from: q */
    public final AbstractC7885o2 f18660q;

    public C7953x2(int[] iArr, Object[] objArr, int i, int i2, AbstractC7925t2 t2Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC7770b3 b3Var, AbstractC7793e2 e2Var, AbstractC7787d4<?, ?> d4Var, AbstractC7768b1<?> b1Var, AbstractC7885o2 o2Var) {
        this.f18644a = iArr;
        this.f18645b = objArr;
        this.f18646c = i;
        this.f18647d = i2;
        this.f18650g = t2Var instanceof AbstractC7869n1;
        this.f18651h = z;
        this.f18649f = b1Var != null && b1Var.mo19501a(t2Var);
        this.f18652i = false;
        this.f18653j = iArr2;
        this.f18654k = i3;
        this.f18655l = i4;
        this.f18656m = b3Var;
        this.f18657n = e2Var;
        this.f18658o = d4Var;
        this.f18659p = b1Var;
        this.f18648e = t2Var;
        this.f18660q = o2Var;
    }

    /* renamed from: a */
    public static <UT, UB> int m18836a(AbstractC7787d4<UT, UB> d4Var, T t) {
        return d4Var.mo19411c(d4Var.mo19409d(t));
    }

    /* renamed from: a */
    public static <T> C7953x2<T> m18833a(Class<T> cls, AbstractC7906r2 r2Var, AbstractC7770b3 b3Var, AbstractC7793e2 e2Var, AbstractC7787d4<?, ?> d4Var, AbstractC7768b1<?> b1Var, AbstractC7885o2 o2Var) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Field field;
        char charAt;
        Field field2;
        Field field3;
        char charAt2;
        int i16;
        char charAt3;
        char charAt4;
        int i17;
        int i18;
        int i19;
        char charAt5;
        char charAt6;
        char charAt7;
        char charAt8;
        char charAt9;
        char charAt10;
        char charAt11;
        char charAt12;
        char charAt13;
        char charAt14;
        if (r2Var instanceof C7828i3) {
            C7828i3 i3Var = (C7828i3) r2Var;
            int i20 = 0;
            boolean z = i3Var.mo18808a() == AbstractC7869n1.C7874e.f18437j;
            String d = i3Var.m19344d();
            int length = d.length();
            int charAt15 = d.charAt(0);
            if (charAt15 >= 55296) {
                int i21 = charAt15 & 8191;
                int i22 = 1;
                int i23 = 13;
                while (true) {
                    i = i22 + 1;
                    charAt14 = d.charAt(i22);
                    if (charAt14 < 55296) {
                        break;
                    }
                    i21 |= (charAt14 & 8191) << i23;
                    i23 += 13;
                    i22 = i;
                }
                charAt15 = (charAt14 << i23) | i21;
            } else {
                i = 1;
            }
            int i24 = i + 1;
            int charAt16 = d.charAt(i);
            if (charAt16 >= 55296) {
                int i25 = charAt16 & 8191;
                int i26 = 13;
                while (true) {
                    i2 = i24 + 1;
                    charAt13 = d.charAt(i24);
                    if (charAt13 < 55296) {
                        break;
                    }
                    i25 |= (charAt13 & 8191) << i26;
                    i26 += 13;
                    i24 = i2;
                }
                charAt16 = i25 | (charAt13 << i26);
            } else {
                i2 = i24;
            }
            if (charAt16 == 0) {
                iArr = f18642r;
                i7 = 0;
                i6 = 0;
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i3 = 0;
            } else {
                int i27 = i2 + 1;
                int charAt17 = d.charAt(i2);
                if (charAt17 >= 55296) {
                    int i28 = charAt17 & 8191;
                    int i29 = 13;
                    while (true) {
                        i27++;
                        charAt12 = d.charAt(i27);
                        if (charAt12 < 55296) {
                            break;
                        }
                        i28 |= (charAt12 & 8191) << i29;
                        i29 += 13;
                    }
                    charAt17 = (charAt12 << i29) | i28;
                    i17 = i27;
                } else {
                    i17 = i27;
                }
                int i30 = i17 + 1;
                int charAt18 = d.charAt(i17);
                if (charAt18 >= 55296) {
                    int i31 = charAt18 & 8191;
                    int i32 = 13;
                    while (true) {
                        i30++;
                        charAt11 = d.charAt(i30);
                        if (charAt11 < 55296) {
                            break;
                        }
                        i31 |= (charAt11 & 8191) << i32;
                        i32 += 13;
                    }
                    charAt18 = i31 | (charAt11 << i32);
                }
                int i33 = i30 + 1;
                i6 = d.charAt(i30);
                if (i6 >= 55296) {
                    int i34 = i6 & 8191;
                    int i35 = 13;
                    while (true) {
                        i33++;
                        charAt10 = d.charAt(i33);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i34 |= (charAt10 & 8191) << i35;
                        i35 += 13;
                    }
                    i6 = (charAt10 << i35) | i34;
                }
                int i36 = i33 + 1;
                i4 = d.charAt(i33);
                if (i4 >= 55296) {
                    int i37 = i4 & 8191;
                    int i38 = 13;
                    while (true) {
                        i36++;
                        charAt9 = d.charAt(i36);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i37 |= (charAt9 & 8191) << i38;
                        i38 += 13;
                    }
                    i4 = (charAt9 << i38) | i37;
                }
                int i39 = i36 + 1;
                char charAt19 = d.charAt(i36);
                int i40 = i39;
                i5 = charAt19;
                if (charAt19 >= 55296) {
                    int i41 = charAt19 & 8191;
                    int i42 = 13;
                    while (true) {
                        i39++;
                        charAt8 = d.charAt(i39);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i41 |= (charAt8 & 8191) << i42;
                        i42 += 13;
                    }
                    i5 = (charAt8 << i42) | i41;
                    i40 = i39;
                }
                int i43 = i40 + 1;
                char charAt20 = d.charAt(i40);
                i7 = charAt20;
                int i44 = i43;
                if (charAt20 >= 55296) {
                    int i45 = charAt20 & 8191;
                    int i46 = 13;
                    while (true) {
                        i43++;
                        charAt7 = d.charAt(i43);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i45 |= (charAt7 & 8191) << i46;
                        i46 += 13;
                    }
                    i7 = i45 | (charAt7 << i46);
                    i44 = i43;
                }
                int i47 = i44 + 1;
                int charAt21 = d.charAt(i44);
                if (charAt21 >= 55296) {
                    int i48 = 13;
                    int i49 = charAt21 & 8191;
                    while (true) {
                        i18 = i47 + 1;
                        charAt6 = d.charAt(i47);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i49 |= (charAt6 & 8191) << i48;
                        i48 += 13;
                        i47 = i18;
                    }
                    charAt21 = i49 | (charAt6 << i48);
                } else {
                    i18 = i47;
                }
                int i50 = i18 + 1;
                char charAt22 = d.charAt(i18);
                int i51 = charAt22;
                i2 = i50;
                if (charAt22 >= 55296) {
                    int i52 = 13;
                    int i53 = charAt22 & 8191;
                    int i54 = i50;
                    while (true) {
                        i19 = i54 + 1;
                        charAt5 = d.charAt(i54);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i53 |= (charAt5 & 8191) << i52;
                        i52 += 13;
                        i54 = i19;
                    }
                    i51 = i53 | (charAt5 << i52);
                    i2 = i19;
                }
                iArr = new int[i51 + i7 + charAt21];
                i8 = (charAt17 << 1) + charAt18;
                i3 = charAt17;
                i20 = i51;
            }
            Unsafe unsafe = f18643s;
            Object[] e = i3Var.m19343e();
            Class<?> cls2 = i3Var.mo18806c().getClass();
            int[] iArr2 = new int[i5 * 3];
            Object[] objArr = new Object[i5 << 1];
            int i55 = i20 + i7;
            int i56 = i55;
            int i57 = 0;
            int i58 = 0;
            int i59 = i20;
            while (i2 < length) {
                int i60 = i2 + 1;
                int charAt23 = d.charAt(i2);
                if (charAt23 >= 55296) {
                    int i61 = 13;
                    int i62 = charAt23 & 8191;
                    int i63 = i60;
                    while (true) {
                        i9 = i63 + 1;
                        charAt4 = d.charAt(i63);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i62 |= (charAt4 & 8191) << i61;
                        i61 += 13;
                        i63 = i9;
                    }
                    charAt23 = i62 | (charAt4 << i61);
                } else {
                    i9 = i60;
                }
                int i64 = i9 + 1;
                int charAt24 = d.charAt(i9);
                if (charAt24 >= 55296) {
                    int i65 = 13;
                    int i66 = charAt24 & 8191;
                    int i67 = i64;
                    while (true) {
                        i16 = i67 + 1;
                        charAt3 = d.charAt(i67);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i66 |= (charAt3 & 8191) << i65;
                        i65 += 13;
                        i67 = i16;
                    }
                    charAt24 = i66 | (charAt3 << i65);
                    i10 = i16;
                } else {
                    i10 = i64;
                }
                int i68 = charAt24 & 255;
                i57 = i57;
                if ((charAt24 & 1024) != 0) {
                    iArr[i57] = i58;
                    i57++;
                }
                if (i68 > EnumC7818h1.MAP.m19364a()) {
                    int i69 = i10 + 1;
                    char charAt25 = d.charAt(i10);
                    int i70 = charAt25;
                    i2 = i69;
                    if (charAt25 >= 55296) {
                        int i71 = charAt25 & 8191;
                        int i72 = 13;
                        int i73 = i69;
                        while (true) {
                            i2 = i73 + 1;
                            charAt2 = d.charAt(i73);
                            if (charAt2 < 55296) {
                                break;
                            }
                            i71 |= (charAt2 & 8191) << i72;
                            i72 += 13;
                            i73 = i2;
                        }
                        i70 = i71 | (charAt2 << i72);
                    }
                    if (i68 == EnumC7818h1.MESSAGE.m19364a() + 51 || i68 == EnumC7818h1.GROUP.m19364a() + 51) {
                        objArr[((i58 / 3) << 1) + 1] = e[i8];
                        i8++;
                    } else if (i68 == EnumC7818h1.ENUM.m19364a() + 51) {
                        i8 = i8;
                        if ((charAt15 & 1) == 1) {
                            objArr[((i58 / 3) << 1) + 1] = e[i8];
                            i8++;
                        }
                    } else {
                        i8 = i8;
                    }
                    int i74 = i70 << 1;
                    Object obj = e[i74];
                    if (obj instanceof Field) {
                        field2 = (Field) obj;
                    } else {
                        field2 = m18832a(cls2, (String) obj);
                        e[i74] = field2;
                    }
                    i11 = (int) unsafe.objectFieldOffset(field2);
                    int i75 = i74 + 1;
                    Object obj2 = e[i75];
                    if (obj2 instanceof Field) {
                        field3 = (Field) obj2;
                    } else {
                        field3 = m18832a(cls2, (String) obj2);
                        e[i75] = field3;
                    }
                    i12 = (int) unsafe.objectFieldOffset(field3);
                    i13 = 0;
                    i59 = i59;
                } else {
                    int i76 = i8 + 1;
                    Field a = m18832a(cls2, (String) e[i8]);
                    if (i68 == EnumC7818h1.MESSAGE.m19364a() || i68 == EnumC7818h1.GROUP.m19364a()) {
                        objArr[((i58 / 3) << 1) + 1] = a.getType();
                        i14 = i59;
                        i15 = i76;
                    } else {
                        if (i68 == EnumC7818h1.MESSAGE_LIST.m19364a() || i68 == EnumC7818h1.GROUP_LIST.m19364a()) {
                            i15 = i76 + 1;
                            objArr[((i58 / 3) << 1) + 1] = e[i76];
                        } else if (i68 == EnumC7818h1.ENUM.m19364a() || i68 == EnumC7818h1.ENUM_LIST.m19364a() || i68 == EnumC7818h1.ENUM_LIST_PACKED.m19364a()) {
                            i15 = i76;
                            i14 = i59;
                            if ((charAt15 & 1) == 1) {
                                i15 = i76 + 1;
                                objArr[((i58 / 3) << 1) + 1] = e[i76];
                            }
                        } else if (i68 == EnumC7818h1.MAP.m19364a()) {
                            iArr[i59] = i58;
                            int i77 = (i58 / 3) << 1;
                            i15 = i76 + 1;
                            objArr[i77] = e[i76];
                            if ((charAt24 & 2048) != 0) {
                                i15++;
                                objArr[i77 + 1] = e[i15];
                            }
                            i14 = i59 + 1;
                        } else {
                            i15 = i76;
                            i14 = i59;
                        }
                        i14 = i59;
                    }
                    i11 = (int) unsafe.objectFieldOffset(a);
                    if ((charAt15 & 1) != 1 || i68 > EnumC7818h1.GROUP.m19364a()) {
                        i8 = i15;
                        i2 = i10;
                        i13 = 0;
                        i12 = 0;
                        i59 = i14;
                    } else {
                        int i78 = i10 + 1;
                        char charAt26 = d.charAt(i10);
                        int i79 = charAt26;
                        i2 = i78;
                        if (charAt26 >= 55296) {
                            int i80 = charAt26 & 8191;
                            int i81 = 13;
                            int i82 = i78;
                            while (true) {
                                i2 = i82 + 1;
                                charAt = d.charAt(i82);
                                if (charAt < 55296) {
                                    break;
                                }
                                i80 |= (charAt & 8191) << i81;
                                i81 += 13;
                                i82 = i2;
                            }
                            i79 = i80 | (charAt << i81);
                        }
                        int i83 = (i3 << 1) + (i79 / 32);
                        Object obj3 = e[i83];
                        if (obj3 instanceof Field) {
                            field = (Field) obj3;
                        } else {
                            field = m18832a(cls2, (String) obj3);
                            e[i83] = field;
                        }
                        i12 = (int) unsafe.objectFieldOffset(field);
                        i13 = i79 % 32;
                        i59 = i14;
                        i8 = i15;
                    }
                }
                i56 = i56;
                if (i68 >= 18) {
                    i56 = i56;
                    if (i68 <= 49) {
                        iArr[i56] = i11;
                        i56++;
                    }
                }
                int i84 = i58 + 1;
                iArr2[i58] = charAt23;
                int i85 = i84 + 1;
                iArr2[i84] = (i68 << 20) | ((charAt24 & 256) != 0 ? 268435456 : 0) | ((charAt24 & 512) != 0 ? 536870912 : 0) | i11;
                i58 = i85 + 1;
                iArr2[i85] = (i13 << 20) | i12;
            }
            return new C7953x2<>(iArr2, objArr, i6, i4, i3Var.mo18806c(), z, false, iArr, i20, i55, b3Var, e2Var, d4Var, b1Var, o2Var);
        }
        ((C7954x3) r2Var).mo18808a();
        throw null;
    }

    /* renamed from: a */
    public static Field m18832a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: a */
    public static <E> List<E> m18825a(Object obj, long j) {
        return (List) C7838j4.m19301f(obj, j);
    }

    /* renamed from: a */
    public static void m18837a(int i, Object obj, AbstractC7962y4 y4Var) throws IOException {
        if (obj instanceof String) {
            y4Var.mo18780a(i, (String) obj);
        } else {
            y4Var.mo18783a(i, (AbstractC7791e0) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m18835a(AbstractC7787d4<UT, UB> d4Var, T t, AbstractC7962y4 y4Var) throws IOException {
        d4Var.mo19417a((AbstractC7787d4<UT, UB>) d4Var.mo19409d(t), y4Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m18827a(Object obj, int i, AbstractC7849k3 k3Var) {
        return k3Var.mo18791d(C7838j4.m19301f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m18820b(T t, long j) {
        return ((Double) C7838j4.m19301f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m18816c(T t, long j) {
        return ((Float) C7838j4.m19301f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m18813d(T t, long j) {
        return ((Integer) C7838j4.m19301f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m18811e(T t, long j) {
        return ((Long) C7838j4.m19301f(t, j)).longValue();
    }

    /* renamed from: f */
    public static boolean m18810f(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: f */
    public static <T> boolean m18809f(T t, long j) {
        return ((Boolean) C7838j4.m19301f(t, j)).booleanValue();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final int mo18798a(T t) {
        int i;
        int i2;
        int length = this.f18644a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d = m18814d(i4);
            int i5 = this.f18644a[i4];
            long j = 1048575 & d;
            int i6 = 37;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(Double.doubleToLongBits(C7838j4.m19304e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(C7838j4.m19308d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(C7838j4.m19317b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(C7838j4.m19317b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(C7838j4.m19317b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = C7891p1.m19102a(C7838j4.m19312c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) C7838j4.m19301f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = C7838j4.m19301f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = C7838j4.m19301f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(C7838j4.m19317b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = C7838j4.m19331a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = C7891p1.m19107a(C7838j4.m19317b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = C7838j4.m19301f(t, j);
                    if (f2 != null) {
                        i6 = f2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i3 * 53;
                    i2 = C7838j4.m19301f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = C7838j4.m19301f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(Double.doubleToLongBits(m18820b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m18816c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(m18811e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(m18811e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(m18811e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19102a(m18809f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) C7838j4.m19301f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7838j4.m19301f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7838j4.m19301f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(m18811e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m18813d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7891p1.m19107a(m18811e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m18830a((C7953x2<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C7838j4.m19301f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                default:
                    i3 = i3;
                    break;
            }
        }
        int hashCode = (i3 * 53) + this.f18658o.mo19409d(t).hashCode();
        int i7 = hashCode;
        if (this.f18649f) {
            i7 = (hashCode * 53) + this.f18659p.mo19498a(t).hashCode();
        }
        return i7;
    }

    /* renamed from: a */
    public final AbstractC7849k3 m18839a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC7849k3 k3Var = (AbstractC7849k3) this.f18645b[i2];
        if (k3Var != null) {
            return k3Var;
        }
        AbstractC7849k3<T> a = C7811g3.m19382a().m19381a((Class) ((Class) this.f18645b[i2 + 1]));
        this.f18645b[i2] = a;
        return a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    public final T mo18800a() {
        return (T) this.f18656m.mo19492a(this.f18648e);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m18838a(int i, int i2, Map<K, V> map, AbstractC7905r1 r1Var, UB ub, AbstractC7787d4<UT, UB> d4Var) {
        this.f18660q.mo19097a(m18823b(i));
        throw null;
    }

    /* renamed from: a */
    public final <UT, UB> UB m18826a(Object obj, int i, UB ub, AbstractC7787d4<UT, UB> d4Var) {
        AbstractC7905r1 c;
        int i2 = this.f18644a[i];
        Object f = C7838j4.m19301f(obj, m18814d(i) & 1048575);
        if (!(f == null || (c = m18817c(i)) == null)) {
            m18838a(i, i2, this.f18660q.mo19091f(f), c, ub, d4Var);
            throw null;
        }
        return ub;
    }

    /* renamed from: a */
    public final <K, V> void m18834a(AbstractC7962y4 y4Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.f18660q.mo19097a(m18823b(i2));
            throw null;
        }
    }

    /* renamed from: a */
    public final void m18828a(Object obj, int i, AbstractC7837j3 j3Var) throws IOException {
        if (m18810f(i)) {
            C7838j4.m19325a(obj, i & 1048575, j3Var.mo19020f());
        } else if (this.f18650g) {
            C7838j4.m19325a(obj, i & 1048575, j3Var.mo19030c());
        } else {
            C7838j4.m19325a(obj, i & 1048575, j3Var.mo19018g());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:411:0x1117 A[LOOP:6: B:409:0x110e->B:411:0x1117, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x1133  */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo18797a(T r9, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3 r10, p081h.p203i.p204a.p224e.p259j.p269j.C7965z0 r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7953x2.mo18797a(java.lang.Object, h.i.a.e.j.j.j3, h.i.a.e.j.j.z0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09e2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09e3  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x13c6  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x13d0  */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo18796a(T r8, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7953x2.mo18796a(java.lang.Object, h.i.a.e.j.j.y4):void");
    }

    /* renamed from: a */
    public final void m18824a(T t, T t2, int i) {
        long d = m18814d(i) & 1048575;
        if (m18831a((C7953x2<T>) t2, i)) {
            Object f = C7838j4.m19301f(t, d);
            Object f2 = C7838j4.m19301f(t2, d);
            if (f != null && f2 != null) {
                C7838j4.m19325a(t, d, C7891p1.m19104a(f, f2));
                m18822b((C7953x2<T>) t, i);
            } else if (f2 != null) {
                C7838j4.m19325a(t, d, f2);
                m18822b((C7953x2<T>) t, i);
            }
        }
    }

    /* renamed from: a */
    public final boolean m18831a(T t, int i) {
        if (this.f18651h) {
            int d = m18814d(i);
            long j = d & 1048575;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    return C7838j4.m19304e(t, j) != 0.0d;
                case 1:
                    return C7838j4.m19308d(t, j) != 0.0f;
                case 2:
                    return C7838j4.m19317b(t, j) != 0;
                case 3:
                    return C7838j4.m19317b(t, j) != 0;
                case 4:
                    return C7838j4.m19331a(t, j) != 0;
                case 5:
                    return C7838j4.m19317b(t, j) != 0;
                case 6:
                    return C7838j4.m19331a(t, j) != 0;
                case 7:
                    return C7838j4.m19312c(t, j);
                case 8:
                    Object f = C7838j4.m19301f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof AbstractC7791e0) {
                        return !AbstractC7791e0.f18220b.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return C7838j4.m19301f(t, j) != null;
                case 10:
                    return !AbstractC7791e0.f18220b.equals(C7838j4.m19301f(t, j));
                case 11:
                    return C7838j4.m19331a(t, j) != 0;
                case 12:
                    return C7838j4.m19331a(t, j) != 0;
                case 13:
                    return C7838j4.m19331a(t, j) != 0;
                case 14:
                    return C7838j4.m19317b(t, j) != 0;
                case 15:
                    return C7838j4.m19331a(t, j) != 0;
                case 16:
                    return C7838j4.m19317b(t, j) != 0;
                case 17:
                    return C7838j4.m19301f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int e = m18812e(i);
            return (C7838j4.m19331a(t, (long) (e & 1048575)) & (1 << (e >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    public final boolean m18830a(T t, int i, int i2) {
        return C7838j4.m19331a(t, (long) (m18812e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m18829a(T t, int i, int i2, int i3) {
        return this.f18651h ? m18831a((C7953x2<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7864m3.m19229a(p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r7, r0), p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7864m3.m19229a(p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r7, r0), p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01e4, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0201, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021f, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x023c, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0259, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0276, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0296, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7864m3.m19229a(p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r7, r0), p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7864m3.m19229a(p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r7, r0), p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7864m3.m19229a(p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r7, r0), p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19301f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02f3, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19312c(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19312c(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0310, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x032e, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x034b, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0369, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0387, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a4, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19331a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c2, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.m19317b(r8, r0)) goto L_0x03c8;
     */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo18795a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7953x2.mo18795a(java.lang.Object, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public final Object m18823b(int i) {
        return this.f18645b[(i / 3) << 1];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: b */
    public final void mo18794b(T t) {
        int i;
        int i2 = this.f18654k;
        while (true) {
            i = this.f18655l;
            if (i2 >= i) {
                break;
            }
            long d = m18814d(this.f18653j[i2]) & 1048575;
            Object f = C7838j4.m19301f(t, d);
            if (f != null) {
                this.f18660q.mo19094c(f);
                C7838j4.m19325a(t, d, f);
            }
            i2++;
        }
        int length = this.f18653j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f18657n.mo19361b(t, this.f18653j[i3]);
        }
        this.f18658o.mo19423a(t);
        if (this.f18649f) {
            this.f18659p.mo19494c(t);
        }
    }

    /* renamed from: b */
    public final void m18822b(T t, int i) {
        if (!this.f18651h) {
            int e = m18812e(i);
            long j = e & 1048575;
            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t, j) | (1 << (e >>> 20)));
        }
    }

    /* renamed from: b */
    public final void m18821b(T t, int i, int i2) {
        C7838j4.m19327a((Object) t, m18812e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0963  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18819b(T r9, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7962y4 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7953x2.m18819b(java.lang.Object, h.i.a.e.j.j.y4):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: b */
    public final void mo18793b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f18644a.length; i += 3) {
                int d = m18814d(i);
                long j = 1048575 & d;
                int i2 = this.f18644a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19329a(t, j, C7838j4.m19304e(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19328a((Object) t, j, C7838j4.m19308d(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19326a((Object) t, j, C7838j4.m19317b(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19326a((Object) t, j, C7838j4.m19317b(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19326a((Object) t, j, C7838j4.m19317b(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19324a(t, j, C7838j4.m19312c(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19325a(t, j, C7838j4.m19301f(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m18824a(t, t2, i);
                        break;
                    case 10:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19325a(t, j, C7838j4.m19301f(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19326a((Object) t, j, C7838j4.m19317b(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19327a((Object) t, j, C7838j4.m19331a(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m18831a((C7953x2<T>) t2, i)) {
                            C7838j4.m19326a((Object) t, j, C7838j4.m19317b(t2, j));
                            m18822b((C7953x2<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m18824a(t, t2, i);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.f18657n.mo19362a(t, t2, j);
                        break;
                    case 50:
                        C7864m3.m19231a(this.f18660q, t, t2, j);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (m18830a((C7953x2<T>) t2, i2, i)) {
                            C7838j4.m19325a(t, j, C7838j4.m19301f(t2, j));
                            m18821b((C7953x2<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m18818b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m18830a((C7953x2<T>) t2, i2, i)) {
                            C7838j4.m19325a(t, j, C7838j4.m19301f(t2, j));
                            m18821b((C7953x2<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m18818b(t, t2, i);
                        break;
                }
            }
            if (!this.f18651h) {
                C7864m3.m19232a(this.f18658o, t, t2);
                if (this.f18649f) {
                    C7864m3.m19233a(this.f18659p, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public final void m18818b(T t, T t2, int i) {
        int d = m18814d(i);
        int i2 = this.f18644a[i];
        long j = d & 1048575;
        if (m18830a((C7953x2<T>) t2, i2, i)) {
            Object f = C7838j4.m19301f(t, j);
            Object f2 = C7838j4.m19301f(t2, j);
            if (f != null && f2 != null) {
                C7838j4.m19325a(t, j, C7891p1.m19104a(f, f2));
                m18821b((C7953x2<T>) t, i2, i);
            } else if (f2 != null) {
                C7838j4.m19325a(t, j, f2);
                m18821b((C7953x2<T>) t, i2, i);
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: c */
    public final int mo18792c(T t) {
        int i;
        int i2;
        int i3;
        int b;
        int i4;
        int i5;
        int i6;
        int i7;
        int b2;
        int i8;
        int i9;
        int i10;
        if (this.f18651h) {
            Unsafe unsafe = f18643s;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f18644a.length; i12 += 3) {
                int d = m18814d(i12);
                int i13 = (d & 267386880) >>> 20;
                int i14 = this.f18644a[i12];
                long j = d & 1048575;
                int i15 = (i13 < EnumC7818h1.DOUBLE_LIST_PACKED.m19364a() || i13 > EnumC7818h1.SINT64_LIST_PACKED.m19364a()) ? 0 : this.f18644a[i12 + 2] & 1048575;
                switch (i13) {
                    case 0:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18975b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18974b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18958d(i14, C7838j4.m19317b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18953e(i14, C7838j4.m19317b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18950f(i14, C7838j4.m19331a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18945g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18938i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18969b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            Object f = C7838j4.m19301f(t, j);
                            if (f instanceof AbstractC7791e0) {
                                b2 = AbstractC7918t0.m18962c(i14, (AbstractC7791e0) f);
                                break;
                            } else {
                                b2 = AbstractC7918t0.m18970b(i14, (String) f);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = C7864m3.m19241a(i14, C7838j4.m19301f(t, j), m18839a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18962c(i14, (AbstractC7791e0) C7838j4.m19301f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18946g(i14, C7838j4.m19331a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18933k(i14, C7838j4.m19331a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18935j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18941h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18942h(i14, C7838j4.m19331a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18949f(i14, C7838j4.m19317b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i11 = i11;
                        if (m18831a((C7953x2<T>) t, i12)) {
                            b2 = AbstractC7918t0.m18960c(i14, (AbstractC7925t2) C7838j4.m19301f(t, j), m18839a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        b2 = C7864m3.m19196i(i14, m18825a(t, j), false);
                        break;
                    case 19:
                        b2 = C7864m3.m19199h(i14, m18825a(t, j), false);
                        break;
                    case 20:
                        b2 = C7864m3.m19234a(i14, (List<Long>) m18825a(t, j), false);
                        break;
                    case 21:
                        b2 = C7864m3.m19220b(i14, (List<Long>) m18825a(t, j), false);
                        break;
                    case 22:
                        b2 = C7864m3.m19208e(i14, m18825a(t, j), false);
                        break;
                    case 23:
                        b2 = C7864m3.m19196i(i14, m18825a(t, j), false);
                        break;
                    case 24:
                        b2 = C7864m3.m19199h(i14, m18825a(t, j), false);
                        break;
                    case 25:
                        b2 = C7864m3.m19193j(i14, m18825a(t, j), false);
                        break;
                    case 26:
                        b2 = C7864m3.m19240a(i14, m18825a(t, j));
                        break;
                    case 27:
                        b2 = C7864m3.m19239a(i14, (List<?>) m18825a(t, j), m18839a(i12));
                        break;
                    case 28:
                        b2 = C7864m3.m19225b(i14, m18825a(t, j));
                        break;
                    case 29:
                        b2 = C7864m3.m19205f(i14, m18825a(t, j), false);
                        break;
                    case 30:
                        b2 = C7864m3.m19212d(i14, m18825a(t, j), false);
                        break;
                    case 31:
                        b2 = C7864m3.m19199h(i14, m18825a(t, j), false);
                        break;
                    case 32:
                        b2 = C7864m3.m19196i(i14, m18825a(t, j), false);
                        break;
                    case 33:
                        b2 = C7864m3.m19202g(i14, m18825a(t, j), false);
                        break;
                    case 34:
                        b2 = C7864m3.m19216c(i14, m18825a(t, j), false);
                        break;
                    case 35:
                        int j2 = C7864m3.m19192j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (j2 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, j2);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(j2);
                            i10 = j2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int i16 = C7864m3.m19195i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i16 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, i16);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(i16);
                            i10 = i16;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int b3 = C7864m3.m19219b((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (b3 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, b3);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(b3);
                            i10 = b3;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int c = C7864m3.m19215c((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (c > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, c);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(c);
                            i10 = c;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int f2 = C7864m3.m19204f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (f2 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, f2);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(f2);
                            i10 = f2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int j3 = C7864m3.m19192j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (j3 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, j3);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(j3);
                            i10 = j3;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int i17 = C7864m3.m19195i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i17 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, i17);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(i17);
                            i10 = i17;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int a = C7864m3.m19228a((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (a > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, a);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(a);
                            i10 = a;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int g = C7864m3.m19201g((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (g > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, g);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(g);
                            i10 = g;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int e = C7864m3.m19207e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (e > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, e);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(e);
                            i10 = e;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int i18 = C7864m3.m19195i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i18 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, i18);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(i18);
                            i10 = i18;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int j4 = C7864m3.m19192j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (j4 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, j4);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(j4);
                            i10 = j4;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int h = C7864m3.m19198h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (h > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, h);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(h);
                            i10 = h;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int d2 = C7864m3.m19211d((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (d2 > 0) {
                            if (this.f18652i) {
                                unsafe.putInt(t, i15, d2);
                            }
                            i9 = AbstractC7918t0.m18931m(i14);
                            i8 = AbstractC7918t0.m18951f(d2);
                            i10 = d2;
                            b2 = i9 + i8 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b2 = C7864m3.m19224b(i14, m18825a(t, j), m18839a(i12));
                        break;
                    case 50:
                        b2 = this.f18660q.mo19098a(i14, C7838j4.m19301f(t, j), m18823b(i12));
                        break;
                    case 51:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18975b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18974b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18958d(i14, m18811e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18953e(i14, m18811e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18950f(i14, m18813d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18945g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18938i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18969b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            Object f3 = C7838j4.m19301f(t, j);
                            if (f3 instanceof AbstractC7791e0) {
                                b2 = AbstractC7918t0.m18962c(i14, (AbstractC7791e0) f3);
                                break;
                            } else {
                                b2 = AbstractC7918t0.m18970b(i14, (String) f3);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = C7864m3.m19241a(i14, C7838j4.m19301f(t, j), m18839a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18962c(i14, (AbstractC7791e0) C7838j4.m19301f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18946g(i14, m18813d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18933k(i14, m18813d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18935j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18941h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18942h(i14, m18813d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18949f(i14, m18811e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i11 = i11;
                        if (m18830a((C7953x2<T>) t, i14, i12)) {
                            b2 = AbstractC7918t0.m18960c(i14, (AbstractC7925t2) C7838j4.m19301f(t, j), m18839a(i12));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i11 = i11;
                        continue;
                }
                i11 += b2;
            }
            return i11 + m18836a((AbstractC7787d4) this.f18658o, (Object) t);
        }
        Unsafe unsafe2 = f18643s;
        int i19 = 0;
        int i20 = 0;
        int i21 = -1;
        int i22 = 0;
        while (i19 < this.f18644a.length) {
            int d3 = m18814d(i19);
            int[] iArr = this.f18644a;
            int i23 = iArr[i19];
            int i24 = (d3 & 267386880) >>> 20;
            if (i24 <= 17) {
                i2 = iArr[i19 + 2];
                int i25 = i2 & 1048575;
                i = 1 << (i2 >>> 20);
                if (i25 != i21) {
                    i22 = unsafe2.getInt(t, i25);
                    i21 = i25;
                }
            } else {
                i2 = (!this.f18652i || i24 < EnumC7818h1.DOUBLE_LIST_PACKED.m19364a() || i24 > EnumC7818h1.SINT64_LIST_PACKED.m19364a()) ? 0 : this.f18644a[i19 + 2] & 1048575;
                i = 0;
                i22 = i22;
                i21 = i21;
            }
            long j5 = d3 & 1048575;
            switch (i24) {
                case 0:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += AbstractC7918t0.m18975b(i23, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += AbstractC7918t0.m18974b(i23, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = AbstractC7918t0.m18958d(i23, unsafe2.getLong(t, j5));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = AbstractC7918t0.m18953e(i23, unsafe2.getLong(t, j5));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = AbstractC7918t0.m18950f(i23, unsafe2.getInt(t, j5));
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i3 = AbstractC7918t0.m18945g(i23, 0L);
                        i20 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i20 += AbstractC7918t0.m18938i(i23, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18969b(i23, true);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        Object object = unsafe2.getObject(t, j5);
                        b = object instanceof AbstractC7791e0 ? AbstractC7918t0.m18962c(i23, (AbstractC7791e0) object) : AbstractC7918t0.m18970b(i23, (String) object);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = C7864m3.m19241a(i23, unsafe2.getObject(t, j5), m18839a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18962c(i23, (AbstractC7791e0) unsafe2.getObject(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18946g(i23, unsafe2.getInt(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18933k(i23, unsafe2.getInt(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        i4 = AbstractC7918t0.m18935j(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18941h(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18942h(i23, unsafe2.getInt(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18949f(i23, unsafe2.getLong(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i20 = i20;
                    if ((i22 & i) != 0) {
                        b = AbstractC7918t0.m18960c(i23, (AbstractC7925t2) unsafe2.getObject(t, j5), m18839a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    b = C7864m3.m19196i(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 19:
                    b = C7864m3.m19199h(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 20:
                    b = C7864m3.m19234a(i23, (List<Long>) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 21:
                    b = C7864m3.m19220b(i23, (List<Long>) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 22:
                    b = C7864m3.m19208e(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 23:
                    b = C7864m3.m19196i(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 24:
                    b = C7864m3.m19199h(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 25:
                    b = C7864m3.m19193j(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 26:
                    b = C7864m3.m19240a(i23, (List) unsafe2.getObject(t, j5));
                    i20 += b;
                    break;
                case 27:
                    b = C7864m3.m19239a(i23, (List<?>) unsafe2.getObject(t, j5), m18839a(i19));
                    i20 += b;
                    break;
                case 28:
                    b = C7864m3.m19225b(i23, (List) unsafe2.getObject(t, j5));
                    i20 += b;
                    break;
                case 29:
                    b = C7864m3.m19205f(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 30:
                    b = C7864m3.m19212d(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 31:
                    b = C7864m3.m19199h(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 32:
                    b = C7864m3.m19196i(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 33:
                    b = C7864m3.m19202g(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 34:
                    b = C7864m3.m19216c(i23, (List) unsafe2.getObject(t, j5), false);
                    i20 += b;
                    break;
                case 35:
                    int j6 = C7864m3.m19192j((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (j6 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, j6);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(j6);
                        i6 = j6;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 36:
                    int i26 = C7864m3.m19195i((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (i26 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, i26);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(i26);
                        i6 = i26;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 37:
                    int b4 = C7864m3.m19219b((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (b4 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, b4);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(b4);
                        i6 = b4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 38:
                    int c2 = C7864m3.m19215c((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (c2 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(c2);
                        i6 = c2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 39:
                    int f4 = C7864m3.m19204f((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (f4 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, f4);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(f4);
                        i6 = f4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 40:
                    int j7 = C7864m3.m19192j((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (j7 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, j7);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(j7);
                        i6 = j7;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 41:
                    int i27 = C7864m3.m19195i((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (i27 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, i27);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(i27);
                        i6 = i27;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 42:
                    int a2 = C7864m3.m19228a((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (a2 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, a2);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(a2);
                        i6 = a2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 43:
                    int g2 = C7864m3.m19201g((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (g2 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, g2);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(g2);
                        i6 = g2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 44:
                    int e2 = C7864m3.m19207e((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (e2 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, e2);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(e2);
                        i6 = e2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 45:
                    int i28 = C7864m3.m19195i((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (i28 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, i28);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(i28);
                        i6 = i28;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 46:
                    int j8 = C7864m3.m19192j((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (j8 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, j8);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(j8);
                        i6 = j8;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 47:
                    int h2 = C7864m3.m19198h((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (h2 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, h2);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(h2);
                        i6 = h2;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 48:
                    int d4 = C7864m3.m19211d((List) unsafe2.getObject(t, j5));
                    i20 = i20;
                    if (d4 <= 0) {
                        break;
                    } else {
                        if (this.f18652i) {
                            unsafe2.putInt(t, i2, d4);
                        }
                        i7 = AbstractC7918t0.m18931m(i23);
                        i5 = AbstractC7918t0.m18951f(d4);
                        i6 = d4;
                        i4 = i7 + i5 + i6;
                        i20 += i4;
                        break;
                    }
                case 49:
                    b = C7864m3.m19224b(i23, (List) unsafe2.getObject(t, j5), m18839a(i19));
                    i20 += b;
                    break;
                case 50:
                    b = this.f18660q.mo19098a(i23, unsafe2.getObject(t, j5), m18823b(i19));
                    i20 += b;
                    break;
                case 51:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18975b(i23, 0.0d);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        i4 = AbstractC7918t0.m18974b(i23, 0.0f);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18958d(i23, m18811e(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18953e(i23, m18811e(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18950f(i23, m18813d(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18945g(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        i4 = AbstractC7918t0.m18938i(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18969b(i23, true);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        Object object2 = unsafe2.getObject(t, j5);
                        b = object2 instanceof AbstractC7791e0 ? AbstractC7918t0.m18962c(i23, (AbstractC7791e0) object2) : AbstractC7918t0.m18970b(i23, (String) object2);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = C7864m3.m19241a(i23, unsafe2.getObject(t, j5), m18839a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18962c(i23, (AbstractC7791e0) unsafe2.getObject(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18946g(i23, m18813d(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18933k(i23, m18813d(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        i4 = AbstractC7918t0.m18935j(i23, 0);
                        i20 += i4;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18941h(i23, 0L);
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18942h(i23, m18813d(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18949f(i23, m18811e(t, j5));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i20 = i20;
                    if (m18830a((C7953x2<T>) t, i23, i19)) {
                        b = AbstractC7918t0.m18960c(i23, (AbstractC7925t2) unsafe2.getObject(t, j5), m18839a(i19));
                        i20 += b;
                        break;
                    } else {
                        break;
                    }
                default:
                    i20 = i20;
                    break;
            }
            i19 += 3;
            i22 = i22;
        }
        int a3 = i20 + m18836a((AbstractC7787d4) this.f18658o, (Object) t);
        int i29 = a3;
        if (this.f18649f) {
            i29 = a3 + this.f18659p.mo19498a(t).m19451g();
        }
        return i29;
    }

    /* renamed from: c */
    public final AbstractC7905r1 m18817c(int i) {
        return (AbstractC7905r1) this.f18645b[((i / 3) << 1) + 1];
    }

    /* renamed from: c */
    public final boolean m18815c(T t, T t2, int i) {
        return m18831a((C7953x2<T>) t, i) == m18831a((C7953x2<T>) t2, i);
    }

    /* renamed from: d */
    public final int m18814d(int i) {
        return this.f18644a[i + 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7849k3
    /* renamed from: d */
    public final boolean mo18791d(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f18654k; i4++) {
            int i5 = this.f18653j[i4];
            int i6 = this.f18644a[i5];
            int d = m18814d(i5);
            if (!this.f18651h) {
                int i7 = this.f18644a[i5 + 2];
                int i8 = i7 & 1048575;
                int i9 = 1 << (i7 >>> 20);
                i2 = i2;
                i = i9;
                if (i8 != i2) {
                    i3 = f18643s.getInt(t, i8);
                    i2 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i2 = i2;
            }
            if (((268435456 & d) != 0) && !m18829a((C7953x2<T>) t, i5, i3, i)) {
                return false;
            }
            int i10 = (267386880 & d) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (m18830a((C7953x2<T>) t, i6, i5) && !m18827a(t, d, m18839a(i5))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.f18660q.mo19092e(C7838j4.m19301f(t, d & 1048575)).isEmpty()) {
                            this.f18660q.mo19097a(m18823b(i5));
                            throw null;
                        }
                    }
                }
                List list = (List) C7838j4.m19301f(t, d & 1048575);
                boolean z = true;
                if (!list.isEmpty()) {
                    AbstractC7849k3 a = m18839a(i5);
                    int i11 = 0;
                    while (true) {
                        z = true;
                        if (i11 >= list.size()) {
                            break;
                        } else if (!a.mo18791d(list.get(i11))) {
                            z = false;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (m18829a((C7953x2<T>) t, i5, i3, i) && !m18827a(t, d, m18839a(i5))) {
                return false;
            }
        }
        return !this.f18649f || this.f18659p.mo19498a(t).m19454d();
    }

    /* renamed from: e */
    public final int m18812e(int i) {
        return this.f18644a[i + 2];
    }
}

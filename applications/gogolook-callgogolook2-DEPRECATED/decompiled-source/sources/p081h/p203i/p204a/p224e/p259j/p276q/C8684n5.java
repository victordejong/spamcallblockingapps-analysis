package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.q.n5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/n5.class */
public final class C8684n5<T> implements AbstractC8797z5<T> {

    /* renamed from: r */
    public static final int[] f19863r = new int[0];

    /* renamed from: s */
    public static final Unsafe f19864s = C8776x6.m17036d();

    /* renamed from: a */
    public final int[] f19865a;

    /* renamed from: b */
    public final Object[] f19866b;

    /* renamed from: c */
    public final int f19867c;

    /* renamed from: d */
    public final int f19868d;

    /* renamed from: e */
    public final AbstractC8648j5 f19869e;

    /* renamed from: f */
    public final boolean f19870f;

    /* renamed from: g */
    public final boolean f19871g;

    /* renamed from: h */
    public final boolean f19872h;

    /* renamed from: i */
    public final boolean f19873i;

    /* renamed from: j */
    public final int[] f19874j;

    /* renamed from: k */
    public final int f19875k;

    /* renamed from: l */
    public final int f19876l;

    /* renamed from: m */
    public final AbstractC8712q5 f19877m;

    /* renamed from: n */
    public final AbstractC8747u4 f19878n;

    /* renamed from: o */
    public final AbstractC8722r6<?, ?> f19879o;

    /* renamed from: p */
    public final AbstractC8710q3<?> f19880p;

    /* renamed from: q */
    public final AbstractC8592e5 f19881q;

    public C8684n5(int[] iArr, Object[] objArr, int i, int i2, AbstractC8648j5 j5Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC8712q5 q5Var, AbstractC8747u4 u4Var, AbstractC8722r6<?, ?> r6Var, AbstractC8710q3<?> q3Var, AbstractC8592e5 e5Var) {
        this.f19865a = iArr;
        this.f19866b = objArr;
        this.f19867c = i;
        this.f19868d = i2;
        this.f19871g = j5Var instanceof AbstractC8568c4;
        this.f19872h = z;
        this.f19870f = q3Var != null && q3Var.mo17229a(j5Var);
        this.f19873i = false;
        this.f19874j = iArr2;
        this.f19875k = i3;
        this.f19876l = i4;
        this.f19877m = q5Var;
        this.f19878n = u4Var;
        this.f19879o = r6Var;
        this.f19880p = q3Var;
        this.f19869e = j5Var;
        this.f19881q = e5Var;
    }

    /* renamed from: a */
    public static <UT, UB> int m17337a(AbstractC8722r6<UT, UB> r6Var, T t) {
        return r6Var.mo17136b(r6Var.mo17132c(t));
    }

    /* renamed from: a */
    public static <T> C8684n5<T> m17335a(Class<T> cls, AbstractC8623h5 h5Var, AbstractC8712q5 q5Var, AbstractC8747u4 u4Var, AbstractC8722r6<?, ?> r6Var, AbstractC8710q3<?> q3Var, AbstractC8592e5 e5Var) {
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
        if (h5Var instanceof C8775x5) {
            C8775x5 x5Var = (C8775x5) h5Var;
            int i19 = 0;
            boolean z = x5Var.mo17065c() == AbstractC8568c4.C8573e.f19637j;
            String d = x5Var.m17064d();
            int length = d.length();
            int charAt15 = d.charAt(0);
            if (charAt15 >= 55296) {
                int i20 = charAt15 & 8191;
                int i21 = 1;
                int i22 = 13;
                while (true) {
                    i = i21 + 1;
                    charAt14 = d.charAt(i21);
                    if (charAt14 < 55296) {
                        break;
                    }
                    i20 |= (charAt14 & 8191) << i22;
                    i22 += 13;
                    i21 = i;
                }
                charAt15 = (charAt14 << i22) | i20;
            } else {
                i = 1;
            }
            int i23 = i + 1;
            int charAt16 = d.charAt(i);
            if (charAt16 >= 55296) {
                int i24 = charAt16 & 8191;
                int i25 = 13;
                while (true) {
                    i2 = i23 + 1;
                    charAt13 = d.charAt(i23);
                    if (charAt13 < 55296) {
                        break;
                    }
                    i24 |= (charAt13 & 8191) << i25;
                    i25 += 13;
                    i23 = i2;
                }
                charAt16 = i24 | (charAt13 << i25);
            } else {
                i2 = i23;
            }
            if (charAt16 == 0) {
                iArr = f19863r;
                i7 = 0;
                i6 = 0;
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i3 = 0;
            } else {
                int i26 = i2 + 1;
                int charAt17 = d.charAt(i2);
                if (charAt17 >= 55296) {
                    int i27 = charAt17 & 8191;
                    int i28 = 13;
                    while (true) {
                        i26++;
                        charAt12 = d.charAt(i26);
                        if (charAt12 < 55296) {
                            break;
                        }
                        i27 |= (charAt12 & 8191) << i28;
                        i28 += 13;
                    }
                    charAt17 = (charAt12 << i28) | i27;
                    i17 = i26;
                } else {
                    i17 = i26;
                }
                int i29 = i17 + 1;
                int charAt18 = d.charAt(i17);
                if (charAt18 >= 55296) {
                    int i30 = charAt18 & 8191;
                    int i31 = 13;
                    while (true) {
                        i29++;
                        charAt11 = d.charAt(i29);
                        if (charAt11 < 55296) {
                            break;
                        }
                        i30 |= (charAt11 & 8191) << i31;
                        i31 += 13;
                    }
                    charAt18 = i30 | (charAt11 << i31);
                }
                int i32 = i29 + 1;
                i6 = d.charAt(i29);
                if (i6 >= 55296) {
                    int i33 = i6 & 8191;
                    int i34 = 13;
                    while (true) {
                        i32++;
                        charAt10 = d.charAt(i32);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i33 |= (charAt10 & 8191) << i34;
                        i34 += 13;
                    }
                    i6 = (charAt10 << i34) | i33;
                }
                int i35 = i32 + 1;
                i4 = d.charAt(i32);
                if (i4 >= 55296) {
                    int i36 = i4 & 8191;
                    int i37 = 13;
                    while (true) {
                        i35++;
                        charAt9 = d.charAt(i35);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i36 |= (charAt9 & 8191) << i37;
                        i37 += 13;
                    }
                    i4 = (charAt9 << i37) | i36;
                }
                int i38 = i35 + 1;
                char charAt19 = d.charAt(i35);
                int i39 = i38;
                i5 = charAt19;
                if (charAt19 >= 55296) {
                    int i40 = charAt19 & 8191;
                    int i41 = 13;
                    while (true) {
                        i38++;
                        charAt8 = d.charAt(i38);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i40 |= (charAt8 & 8191) << i41;
                        i41 += 13;
                    }
                    i5 = (charAt8 << i41) | i40;
                    i39 = i38;
                }
                int i42 = i39 + 1;
                char charAt20 = d.charAt(i39);
                i7 = charAt20;
                int i43 = i42;
                if (charAt20 >= 55296) {
                    int i44 = charAt20 & 8191;
                    int i45 = 13;
                    while (true) {
                        i42++;
                        charAt7 = d.charAt(i42);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i44 |= (charAt7 & 8191) << i45;
                        i45 += 13;
                    }
                    i7 = i44 | (charAt7 << i45);
                    i43 = i42;
                }
                int i46 = i43 + 1;
                int charAt21 = d.charAt(i43);
                if (charAt21 >= 55296) {
                    int i47 = 13;
                    int i48 = charAt21 & 8191;
                    while (true) {
                        i46++;
                        charAt6 = d.charAt(i46);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i48 |= (charAt6 & 8191) << i47;
                        i47 += 13;
                    }
                    charAt21 = i48 | (charAt6 << i47);
                }
                int i49 = i46 + 1;
                char charAt22 = d.charAt(i46);
                int i50 = charAt22;
                i2 = i49;
                if (charAt22 >= 55296) {
                    int i51 = 13;
                    int i52 = charAt22 & 8191;
                    int i53 = i49;
                    while (true) {
                        i18 = i53 + 1;
                        charAt5 = d.charAt(i53);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i52 |= (charAt5 & 8191) << i51;
                        i51 += 13;
                        i53 = i18;
                    }
                    i50 = i52 | (charAt5 << i51);
                    i2 = i18;
                }
                iArr = new int[i50 + i7 + charAt21];
                i8 = (charAt17 << 1) + charAt18;
                i3 = charAt17;
                i19 = i50;
            }
            Unsafe unsafe = f19864s;
            Object[] e = x5Var.m17063e();
            Class<?> cls2 = x5Var.mo17067a().getClass();
            int[] iArr2 = new int[i5 * 3];
            Object[] objArr = new Object[i5 << 1];
            int i54 = i19 + i7;
            int i55 = i54;
            int i56 = 0;
            int i57 = 0;
            int i58 = i19;
            while (i2 < length) {
                int i59 = i2 + 1;
                int charAt23 = d.charAt(i2);
                if (charAt23 >= 55296) {
                    int i60 = 13;
                    int i61 = charAt23 & 8191;
                    while (true) {
                        i59++;
                        charAt4 = d.charAt(i59);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i61 |= (charAt4 & 8191) << i60;
                        i60 += 13;
                    }
                    charAt23 = i61 | (charAt4 << i60);
                }
                int i62 = i59 + 1;
                char charAt24 = d.charAt(i59);
                if (charAt24 >= 55296) {
                    int i63 = 13;
                    int i64 = charAt24 & 8191;
                    while (true) {
                        i16 = i62 + 1;
                        charAt3 = d.charAt(i62);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i64 |= (charAt3 & 8191) << i63;
                        i63 += 13;
                        i62 = i16;
                    }
                    i9 = i64 | (charAt3 << i63);
                    i10 = i16;
                } else {
                    i10 = i62;
                    i9 = charAt24;
                }
                int i65 = i9 & 255;
                i56 = i56;
                if ((i9 & 1024) != 0) {
                    iArr[i56] = i57;
                    i56++;
                }
                if (i65 > EnumC8764w3.MAP.m17081a()) {
                    int i66 = i10 + 1;
                    char charAt25 = d.charAt(i10);
                    int i67 = charAt25;
                    i2 = i66;
                    if (charAt25 >= 55296) {
                        int i68 = charAt25 & 8191;
                        int i69 = 13;
                        while (true) {
                            i2 = i66 + 1;
                            charAt2 = d.charAt(i66);
                            if (charAt2 < 55296) {
                                break;
                            }
                            i68 |= (charAt2 & 8191) << i69;
                            i69 += 13;
                            i66 = i2;
                        }
                        i67 = i68 | (charAt2 << i69);
                    }
                    if (i65 == EnumC8764w3.MESSAGE.m17081a() + 51 || i65 == EnumC8764w3.GROUP.m17081a() + 51) {
                        objArr[((i57 / 3) << 1) + 1] = e[i8];
                        i8++;
                    } else if (i65 == EnumC8764w3.ENUM.m17081a() + 51) {
                        i8 = i8;
                        if ((charAt15 & 1) == 1) {
                            objArr[((i57 / 3) << 1) + 1] = e[i8];
                            i8++;
                        }
                    } else {
                        i8 = i8;
                    }
                    int i70 = i67 << 1;
                    Object obj = e[i70];
                    if (obj instanceof Field) {
                        field2 = (Field) obj;
                    } else {
                        field2 = m17334a(cls2, (String) obj);
                        e[i70] = field2;
                    }
                    i11 = (int) unsafe.objectFieldOffset(field2);
                    int i71 = i70 + 1;
                    Object obj2 = e[i71];
                    if (obj2 instanceof Field) {
                        field3 = (Field) obj2;
                    } else {
                        field3 = m17334a(cls2, (String) obj2);
                        e[i71] = field3;
                    }
                    i12 = (int) unsafe.objectFieldOffset(field3);
                    i13 = 0;
                    i58 = i58;
                } else {
                    int i72 = i8 + 1;
                    Field a = m17334a(cls2, (String) e[i8]);
                    if (i65 == EnumC8764w3.MESSAGE.m17081a() || i65 == EnumC8764w3.GROUP.m17081a()) {
                        objArr[((i57 / 3) << 1) + 1] = a.getType();
                        i14 = i58;
                        i15 = i72;
                    } else {
                        if (i65 == EnumC8764w3.MESSAGE_LIST.m17081a() || i65 == EnumC8764w3.GROUP_LIST.m17081a()) {
                            i15 = i72 + 1;
                            objArr[((i57 / 3) << 1) + 1] = e[i72];
                        } else if (i65 == EnumC8764w3.ENUM.m17081a() || i65 == EnumC8764w3.ENUM_LIST.m17081a() || i65 == EnumC8764w3.ENUM_LIST_PACKED.m17081a()) {
                            i15 = i72;
                            i14 = i58;
                            if ((charAt15 & 1) == 1) {
                                i15 = i72 + 1;
                                objArr[((i57 / 3) << 1) + 1] = e[i72];
                            }
                        } else if (i65 == EnumC8764w3.MAP.m17081a()) {
                            iArr[i58] = i57;
                            int i73 = (i57 / 3) << 1;
                            i15 = i72 + 1;
                            objArr[i73] = e[i72];
                            if ((i9 & 2048) != 0) {
                                i15++;
                                objArr[i73 + 1] = e[i15];
                            }
                            i14 = i58 + 1;
                        } else {
                            i15 = i72;
                            i14 = i58;
                        }
                        i14 = i58;
                    }
                    i11 = (int) unsafe.objectFieldOffset(a);
                    if ((charAt15 & 1) != 1 || i65 > EnumC8764w3.GROUP.m17081a()) {
                        i8 = i15;
                        i2 = i10;
                        i13 = 0;
                        i12 = 0;
                        i58 = i14;
                    } else {
                        int i74 = i10 + 1;
                        char charAt26 = d.charAt(i10);
                        int i75 = charAt26;
                        i2 = i74;
                        if (charAt26 >= 55296) {
                            int i76 = charAt26 & 8191;
                            int i77 = 13;
                            while (true) {
                                i2 = i74 + 1;
                                charAt = d.charAt(i74);
                                if (charAt < 55296) {
                                    break;
                                }
                                i76 |= (charAt & 8191) << i77;
                                i77 += 13;
                                i74 = i2;
                            }
                            i75 = i76 | (charAt << i77);
                        }
                        int i78 = (i3 << 1) + (i75 / 32);
                        Object obj3 = e[i78];
                        if (obj3 instanceof Field) {
                            field = (Field) obj3;
                        } else {
                            field = m17334a(cls2, (String) obj3);
                            e[i78] = field;
                        }
                        i12 = (int) unsafe.objectFieldOffset(field);
                        i13 = i75 % 32;
                        i58 = i14;
                        i8 = i15;
                    }
                }
                i55 = i55;
                if (i65 >= 18) {
                    i55 = i55;
                    if (i65 <= 49) {
                        iArr[i55] = i11;
                        i55++;
                    }
                }
                int i79 = i57 + 1;
                iArr2[i57] = charAt23;
                int i80 = i79 + 1;
                iArr2[i79] = (i65 << 20) | ((i9 & 256) != 0 ? 268435456 : 0) | ((i9 & 512) != 0 ? 536870912 : 0) | i11;
                i57 = i80 + 1;
                iArr2[i80] = (i13 << 20) | i12;
            }
            return new C8684n5<>(iArr2, objArr, i6, i4, x5Var.mo17067a(), z, false, iArr, i19, i54, q5Var, u4Var, r6Var, q3Var, e5Var);
        }
        ((C8676m6) h5Var).mo17065c();
        throw null;
    }

    /* renamed from: a */
    public static Field m17334a(Class<?> cls, String str) {
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
    public static <E> List<E> m17327a(Object obj, long j) {
        return (List) C8776x6.m17028f(obj, j);
    }

    /* renamed from: a */
    public static void m17339a(int i, Object obj, AbstractC8677m7 m7Var) throws IOException {
        if (obj instanceof String) {
            m7Var.mo17377a(i, (String) obj);
        } else {
            m7Var.mo17380a(i, (AbstractC8736t2) obj);
        }
    }

    /* renamed from: a */
    public static <UT, UB> void m17336a(AbstractC8722r6<UT, UB> r6Var, T t, AbstractC8677m7 m7Var) throws IOException {
        r6Var.mo17139a((AbstractC8722r6<UT, UB>) r6Var.mo17132c(t), m7Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static boolean m17329a(Object obj, int i, AbstractC8797z5 z5Var) {
        return z5Var.mo16938b(C8776x6.m17028f(obj, i & 1048575));
    }

    /* renamed from: b */
    public static <T> double m17322b(T t, long j) {
        return ((Double) C8776x6.m17028f(t, j)).doubleValue();
    }

    /* renamed from: c */
    public static <T> float m17318c(T t, long j) {
        return ((Float) C8776x6.m17028f(t, j)).floatValue();
    }

    /* renamed from: d */
    public static <T> int m17315d(T t, long j) {
        return ((Integer) C8776x6.m17028f(t, j)).intValue();
    }

    /* renamed from: e */
    public static <T> long m17313e(T t, long j) {
        return ((Long) C8776x6.m17028f(t, j)).longValue();
    }

    /* renamed from: f */
    public static boolean m17312f(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: f */
    public static <T> boolean m17311f(T t, long j) {
        return ((Boolean) C8776x6.m17028f(t, j)).booleanValue();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final int mo16942a(T t) {
        int i;
        int i2;
        int length = this.f19865a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int d = m17316d(i4);
            int i5 = this.f19865a[i4];
            long j = 1048575 & d;
            int i6 = 37;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(Double.doubleToLongBits(C8776x6.m17031e(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(C8776x6.m17035d(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(C8776x6.m17044b(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(C8776x6.m17044b(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(C8776x6.m17044b(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = C8591e4.m17685a(C8776x6.m17039c(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) C8776x6.m17028f(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object f = C8776x6.m17028f(t, j);
                    if (f != null) {
                        i6 = f.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = C8776x6.m17028f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(C8776x6.m17044b(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = C8776x6.m17058a(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = C8591e4.m17690a(C8776x6.m17044b(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object f2 = C8776x6.m17028f(t, j);
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
                    i2 = C8776x6.m17028f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = C8776x6.m17028f(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(Double.doubleToLongBits(m17322b(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m17318c(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(m17313e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(m17313e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(m17313e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17685a(m17311f(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) C8776x6.m17028f(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8776x6.m17028f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8776x6.m17028f(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(m17313e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m17315d(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8591e4.m17690a(m17313e(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m17332a((C8684n5<T>) t, i5, i4)) {
                        i = i3 * 53;
                        i2 = C8776x6.m17028f(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f19879o.mo17132c(t).hashCode();
        int i7 = hashCode;
        if (this.f19870f) {
            i7 = (hashCode * 53) + this.f19880p.mo17223a(t).hashCode();
        }
        return i7;
    }

    /* renamed from: a */
    public final AbstractC8797z5 m17341a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC8797z5 z5Var = (AbstractC8797z5) this.f19866b[i2];
        if (z5Var != null) {
            return z5Var;
        }
        AbstractC8797z5<T> a = C8757v5.m17099a().m17098a((Class) ((Class) this.f19866b[i2 + 1]));
        this.f19866b[i2] = a;
        return a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final T mo16943a() {
        return (T) this.f19877m.mo17214a(this.f19869e);
    }

    /* renamed from: a */
    public final <K, V, UT, UB> UB m17340a(int i, int i2, Map<K, V> map, AbstractC8622h4 h4Var, UB ub, AbstractC8722r6<UT, UB> r6Var) {
        this.f19881q.mo17666f(m17325b(i));
        throw null;
    }

    /* renamed from: a */
    public final <UT, UB> UB m17328a(Object obj, int i, UB ub, AbstractC8722r6<UT, UB> r6Var) {
        AbstractC8622h4 c;
        int i2 = this.f19865a[i];
        Object f = C8776x6.m17028f(obj, m17316d(i) & 1048575);
        if (!(f == null || (c = m17319c(i)) == null)) {
            m17340a(i, i2, this.f19881q.mo17672a(f), c, ub, r6Var);
            throw null;
        }
        return ub;
    }

    /* renamed from: a */
    public final <K, V> void m17338a(AbstractC8677m7 m7Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.f19881q.mo17666f(m17325b(i2));
            throw null;
        }
    }

    /* renamed from: a */
    public final void m17330a(Object obj, int i, AbstractC8788y5 y5Var) throws IOException {
        if (m17312f(i)) {
            C8776x6.m17052a(obj, i & 1048575, y5Var.mo16988b());
        } else if (this.f19871g) {
            C8776x6.m17052a(obj, i & 1048575, y5Var.mo16984c());
        } else {
            C8776x6.m17052a(obj, i & 1048575, y5Var.mo16962n());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09e2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09e3  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x13c6  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x13d0  */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16941a(T r8, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8684n5.mo16941a(java.lang.Object, h.i.a.e.j.q.m7):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    public final void mo16940a(T t, AbstractC8788y5 y5Var, C8691o3 o3Var) throws IOException {
        Object obj;
        Object obj2;
        if (o3Var != null) {
            AbstractC8722r6 r6Var = this.f19879o;
            AbstractC8710q3<?> q3Var = this.f19880p;
            Object obj3 = null;
            while (true) {
                Object obj4 = obj3;
                try {
                    int d = y5Var.mo16982d();
                    int i = -1;
                    if (d >= this.f19867c) {
                        i = -1;
                        if (d <= this.f19868d) {
                            int i2 = 0;
                            int length = (this.f19865a.length / 3) - 1;
                            while (true) {
                                i = -1;
                                if (i2 <= length) {
                                    int i3 = (length + i2) >>> 1;
                                    i = i3 * 3;
                                    int i4 = this.f19865a[i];
                                    if (d != i4) {
                                        if (d < i4) {
                                            length = i3 - 1;
                                        } else {
                                            i2 = i3 + 1;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (i >= 0) {
                        int d2 = m17316d(i);
                        switch ((267386880 & d2) >>> 20) {
                            case 0:
                                C8776x6.m17056a(t, d2 & 1048575, y5Var.readDouble());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 1:
                                C8776x6.m17055a((Object) t, d2 & 1048575, y5Var.readFloat());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 2:
                                C8776x6.m17053a((Object) t, d2 & 1048575, y5Var.mo16966l());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 3:
                                C8776x6.m17053a((Object) t, d2 & 1048575, y5Var.mo16964m());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 4:
                                C8776x6.m17054a((Object) t, d2 & 1048575, y5Var.mo16968k());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 5:
                                C8776x6.m17053a((Object) t, d2 & 1048575, y5Var.mo16970j());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 6:
                                C8776x6.m17054a((Object) t, d2 & 1048575, y5Var.mo16958p());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 7:
                                C8776x6.m17051a(t, d2 & 1048575, y5Var.mo16960o());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 8:
                                m17330a(t, d2, y5Var);
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 9:
                                if (m17333a((C8684n5<T>) t, i)) {
                                    long j = d2 & 1048575;
                                    C8776x6.m17052a(t, j, C8591e4.m17687a(C8776x6.m17028f(t, j), y5Var.mo16987b(m17341a(i), o3Var)));
                                    break;
                                } else {
                                    C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16987b(m17341a(i), o3Var));
                                    m17324b((C8684n5<T>) t, i);
                                    break;
                                }
                            case 10:
                                C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16962n());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 11:
                                C8776x6.m17054a((Object) t, d2 & 1048575, y5Var.mo16974h());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 12:
                                int g = y5Var.mo16976g();
                                AbstractC8622h4 c = m17319c(i);
                                if (c != null && !c.mo17426a(g)) {
                                    obj3 = C8561b6.m17823a(d, g, obj3, r6Var);
                                    break;
                                }
                                C8776x6.m17054a((Object) t, d2 & 1048575, g);
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 13:
                                C8776x6.m17054a((Object) t, d2 & 1048575, y5Var.mo16978f());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 14:
                                C8776x6.m17053a((Object) t, d2 & 1048575, y5Var.mo16980e());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 15:
                                C8776x6.m17054a((Object) t, d2 & 1048575, y5Var.mo16972i());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 16:
                                C8776x6.m17053a((Object) t, d2 & 1048575, y5Var.mo16993O());
                                m17324b((C8684n5<T>) t, i);
                                break;
                            case 17:
                                if (m17333a((C8684n5<T>) t, i)) {
                                    long j2 = d2 & 1048575;
                                    C8776x6.m17052a(t, j2, C8591e4.m17687a(C8776x6.m17028f(t, j2), y5Var.mo16991a(m17341a(i), o3Var)));
                                    break;
                                } else {
                                    C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16991a(m17341a(i), o3Var));
                                    m17324b((C8684n5<T>) t, i);
                                    break;
                                }
                            case 18:
                                y5Var.mo16990a(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 19:
                                y5Var.mo16983c(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 20:
                                y5Var.mo16973h(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 21:
                                y5Var.mo16986b(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 22:
                                y5Var.mo16975g(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 23:
                                y5Var.mo16967k(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 24:
                                y5Var.mo16969j(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 25:
                                y5Var.mo16979e(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 26:
                                if (m17312f(d2)) {
                                    y5Var.mo16981d(this.f19878n.mo17071a(t, d2 & 1048575));
                                    break;
                                } else {
                                    y5Var.mo16971i(this.f19878n.mo17071a(t, d2 & 1048575));
                                    break;
                                }
                            case 27:
                                y5Var.mo16989a(this.f19878n.mo17071a(t, d2 & 1048575), m17341a(i), o3Var);
                                break;
                            case 28:
                                y5Var.mo16977f(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 29:
                                y5Var.mo16956q(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 30:
                                List<Integer> a = this.f19878n.mo17071a(t, d2 & 1048575);
                                y5Var.mo16961n(a);
                                obj3 = C8561b6.m17820a(d, a, m17319c(i), obj3, r6Var);
                                break;
                            case 31:
                                y5Var.mo16963m(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 32:
                                y5Var.mo16957p(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 33:
                                y5Var.mo16959o(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 34:
                                y5Var.mo16965l(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 35:
                                y5Var.mo16990a(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 36:
                                y5Var.mo16983c(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 37:
                                y5Var.mo16973h(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 38:
                                y5Var.mo16986b(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 39:
                                y5Var.mo16975g(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 40:
                                y5Var.mo16967k(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 41:
                                y5Var.mo16969j(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 42:
                                y5Var.mo16979e(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 43:
                                y5Var.mo16956q(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 44:
                                List<Integer> a2 = this.f19878n.mo17071a(t, d2 & 1048575);
                                y5Var.mo16961n(a2);
                                obj3 = C8561b6.m17820a(d, a2, m17319c(i), obj3, r6Var);
                                break;
                            case 45:
                                y5Var.mo16963m(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 46:
                                y5Var.mo16957p(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 47:
                                y5Var.mo16959o(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 48:
                                y5Var.mo16965l(this.f19878n.mo17071a(t, d2 & 1048575));
                                break;
                            case 49:
                                y5Var.mo16985b(this.f19878n.mo17071a(t, d2 & 1048575), m17341a(i), o3Var);
                                break;
                            case 50:
                                Object b = m17325b(i);
                                long d3 = m17316d(i) & 1048575;
                                Object f = C8776x6.m17028f(t, d3);
                                if (f != null) {
                                    obj = f;
                                    if (this.f19881q.mo17671b(f)) {
                                        obj = this.f19881q.mo17669c(b);
                                        this.f19881q.mo17670b(obj, f);
                                        C8776x6.m17052a(t, d3, obj);
                                    }
                                } else {
                                    obj = this.f19881q.mo17669c(b);
                                    C8776x6.m17052a(t, d3, obj);
                                }
                                this.f19881q.mo17672a(obj);
                                obj2 = obj3;
                                obj4 = obj3;
                                this.f19881q.mo17666f(b);
                                throw null;
                            case 51:
                                C8776x6.m17052a(t, d2 & 1048575, Double.valueOf(y5Var.readDouble()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 52:
                                C8776x6.m17052a(t, d2 & 1048575, Float.valueOf(y5Var.readFloat()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 53:
                                C8776x6.m17052a(t, d2 & 1048575, Long.valueOf(y5Var.mo16966l()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 54:
                                C8776x6.m17052a(t, d2 & 1048575, Long.valueOf(y5Var.mo16964m()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 55:
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(y5Var.mo16968k()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 56:
                                C8776x6.m17052a(t, d2 & 1048575, Long.valueOf(y5Var.mo16970j()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 57:
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(y5Var.mo16958p()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 58:
                                C8776x6.m17052a(t, d2 & 1048575, Boolean.valueOf(y5Var.mo16960o()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 59:
                                m17330a(t, d2, y5Var);
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 60:
                                if (m17332a((C8684n5<T>) t, d, i)) {
                                    long j3 = d2 & 1048575;
                                    C8776x6.m17052a(t, j3, C8591e4.m17687a(C8776x6.m17028f(t, j3), y5Var.mo16987b(m17341a(i), o3Var)));
                                } else {
                                    C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16987b(m17341a(i), o3Var));
                                    m17324b((C8684n5<T>) t, i);
                                }
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 61:
                                C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16962n());
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 62:
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(y5Var.mo16974h()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 63:
                                int g2 = y5Var.mo16976g();
                                AbstractC8622h4 c2 = m17319c(i);
                                if (c2 != null && !c2.mo17426a(g2)) {
                                    obj3 = C8561b6.m17823a(d, g2, obj3, r6Var);
                                    break;
                                }
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(g2));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 64:
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(y5Var.mo16978f()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 65:
                                C8776x6.m17052a(t, d2 & 1048575, Long.valueOf(y5Var.mo16980e()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 66:
                                C8776x6.m17052a(t, d2 & 1048575, Integer.valueOf(y5Var.mo16972i()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 67:
                                C8776x6.m17052a(t, d2 & 1048575, Long.valueOf(y5Var.mo16993O()));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            case 68:
                                C8776x6.m17052a(t, d2 & 1048575, y5Var.mo16991a(m17341a(i), o3Var));
                                m17323b((C8684n5<T>) t, d, i);
                                break;
                            default:
                                Object obj5 = obj3;
                                if (obj3 == null) {
                                    obj2 = obj3;
                                    obj4 = obj3;
                                    try {
                                        obj5 = r6Var.mo17146a();
                                    } catch (C8656k4 e) {
                                        r6Var.mo17145a(y5Var);
                                        Object obj6 = obj2;
                                        if (obj2 == null) {
                                            obj6 = r6Var.mo17130d(t);
                                        }
                                        obj3 = obj6;
                                        if (r6Var.m17213a((AbstractC8722r6) obj6, y5Var)) {
                                            break;
                                        } else {
                                            for (int i5 = this.f19875k; i5 < this.f19876l; i5++) {
                                                m17328a((Object) t, this.f19874j[i5], (int) obj6, (AbstractC8722r6<UT, int>) r6Var);
                                            }
                                            if (obj6 != null) {
                                                r6Var.mo17133b((Object) t, (T) obj6);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                }
                                obj3 = obj5;
                                if (r6Var.m17213a((AbstractC8722r6) obj5, y5Var)) {
                                    break;
                                } else {
                                    for (int i6 = this.f19875k; i6 < this.f19876l; i6++) {
                                        m17328a((Object) t, this.f19874j[i6], (int) obj5, (AbstractC8722r6<UT, int>) r6Var);
                                    }
                                    if (obj5 != null) {
                                        r6Var.mo17133b((Object) t, (T) obj5);
                                        return;
                                    }
                                    return;
                                }
                        }
                    } else if (d == Integer.MAX_VALUE) {
                        for (int i7 = this.f19875k; i7 < this.f19876l; i7++) {
                            m17328a((Object) t, this.f19874j[i7], (int) obj3, (AbstractC8722r6<UT, int>) r6Var);
                        }
                        if (obj3 != null) {
                            r6Var.mo17133b((Object) t, (T) obj3);
                            return;
                        }
                        return;
                    } else {
                        Object a3 = !this.f19870f ? null : q3Var.mo17227a(o3Var, this.f19869e, d);
                        if (a3 != null) {
                            q3Var.mo17224a(y5Var, a3, o3Var, q3Var.mo17220b(t), obj3, r6Var);
                            throw null;
                        }
                        r6Var.mo17145a(y5Var);
                        Object obj7 = obj3;
                        if (obj3 == null) {
                            obj7 = r6Var.mo17130d(t);
                        }
                        obj3 = obj7;
                        if (!r6Var.m17213a((AbstractC8722r6) obj7, y5Var)) {
                            for (int i8 = this.f19875k; i8 < this.f19876l; i8++) {
                                m17328a((Object) t, this.f19874j[i8], (int) obj7, (AbstractC8722r6<UT, int>) r6Var);
                            }
                            if (obj7 != null) {
                                r6Var.mo17133b((Object) t, (T) obj7);
                                return;
                            }
                            return;
                        }
                    }
                } catch (Throwable th) {
                    for (int i9 = this.f19875k; i9 < this.f19876l; i9++) {
                        m17328a((Object) t, this.f19874j[i9], (int) obj4, (AbstractC8722r6<UT, int>) r6Var);
                    }
                    if (obj4 != null) {
                        r6Var.mo17133b((Object) t, (T) obj4);
                    }
                    throw th;
                }
            }
        } else {
            throw new NullPointerException();
        }
    }

    /* renamed from: a */
    public final void m17326a(T t, T t2, int i) {
        long d = m17316d(i) & 1048575;
        if (m17333a((C8684n5<T>) t2, i)) {
            Object f = C8776x6.m17028f(t, d);
            Object f2 = C8776x6.m17028f(t2, d);
            if (f != null && f2 != null) {
                C8776x6.m17052a(t, d, C8591e4.m17687a(f, f2));
                m17324b((C8684n5<T>) t, i);
            } else if (f2 != null) {
                C8776x6.m17052a(t, d, f2);
                m17324b((C8684n5<T>) t, i);
            }
        }
    }

    /* renamed from: a */
    public final boolean m17333a(T t, int i) {
        if (this.f19872h) {
            int d = m17316d(i);
            long j = d & 1048575;
            switch ((d & 267386880) >>> 20) {
                case 0:
                    return C8776x6.m17031e(t, j) != 0.0d;
                case 1:
                    return C8776x6.m17035d(t, j) != 0.0f;
                case 2:
                    return C8776x6.m17044b(t, j) != 0;
                case 3:
                    return C8776x6.m17044b(t, j) != 0;
                case 4:
                    return C8776x6.m17058a(t, j) != 0;
                case 5:
                    return C8776x6.m17044b(t, j) != 0;
                case 6:
                    return C8776x6.m17058a(t, j) != 0;
                case 7:
                    return C8776x6.m17039c(t, j);
                case 8:
                    Object f = C8776x6.m17028f(t, j);
                    if (f instanceof String) {
                        return !((String) f).isEmpty();
                    }
                    if (f instanceof AbstractC8736t2) {
                        return !AbstractC8736t2.f19984b.equals(f);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return C8776x6.m17028f(t, j) != null;
                case 10:
                    return !AbstractC8736t2.f19984b.equals(C8776x6.m17028f(t, j));
                case 11:
                    return C8776x6.m17058a(t, j) != 0;
                case 12:
                    return C8776x6.m17058a(t, j) != 0;
                case 13:
                    return C8776x6.m17058a(t, j) != 0;
                case 14:
                    return C8776x6.m17044b(t, j) != 0;
                case 15:
                    return C8776x6.m17058a(t, j) != 0;
                case 16:
                    return C8776x6.m17044b(t, j) != 0;
                case 17:
                    return C8776x6.m17028f(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int e = m17314e(i);
            return (C8776x6.m17058a(t, (long) (e & 1048575)) & (1 << (e >>> 20))) != 0;
        }
    }

    /* renamed from: a */
    public final boolean m17332a(T t, int i, int i2) {
        return C8776x6.m17058a(t, (long) (m17314e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    public final boolean m17331a(T t, int i, int i2, int i3) {
        return this.f19872h ? m17333a((C8684n5<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8561b6.m17810a(p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r7, r0), p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8561b6.m17810a(p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r7, r0), p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01e4, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0201, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021f, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x023c, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0259, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0276, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0296, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8561b6.m17810a(p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r7, r0), p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8561b6.m17810a(p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r7, r0), p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d6, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8561b6.m17810a(p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r7, r0), p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17028f(r8, r0)) != false) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02f3, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17039c(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17039c(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0310, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x032e, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x034b, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0369, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0387, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a4, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17058a(r8, r0)) goto L_0x03c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c2, code lost:
        if (p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r7, r0) == p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.m17044b(r8, r0)) goto L_0x03c8;
     */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo16939a(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8684n5.mo16939a(java.lang.Object, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public final Object m17325b(int i) {
        return this.f19866b[(i / 3) << 1];
    }

    /* renamed from: b */
    public final void m17324b(T t, int i) {
        if (!this.f19872h) {
            int e = m17314e(i);
            long j = e & 1048575;
            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t, j) | (1 << (e >>> 20)));
        }
    }

    /* renamed from: b */
    public final void m17323b(T t, int i, int i2) {
        C8776x6.m17054a((Object) t, m17314e(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0963  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17321b(T r9, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8677m7 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8684n5.m17321b(java.lang.Object, h.i.a.e.j.q.m7):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: b */
    public final void mo16937b(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f19865a.length; i += 3) {
                int d = m17316d(i);
                long j = 1048575 & d;
                int i2 = this.f19865a[i];
                switch ((d & 267386880) >>> 20) {
                    case 0:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17056a(t, j, C8776x6.m17031e(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17055a((Object) t, j, C8776x6.m17035d(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17053a((Object) t, j, C8776x6.m17044b(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17053a((Object) t, j, C8776x6.m17044b(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17053a((Object) t, j, C8776x6.m17044b(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17051a(t, j, C8776x6.m17039c(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17052a(t, j, C8776x6.m17028f(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m17326a(t, t2, i);
                        break;
                    case 10:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17052a(t, j, C8776x6.m17028f(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17053a((Object) t, j, C8776x6.m17044b(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17054a((Object) t, j, C8776x6.m17058a(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m17333a((C8684n5<T>) t2, i)) {
                            C8776x6.m17053a((Object) t, j, C8776x6.m17044b(t2, j));
                            m17324b((C8684n5<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m17326a(t, t2, i);
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
                        this.f19878n.mo17070a(t, t2, j);
                        break;
                    case 50:
                        C8561b6.m17814a(this.f19881q, t, t2, j);
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
                        if (m17332a((C8684n5<T>) t2, i2, i)) {
                            C8776x6.m17052a(t, j, C8776x6.m17028f(t2, j));
                            m17323b((C8684n5<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m17320b(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m17332a((C8684n5<T>) t2, i2, i)) {
                            C8776x6.m17052a(t, j, C8776x6.m17028f(t2, j));
                            m17323b((C8684n5<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m17320b(t, t2, i);
                        break;
                }
            }
            if (!this.f19872h) {
                C8561b6.m17812a(this.f19879o, t, t2);
                if (this.f19870f) {
                    C8561b6.m17813a(this.f19880p, t, t2);
                    return;
                }
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public final void m17320b(T t, T t2, int i) {
        int d = m17316d(i);
        int i2 = this.f19865a[i];
        long j = d & 1048575;
        if (m17332a((C8684n5<T>) t2, i2, i)) {
            Object f = C8776x6.m17028f(t, j);
            Object f2 = C8776x6.m17028f(t2, j);
            if (f != null && f2 != null) {
                C8776x6.m17052a(t, j, C8591e4.m17687a(f, f2));
                m17323b((C8684n5<T>) t, i2, i);
            } else if (f2 != null) {
                C8776x6.m17052a(t, j, f2);
                m17323b((C8684n5<T>) t, i2, i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: b */
    public final boolean mo16938b(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f19875k; i4++) {
            int i5 = this.f19874j[i4];
            int i6 = this.f19865a[i5];
            int d = m17316d(i5);
            if (!this.f19872h) {
                int i7 = this.f19865a[i5 + 2];
                int i8 = i7 & 1048575;
                int i9 = 1 << (i7 >>> 20);
                i2 = i2;
                i = i9;
                if (i8 != i2) {
                    i3 = f19864s.getInt(t, i8);
                    i2 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i2 = i2;
            }
            if (((268435456 & d) != 0) && !m17331a((C8684n5<T>) t, i5, i3, i)) {
                return false;
            }
            int i10 = (267386880 & d) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (m17332a((C8684n5<T>) t, i6, i5) && !m17329a(t, d, m17341a(i5))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 == 50 && !this.f19881q.mo17667e(C8776x6.m17028f(t, d & 1048575)).isEmpty()) {
                            this.f19881q.mo17666f(m17325b(i5));
                            throw null;
                        }
                    }
                }
                List list = (List) C8776x6.m17028f(t, d & 1048575);
                boolean z = true;
                if (!list.isEmpty()) {
                    AbstractC8797z5 a = m17341a(i5);
                    int i11 = 0;
                    while (true) {
                        z = true;
                        if (i11 >= list.size()) {
                            break;
                        } else if (!a.mo16938b(list.get(i11))) {
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
            } else if (m17331a((C8684n5<T>) t, i5, i3, i) && !m17329a(t, d, m17341a(i5))) {
                return false;
            }
        }
        return !this.f19870f || this.f19880p.mo17223a(t).m17153d();
    }

    /* renamed from: c */
    public final AbstractC8622h4 m17319c(int i) {
        return (AbstractC8622h4) this.f19866b[((i / 3) << 1) + 1];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: c */
    public final void mo16936c(T t) {
        int i;
        int i2 = this.f19875k;
        while (true) {
            i = this.f19876l;
            if (i2 >= i) {
                break;
            }
            long d = m17316d(this.f19874j[i2]) & 1048575;
            Object f = C8776x6.m17028f(t, d);
            if (f != null) {
                this.f19881q.mo17668d(f);
                C8776x6.m17052a(t, d, f);
            }
            i2++;
        }
        int length = this.f19874j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f19878n.mo17069b(t, this.f19874j[i3]);
        }
        this.f19879o.mo17128f(t);
        if (this.f19870f) {
            this.f19880p.mo17219c(t);
        }
    }

    /* renamed from: c */
    public final boolean m17317c(T t, T t2, int i) {
        return m17333a((C8684n5<T>) t, i) == m17333a((C8684n5<T>) t2, i);
    }

    /* renamed from: d */
    public final int m17316d(int i) {
        return this.f19865a[i + 1];
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8797z5
    /* renamed from: d */
    public final int mo16935d(T t) {
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
        if (this.f19872h) {
            Unsafe unsafe = f19864s;
            int i11 = 0;
            for (int i12 = 0; i12 < this.f19865a.length; i12 += 3) {
                int d = m17316d(i12);
                int i13 = (d & 267386880) >>> 20;
                int i14 = this.f19865a[i12];
                long j = d & 1048575;
                int i15 = (i13 < EnumC8764w3.DOUBLE_LIST_PACKED.m17081a() || i13 > EnumC8764w3.SINT64_LIST_PACKED.m17081a()) ? 0 : this.f19865a[i12 + 2] & 1048575;
                switch (i13) {
                    case 0:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17533b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17532b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17516d(i14, C8776x6.m17044b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17511e(i14, C8776x6.m17044b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17508f(i14, C8776x6.m17058a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17503g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17496i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17527b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            Object f = C8776x6.m17028f(t, j);
                            if (f instanceof AbstractC8736t2) {
                                b2 = AbstractC8632i3.m17518c(i14, (AbstractC8736t2) f);
                                break;
                            } else {
                                b2 = AbstractC8632i3.m17528b(i14, (String) f);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = C8561b6.m17822a(i14, C8776x6.m17028f(t, j), m17341a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17518c(i14, (AbstractC8736t2) C8776x6.m17028f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17504g(i14, C8776x6.m17058a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17491k(i14, C8776x6.m17058a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17493j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17499h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17500h(i14, C8776x6.m17058a(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17507f(i14, C8776x6.m17044b(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i11 = i11;
                        if (m17333a((C8684n5<T>) t, i12)) {
                            b2 = AbstractC8632i3.m17519c(i14, (AbstractC8648j5) C8776x6.m17028f(t, j), m17341a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        b2 = C8561b6.m17777i(i14, m17327a(t, j), false);
                        break;
                    case 19:
                        b2 = C8561b6.m17780h(i14, m17327a(t, j), false);
                        break;
                    case 20:
                        b2 = C8561b6.m17815a(i14, (List<Long>) m17327a(t, j), false);
                        break;
                    case 21:
                        b2 = C8561b6.m17801b(i14, (List<Long>) m17327a(t, j), false);
                        break;
                    case 22:
                        b2 = C8561b6.m17789e(i14, m17327a(t, j), false);
                        break;
                    case 23:
                        b2 = C8561b6.m17777i(i14, m17327a(t, j), false);
                        break;
                    case 24:
                        b2 = C8561b6.m17780h(i14, m17327a(t, j), false);
                        break;
                    case 25:
                        b2 = C8561b6.m17774j(i14, m17327a(t, j), false);
                        break;
                    case 26:
                        b2 = C8561b6.m17821a(i14, m17327a(t, j));
                        break;
                    case 27:
                        b2 = C8561b6.m17816a(i14, (List<?>) m17327a(t, j), m17341a(i12));
                        break;
                    case 28:
                        b2 = C8561b6.m17806b(i14, m17327a(t, j));
                        break;
                    case 29:
                        b2 = C8561b6.m17786f(i14, m17327a(t, j), false);
                        break;
                    case 30:
                        b2 = C8561b6.m17793d(i14, m17327a(t, j), false);
                        break;
                    case 31:
                        b2 = C8561b6.m17780h(i14, m17327a(t, j), false);
                        break;
                    case 32:
                        b2 = C8561b6.m17777i(i14, m17327a(t, j), false);
                        break;
                    case 33:
                        b2 = C8561b6.m17783g(i14, m17327a(t, j), false);
                        break;
                    case 34:
                        b2 = C8561b6.m17797c(i14, m17327a(t, j), false);
                        break;
                    case 35:
                        int f2 = C8561b6.m17785f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (f2 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, f2);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(f2);
                            i9 = f2;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int e = C8561b6.m17788e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (e > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, e);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(e);
                            i9 = e;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int h = C8561b6.m17779h((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (h > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, h);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(h);
                            i9 = h;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int i16 = C8561b6.m17776i((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (i16 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, i16);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(i16);
                            i9 = i16;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int b3 = C8561b6.m17800b((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (b3 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, b3);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(b3);
                            i9 = b3;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int f3 = C8561b6.m17785f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (f3 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, f3);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(f3);
                            i9 = f3;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int e2 = C8561b6.m17788e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (e2 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, e2);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(e2);
                            i9 = e2;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int g = C8561b6.m17782g((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (g > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, g);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(g);
                            i9 = g;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int c = C8561b6.m17796c((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (c > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, c);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(c);
                            i9 = c;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int a = C8561b6.m17809a((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (a > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, a);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(a);
                            i9 = a;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int e3 = C8561b6.m17788e((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (e3 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, e3);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(e3);
                            i9 = e3;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int f4 = C8561b6.m17785f((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (f4 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, f4);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(f4);
                            i9 = f4;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int d2 = C8561b6.m17792d((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (d2 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, d2);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(d2);
                            i9 = d2;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int j2 = C8561b6.m17773j((List) unsafe.getObject(t, j));
                        i11 = i11;
                        if (j2 > 0) {
                            if (this.f19873i) {
                                unsafe.putInt(t, i15, j2);
                            }
                            i10 = AbstractC8632i3.m17512e(i14);
                            i8 = AbstractC8632i3.m17505g(j2);
                            i9 = j2;
                            b2 = i10 + i8 + i9;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        b2 = C8561b6.m17802b(i14, m17327a(t, j), m17341a(i12));
                        break;
                    case 50:
                        b2 = this.f19881q.mo17673a(i14, C8776x6.m17028f(t, j), m17325b(i12));
                        break;
                    case 51:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17533b(i14, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17532b(i14, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17516d(i14, m17313e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17511e(i14, m17313e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17508f(i14, m17315d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17503g(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17496i(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17527b(i14, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            Object f5 = C8776x6.m17028f(t, j);
                            if (f5 instanceof AbstractC8736t2) {
                                b2 = AbstractC8632i3.m17518c(i14, (AbstractC8736t2) f5);
                                break;
                            } else {
                                b2 = AbstractC8632i3.m17528b(i14, (String) f5);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = C8561b6.m17822a(i14, C8776x6.m17028f(t, j), m17341a(i12));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17518c(i14, (AbstractC8736t2) C8776x6.m17028f(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17504g(i14, m17315d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17491k(i14, m17315d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17493j(i14, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17499h(i14, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17500h(i14, m17315d(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17507f(i14, m17313e(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i11 = i11;
                        if (m17332a((C8684n5<T>) t, i14, i12)) {
                            b2 = AbstractC8632i3.m17519c(i14, (AbstractC8648j5) C8776x6.m17028f(t, j), m17341a(i12));
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
            return i11 + m17337a((AbstractC8722r6) this.f19879o, (Object) t);
        }
        Unsafe unsafe2 = f19864s;
        int i17 = 0;
        int i18 = 0;
        int i19 = -1;
        int i20 = 0;
        while (i17 < this.f19865a.length) {
            int d3 = m17316d(i17);
            int[] iArr = this.f19865a;
            int i21 = iArr[i17];
            int i22 = (d3 & 267386880) >>> 20;
            if (i22 <= 17) {
                i2 = iArr[i17 + 2];
                int i23 = i2 & 1048575;
                i = 1 << (i2 >>> 20);
                if (i23 != i19) {
                    i20 = unsafe2.getInt(t, i23);
                    i19 = i23;
                }
            } else {
                i2 = (!this.f19873i || i22 < EnumC8764w3.DOUBLE_LIST_PACKED.m17081a() || i22 > EnumC8764w3.SINT64_LIST_PACKED.m17081a()) ? 0 : this.f19865a[i17 + 2] & 1048575;
                i = 0;
                i20 = i20;
                i19 = i19;
            }
            long j3 = d3 & 1048575;
            switch (i22) {
                case 0:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i18 += AbstractC8632i3.m17533b(i21, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i18 += AbstractC8632i3.m17532b(i21, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i3 = AbstractC8632i3.m17516d(i21, unsafe2.getLong(t, j3));
                        i18 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i3 = AbstractC8632i3.m17511e(i21, unsafe2.getLong(t, j3));
                        i18 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i3 = AbstractC8632i3.m17508f(i21, unsafe2.getInt(t, j3));
                        i18 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i3 = AbstractC8632i3.m17503g(i21, 0L);
                        i18 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i18 += AbstractC8632i3.m17496i(i21, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17527b(i21, true);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        b = object instanceof AbstractC8736t2 ? AbstractC8632i3.m17518c(i21, (AbstractC8736t2) object) : AbstractC8632i3.m17528b(i21, (String) object);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = C8561b6.m17822a(i21, unsafe2.getObject(t, j3), m17341a(i17));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17518c(i21, (AbstractC8736t2) unsafe2.getObject(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17504g(i21, unsafe2.getInt(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17491k(i21, unsafe2.getInt(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        i4 = AbstractC8632i3.m17493j(i21, 0);
                        i18 += i4;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17499h(i21, 0L);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17500h(i21, unsafe2.getInt(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17507f(i21, unsafe2.getLong(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i18 = i18;
                    if ((i20 & i) != 0) {
                        b = AbstractC8632i3.m17519c(i21, (AbstractC8648j5) unsafe2.getObject(t, j3), m17341a(i17));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    b = C8561b6.m17777i(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 19:
                    b = C8561b6.m17780h(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 20:
                    b = C8561b6.m17815a(i21, (List<Long>) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 21:
                    b = C8561b6.m17801b(i21, (List<Long>) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 22:
                    b = C8561b6.m17789e(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 23:
                    b = C8561b6.m17777i(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 24:
                    b = C8561b6.m17780h(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 25:
                    b = C8561b6.m17774j(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 26:
                    b = C8561b6.m17821a(i21, (List) unsafe2.getObject(t, j3));
                    i18 += b;
                    break;
                case 27:
                    b = C8561b6.m17816a(i21, (List<?>) unsafe2.getObject(t, j3), m17341a(i17));
                    i18 += b;
                    break;
                case 28:
                    b = C8561b6.m17806b(i21, (List) unsafe2.getObject(t, j3));
                    i18 += b;
                    break;
                case 29:
                    b = C8561b6.m17786f(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 30:
                    b = C8561b6.m17793d(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 31:
                    b = C8561b6.m17780h(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 32:
                    b = C8561b6.m17777i(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 33:
                    b = C8561b6.m17783g(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 34:
                    b = C8561b6.m17797c(i21, (List) unsafe2.getObject(t, j3), false);
                    i18 += b;
                    break;
                case 35:
                    int f6 = C8561b6.m17785f((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (f6 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, f6);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(f6);
                        i7 = f6;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 36:
                    int e4 = C8561b6.m17788e((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (e4 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, e4);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(e4);
                        i7 = e4;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 37:
                    int h2 = C8561b6.m17779h((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (h2 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, h2);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(h2);
                        i7 = h2;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 38:
                    int i24 = C8561b6.m17776i((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (i24 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, i24);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(i24);
                        i7 = i24;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 39:
                    int b4 = C8561b6.m17800b((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (b4 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, b4);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(b4);
                        i7 = b4;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 40:
                    int f7 = C8561b6.m17785f((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (f7 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, f7);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(f7);
                        i7 = f7;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 41:
                    int e5 = C8561b6.m17788e((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (e5 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, e5);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(e5);
                        i7 = e5;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 42:
                    int g2 = C8561b6.m17782g((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (g2 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, g2);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(g2);
                        i7 = g2;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 43:
                    int c2 = C8561b6.m17796c((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (c2 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, c2);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(c2);
                        i7 = c2;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 44:
                    int a2 = C8561b6.m17809a((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (a2 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, a2);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(a2);
                        i7 = a2;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 45:
                    int e6 = C8561b6.m17788e((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (e6 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, e6);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(e6);
                        i7 = e6;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 46:
                    int f8 = C8561b6.m17785f((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (f8 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, f8);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(f8);
                        i7 = f8;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 47:
                    int d4 = C8561b6.m17792d((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (d4 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, d4);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(d4);
                        i7 = d4;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 48:
                    int j4 = C8561b6.m17773j((List) unsafe2.getObject(t, j3));
                    i18 = i18;
                    if (j4 <= 0) {
                        break;
                    } else {
                        if (this.f19873i) {
                            unsafe2.putInt(t, i2, j4);
                        }
                        i6 = AbstractC8632i3.m17512e(i21);
                        i5 = AbstractC8632i3.m17505g(j4);
                        i7 = j4;
                        i4 = i6 + i5 + i7;
                        i18 += i4;
                        break;
                    }
                case 49:
                    b = C8561b6.m17802b(i21, (List) unsafe2.getObject(t, j3), m17341a(i17));
                    i18 += b;
                    break;
                case 50:
                    b = this.f19881q.mo17673a(i21, unsafe2.getObject(t, j3), m17325b(i17));
                    i18 += b;
                    break;
                case 51:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17533b(i21, 0.0d);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        i4 = AbstractC8632i3.m17532b(i21, 0.0f);
                        i18 += i4;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17516d(i21, m17313e(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17511e(i21, m17313e(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17508f(i21, m17315d(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17503g(i21, 0L);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        i4 = AbstractC8632i3.m17496i(i21, 0);
                        i18 += i4;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17527b(i21, true);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        b = object2 instanceof AbstractC8736t2 ? AbstractC8632i3.m17518c(i21, (AbstractC8736t2) object2) : AbstractC8632i3.m17528b(i21, (String) object2);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = C8561b6.m17822a(i21, unsafe2.getObject(t, j3), m17341a(i17));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17518c(i21, (AbstractC8736t2) unsafe2.getObject(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17504g(i21, m17315d(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17491k(i21, m17315d(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        i4 = AbstractC8632i3.m17493j(i21, 0);
                        i18 += i4;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17499h(i21, 0L);
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17500h(i21, m17315d(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17507f(i21, m17313e(t, j3));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i18 = i18;
                    if (m17332a((C8684n5<T>) t, i21, i17)) {
                        b = AbstractC8632i3.m17519c(i21, (AbstractC8648j5) unsafe2.getObject(t, j3), m17341a(i17));
                        i18 += b;
                        break;
                    } else {
                        break;
                    }
                default:
                    i18 = i18;
                    break;
            }
            i17 += 3;
            i20 = i20;
        }
        int a3 = i18 + m17337a((AbstractC8722r6) this.f19879o, (Object) t);
        int i25 = a3;
        if (this.f19870f) {
            i25 = a3 + this.f19880p.mo17223a(t).m17150g();
        }
        return i25;
    }

    /* renamed from: e */
    public final int m17314e(int i) {
        return this.f19865a[i + 2];
    }
}

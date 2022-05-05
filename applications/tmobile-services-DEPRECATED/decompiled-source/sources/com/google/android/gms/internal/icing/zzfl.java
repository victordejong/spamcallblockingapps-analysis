package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
import com.google.firebase.appindexing.Indexable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfl.class */
final class zzfl<T> implements zzfu<T> {

    /* renamed from: m */
    private static final int[] f8041m = new int[0];

    /* renamed from: n */
    private static final Unsafe f8042n = zzgs.m13561s();

    /* renamed from: a */
    private final int[] f8043a;

    /* renamed from: b */
    private final Object[] f8044b;

    /* renamed from: c */
    private final boolean f8045c;

    /* renamed from: d */
    private final boolean f8046d;

    /* renamed from: e */
    private final boolean f8047e;

    /* renamed from: f */
    private final int[] f8048f;

    /* renamed from: g */
    private final int f8049g;

    /* renamed from: h */
    private final int f8050h;

    /* renamed from: i */
    private final zzer f8051i;

    /* renamed from: j */
    private final zzgm<?, ?> f8052j;

    /* renamed from: k */
    private final zzdn<?> f8053k;

    /* renamed from: l */
    private final zzfa f8054l;

    private zzfl(int[] iArr, Object[] objArr, int i, int i2, zzfh zzfhVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzfm zzfmVar, zzer zzerVar, zzgm<?, ?> zzgmVar, zzdn<?> zzdnVar, zzfa zzfaVar) {
        this.f8043a = iArr;
        this.f8044b = objArr;
        boolean z3 = zzfhVar instanceof zzdx;
        this.f8046d = z;
        this.f8045c = zzdnVar != null && zzdnVar.mo13858e(zzfhVar);
        this.f8047e = false;
        this.f8048f = iArr2;
        this.f8049g = i3;
        this.f8050h = i4;
        this.f8051i = zzerVar;
        this.f8052j = zzgmVar;
        this.f8053k = zzdnVar;
        this.f8054l = zzfaVar;
    }

    /* renamed from: A */
    private final boolean m13743A(T t, T t2, int i) {
        return m13729o(t, i) == m13729o(t2, i);
    }

    /* renamed from: B */
    private static List<?> m13742B(Object obj, long j) {
        return (List) zzgs.m13588G(obj, j);
    }

    /* renamed from: C */
    private static <T> double m13741C(T t, long j) {
        return ((Double) zzgs.m13588G(t, j)).doubleValue();
    }

    /* renamed from: D */
    private static <T> float m13740D(T t, long j) {
        return ((Float) zzgs.m13588G(t, j)).floatValue();
    }

    /* renamed from: E */
    private static <T> int m13739E(T t, long j) {
        return ((Integer) zzgs.m13588G(t, j)).intValue();
    }

    /* renamed from: F */
    private static <T> long m13738F(T t, long j) {
        return ((Long) zzgs.m13588G(t, j)).longValue();
    }

    /* renamed from: G */
    private static <T> boolean m13737G(T t, long j) {
        return ((Boolean) zzgs.m13588G(t, j)).booleanValue();
    }

    /* renamed from: a */
    private static <UT, UB> int m13736a(zzgm<UT, UB> zzgmVar, T t) {
        return zzgmVar.mo13610f(zzgmVar.mo13609g(t));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static <T> zzfl<T> m13735i(Class<T> cls, zzff zzffVar, zzfm zzfmVar, zzer zzerVar, zzgm<?, ?> zzgmVar, zzdn<?> zzdnVar, zzfa zzfaVar) {
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
        int i16;
        int i17;
        Field field;
        int i18;
        char charAt;
        Field field2;
        Field field3;
        char charAt2;
        char charAt3;
        int i19;
        char charAt4;
        int i20;
        int i21;
        char charAt5;
        char charAt6;
        int i22;
        char charAt7;
        char charAt8;
        int i23;
        char charAt9;
        char charAt10;
        char charAt11;
        int i24;
        char charAt12;
        char charAt13;
        int i25;
        char charAt14;
        if (zzffVar instanceof zzfv) {
            zzfv zzfvVar = (zzfv) zzffVar;
            int i26 = 0;
            boolean z = zzfvVar.mo13619a() == zzdx.zze.f8007j;
            String d = zzfvVar.m13699d();
            int length = d.length();
            int charAt15 = d.charAt(0);
            if (charAt15 >= 55296) {
                int i27 = charAt15 & 8191;
                int i28 = 1;
                int i29 = 13;
                while (true) {
                    i25 = i28 + 1;
                    charAt14 = d.charAt(i28);
                    if (charAt14 < 55296) {
                        break;
                    }
                    i27 |= (charAt14 & 8191) << i29;
                    i29 += 13;
                    i28 = i25;
                }
                charAt15 = i27 | (charAt14 << i29);
                i = i25;
            } else {
                i = 1;
            }
            int i30 = i + 1;
            char charAt16 = d.charAt(i);
            int i31 = i30;
            int i32 = charAt16;
            if (charAt16 >= 55296) {
                int i33 = charAt16 & 8191;
                int i34 = 13;
                while (true) {
                    i30++;
                    charAt13 = d.charAt(i30);
                    if (charAt13 < 55296) {
                        break;
                    }
                    i33 |= (charAt13 & 8191) << i34;
                    i34 += 13;
                }
                i32 = i33 | (charAt13 << i34);
                i31 = i30;
            }
            if (i32 == 0) {
                iArr = f8041m;
                i4 = 0;
                i6 = 0;
                i3 = 0;
                i5 = 0;
                i2 = 0;
                i7 = 0;
            } else {
                int i35 = i31 + 1;
                char charAt17 = d.charAt(i31);
                int i36 = charAt17;
                int i37 = i35;
                if (charAt17 >= 55296) {
                    int i38 = charAt17 & 8191;
                    int i39 = 13;
                    int i40 = i35;
                    while (true) {
                        i24 = i40 + 1;
                        charAt12 = d.charAt(i40);
                        if (charAt12 < 55296) {
                            break;
                        }
                        i38 |= (charAt12 & 8191) << i39;
                        i39 += 13;
                        i40 = i24;
                    }
                    i36 = i38 | (charAt12 << i39);
                    i37 = i24;
                }
                int i41 = i37 + 1;
                char charAt18 = d.charAt(i37);
                int i42 = charAt18;
                int i43 = i41;
                if (charAt18 >= 55296) {
                    int i44 = charAt18 & 8191;
                    int i45 = 13;
                    while (true) {
                        i41++;
                        charAt11 = d.charAt(i41);
                        if (charAt11 < 55296) {
                            break;
                        }
                        i44 |= (charAt11 & 8191) << i45;
                        i45 += 13;
                    }
                    i42 = i44 | (charAt11 << i45);
                    i43 = i41;
                }
                int i46 = i43 + 1;
                char charAt19 = d.charAt(i43);
                i3 = charAt19;
                int i47 = i46;
                if (charAt19 >= 55296) {
                    int i48 = charAt19 & 8191;
                    int i49 = 13;
                    while (true) {
                        i46++;
                        charAt10 = d.charAt(i46);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i48 |= (charAt10 & 8191) << i49;
                        i49 += 13;
                    }
                    i3 = i48 | (charAt10 << i49);
                    i47 = i46;
                }
                int i50 = i47 + 1;
                char charAt20 = d.charAt(i47);
                i6 = charAt20;
                int i51 = i50;
                if (charAt20 >= 55296) {
                    int i52 = charAt20 & 8191;
                    int i53 = 13;
                    int i54 = i50;
                    while (true) {
                        i23 = i54 + 1;
                        charAt9 = d.charAt(i54);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i52 |= (charAt9 & 8191) << i53;
                        i53 += 13;
                        i54 = i23;
                    }
                    i6 = i52 | (charAt9 << i53);
                    i51 = i23;
                }
                int i55 = i51 + 1;
                char charAt21 = d.charAt(i51);
                i2 = charAt21;
                int i56 = i55;
                if (charAt21 >= 55296) {
                    int i57 = charAt21 & 8191;
                    int i58 = 13;
                    while (true) {
                        i55++;
                        charAt8 = d.charAt(i55);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i57 |= (charAt8 & 8191) << i58;
                        i58 += 13;
                    }
                    i2 = i57 | (charAt8 << i58);
                    i56 = i55;
                }
                int i59 = i56 + 1;
                char charAt22 = d.charAt(i56);
                int i60 = charAt22;
                int i61 = i59;
                if (charAt22 >= 55296) {
                    int i62 = charAt22 & 8191;
                    int i63 = 13;
                    int i64 = i59;
                    while (true) {
                        i22 = i64 + 1;
                        charAt7 = d.charAt(i64);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i62 |= (charAt7 & 8191) << i63;
                        i63 += 13;
                        i64 = i22;
                    }
                    i60 = i62 | (charAt7 << i63);
                    i61 = i22;
                }
                int i65 = i61 + 1;
                int charAt23 = d.charAt(i61);
                if (charAt23 >= 55296) {
                    int i66 = charAt23 & 8191;
                    int i67 = 13;
                    while (true) {
                        i20 = i65 + 1;
                        charAt6 = d.charAt(i65);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i66 |= (charAt6 & 8191) << i67;
                        i67 += 13;
                        i65 = i20;
                    }
                    charAt23 = i66 | (charAt6 << i67);
                } else {
                    i20 = i65;
                }
                int i68 = i20 + 1;
                char charAt24 = d.charAt(i20);
                int i69 = charAt24;
                i31 = i68;
                if (charAt24 >= 55296) {
                    int i70 = charAt24 & 8191;
                    int i71 = 13;
                    int i72 = i68;
                    while (true) {
                        i21 = i72 + 1;
                        charAt5 = d.charAt(i72);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i70 |= (charAt5 & 8191) << i71;
                        i71 += 13;
                        i72 = i21;
                    }
                    i69 = i70 | (charAt5 << i71);
                    i31 = i21;
                }
                iArr = new int[i69 + i60 + charAt23];
                i5 = (i36 << 1) + i42;
                i7 = i69;
                i4 = i60;
                i26 = i36;
            }
            Unsafe unsafe = f8042n;
            Object[] e = zzfvVar.m13698e();
            Class<?> cls2 = zzfvVar.mo13617c().getClass();
            int[] iArr2 = new int[i2 * 3];
            Object[] objArr = new Object[i2 << 1];
            int i73 = i7 + i4;
            int i74 = i73;
            int i75 = 0;
            int i76 = 0;
            int i77 = i7;
            while (i31 < length) {
                int i78 = i31 + 1;
                int charAt25 = d.charAt(i31);
                if (charAt25 >= 55296) {
                    int i79 = charAt25 & 8191;
                    int i80 = 13;
                    while (true) {
                        i19 = i78 + 1;
                        charAt4 = d.charAt(i78);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i79 |= (charAt4 & 8191) << i80;
                        i80 += 13;
                        i7 = i7;
                        i78 = i19;
                    }
                    charAt25 = i79 | (charAt4 << i80);
                    i8 = i19;
                } else {
                    i8 = i78;
                    i7 = i7;
                }
                int i81 = i8 + 1;
                int charAt26 = d.charAt(i8);
                if (charAt26 >= 55296) {
                    int i82 = charAt26 & 8191;
                    int i83 = 13;
                    while (true) {
                        i9 = i81 + 1;
                        charAt3 = d.charAt(i81);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i82 |= (charAt3 & 8191) << i83;
                        i83 += 13;
                        i81 = i9;
                    }
                    charAt26 = i82 | (charAt3 << i83);
                } else {
                    i9 = i81;
                }
                int i84 = charAt26 & 255;
                i75 = i75;
                if ((charAt26 & 1024) != 0) {
                    iArr[i75] = i76;
                    i75++;
                }
                if (i84 >= 51) {
                    int i85 = i9 + 1;
                    char charAt27 = d.charAt(i9);
                    i31 = i85;
                    int i86 = charAt27;
                    if (charAt27 >= 55296) {
                        int i87 = charAt27 & 8191;
                        int i88 = 13;
                        while (true) {
                            i31 = i85 + 1;
                            charAt2 = d.charAt(i85);
                            if (charAt2 < 55296) {
                                break;
                            }
                            i87 |= (charAt2 & 8191) << i88;
                            i88 += 13;
                            i85 = i31;
                        }
                        i86 = i87 | (charAt2 << i88);
                    }
                    int i89 = i84 - 51;
                    if (i89 == 9 || i89 == 17) {
                        objArr[((i76 / 3) << 1) + 1] = e[i5];
                        i5++;
                    } else {
                        i5 = i5;
                        if (i89 == 12) {
                            i5 = i5;
                            if ((charAt15 & 1) == 1) {
                                objArr[((i76 / 3) << 1) + 1] = e[i5];
                                i5++;
                            }
                        }
                    }
                    int i90 = i86 << 1;
                    Object obj = e[i90];
                    if (obj instanceof Field) {
                        field2 = (Field) obj;
                    } else {
                        field2 = m13734j(cls2, (String) obj);
                        e[i90] = field2;
                    }
                    i12 = (int) unsafe.objectFieldOffset(field2);
                    int i91 = i90 + 1;
                    Object obj2 = e[i91];
                    if (obj2 instanceof Field) {
                        field3 = (Field) obj2;
                    } else {
                        field3 = m13734j(cls2, (String) obj2);
                        e[i91] = field3;
                    }
                    i11 = (int) unsafe.objectFieldOffset(field3);
                    i10 = 0;
                    i77 = i77;
                    i74 = i74;
                } else {
                    int i92 = i5 + 1;
                    Field j = m13734j(cls2, (String) e[i5]);
                    if (i84 == 9 || i84 == 17) {
                        objArr[((i76 / 3) << 1) + 1] = j.getType();
                        i13 = i77;
                        i14 = i92;
                    } else {
                        if (i84 == 27 || i84 == 49) {
                            i14 = i92 + 1;
                            objArr[((i76 / 3) << 1) + 1] = e[i92];
                        } else if (i84 == 12 || i84 == 30 || i84 == 44) {
                            i14 = i92;
                            i13 = i77;
                            if ((charAt15 & 1) == 1) {
                                i14 = i92 + 1;
                                objArr[((i76 / 3) << 1) + 1] = e[i92];
                            }
                        } else {
                            i14 = i92;
                            i13 = i77;
                            if (i84 == 50) {
                                int i93 = i77 + 1;
                                iArr[i77] = i76;
                                int i94 = (i76 / 3) << 1;
                                int i95 = i92 + 1;
                                objArr[i94] = e[i92];
                                if ((charAt26 & 2048) != 0) {
                                    i14 = i95 + 1;
                                    objArr[i94 + 1] = e[i95];
                                    i13 = i93;
                                } else {
                                    i13 = i93;
                                    i14 = i95;
                                }
                            }
                        }
                        i13 = i77;
                    }
                    int objectFieldOffset = (int) unsafe.objectFieldOffset(j);
                    if ((charAt15 & 1) != 1 || i84 > 17) {
                        i16 = 0;
                        i15 = 0;
                        i17 = i9;
                    } else {
                        int i96 = i9 + 1;
                        char charAt28 = d.charAt(i9);
                        i17 = i96;
                        int i97 = charAt28;
                        if (charAt28 >= 55296) {
                            int i98 = charAt28 & 8191;
                            int i99 = 13;
                            while (true) {
                                i18 = i96 + 1;
                                charAt = d.charAt(i96);
                                if (charAt < 55296) {
                                    break;
                                }
                                i98 |= (charAt & 8191) << i99;
                                i99 += 13;
                                i96 = i18;
                            }
                            i97 = i98 | (charAt << i99);
                            i17 = i18;
                        }
                        int i100 = (i26 << 1) + (i97 / 32);
                        Object obj3 = e[i100];
                        if (obj3 instanceof Field) {
                            field = (Field) obj3;
                        } else {
                            field = m13734j(cls2, (String) obj3);
                            e[i100] = field;
                        }
                        i16 = (int) unsafe.objectFieldOffset(field);
                        i15 = i97 % 32;
                    }
                    i12 = objectFieldOffset;
                    i11 = i16;
                    i10 = i15;
                    i31 = i17;
                    i77 = i13;
                    i74 = i74;
                    i5 = i14;
                    if (i84 >= 18) {
                        i12 = objectFieldOffset;
                        i11 = i16;
                        i10 = i15;
                        i31 = i17;
                        i77 = i13;
                        i74 = i74;
                        i5 = i14;
                        if (i84 <= 49) {
                            iArr[i74] = objectFieldOffset;
                            i74++;
                            i5 = i14;
                            i77 = i13;
                            i31 = i17;
                            i10 = i15;
                            i11 = i16;
                            i12 = objectFieldOffset;
                        }
                    }
                }
                int i101 = i76 + 1;
                iArr2[i76] = charAt25;
                int i102 = i101 + 1;
                iArr2[i101] = i12 | ((charAt26 & Indexable.MAX_URL_LENGTH) != 0 ? 268435456 : 0) | ((charAt26 & 512) != 0 ? 536870912 : 0) | (i84 << 20);
                i76 = i102 + 1;
                iArr2[i102] = (i10 << 20) | i11;
            }
            return new zzfl<>(iArr2, objArr, i3, i6, zzfvVar.mo13617c(), z, false, iArr, i7, i73, zzfmVar, zzerVar, zzgmVar, zzdnVar, zzfaVar);
        }
        ((zzgj) zzffVar).mo13619a();
        throw null;
    }

    /* renamed from: j */
    private static Field m13734j(Class<?> cls, String str) {
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

    /* renamed from: k */
    private static void m13733k(int i, Object obj, zzhg zzhgVar) throws IOException {
        if (obj instanceof String) {
            zzhgVar.mo13497n(i, (String) obj);
        } else {
            zzhgVar.mo13512N(i, (zzct) obj);
        }
    }

    /* renamed from: l */
    private static <UT, UB> void m13732l(zzgm<UT, UB> zzgmVar, T t, zzhg zzhgVar) throws IOException {
        zzgmVar.mo13615a(zzgmVar.mo13609g(t), zzhgVar);
    }

    /* renamed from: m */
    private final <K, V> void m13731m(zzhg zzhgVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzhgVar.mo13514L(i, this.f8054l.mo13763c(m13724t(i2)), this.f8054l.mo13760f(obj));
        }
    }

    /* renamed from: n */
    private final void m13730n(T t, T t2, int i) {
        long u = m13723u(i) & 1048575;
        if (m13729o(t2, i)) {
            Object G = zzgs.m13588G(t, u);
            Object G2 = zzgs.m13588G(t2, u);
            if (G != null && G2 != null) {
                zzgs.m13573g(t, u, zzeb.m13803d(G, G2));
                m13721w(t, i);
            } else if (G2 != null) {
                zzgs.m13573g(t, u, G2);
                m13721w(t, i);
            }
        }
    }

    /* renamed from: o */
    private final boolean m13729o(T t, int i) {
        if (this.f8046d) {
            int u = m13723u(i);
            long j = u & 1048575;
            switch ((u & 267386880) >>> 20) {
                case 0:
                    return zzgs.m13589F(t, j) != 0.0d;
                case 1:
                    return zzgs.m13590E(t, j) != 0.0f;
                case 2:
                    return zzgs.m13592C(t, j) != 0;
                case 3:
                    return zzgs.m13592C(t, j) != 0;
                case 4:
                    return zzgs.m13594A(t, j) != 0;
                case 5:
                    return zzgs.m13592C(t, j) != 0;
                case 6:
                    return zzgs.m13594A(t, j) != 0;
                case 7:
                    return zzgs.m13591D(t, j);
                case 8:
                    Object G = zzgs.m13588G(t, j);
                    if (G instanceof String) {
                        return !((String) G).isEmpty();
                    }
                    if (G instanceof zzct) {
                        return !zzct.f7956g.equals(G);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzgs.m13588G(t, j) != null;
                case 10:
                    return !zzct.f7956g.equals(zzgs.m13588G(t, j));
                case 11:
                    return zzgs.m13594A(t, j) != 0;
                case 12:
                    return zzgs.m13594A(t, j) != 0;
                case 13:
                    return zzgs.m13594A(t, j) != 0;
                case 14:
                    return zzgs.m13592C(t, j) != 0;
                case 15:
                    return zzgs.m13594A(t, j) != 0;
                case 16:
                    return zzgs.m13592C(t, j) != 0;
                case 17:
                    return zzgs.m13588G(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int v = m13722v(i);
            return (zzgs.m13594A(t, (long) (v & 1048575)) & (1 << (v >>> 20))) != 0;
        }
    }

    /* renamed from: p */
    private final boolean m13728p(T t, int i, int i2) {
        return zzgs.m13594A(t, (long) (m13722v(i2) & 1048575)) == i;
    }

    /* renamed from: q */
    private final boolean m13727q(T t, int i, int i2, int i3) {
        return this.f8046d ? m13729o(t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    private static boolean m13726r(Object obj, int i, zzfu zzfuVar) {
        return zzfuVar.mo13703e(zzgs.m13588G(obj, i & 1048575));
    }

    /* renamed from: s */
    private final zzfu m13725s(int i) {
        int i2 = (i / 3) << 1;
        zzfu zzfuVar = (zzfu) this.f8044b[i2];
        if (zzfuVar != null) {
            return zzfuVar;
        }
        zzfu<T> b = zzft.m13709a().m13708b((Class) this.f8044b[i2 + 1]);
        this.f8044b[i2] = b;
        return b;
    }

    /* renamed from: t */
    private final Object m13724t(int i) {
        return this.f8044b[(i / 3) << 1];
    }

    /* renamed from: u */
    private final int m13723u(int i) {
        return this.f8043a[i + 1];
    }

    /* renamed from: v */
    private final int m13722v(int i) {
        return this.f8043a[i + 2];
    }

    /* renamed from: w */
    private final void m13721w(T t, int i) {
        if (!this.f8046d) {
            int v = m13722v(i);
            long j = v & 1048575;
            zzgs.m13575e(t, j, zzgs.m13594A(t, j) | (1 << (v >>> 20)));
        }
    }

    /* renamed from: x */
    private final void m13720x(T t, int i, int i2) {
        zzgs.m13575e(t, m13722v(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0965  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x096f  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m13719y(T r9, com.google.android.gms.internal.icing.zzhg r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfl.m13719y(java.lang.Object, com.google.android.gms.internal.icing.zzhg):void");
    }

    /* renamed from: z */
    private final void m13718z(T t, T t2, int i) {
        int u = m13723u(i);
        int i2 = this.f8043a[i];
        long j = u & 1048575;
        if (m13728p(t2, i2, i)) {
            Object G = zzgs.m13588G(t, j);
            Object G2 = zzgs.m13588G(t2, j);
            if (G != null && G2 != null) {
                zzgs.m13573g(t, j, zzeb.m13803d(G, G2));
                m13720x(t, i2, i);
            } else if (G2 != null) {
                zzgs.m13573g(t, j, G2);
                m13720x(t, i2, i);
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: b */
    public final void mo13706b(T t) {
        int i;
        int i2 = this.f8049g;
        while (true) {
            i = this.f8050h;
            if (i2 >= i) {
                break;
            }
            long u = m13723u(this.f8048f[i2]) & 1048575;
            Object G = zzgs.m13588G(t, u);
            if (G != null) {
                zzgs.m13573g(t, u, this.f8054l.mo13762d(G));
            }
            i2++;
        }
        int length = this.f8048f.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f8051i.mo13782a(t, this.f8048f[i3]);
        }
        this.f8052j.mo13611e(t);
        if (this.f8045c) {
            this.f8053k.mo13857f(t);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: c */
    public final int mo13705c(T t) {
        int i;
        int i2;
        int i3;
        int L;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int w;
        int i9;
        int i10;
        int i11;
        if (this.f8046d) {
            Unsafe unsafe = f8042n;
            int i12 = 0;
            for (int i13 = 0; i13 < this.f8043a.length; i13 += 3) {
                int u = m13723u(i13);
                int i14 = (u & 267386880) >>> 20;
                int i15 = this.f8043a[i13];
                long j = u & 1048575;
                int i16 = (i14 < zzdt.DOUBLE_LIST_PACKED.m13837id() || i14 > zzdt.SINT64_LIST_PACKED.m13837id()) ? 0 : this.f8043a[i13 + 2] & 1048575;
                switch (i14) {
                    case 0:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13902w(i15, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 1:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13900x(i15, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13938T(i15, zzgs.m13592C(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13935Y(i15, zzgs.m13592C(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13922g0(i15, zzgs.m13594A(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13920h0(i15, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13913o0(i15, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13951C(i15, true);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            Object G = zzgs.m13588G(t, j);
                            if (G instanceof zzct) {
                                w = zzdk.m13943L(i15, (zzct) G);
                                break;
                            } else {
                                w = zzdk.m13953B(i15, (String) G);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 9:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzfw.m13658l(i15, zzgs.m13588G(t, j), m13725s(i13));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13943L(i15, (zzct) zzgs.m13588G(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13918j0(i15, zzgs.m13594A(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13908r0(i15, zzgs.m13594A(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13909q0(i15, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13917k0(i15, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13915m0(i15, zzgs.m13594A(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13929c0(i15, zzgs.m13592C(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i12 = i12;
                        if (m13729o(t, i13)) {
                            w = zzdk.m13942M(i15, (zzfh) zzgs.m13588G(t, j), m13725s(i13));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        w = zzfw.m13670a0(i15, m13742B(t, j), false);
                        break;
                    case 19:
                        w = zzfw.m13672Z(i15, m13742B(t, j), false);
                        break;
                    case 20:
                        w = zzfw.m13679S(i15, m13742B(t, j), false);
                        break;
                    case 21:
                        w = zzfw.m13678T(i15, m13742B(t, j), false);
                        break;
                    case 22:
                        w = zzfw.m13675W(i15, m13742B(t, j), false);
                        break;
                    case 23:
                        w = zzfw.m13670a0(i15, m13742B(t, j), false);
                        break;
                    case 24:
                        w = zzfw.m13672Z(i15, m13742B(t, j), false);
                        break;
                    case 25:
                        w = zzfw.m13668b0(i15, m13742B(t, j), false);
                        break;
                    case 26:
                        w = zzfw.m13657m(i15, m13742B(t, j));
                        break;
                    case 27:
                        w = zzfw.m13656n(i15, m13742B(t, j), m13725s(i13));
                        break;
                    case 28:
                        w = zzfw.m13651s(i15, m13742B(t, j));
                        break;
                    case 29:
                        w = zzfw.m13674X(i15, m13742B(t, j), false);
                        break;
                    case 30:
                        w = zzfw.m13676V(i15, m13742B(t, j), false);
                        break;
                    case 31:
                        w = zzfw.m13672Z(i15, m13742B(t, j), false);
                        break;
                    case 32:
                        w = zzfw.m13670a0(i15, m13742B(t, j), false);
                        break;
                    case 33:
                        w = zzfw.m13673Y(i15, m13742B(t, j), false);
                        break;
                    case 34:
                        w = zzfw.m13677U(i15, m13742B(t, j), false);
                        break;
                    case 35:
                        int K = zzfw.m13687K((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (K > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, K);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(K);
                            i10 = K;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int H = zzfw.m13690H((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (H > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, H);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(H);
                            i10 = H;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int a = zzfw.m13671a((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (a > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, a);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(a);
                            i10 = a;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int h = zzfw.m13662h((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (h > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, h);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(h);
                            i10 = h;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int A = zzfw.m13697A((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (A > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, A);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(A);
                            i10 = A;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int K2 = zzfw.m13687K((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (K2 > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, K2);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(K2);
                            i10 = K2;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int H2 = zzfw.m13690H((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (H2 > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, H2);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(H2);
                            i10 = H2;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int M = zzfw.m13685M((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (M > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, M);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(M);
                            i10 = M;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int C = zzfw.m13695C((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (C > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, C);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(C);
                            i10 = C;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int u2 = zzfw.m13649u((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (u2 > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, u2);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(u2);
                            i10 = u2;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int H3 = zzfw.m13690H((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (H3 > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, H3);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(H3);
                            i10 = H3;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int K3 = zzfw.m13687K((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (K3 > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, K3);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(K3);
                            i10 = K3;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int F = zzfw.m13692F((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (F > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, F);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(F);
                            i10 = F;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int o = zzfw.m13655o((List) unsafe.getObject(t, j));
                        i12 = i12;
                        if (o > 0) {
                            if (this.f8047e) {
                                unsafe.putInt(t, i16, o);
                            }
                            i11 = zzdk.m13898y0(i15);
                            i9 = zzdk.m13954A0(o);
                            i10 = o;
                            w = i11 + i9 + i10;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        w = zzfw.m13650t(i15, m13742B(t, j), m13725s(i13));
                        break;
                    case 50:
                        w = this.f8054l.mo13761e(i15, zzgs.m13588G(t, j), m13724t(i13));
                        break;
                    case 51:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13902w(i15, 0.0d);
                            break;
                        } else {
                            continue;
                        }
                    case 52:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13900x(i15, 0.0f);
                            break;
                        } else {
                            continue;
                        }
                    case 53:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13938T(i15, m13738F(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13935Y(i15, m13738F(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13922g0(i15, m13739E(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13920h0(i15, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 57:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13913o0(i15, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 58:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13951C(i15, true);
                            break;
                        } else {
                            continue;
                        }
                    case 59:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            Object G2 = zzgs.m13588G(t, j);
                            if (G2 instanceof zzct) {
                                w = zzdk.m13943L(i15, (zzct) G2);
                                break;
                            } else {
                                w = zzdk.m13953B(i15, (String) G2);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 60:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzfw.m13658l(i15, zzgs.m13588G(t, j), m13725s(i13));
                            break;
                        } else {
                            continue;
                        }
                    case 61:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13943L(i15, (zzct) zzgs.m13588G(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 62:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13918j0(i15, m13739E(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13908r0(i15, m13739E(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13909q0(i15, 0);
                            break;
                        } else {
                            continue;
                        }
                    case 65:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13917k0(i15, 0L);
                            break;
                        } else {
                            continue;
                        }
                    case 66:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13915m0(i15, m13739E(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13929c0(i15, m13738F(t, j));
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i12 = i12;
                        if (m13728p(t, i15, i13)) {
                            w = zzdk.m13942M(i15, (zzfh) zzgs.m13588G(t, j), m13725s(i13));
                            break;
                        } else {
                            continue;
                        }
                    default:
                        i12 = i12;
                        continue;
                }
                i12 += w;
            }
            return i12 + m13736a(this.f8052j, t);
        }
        Unsafe unsafe2 = f8042n;
        int i17 = -1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i18 < this.f8043a.length) {
            int u3 = m13723u(i18);
            int[] iArr = this.f8043a;
            int i21 = iArr[i18];
            int i22 = (u3 & 267386880) >>> 20;
            if (i22 <= 17) {
                int i23 = iArr[i18 + 2];
                int i24 = i23 & 1048575;
                i = 1 << (i23 >>> 20);
                i17 = i17;
                if (i24 != i17) {
                    i20 = unsafe2.getInt(t, i24);
                    i17 = i24;
                }
                i2 = i23;
            } else {
                i2 = (!this.f8047e || i22 < zzdt.DOUBLE_LIST_PACKED.m13837id() || i22 > zzdt.SINT64_LIST_PACKED.m13837id()) ? 0 : this.f8043a[i18 + 2] & 1048575;
                i = 0;
                i20 = i20;
                i17 = i17;
            }
            long j2 = u3 & 1048575;
            switch (i22) {
                case 0:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i19 += zzdk.m13902w(i21, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i19 += zzdk.m13900x(i21, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i3 = zzdk.m13938T(i21, unsafe2.getLong(t, j2));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i3 = zzdk.m13935Y(i21, unsafe2.getLong(t, j2));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i3 = zzdk.m13922g0(i21, unsafe2.getInt(t, j2));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i3 = zzdk.m13920h0(i21, 0L);
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i19 += zzdk.m13913o0(i21, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i19 += zzdk.m13951C(i21, true);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        L = object instanceof zzct ? zzdk.m13943L(i21, (zzct) object) : zzdk.m13953B(i21, (String) object);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzfw.m13658l(i21, unsafe2.getObject(t, j2), m13725s(i18));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13943L(i21, (zzct) unsafe2.getObject(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13918j0(i21, unsafe2.getInt(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13908r0(i21, unsafe2.getInt(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        i4 = zzdk.m13909q0(i21, 0);
                        i19 += i4;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13917k0(i21, 0L);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13915m0(i21, unsafe2.getInt(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13929c0(i21, unsafe2.getLong(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i19 = i19;
                    if ((i20 & i) != 0) {
                        L = zzdk.m13942M(i21, (zzfh) unsafe2.getObject(t, j2), m13725s(i18));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    L = zzfw.m13670a0(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += L;
                    break;
                case 19:
                    i5 = zzfw.m13672Z(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 20:
                    i5 = zzfw.m13679S(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 21:
                    i5 = zzfw.m13678T(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 22:
                    i5 = zzfw.m13675W(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 23:
                    i5 = zzfw.m13670a0(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 24:
                    i5 = zzfw.m13672Z(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 25:
                    i5 = zzfw.m13668b0(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 26:
                    L = zzfw.m13657m(i21, (List) unsafe2.getObject(t, j2));
                    i19 += L;
                    break;
                case 27:
                    L = zzfw.m13656n(i21, (List) unsafe2.getObject(t, j2), m13725s(i18));
                    i19 += L;
                    break;
                case 28:
                    L = zzfw.m13651s(i21, (List) unsafe2.getObject(t, j2));
                    i19 += L;
                    break;
                case 29:
                    L = zzfw.m13674X(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += L;
                    break;
                case 30:
                    i5 = zzfw.m13676V(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 31:
                    i5 = zzfw.m13672Z(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 32:
                    i5 = zzfw.m13670a0(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 33:
                    i5 = zzfw.m13673Y(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 34:
                    i5 = zzfw.m13677U(i21, (List) unsafe2.getObject(t, j2), false);
                    i19 += i5;
                    break;
                case 35:
                    int K4 = zzfw.m13687K((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (K4 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, K4);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(K4);
                        i8 = K4;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 36:
                    int H4 = zzfw.m13690H((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (H4 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, H4);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(H4);
                        i8 = H4;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 37:
                    int a2 = zzfw.m13671a((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (a2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, a2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(a2);
                        i8 = a2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 38:
                    int h2 = zzfw.m13662h((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (h2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, h2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(h2);
                        i8 = h2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 39:
                    int A2 = zzfw.m13697A((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (A2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, A2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(A2);
                        i8 = A2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 40:
                    int K5 = zzfw.m13687K((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (K5 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, K5);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(K5);
                        i8 = K5;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 41:
                    int H5 = zzfw.m13690H((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (H5 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, H5);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(H5);
                        i8 = H5;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 42:
                    int M2 = zzfw.m13685M((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (M2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, M2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(M2);
                        i8 = M2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 43:
                    int C2 = zzfw.m13695C((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (C2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, C2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(C2);
                        i8 = C2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 44:
                    int u4 = zzfw.m13649u((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (u4 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, u4);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(u4);
                        i8 = u4;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 45:
                    int H6 = zzfw.m13690H((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (H6 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, H6);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(H6);
                        i8 = H6;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 46:
                    int K6 = zzfw.m13687K((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (K6 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, K6);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(K6);
                        i8 = K6;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 47:
                    int F2 = zzfw.m13692F((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (F2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, F2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(F2);
                        i8 = F2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 48:
                    int o2 = zzfw.m13655o((List) unsafe2.getObject(t, j2));
                    i19 = i19;
                    if (o2 <= 0) {
                        break;
                    } else {
                        if (this.f8047e) {
                            unsafe2.putInt(t, i2, o2);
                        }
                        i7 = zzdk.m13898y0(i21);
                        i6 = zzdk.m13954A0(o2);
                        i8 = o2;
                        i4 = i7 + i6 + i8;
                        i19 += i4;
                        break;
                    }
                case 49:
                    L = zzfw.m13650t(i21, (List) unsafe2.getObject(t, j2), m13725s(i18));
                    i19 += L;
                    break;
                case 50:
                    L = this.f8054l.mo13761e(i21, unsafe2.getObject(t, j2), m13724t(i18));
                    i19 += L;
                    break;
                case 51:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13902w(i21, 0.0d);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        i4 = zzdk.m13900x(i21, 0.0f);
                        i19 += i4;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13938T(i21, m13738F(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13935Y(i21, m13738F(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13922g0(i21, m13739E(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13920h0(i21, 0L);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        i4 = zzdk.m13913o0(i21, 0);
                        i19 += i4;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        i4 = zzdk.m13951C(i21, true);
                        i19 += i4;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        L = object2 instanceof zzct ? zzdk.m13943L(i21, (zzct) object2) : zzdk.m13953B(i21, (String) object2);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzfw.m13658l(i21, unsafe2.getObject(t, j2), m13725s(i18));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13943L(i21, (zzct) unsafe2.getObject(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13918j0(i21, m13739E(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13908r0(i21, m13739E(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        i4 = zzdk.m13909q0(i21, 0);
                        i19 += i4;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13917k0(i21, 0L);
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13915m0(i21, m13739E(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13929c0(i21, m13738F(t, j2));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i19 = i19;
                    if (m13728p(t, i21, i18)) {
                        L = zzdk.m13942M(i21, (zzfh) unsafe2.getObject(t, j2), m13725s(i18));
                        i19 += L;
                        break;
                    } else {
                        break;
                    }
                default:
                    i19 = i19;
                    break;
            }
            i18 += 3;
            i20 = i20;
        }
        int i25 = 0;
        int a3 = i19 + m13736a(this.f8052j, t);
        int i26 = a3;
        if (this.f8045c) {
            zzds<?> c = this.f8053k.mo13860c(t);
            for (int i27 = 0; i27 < c.f7989a.m13630o(); i27++) {
                Map.Entry<?, Object> j3 = c.f7989a.m13635j(i27);
                i25 += zzds.m13845l((zzdu) j3.getKey(), j3.getValue());
            }
            for (Map.Entry<?, Object> entry : c.f7989a.m13629p()) {
                i25 += zzds.m13845l((zzdu) entry.getKey(), entry.getValue());
            }
            i26 = a3 + i25;
        }
        return i26;
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: d */
    public final void mo13704d(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.f8043a.length; i += 3) {
                int u = m13723u(i);
                long j = 1048575 & u;
                int i2 = this.f8043a[i];
                switch ((u & 267386880) >>> 20) {
                    case 0:
                        if (m13729o(t2, i)) {
                            zzgs.m13577c(t, j, zzgs.m13589F(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (m13729o(t2, i)) {
                            zzgs.m13576d(t, j, zzgs.m13590E(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (m13729o(t2, i)) {
                            zzgs.m13574f(t, j, zzgs.m13592C(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (m13729o(t2, i)) {
                            zzgs.m13574f(t, j, zzgs.m13592C(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (m13729o(t2, i)) {
                            zzgs.m13574f(t, j, zzgs.m13592C(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (m13729o(t2, i)) {
                            zzgs.m13572h(t, j, zzgs.m13591D(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (m13729o(t2, i)) {
                            zzgs.m13573g(t, j, zzgs.m13588G(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        m13730n(t, t2, i);
                        break;
                    case 10:
                        if (m13729o(t2, i)) {
                            zzgs.m13573g(t, j, zzgs.m13588G(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (m13729o(t2, i)) {
                            zzgs.m13574f(t, j, zzgs.m13592C(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (m13729o(t2, i)) {
                            zzgs.m13575e(t, j, zzgs.m13594A(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (m13729o(t2, i)) {
                            zzgs.m13574f(t, j, zzgs.m13592C(t2, j));
                            m13721w(t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        m13730n(t, t2, i);
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
                        this.f8051i.mo13781b(t, t2, j);
                        break;
                    case 50:
                        zzfw.m13664f(this.f8054l, t, t2, j);
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
                        if (m13728p(t2, i2, i)) {
                            zzgs.m13573g(t, j, zzgs.m13588G(t2, j));
                            m13720x(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        m13718z(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m13728p(t2, i2, i)) {
                            zzgs.m13573g(t, j, zzgs.m13588G(t2, j));
                            m13720x(t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        m13718z(t, t2, i);
                        break;
                }
            }
            zzfw.m13663g(this.f8052j, t, t2);
            if (this.f8045c) {
                zzfw.m13665e(this.f8053k, t, t2);
                return;
            }
            return;
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: e */
    public final boolean mo13703e(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f8049g; i4++) {
            int i5 = this.f8048f[i4];
            int i6 = this.f8043a[i5];
            int u = m13723u(i5);
            if (!this.f8046d) {
                int i7 = this.f8043a[i5 + 2];
                int i8 = i7 & 1048575;
                int i9 = 1 << (i7 >>> 20);
                i2 = i2;
                i = i9;
                if (i8 != i2) {
                    i3 = f8042n.getInt(t, i8);
                    i2 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i2 = i2;
            }
            if (((268435456 & u) != 0) && !m13727q(t, i5, i3, i)) {
                return false;
            }
            int i10 = (267386880 & u) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 == 60 || i10 == 68) {
                        if (m13728p(t, i6, i5) && !m13726r(t, u, m13725s(i5))) {
                            return false;
                        }
                    } else if (i10 != 49) {
                        if (i10 != 50) {
                            continue;
                        } else {
                            Map<?, ?> f = this.f8054l.mo13760f(zzgs.m13588G(t, u & 1048575));
                            boolean z = true;
                            if (!f.isEmpty()) {
                                z = true;
                                if (this.f8054l.mo13763c(m13724t(i5)).f8031b.zzdt() == zzhh.MESSAGE) {
                                    zzfu<T> zzfuVar = null;
                                    Iterator<?> it = f.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzfu<T> zzfuVar2 = zzfuVar;
                                        if (zzfuVar == null) {
                                            zzfuVar2 = zzft.m13709a().m13708b(next.getClass());
                                        }
                                        zzfuVar = zzfuVar2;
                                        if (!zzfuVar2.mo13703e(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzgs.m13588G(t, u & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzfu s = m13725s(i5);
                    int i11 = 0;
                    while (true) {
                        z2 = true;
                        if (i11 >= list.size()) {
                            break;
                        } else if (!s.mo13703e(list.get(i11))) {
                            z2 = false;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (m13727q(t, i5, i3, i) && !m13726r(t, u, m13725s(i5))) {
                return false;
            }
        }
        return !this.f8045c || this.f8053k.mo13860c(t).m13854c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (com.google.android.gms.internal.icing.zzfw.m13647w(com.google.android.gms.internal.icing.zzgs.m13588G(r7, r0), com.google.android.gms.internal.icing.zzgs.m13588G(r8, r0)) != false) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c6, code lost:
        if (com.google.android.gms.internal.icing.zzfw.m13647w(com.google.android.gms.internal.icing.zzgs.m13588G(r7, r0), com.google.android.gms.internal.icing.zzgs.m13588G(r8, r0)) != false) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01e4, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13592C(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13592C(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0201, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021f, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13592C(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13592C(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x023c, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0259, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0276, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0296, code lost:
        if (com.google.android.gms.internal.icing.zzfw.m13647w(com.google.android.gms.internal.icing.zzgs.m13588G(r7, r0), com.google.android.gms.internal.icing.zzgs.m13588G(r8, r0)) != false) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b6, code lost:
        if (com.google.android.gms.internal.icing.zzfw.m13647w(com.google.android.gms.internal.icing.zzgs.m13588G(r7, r0), com.google.android.gms.internal.icing.zzgs.m13588G(r8, r0)) != false) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d6, code lost:
        if (com.google.android.gms.internal.icing.zzfw.m13647w(com.google.android.gms.internal.icing.zzgs.m13588G(r7, r0), com.google.android.gms.internal.icing.zzgs.m13588G(r8, r0)) != false) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02f3, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13591D(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13591D(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0310, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x032e, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13592C(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13592C(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x034b, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13594A(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13594A(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0369, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13592C(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13592C(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0387, code lost:
        if (com.google.android.gms.internal.icing.zzgs.m13592C(r7, r0) == com.google.android.gms.internal.icing.zzgs.m13592C(r8, r0)) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03aa, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.icing.zzgs.m13590E(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.icing.zzgs.m13590E(r8, r0))) goto L_0x03d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03ce, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.icing.zzgs.m13589F(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.icing.zzgs.m13589F(r8, r0))) goto L_0x03d4;
     */
    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo13702f(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfl.mo13702f(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x09e6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x09e7  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0a36  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x13ce  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x13d8  */
    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo13701g(T r8, com.google.android.gms.internal.icing.zzhg r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfl.mo13701g(java.lang.Object, com.google.android.gms.internal.icing.zzhg):void");
    }

    @Override // com.google.android.gms.internal.icing.zzfu
    /* renamed from: h */
    public final int mo13700h(T t) {
        int i;
        int i2;
        int length = this.f8043a.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int u = m13723u(i4);
            int i5 = this.f8043a[i4];
            long j = 1048575 & u;
            int i6 = 37;
            switch ((u & 267386880) >>> 20) {
                case 0:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(Double.doubleToLongBits(zzgs.m13589F(t, j)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(zzgs.m13590E(t, j));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(zzgs.m13592C(t, j));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(zzgs.m13592C(t, j));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(zzgs.m13592C(t, j));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = zzeb.m13798i(zzgs.m13591D(t, j));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) zzgs.m13588G(t, j)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object G = zzgs.m13588G(t, j);
                    if (G != null) {
                        i6 = G.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = zzgs.m13588G(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(zzgs.m13592C(t, j));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = zzgs.m13594A(t, j);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = zzeb.m13797j(zzgs.m13592C(t, j));
                    i3 = i + i2;
                    break;
                case 17:
                    Object G2 = zzgs.m13588G(t, j);
                    if (G2 != null) {
                        i6 = G2.hashCode();
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
                    i2 = zzgs.m13588G(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = zzgs.m13588G(t, j).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(Double.doubleToLongBits(m13741C(t, j)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(m13740D(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(m13738F(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(m13738F(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(m13738F(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13798i(m13737G(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = ((String) zzgs.m13588G(t, j)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzgs.m13588G(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzgs.m13588G(t, j).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(m13738F(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = m13739E(t, j);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzeb.m13797j(m13738F(t, j));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (m13728p(t, i5, i4)) {
                        i = i3 * 53;
                        i2 = zzgs.m13588G(t, j).hashCode();
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
        int hashCode = (i3 * 53) + this.f8052j.mo13609g(t).hashCode();
        int i7 = hashCode;
        if (this.f8045c) {
            i7 = (hashCode * 53) + this.f8053k.mo13860c(t).hashCode();
        }
        return i7;
    }
}

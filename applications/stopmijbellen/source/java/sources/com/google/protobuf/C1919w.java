package com.google.protobuf;

import com.google.android.gms.ads.AdRequest;
import com.google.protobuf.C1886h;
import com.google.protobuf.C1911q;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0033h;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4916n;
import p287x6.AbstractC4919q;
import p287x6.AbstractC4925w;
import p287x6.C4884b0;
import p287x6.C4923u;
import p287x6.C4924v;
import p287x6.C4927y;
import p287x6.EnumC4904d0;
import p287x6.EnumC4907g;
import sun.misc.Unsafe;
/* renamed from: com.google.protobuf.w */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/w.class */
public final class C1919w<T> implements AbstractC4925w<T> {

    /* renamed from: r */
    public static final int[] f7113r = new int[0];

    /* renamed from: s */
    public static final Unsafe f7114s = C4884b0.m302o();

    /* renamed from: a */
    public final int[] f7115a;

    /* renamed from: b */
    public final Object[] f7116b;

    /* renamed from: c */
    public final int f7117c;

    /* renamed from: d */
    public final int f7118d;

    /* renamed from: e */
    public final AbstractC1916u f7119e;

    /* renamed from: f */
    public final boolean f7120f;

    /* renamed from: g */
    public final boolean f7121g;

    /* renamed from: h */
    public final boolean f7122h;

    /* renamed from: i */
    public final boolean f7123i;

    /* renamed from: j */
    public final int[] f7124j;

    /* renamed from: k */
    public final int f7125k;

    /* renamed from: l */
    public final int f7126l;

    /* renamed from: m */
    public final AbstractC4919q f7127m;

    /* renamed from: n */
    public final AbstractC1906o f7128n;

    /* renamed from: o */
    public final AbstractC1875d0<?, ?> f7129o;

    /* renamed from: p */
    public final AbstractC1878f<?> f7130p;

    /* renamed from: q */
    public final AbstractC1914s f7131q;

    public C1919w(int[] iArr, Object[] objArr, int i, int i2, AbstractC1916u abstractC1916u, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC4919q abstractC4919q, AbstractC1906o abstractC1906o, AbstractC1875d0<?, ?> abstractC1875d0, AbstractC1878f<?> abstractC1878f, AbstractC1914s abstractC1914s) {
        this.f7115a = iArr;
        this.f7116b = objArr;
        this.f7117c = i;
        this.f7118d = i2;
        this.f7121g = abstractC1916u instanceof AbstractC1888i;
        this.f7122h = z;
        this.f7120f = abstractC1878f != null && abstractC1878f.mo4312d(abstractC1916u);
        this.f7123i = z2;
        this.f7124j = iArr2;
        this.f7125k = i3;
        this.f7126l = i4;
        this.f7127m = abstractC4919q;
        this.f7128n = abstractC1906o;
        this.f7129o = abstractC1875d0;
        this.f7130p = abstractC1878f;
        this.f7119e = abstractC1916u;
        this.f7131q = abstractC1914s;
    }

    /* renamed from: A */
    public static Field m4234A(Class<?> cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* renamed from: D */
    public static int m4231D(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: p */
    public static List<?> m4218p(Object obj, long j) {
        return (List) C4884b0.m303n(obj, j);
    }

    /* renamed from: s */
    public static C1919w m4215s(AbstractC4916n abstractC4916n, AbstractC4919q abstractC4919q, AbstractC1906o abstractC1906o, AbstractC1875d0 abstractC1875d0, AbstractC1878f abstractC1878f, AbstractC1914s abstractC1914s) {
        if (abstractC4916n instanceof C4924v) {
            return m4214t((C4924v) abstractC4916n, abstractC4919q, abstractC1906o, abstractC1875d0, abstractC1878f, abstractC1914s);
        }
        C4927y c4927y = (C4927y) abstractC4916n;
        throw null;
    }

    /* renamed from: t */
    public static <T> C1919w<T> m4214t(C4924v c4924v, AbstractC4919q abstractC4919q, AbstractC1906o abstractC1906o, AbstractC1875d0<?, ?> abstractC1875d0, AbstractC1878f<?> abstractC1878f, AbstractC1914s abstractC1914s) {
        int i;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
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
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        Field field;
        int charAt;
        int i24;
        int i25;
        int i26;
        Field field2;
        Field field3;
        int charAt2;
        int i27;
        int charAt3;
        int i28;
        int charAt4;
        char c;
        int i29;
        int i30;
        char charAt5;
        int i31;
        char charAt6;
        int i32;
        char charAt7;
        char charAt8;
        int i33;
        int charAt9;
        int i34;
        int charAt10;
        int charAt11;
        int i35;
        int charAt12;
        int charAt13;
        boolean z = (c4924v.f15038d & 1) == 1 ? true : true;
        String str = c4924v.f15036b;
        int length = str.length();
        if (str.charAt(0) >= 55296) {
            int i36 = 1;
            while (true) {
                int i37 = i36;
                int i38 = i37 + 1;
                i = i38;
                if (str.charAt(i37) < 55296) {
                    break;
                }
                i36 = i38;
            }
        } else {
            i = 1;
        }
        int i39 = i + 1;
        int charAt14 = str.charAt(i);
        int i40 = i39;
        int i41 = charAt14;
        if (charAt14 >= 55296) {
            int i42 = charAt14 & 8191;
            int i43 = 13;
            while (true) {
                i40 = i39 + 1;
                charAt13 = str.charAt(i39);
                if (charAt13 < 55296) {
                    break;
                }
                i42 |= (charAt13 & 8191) << i43;
                i39 = i40;
                i43 += 13;
            }
            i41 = i42 | (charAt13 << i43);
        }
        if (i41 == 0) {
            iArr = f7113r;
            i7 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
            i6 = 0;
            i5 = 0;
            i8 = 0;
        } else {
            int i44 = i40 + 1;
            int charAt15 = str.charAt(i40);
            int i45 = charAt15;
            int i46 = i44;
            if (charAt15 >= 55296) {
                int i47 = 13;
                int i48 = i44;
                int i49 = charAt15 & 8191;
                while (true) {
                    i35 = i48 + 1;
                    charAt12 = str.charAt(i48);
                    if (charAt12 < 55296) {
                        break;
                    }
                    i49 |= (charAt12 & 8191) << i47;
                    i48 = i35;
                    i47 += 13;
                }
                i46 = i35;
                i45 = i49 | (charAt12 << i47);
            }
            int i50 = i46 + 1;
            int charAt16 = str.charAt(i46);
            int i51 = charAt16;
            int i52 = i50;
            if (charAt16 >= 55296) {
                int i53 = charAt16 & 8191;
                int i54 = 13;
                while (true) {
                    int i55 = i50;
                    i50 = i55 + 1;
                    charAt11 = str.charAt(i55);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i53 |= (charAt11 & 8191) << i54;
                    i54 += 13;
                }
                i51 = i53 | (charAt11 << i54);
                i52 = i50;
            }
            int i56 = i52 + 1;
            int charAt17 = str.charAt(i52);
            int i57 = charAt17;
            int i58 = i56;
            if (charAt17 >= 55296) {
                int i59 = 13;
                int i60 = i56;
                int i61 = charAt17 & 8191;
                while (true) {
                    i34 = i60 + 1;
                    charAt10 = str.charAt(i60);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i61 |= (charAt10 & 8191) << i59;
                    i60 = i34;
                    i59 += 13;
                }
                i58 = i34;
                i57 = i61 | (charAt10 << i59);
            }
            int i62 = i58 + 1;
            int charAt18 = str.charAt(i58);
            int i63 = charAt18;
            int i64 = i62;
            if (charAt18 >= 55296) {
                int i65 = 13;
                int i66 = i62;
                int i67 = charAt18 & 8191;
                while (true) {
                    i33 = i66 + 1;
                    charAt9 = str.charAt(i66);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i67 |= (charAt9 & 8191) << i65;
                    i66 = i33;
                    i65 += 13;
                }
                i64 = i33;
                i63 = i67 | (charAt9 << i65);
            }
            int i68 = i64 + 1;
            char charAt19 = str.charAt(i64);
            char c2 = charAt19;
            int i69 = i68;
            if (charAt19 >= 55296) {
                int i70 = charAt19 & 8191;
                int i71 = 13;
                while (true) {
                    int i72 = i68;
                    i68 = i72 + 1;
                    charAt8 = str.charAt(i72);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i70 |= (charAt8 & 8191) << i71;
                    i71 += 13;
                }
                c2 = i70 | (charAt8 << i71);
                i69 = i68;
            }
            int i73 = i69 + 1;
            char charAt20 = str.charAt(i69);
            char c3 = charAt20;
            int i74 = i73;
            if (charAt20 >= 55296) {
                int i75 = 13;
                int i76 = i73;
                int i77 = charAt20 & 8191;
                while (true) {
                    i32 = i76 + 1;
                    charAt7 = str.charAt(i76);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i77 |= (charAt7 & 8191) << i75;
                    i75 += 13;
                    i76 = i32;
                }
                i74 = i32;
                c3 = i77 | (charAt7 << i75);
            }
            int i78 = i74 + 1;
            char charAt21 = str.charAt(i74);
            if (charAt21 >= 55296) {
                int i79 = charAt21 & 8191;
                int i80 = 13;
                while (true) {
                    i31 = i78 + 1;
                    charAt6 = str.charAt(i78);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i79 |= (charAt6 & 8191) << i80;
                    i80 += 13;
                    i78 = i31;
                }
                c = i79 | (charAt6 << i80);
                i29 = i31;
            } else {
                i29 = i78;
                c = charAt21;
            }
            int i81 = i29 + 1;
            char charAt22 = str.charAt(i29);
            char c4 = charAt22;
            int i82 = i81;
            if (charAt22 >= 55296) {
                int i83 = 13;
                int i84 = i81;
                int i85 = charAt22 & 8191;
                while (true) {
                    i30 = i84 + 1;
                    charAt5 = str.charAt(i84);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i85 |= (charAt5 & 8191) << i83;
                    i83 += 13;
                    i84 = i30;
                }
                i82 = i30;
                c4 = i85 | (charAt5 << i83);
            }
            iArr = new int[c4 + c3 + c];
            int i86 = i57;
            i7 = i63;
            int i87 = (i45 * 2) + i51;
            i6 = c4;
            int i88 = i45;
            i40 = i82;
            i2 = c2;
            i3 = i87;
            i4 = c3;
            i8 = i86;
            i5 = i88;
        }
        Unsafe unsafe = f7114s;
        Object[] objArr = c4924v.f15037c;
        Class<?> cls = c4924v.f15035a.getClass();
        int[] iArr2 = new int[i2 * 3];
        Object[] objArr2 = new Object[i2 * 2];
        int i89 = i6 + i4;
        int i90 = i40;
        int i91 = i89;
        int i92 = 0;
        int i93 = i6;
        int i94 = 0;
        int i95 = i8;
        int i96 = i5;
        while (i90 < length) {
            int i97 = i90 + 1;
            int charAt23 = str.charAt(i90);
            if (charAt23 >= 55296) {
                int i98 = charAt23 & 8191;
                int i99 = 13;
                while (true) {
                    i28 = i97 + 1;
                    charAt4 = str.charAt(i97);
                    i9 = i6;
                    if (charAt4 < 55296) {
                        break;
                    }
                    i98 |= (charAt4 & 8191) << i99;
                    i6 = i9;
                    i97 = i28;
                    i99 += 13;
                }
                charAt23 = i98 | (charAt4 << i99);
                i10 = i28;
            } else {
                i10 = i97;
                i9 = i6;
            }
            int i100 = i10 + 1;
            int charAt24 = str.charAt(i10);
            if (charAt24 >= 55296) {
                int i101 = charAt24 & 8191;
                int i102 = i100;
                int i103 = 13;
                while (true) {
                    i27 = i102 + 1;
                    charAt3 = str.charAt(i102);
                    i12 = i7;
                    if (charAt3 < 55296) {
                        break;
                    }
                    i101 |= (charAt3 & 8191) << i103;
                    i7 = i12;
                    i102 = i27;
                    i103 += 13;
                }
                charAt24 = i101 | (charAt3 << i103);
                i11 = i27;
            } else {
                i12 = i7;
                i11 = i100;
            }
            int i104 = charAt24 & 255;
            int i105 = i94;
            if ((charAt24 & 1024) != 0) {
                iArr[i94] = i92;
                i105 = i94 + 1;
            }
            if (i104 >= 51) {
                int i106 = i11 + 1;
                int charAt25 = str.charAt(i11);
                if (charAt25 >= 55296) {
                    int i107 = 13;
                    int i108 = charAt25 & 8191;
                    while (true) {
                        i26 = i106 + 1;
                        charAt2 = str.charAt(i106);
                        if (charAt2 < 55296) {
                            break;
                        }
                        i108 |= (charAt2 & 8191) << i107;
                        i106 = i26;
                        i107 += 13;
                    }
                    charAt25 = i108 | (charAt2 << i107);
                } else {
                    i26 = i106;
                }
                int i109 = i104 - 51;
                if (i109 == 9 || i109 == 17) {
                    objArr2[((i92 / 3) * 2) + 1] = objArr[i3];
                    i19 = i3 + 1;
                } else {
                    i19 = i3;
                    if (i109 == 12) {
                        i19 = i3;
                        if (!z) {
                            objArr2[((i92 / 3) * 2) + 1] = objArr[i3];
                            i19 = i3 + 1;
                        }
                    }
                }
                int i110 = charAt25 * 2;
                Object obj = objArr[i110];
                if (obj instanceof Field) {
                    field2 = (Field) obj;
                } else {
                    field2 = m4234A(cls, (String) obj);
                    objArr[i110] = field2;
                }
                i17 = (int) unsafe.objectFieldOffset(field2);
                int i111 = i110 + 1;
                Object obj2 = objArr[i111];
                if (obj2 instanceof Field) {
                    field3 = (Field) obj2;
                } else {
                    field3 = m4234A(cls, (String) obj2);
                    objArr[i111] = field3;
                }
                i16 = (int) unsafe.objectFieldOffset(field3);
                i15 = 0;
                i18 = i26;
                i14 = i93;
                i13 = i91;
            } else {
                int i112 = i3 + 1;
                Field m4234A = m4234A(cls, (String) objArr[i3]);
                if (i104 == 9 || i104 == 17) {
                    objArr2[((i92 / 3) * 2) + 1] = m4234A.getType();
                    i20 = i93;
                    i21 = i112;
                } else if (i104 == 27 || i104 == 49) {
                    objArr2[((i92 / 3) * 2) + 1] = objArr[i112];
                    i20 = i93;
                    i21 = i112 + 1;
                } else {
                    if (i104 == 12 || i104 == 30 || i104 == 44) {
                        i25 = i112;
                        i24 = i93;
                        if (!z) {
                            objArr2[((i92 / 3) * 2) + 1] = objArr[i112];
                            i20 = i93;
                            i21 = i112 + 1;
                        }
                    } else {
                        i25 = i112;
                        i24 = i93;
                        if (i104 == 50) {
                            int i113 = i93 + 1;
                            iArr[i93] = i92;
                            int i114 = (i92 / 3) * 2;
                            int i115 = i112 + 1;
                            objArr2[i114] = objArr[i112];
                            if ((charAt24 & 2048) != 0) {
                                objArr2[i114 + 1] = objArr[i115];
                                i24 = i113;
                                i25 = i115 + 1;
                            } else {
                                i24 = i113;
                                i25 = i115;
                            }
                        }
                    }
                    i21 = i25;
                    i20 = i24;
                }
                int objectFieldOffset = (int) unsafe.objectFieldOffset(m4234A);
                if (!((charAt24 & 4096) == 4096) || i104 > 17) {
                    i22 = 1048575;
                    i23 = 0;
                } else {
                    int i116 = i11 + 1;
                    int charAt26 = str.charAt(i11);
                    int i117 = i116;
                    int i118 = charAt26;
                    if (charAt26 >= 55296) {
                        int i119 = charAt26 & 8191;
                        int i120 = 13;
                        while (true) {
                            int i121 = i116;
                            i116 = i121 + 1;
                            charAt = str.charAt(i121);
                            if (charAt < 55296) {
                                break;
                            }
                            i119 |= (charAt & 8191) << i120;
                            i120 += 13;
                        }
                        i118 = i119 | (charAt << i120);
                        i117 = i116;
                    }
                    int i122 = (i118 / 32) + (i96 * 2);
                    Object obj3 = objArr[i122];
                    if (obj3 instanceof Field) {
                        field = (Field) obj3;
                    } else {
                        field = m4234A(cls, (String) obj3);
                        objArr[i122] = field;
                    }
                    i22 = (int) unsafe.objectFieldOffset(field);
                    i23 = i118 % 32;
                    i11 = i117;
                }
                i17 = objectFieldOffset;
                i16 = i22;
                i15 = i23;
                i18 = i11;
                i14 = i20;
                i13 = i91;
                i19 = i21;
                if (i104 >= 18) {
                    i17 = objectFieldOffset;
                    i16 = i22;
                    i15 = i23;
                    i18 = i11;
                    i14 = i20;
                    i13 = i91;
                    i19 = i21;
                    if (i104 <= 49) {
                        iArr[i91] = objectFieldOffset;
                        i13 = i91 + 1;
                        i19 = i21;
                        i14 = i20;
                        i18 = i11;
                        i15 = i23;
                        i16 = i22;
                        i17 = objectFieldOffset;
                    }
                }
            }
            int i123 = i92 + 1;
            iArr2[i92] = charAt23;
            int i124 = i123 + 1;
            iArr2[i123] = ((charAt24 & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 ? 536870912 : 0) | ((charAt24 & 256) != 0 ? 268435456 : 0) | (i104 << 20) | i17;
            iArr2[i124] = (i15 << 20) | i16;
            i7 = i12;
            i92 = i124 + 1;
            i90 = i18;
            i3 = i19;
            i6 = i9;
            i94 = i105;
            i93 = i14;
            i91 = i13;
        }
        return new C1919w<>(iArr2, objArr2, i95, i7, c4924v.f15035a, z, false, iArr, i6, i89, abstractC4919q, abstractC1906o, abstractC1875d0, abstractC1878f, abstractC1914s);
    }

    /* renamed from: u */
    public static long m4213u(int i) {
        return i & 1048575;
    }

    /* renamed from: v */
    public static <T> boolean m4212v(T t, long j) {
        return ((Boolean) C4884b0.m303n(t, j)).booleanValue();
    }

    /* renamed from: w */
    public static <T> double m4211w(T t, long j) {
        return ((Double) C4884b0.m303n(t, j)).doubleValue();
    }

    /* renamed from: x */
    public static <T> float m4210x(T t, long j) {
        return ((Float) C4884b0.m303n(t, j)).floatValue();
    }

    /* renamed from: y */
    public static <T> int m4209y(T t, long j) {
        return ((Integer) C4884b0.m303n(t, j)).intValue();
    }

    /* renamed from: z */
    public static <T> long m4208z(T t, long j) {
        return ((Long) C4884b0.m303n(t, j)).longValue();
    }

    /* renamed from: B */
    public final void m4233B(T t, int i) {
        int i2 = this.f7115a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        C4884b0.f14955e.m282o(t, j, (1 << (i2 >>> 20)) | C4884b0.m305l(t, j));
    }

    /* renamed from: C */
    public final void m4232C(T t, int i, int i2) {
        C4884b0.f14955e.m282o(t, this.f7115a[i2 + 2] & 1048575, i);
    }

    /* renamed from: E */
    public final int m4230E(int i) {
        return this.f7115a[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0a8b  */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4229F(T r9, com.google.protobuf.AbstractC1885g0 r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1919w.m4229F(java.lang.Object, com.google.protobuf.g0):void");
    }

    /* renamed from: G */
    public final <K, V> void m4228G(AbstractC1885g0 abstractC1885g0, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            C1911q.C1912a<?, ?> mo4243d = this.f7131q.mo4243d(this.f7116b[(i2 / 3) * 2]);
            Map<?, ?> mo4242e = this.f7131q.mo4242e(obj);
            C1876e c1876e = (C1876e) abstractC1885g0;
            Objects.requireNonNull(c1876e.f7065a);
            for (Map.Entry<?, ?> entry : mo4242e.entrySet()) {
                c1876e.f7065a.mo4416G0(i, 2);
                c1876e.f7065a.mo4414I0(C1911q.m4251a(mo4243d, entry.getKey(), entry.getValue()));
                C1911q.m4250b(c1876e.f7065a, mo4243d, entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: H */
    public final void m4227H(int i, Object obj, AbstractC1885g0 abstractC1885g0) throws IOException {
        if (obj instanceof String) {
            ((C1876e) abstractC1885g0).f7065a.mo4418E0(i, (String) obj);
            return;
        }
        ((C1876e) abstractC1885g0).f7065a.mo4406s0(i, (AbstractC4890c) obj);
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: a */
    public void mo260a(T t, T t2) {
        Objects.requireNonNull(t2);
        int i = 0;
        while (true) {
            int[] iArr = this.f7115a;
            if (i >= iArr.length) {
                AbstractC1875d0<?, ?> abstractC1875d0 = this.f7129o;
                Class<?> cls = C1861a0.f7035a;
                abstractC1875d0.mo245f(t, abstractC1875d0.mo246e(abstractC1875d0.mo250a(t), abstractC1875d0.mo250a(t2)));
                if (!this.f7120f) {
                    return;
                }
                C1861a0.m4348z(this.f7130p, t, t2);
                return;
            }
            int i2 = iArr[i + 1];
            long m4213u = m4213u(i2);
            int i3 = this.f7115a[i];
            switch (m4231D(i2)) {
                case 0:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.mo284m(t, m4213u, C4884b0.m307j(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 1:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.mo283n(t, m4213u, C4884b0.m306k(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 2:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.m298s(t, m4213u, C4884b0.m304m(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 3:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.m298s(t, m4213u, C4884b0.m304m(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 4:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 5:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.m298s(t, m4213u, C4884b0.m304m(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 6:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 7:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.mo286k(t, m4213u, C4884b0.m311f(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 8:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m280q(t, m4213u, C4884b0.m303n(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 9:
                    m4217q(t, t2, i);
                    break;
                case 10:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m280q(t, m4213u, C4884b0.m303n(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 11:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 12:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 13:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 14:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.m298s(t, m4213u, C4884b0.m304m(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 15:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m282o(t, m4213u, C4884b0.m305l(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 16:
                    if (!m4221m(t2, i)) {
                        break;
                    } else {
                        C4884b0.m298s(t, m4213u, C4884b0.m304m(t2, m4213u));
                        m4233B(t, i);
                        break;
                    }
                case 17:
                    m4217q(t, t2, i);
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    this.f7128n.mo4257b(t, t2, m4213u);
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    AbstractC1914s abstractC1914s = this.f7131q;
                    Class<?> cls2 = C1861a0.f7035a;
                    C4884b0.f14955e.m280q(t, m4213u, abstractC1914s.mo4246a(C4884b0.m303n(t, m4213u), C4884b0.m303n(t2, m4213u)));
                    break;
                case 51:
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!m4219o(t2, i3, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m280q(t, m4213u, C4884b0.m303n(t2, m4213u));
                        m4232C(t, i3, i);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    m4216r(t, t2, i);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!m4219o(t2, i3, i)) {
                        break;
                    } else {
                        C4884b0.f14955e.m280q(t, m4213u, C4884b0.m303n(t2, m4213u));
                        m4232C(t, i3, i);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    m4216r(t, t2, i);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0abc  */
    @Override // p287x6.AbstractC4925w
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo259b(T r8, com.google.protobuf.AbstractC1885g0 r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1919w.mo259b(java.lang.Object, com.google.protobuf.g0):void");
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: c */
    public void mo258c(T t) {
        int i;
        int i2 = this.f7125k;
        while (true) {
            i = this.f7126l;
            if (i2 >= i) {
                break;
            }
            long m4213u = m4213u(m4230E(this.f7124j[i2]));
            Object m303n = C4884b0.m303n(t, m4213u);
            if (m303n != null) {
                C4884b0.f14955e.m280q(t, m4213u, this.f7131q.mo4244c(m303n));
            }
            i2++;
        }
        int length = this.f7124j.length;
        for (int i3 = i; i3 < length; i3++) {
            this.f7128n.mo4258a(t, this.f7124j[i3]);
        }
        this.f7129o.mo247d(t);
        if (this.f7120f) {
            this.f7130p.mo4311e(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p287x6.AbstractC4925w
    /* renamed from: d */
    public final boolean mo257d(T t) {
        boolean z;
        boolean z2;
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f7125k; i3++) {
            int i4 = this.f7124j[i3];
            int i5 = this.f7115a[i4];
            int m4230E = m4230E(i4);
            int i6 = this.f7115a[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = f7114s.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & m4230E) != 0) && !m4220n(t, i4, i, i2, i8)) {
                return false;
            }
            int m4231D = m4231D(m4230E);
            if (m4231D != 9 && m4231D != 17) {
                if (m4231D != 27) {
                    if (m4231D == 60 || m4231D == 68) {
                        if (m4219o(t, i5, i4) && !m4224j(i4).mo257d(C4884b0.m303n(t, m4213u(m4230E)))) {
                            return false;
                        }
                    } else if (m4231D != 49) {
                        if (m4231D != 50) {
                            continue;
                        } else {
                            Map<?, ?> mo4242e = this.f7131q.mo4242e(C4884b0.m303n(t, m4213u(m4230E)));
                            if (mo4242e.isEmpty()) {
                                z2 = true;
                            } else if (this.f7131q.mo4243d(this.f7116b[(i4 / 3) * 2]).f7109c.f14986a == EnumC4904d0.MESSAGE) {
                                AbstractC4925w<T> abstractC4925w = null;
                                Iterator<?> it2 = mo4242e.values().iterator();
                                while (true) {
                                    z2 = true;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    Object next = it2.next();
                                    AbstractC4925w<T> abstractC4925w2 = abstractC4925w;
                                    if (abstractC4925w == null) {
                                        abstractC4925w2 = C4923u.f15032c.m262a(next.getClass());
                                    }
                                    abstractC4925w = abstractC4925w2;
                                    if (!abstractC4925w2.mo257d(next)) {
                                        z2 = false;
                                        break;
                                    }
                                }
                            } else {
                                z2 = true;
                            }
                            if (!z2) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) C4884b0.m303n(t, m4213u(m4230E));
                if (list.isEmpty()) {
                    z = true;
                } else {
                    AbstractC4925w m4224j = m4224j(i4);
                    int i9 = 0;
                    while (true) {
                        z = true;
                        if (i9 >= list.size()) {
                            break;
                        } else if (!m4224j.mo257d(list.get(i9))) {
                            z = false;
                            break;
                        } else {
                            i9++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (m4220n(t, i4, i, i2, i8) && !m4224j(i4).mo257d(C4884b0.m303n(t, m4213u(m4230E)))) {
                return false;
            }
        }
        return !this.f7120f || this.f7130p.mo4314b(t).m4301i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x018a, code lost:
        if (com.google.protobuf.C1861a0.m4392A(p287x6.C4884b0.m303n(r7, r0), p287x6.C4884b0.m303n(r8, r0)) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01d2, code lost:
        if (com.google.protobuf.C1861a0.m4392A(p287x6.C4884b0.m303n(r7, r0), p287x6.C4884b0.m303n(r8, r0)) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01f0, code lost:
        if (p287x6.C4884b0.m304m(r7, r0) == p287x6.C4884b0.m304m(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x020d, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x022b, code lost:
        if (p287x6.C4884b0.m304m(r7, r0) == p287x6.C4884b0.m304m(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0248, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0265, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0282, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02a2, code lost:
        if (com.google.protobuf.C1861a0.m4392A(p287x6.C4884b0.m303n(r7, r0), p287x6.C4884b0.m303n(r8, r0)) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02c2, code lost:
        if (com.google.protobuf.C1861a0.m4392A(p287x6.C4884b0.m303n(r7, r0), p287x6.C4884b0.m303n(r8, r0)) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02e2, code lost:
        if (com.google.protobuf.C1861a0.m4392A(p287x6.C4884b0.m303n(r7, r0), p287x6.C4884b0.m303n(r8, r0)) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x02ff, code lost:
        if (p287x6.C4884b0.m311f(r7, r0) == p287x6.C4884b0.m311f(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x031c, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x033a, code lost:
        if (p287x6.C4884b0.m304m(r7, r0) == p287x6.C4884b0.m304m(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0357, code lost:
        if (p287x6.C4884b0.m305l(r7, r0) == p287x6.C4884b0.m305l(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0375, code lost:
        if (p287x6.C4884b0.m304m(r7, r0) == p287x6.C4884b0.m304m(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0393, code lost:
        if (p287x6.C4884b0.m304m(r7, r0) == p287x6.C4884b0.m304m(r8, r0)) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03b6, code lost:
        if (java.lang.Float.floatToIntBits(p287x6.C4884b0.m306k(r7, r0)) == java.lang.Float.floatToIntBits(p287x6.C4884b0.m306k(r8, r0))) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x03da, code lost:
        if (java.lang.Double.doubleToLongBits(p287x6.C4884b0.m307j(r7, r0)) == java.lang.Double.doubleToLongBits(p287x6.C4884b0.m307j(r8, r0))) goto L90;
     */
    @Override // p287x6.AbstractC4925w
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo256e(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1061
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1919w.mo256e(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: f */
    public int mo255f(T t) {
        return this.f7122h ? m4222l(t) : m4223k(t);
    }

    @Override // p287x6.AbstractC4925w
    /* renamed from: g */
    public int mo254g(T t) {
        int i;
        int i2;
        int i3;
        int length = this.f7115a.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = this.f7129o.mo250a(t).hashCode() + (i6 * 53);
                int i7 = hashCode;
                if (this.f7120f) {
                    i7 = (hashCode * 53) + this.f7130p.mo4314b(t).hashCode();
                }
                return i7;
            }
            int m4230E = m4230E(i4);
            int i8 = this.f7115a[i4];
            long m4213u = m4213u(m4230E);
            int i9 = 37;
            switch (m4231D(m4230E)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(Double.doubleToLongBits(C4884b0.m307j(t, m4213u)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(C4884b0.m306k(t, m4213u));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(C4884b0.m304m(t, m4213u));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(C4884b0.m304m(t, m4213u));
                    i = i3 + i2;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(C4884b0.m304m(t, m4213u));
                    i = i3 + i2;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = C1895k.m4268a(C4884b0.m311f(t, m4213u));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) C4884b0.m303n(t, m4213u)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object m303n = C4884b0.m303n(t, m4213u);
                    if (m303n != null) {
                        i9 = m303n.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = C4884b0.m303n(t, m4213u).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(C4884b0.m304m(t, m4213u));
                    i = i3 + i2;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = C4884b0.m305l(t, m4213u);
                    i = i3 + i2;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = C1895k.m4267b(C4884b0.m304m(t, m4213u));
                    i = i3 + i2;
                    break;
                case 17:
                    Object m303n2 = C4884b0.m303n(t, m4213u);
                    if (m303n2 != null) {
                        i9 = m303n2.hashCode();
                    }
                    i = (i6 * 53) + i9;
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i2 = i6 * 53;
                    i3 = C4884b0.m303n(t, m4213u).hashCode();
                    i = i3 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    i2 = i6 * 53;
                    i3 = C4884b0.m303n(t, m4213u).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(Double.doubleToLongBits(m4211w(t, m4213u)));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(m4210x(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(m4208z(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(m4208z(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(m4208z(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4268a(m4212v(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) C4884b0.m303n(t, m4213u)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C4884b0.m303n(t, m4213u).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C4884b0.m303n(t, m4213u).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(m4208z(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = m4209y(t, m4213u);
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C1895k.m4267b(m4208z(t, m4213u));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i6;
                    if (!m4219o(t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = C4884b0.m303n(t, m4213u).hashCode();
                        i = i3 + i2;
                        break;
                    }
                default:
                    i = i6;
                    break;
            }
            i4 += 3;
            i5 = i;
        }
    }

    /* renamed from: h */
    public final boolean m4226h(T t, T t2, int i) {
        return m4221m(t, i) == m4221m(t2, i);
    }

    /* renamed from: i */
    public final Object m4225i(int i) {
        return this.f7116b[(i / 3) * 2];
    }

    /* renamed from: j */
    public final AbstractC4925w m4224j(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f7116b;
        AbstractC4925w abstractC4925w = (AbstractC4925w) objArr[i2];
        if (abstractC4925w != null) {
            return abstractC4925w;
        }
        AbstractC4925w<T> m262a = C4923u.f15032c.m262a((Class) objArr[i2 + 1]);
        this.f7116b[i2] = m262a;
        return m262a;
    }

    /* renamed from: k */
    public final int m4223k(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Unsafe unsafe = f7114s;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1048575;
        int i13 = 0;
        while (i10 < this.f7115a.length) {
            int m4230E = m4230E(i10);
            int i14 = this.f7115a[i10];
            int m4231D = m4231D(m4230E);
            if (m4231D <= 17) {
                int i15 = this.f7115a[i10 + 2];
                int i16 = 1048575 & i15;
                int i17 = 1 << (i15 >>> 20);
                i3 = i12;
                i2 = i15;
                i = i17;
                if (i16 != i12) {
                    i13 = unsafe.getInt(t, i16);
                    i3 = i16;
                    i2 = i15;
                    i = i17;
                }
            } else {
                i2 = (!this.f7123i || m4231D < EnumC4907g.DOUBLE_LIST_PACKED.f15009a || m4231D > EnumC4907g.SINT64_LIST_PACKED.f15009a) ? 0 : 1048575 & this.f7115a[i10 + 2];
                i = 0;
                i3 = i12;
            }
            long m4213u = m4213u(m4230E);
            switch (m4231D) {
                case 0:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4448P(i14, 0.0d);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4444T(i14, 0.0f);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4440X(i14, unsafe.getLong(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4426l0(i14, unsafe.getLong(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4442V(i14, unsafe.getInt(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4445S(i14, 0L);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4446R(i14, 0);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4451M(i14, true);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        Object object = unsafe.getObject(t, m4213u);
                        i6 = object instanceof AbstractC4890c ? CodedOutputStream.m4450N(i14, (AbstractC4890c) object) : CodedOutputStream.m4431g0(i14, (String) object);
                        i4 = i11 + i6;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = C1861a0.m4360n(i14, unsafe.getObject(t, m4213u), m4224j(i10));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4450N(i14, (AbstractC4890c) unsafe.getObject(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4428j0(i14, unsafe.getInt(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4447Q(i14, unsafe.getInt(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4437a0(i14, 0);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4436b0(i14, 0L);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4435c0(i14, unsafe.getInt(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4433e0(i14, unsafe.getLong(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i4 = i11;
                    if ((i13 & i) != 0) {
                        i5 = CodedOutputStream.m4443U(i14, (AbstractC1916u) unsafe.getObject(t, m4213u), m4224j(i10));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i5 = C1861a0.m4367g(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 19:
                    i5 = C1861a0.m4369e(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 20:
                    i5 = C1861a0.m4362l(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 21:
                    i5 = C1861a0.m4351w(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 22:
                    i5 = C1861a0.m4364j(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 23:
                    i5 = C1861a0.m4367g(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 24:
                    i5 = C1861a0.m4369e(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 25:
                    i5 = C1861a0.m4373a(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case 26:
                    i5 = C1861a0.m4354t(i14, (List) unsafe.getObject(t, m4213u));
                    i4 = i11 + i5;
                    break;
                case 27:
                    i5 = C1861a0.m4359o(i14, (List) unsafe.getObject(t, m4213u), m4224j(i10));
                    i4 = i11 + i5;
                    break;
                case 28:
                    i5 = C1861a0.m4372b(i14, (List) unsafe.getObject(t, m4213u));
                    i4 = i11 + i5;
                    break;
                case 29:
                    i5 = C1861a0.m4353u(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i5 = C1861a0.m4371c(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i5 = C1861a0.m4369e(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i5 = C1861a0.m4367g(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i5 = C1861a0.m4358p(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i5 = C1861a0.m4356r(i14, (List) unsafe.getObject(t, m4213u), false);
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int m4366h = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4366h <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4366h);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i7 = CodedOutputStream.m4427k0(m4366h);
                        i9 = m4366h;
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int m4368f = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4368f <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4368f);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4368f;
                        i7 = CodedOutputStream.m4427k0(m4368f);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int m4361m = C1861a0.m4361m((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4361m <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4361m);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4361m;
                        i7 = CodedOutputStream.m4427k0(m4361m);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int m4350x = C1861a0.m4350x((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4350x <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4350x);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4350x;
                        i7 = CodedOutputStream.m4427k0(m4350x);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int m4363k = C1861a0.m4363k((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4363k <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4363k);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4363k;
                        i7 = CodedOutputStream.m4427k0(m4363k);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int m4366h2 = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4366h2 <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4366h2);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4366h2;
                        i7 = CodedOutputStream.m4427k0(m4366h2);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int m4368f2 = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4368f2 <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4368f2);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4368f2;
                        i7 = CodedOutputStream.m4427k0(m4368f2);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list = (List) unsafe.getObject(t, m4213u);
                    Class<?> cls = C1861a0.f7035a;
                    int size = list.size();
                    i4 = i11;
                    if (size <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, size);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = size;
                        i7 = CodedOutputStream.m4427k0(size);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int m4352v = C1861a0.m4352v((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4352v <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4352v);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4352v;
                        i7 = CodedOutputStream.m4427k0(m4352v);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int m4370d = C1861a0.m4370d((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4370d <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4370d);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4370d;
                        i7 = CodedOutputStream.m4427k0(m4370d);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int m4368f3 = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4368f3 <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4368f3);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4368f3;
                        i7 = CodedOutputStream.m4427k0(m4368f3);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int m4366h3 = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4366h3 <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4366h3);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4366h3;
                        i7 = CodedOutputStream.m4427k0(m4366h3);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int m4357q = C1861a0.m4357q((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4357q <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4357q);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4357q;
                        i7 = CodedOutputStream.m4427k0(m4357q);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int m4355s = C1861a0.m4355s((List) unsafe.getObject(t, m4213u));
                    i4 = i11;
                    if (m4355s <= 0) {
                        break;
                    } else {
                        if (this.f7123i) {
                            unsafe.putInt(t, i2, m4355s);
                        }
                        i8 = CodedOutputStream.m4429i0(i14);
                        i9 = m4355s;
                        i7 = CodedOutputStream.m4427k0(m4355s);
                        i4 = C0033h.m8890g(i7, i8, i9, i11);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i5 = C1861a0.m4365i(i14, (List) unsafe.getObject(t, m4213u), m4224j(i10));
                    i4 = i11 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    i5 = this.f7131q.mo4245b(i14, unsafe.getObject(t, m4213u), m4225i(i10));
                    i4 = i11 + i5;
                    break;
                case 51:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4448P(i14, 0.0d);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4444T(i14, 0.0f);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4440X(i14, m4208z(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4426l0(i14, m4208z(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4442V(i14, m4209y(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4445S(i14, 0L);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4446R(i14, 0);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4451M(i14, true);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        Object object2 = unsafe.getObject(t, m4213u);
                        i6 = object2 instanceof AbstractC4890c ? CodedOutputStream.m4450N(i14, (AbstractC4890c) object2) : CodedOutputStream.m4431g0(i14, (String) object2);
                        i4 = i11 + i6;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = C1861a0.m4360n(i14, unsafe.getObject(t, m4213u), m4224j(i10));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4450N(i14, (AbstractC4890c) unsafe.getObject(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4428j0(i14, m4209y(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4447Q(i14, m4209y(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4437a0(i14, 0);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4436b0(i14, 0L);
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4435c0(i14, m4209y(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4433e0(i14, m4208z(t, m4213u));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i4 = i11;
                    if (m4219o(t, i14, i10)) {
                        i5 = CodedOutputStream.m4443U(i14, (AbstractC1916u) unsafe.getObject(t, m4213u), m4224j(i10));
                        i4 = i11 + i5;
                        break;
                    } else {
                        break;
                    }
                default:
                    i4 = i11;
                    break;
            }
            i10 += 3;
            i11 = i4;
            i12 = i3;
        }
        AbstractC1875d0<?, ?> abstractC1875d0 = this.f7129o;
        int mo249b = abstractC1875d0.mo249b(abstractC1875d0.mo250a(t)) + i11;
        int i18 = mo249b;
        if (this.f7120f) {
            C1886h<?> mo4314b = this.f7130p.mo4314b(t);
            int i19 = 0;
            for (int i20 = 0; i20 < mo4314b.f7074a.m4343d(); i20++) {
                Map.Entry<?, Object> m4344c = mo4314b.f7074a.m4344c(i20);
                i19 += C1886h.m4305e((C1886h.AbstractC1887a) m4344c.getKey(), m4344c.getValue());
            }
            for (Map.Entry<?, Object> entry : mo4314b.f7074a.m4342e()) {
                i19 += C1886h.m4305e((C1886h.AbstractC1887a) entry.getKey(), entry.getValue());
            }
            i18 = mo249b + i19;
        }
        return i18;
    }

    /* renamed from: l */
    public final int m4222l(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Unsafe unsafe = f7114s;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= this.f7115a.length) {
                AbstractC1875d0<?, ?> abstractC1875d0 = this.f7129o;
                return abstractC1875d0.mo249b(abstractC1875d0.mo250a(t)) + i8;
            }
            int m4230E = m4230E(i6);
            int m4231D = m4231D(m4230E);
            int i9 = this.f7115a[i6];
            long m4213u = m4213u(m4230E);
            int i10 = (m4231D < EnumC4907g.DOUBLE_LIST_PACKED.f15009a || m4231D > EnumC4907g.SINT64_LIST_PACKED.f15009a) ? 0 : this.f7115a[i6 + 2] & 1048575;
            switch (m4231D) {
                case 0:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4448P(i9, 0.0d);
                        i = i8 + i2;
                        break;
                    }
                case 1:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4444T(i9, 0.0f);
                        i = i8 + i2;
                        break;
                    }
                case 2:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4440X(i9, C4884b0.m304m(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 3:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4426l0(i9, C4884b0.m304m(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 4:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4442V(i9, C4884b0.m305l(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 5:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4445S(i9, 0L);
                        i = i8 + i2;
                        break;
                    }
                case 6:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4446R(i9, 0);
                        i = i8 + i2;
                        break;
                    }
                case 7:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4451M(i9, true);
                        i = i8 + i2;
                        break;
                    }
                case 8:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        Object m303n = C4884b0.m303n(t, m4213u);
                        i2 = m303n instanceof AbstractC4890c ? CodedOutputStream.m4450N(i9, (AbstractC4890c) m303n) : CodedOutputStream.m4431g0(i9, (String) m303n);
                        i = i8 + i2;
                        break;
                    }
                case 9:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = C1861a0.m4360n(i9, C4884b0.m303n(t, m4213u), m4224j(i6));
                        i = i8 + i2;
                        break;
                    }
                case 10:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4450N(i9, (AbstractC4890c) C4884b0.m303n(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 11:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4428j0(i9, C4884b0.m305l(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 12:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4447Q(i9, C4884b0.m305l(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 13:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4437a0(i9, 0);
                        i = i8 + i2;
                        break;
                    }
                case 14:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4436b0(i9, 0L);
                        i = i8 + i2;
                        break;
                    }
                case 15:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4435c0(i9, C4884b0.m305l(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 16:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4433e0(i9, C4884b0.m304m(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case 17:
                    i = i8;
                    if (!m4221m(t, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4443U(i9, (AbstractC1916u) C4884b0.m303n(t, m4213u), m4224j(i6));
                        i = i8 + i2;
                        break;
                    }
                case 18:
                    i2 = C1861a0.m4367g(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 19:
                    i2 = C1861a0.m4369e(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 20:
                    i2 = C1861a0.m4362l(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 21:
                    i2 = C1861a0.m4351w(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 22:
                    i2 = C1861a0.m4364j(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 23:
                    i2 = C1861a0.m4367g(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 24:
                    i2 = C1861a0.m4369e(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 25:
                    i2 = C1861a0.m4373a(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case 26:
                    i2 = C1861a0.m4354t(i9, m4218p(t, m4213u));
                    i = i8 + i2;
                    break;
                case 27:
                    i2 = C1861a0.m4359o(i9, m4218p(t, m4213u), m4224j(i6));
                    i = i8 + i2;
                    break;
                case 28:
                    i2 = C1861a0.m4372b(i9, m4218p(t, m4213u));
                    i = i8 + i2;
                    break;
                case 29:
                    i2 = C1861a0.m4353u(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i2 = C1861a0.m4371c(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i2 = C1861a0.m4369e(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i2 = C1861a0.m4367g(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i2 = C1861a0.m4358p(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i2 = C1861a0.m4356r(i9, m4218p(t, m4213u), false);
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int m4366h = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4366h > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4366h);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i3 = CodedOutputStream.m4427k0(m4366h);
                        i5 = m4366h;
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int m4368f = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4368f > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4368f);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4368f;
                        i3 = CodedOutputStream.m4427k0(m4368f);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int m4361m = C1861a0.m4361m((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4361m > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4361m);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4361m;
                        i3 = CodedOutputStream.m4427k0(m4361m);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int m4350x = C1861a0.m4350x((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4350x > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4350x);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4350x;
                        i3 = CodedOutputStream.m4427k0(m4350x);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int m4363k = C1861a0.m4363k((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4363k > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4363k);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4363k;
                        i3 = CodedOutputStream.m4427k0(m4363k);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int m4366h2 = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4366h2 > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4366h2);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4366h2;
                        i3 = CodedOutputStream.m4427k0(m4366h2);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int m4368f2 = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4368f2 > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4368f2);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4368f2;
                        i3 = CodedOutputStream.m4427k0(m4368f2);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list = (List) unsafe.getObject(t, m4213u);
                    Class<?> cls = C1861a0.f7035a;
                    int size = list.size();
                    i = i8;
                    if (size > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, size);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = size;
                        i3 = CodedOutputStream.m4427k0(size);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int m4352v = C1861a0.m4352v((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4352v > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4352v);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4352v;
                        i3 = CodedOutputStream.m4427k0(m4352v);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int m4370d = C1861a0.m4370d((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4370d > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4370d);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4370d;
                        i3 = CodedOutputStream.m4427k0(m4370d);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int m4368f3 = C1861a0.m4368f((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4368f3 > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4368f3);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4368f3;
                        i3 = CodedOutputStream.m4427k0(m4368f3);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int m4366h3 = C1861a0.m4366h((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4366h3 > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4366h3);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4366h3;
                        i3 = CodedOutputStream.m4427k0(m4366h3);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int m4357q = C1861a0.m4357q((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4357q > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4357q);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4357q;
                        i3 = CodedOutputStream.m4427k0(m4357q);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int m4355s = C1861a0.m4355s((List) unsafe.getObject(t, m4213u));
                    i = i8;
                    if (m4355s > 0) {
                        if (this.f7123i) {
                            unsafe.putInt(t, i10, m4355s);
                        }
                        i4 = CodedOutputStream.m4429i0(i9);
                        i5 = m4355s;
                        i3 = CodedOutputStream.m4427k0(m4355s);
                        i = C0033h.m8890g(i3, i4, i5, i8);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i2 = C1861a0.m4365i(i9, m4218p(t, m4213u), m4224j(i6));
                    i = i8 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    i2 = this.f7131q.mo4245b(i9, C4884b0.m303n(t, m4213u), m4225i(i6));
                    i = i8 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4448P(i9, 0.0d);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4444T(i9, 0.0f);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4440X(i9, m4208z(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4426l0(i9, m4208z(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4442V(i9, m4209y(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4445S(i9, 0L);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4446R(i9, 0);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4451M(i9, true);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        Object m303n2 = C4884b0.m303n(t, m4213u);
                        i2 = m303n2 instanceof AbstractC4890c ? CodedOutputStream.m4450N(i9, (AbstractC4890c) m303n2) : CodedOutputStream.m4431g0(i9, (String) m303n2);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = C1861a0.m4360n(i9, C4884b0.m303n(t, m4213u), m4224j(i6));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4450N(i9, (AbstractC4890c) C4884b0.m303n(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4428j0(i9, m4209y(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4447Q(i9, m4209y(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4437a0(i9, 0);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4436b0(i9, 0L);
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4435c0(i9, m4209y(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4433e0(i9, m4208z(t, m4213u));
                        i = i8 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i8;
                    if (!m4219o(t, i9, i6)) {
                        break;
                    } else {
                        i2 = CodedOutputStream.m4443U(i9, (AbstractC1916u) C4884b0.m303n(t, m4213u), m4224j(i6));
                        i = i8 + i2;
                        break;
                    }
                default:
                    i = i8;
                    break;
            }
            i6 += 3;
            i7 = i;
        }
    }

    /* renamed from: m */
    public final boolean m4221m(T t, int i) {
        int[] iArr = this.f7115a;
        int i2 = iArr[i + 2];
        long j = 1048575 & i2;
        boolean z = false;
        if (j != 1048575) {
            boolean z2 = false;
            if ((C4884b0.m305l(t, j) & (1 << (i2 >>> 20))) != 0) {
                z2 = true;
            }
            return z2;
        }
        int i3 = iArr[i + 1];
        long m4213u = m4213u(i3);
        switch (m4231D(i3)) {
            case 0:
                boolean z3 = false;
                if (C4884b0.m307j(t, m4213u) != 0.0d) {
                    z3 = true;
                }
                return z3;
            case 1:
                boolean z4 = false;
                if (C4884b0.m306k(t, m4213u) != 0.0f) {
                    z4 = true;
                }
                return z4;
            case 2:
                boolean z5 = false;
                if (C4884b0.m304m(t, m4213u) != 0) {
                    z5 = true;
                }
                return z5;
            case 3:
                boolean z6 = false;
                if (C4884b0.m304m(t, m4213u) != 0) {
                    z6 = true;
                }
                return z6;
            case 4:
                boolean z7 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z7 = true;
                }
                return z7;
            case 5:
                boolean z8 = false;
                if (C4884b0.m304m(t, m4213u) != 0) {
                    z8 = true;
                }
                return z8;
            case 6:
                boolean z9 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z9 = true;
                }
                return z9;
            case 7:
                return C4884b0.m311f(t, m4213u);
            case 8:
                Object m303n = C4884b0.m303n(t, m4213u);
                if (m303n instanceof String) {
                    return !((String) m303n).isEmpty();
                }
                if (!(m303n instanceof AbstractC4890c)) {
                    throw new IllegalArgumentException();
                }
                return !AbstractC4890c.f14961b.equals(m303n);
            case 9:
                boolean z10 = false;
                if (C4884b0.m303n(t, m4213u) != null) {
                    z10 = true;
                }
                return z10;
            case 10:
                return !AbstractC4890c.f14961b.equals(C4884b0.m303n(t, m4213u));
            case 11:
                boolean z11 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z11 = true;
                }
                return z11;
            case 12:
                boolean z12 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z12 = true;
                }
                return z12;
            case 13:
                boolean z13 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z13 = true;
                }
                return z13;
            case 14:
                boolean z14 = false;
                if (C4884b0.m304m(t, m4213u) != 0) {
                    z14 = true;
                }
                return z14;
            case 15:
                boolean z15 = false;
                if (C4884b0.m305l(t, m4213u) != 0) {
                    z15 = true;
                }
                return z15;
            case 16:
                boolean z16 = false;
                if (C4884b0.m304m(t, m4213u) != 0) {
                    z16 = true;
                }
                return z16;
            case 17:
                if (C4884b0.m303n(t, m4213u) != null) {
                    z = true;
                }
                return z;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: n */
    public final boolean m4220n(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return m4221m(t, i);
        }
        return (i3 & i4) != 0;
    }

    /* renamed from: o */
    public final boolean m4219o(T t, int i, int i2) {
        return C4884b0.m305l(t, (long) (this.f7115a[i2 + 2] & 1048575)) == i;
    }

    /* renamed from: q */
    public final void m4217q(T t, T t2, int i) {
        long m4213u = m4213u(this.f7115a[i + 1]);
        if (!m4221m(t2, i)) {
            return;
        }
        Object m303n = C4884b0.m303n(t, m4213u);
        Object m303n2 = C4884b0.m303n(t2, m4213u);
        if (m303n != null && m303n2 != null) {
            C4884b0.f14955e.m280q(t, m4213u, C1895k.m4266c(m303n, m303n2));
            m4233B(t, i);
        } else if (m303n2 == null) {
        } else {
            C4884b0.f14955e.m280q(t, m4213u, m303n2);
            m4233B(t, i);
        }
    }

    /* renamed from: r */
    public final void m4216r(T t, T t2, int i) {
        int[] iArr = this.f7115a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long m4213u = m4213u(i2);
        if (!m4219o(t2, i3, i)) {
            return;
        }
        Object obj = null;
        if (m4219o(t, i3, i)) {
            obj = C4884b0.m303n(t, m4213u);
        }
        Object m303n = C4884b0.m303n(t2, m4213u);
        if (obj != null && m303n != null) {
            C4884b0.f14955e.m280q(t, m4213u, C1895k.m4266c(obj, m303n));
            m4232C(t, i3, i);
        } else if (m303n == null) {
        } else {
            C4884b0.f14955e.m280q(t, m4213u, m303n);
            m4232C(t, i3, i);
        }
    }
}

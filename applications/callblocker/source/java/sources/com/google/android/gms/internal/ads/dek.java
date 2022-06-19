package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dek.class */
public final class dek<T> implements dfd<T> {

    /* renamed from: a */
    private static final int[] f14140a = new int[0];

    /* renamed from: b */
    private static final Unsafe f14141b = dgb.m9698c();

    /* renamed from: c */
    private final int[] f14142c;

    /* renamed from: d */
    private final Object[] f14143d;

    /* renamed from: e */
    private final int f14144e;

    /* renamed from: f */
    private final int f14145f;

    /* renamed from: g */
    private final deg f14146g;

    /* renamed from: h */
    private final boolean f14147h;

    /* renamed from: i */
    private final boolean f14148i;

    /* renamed from: j */
    private final boolean f14149j;

    /* renamed from: k */
    private final boolean f14150k;

    /* renamed from: l */
    private final int[] f14151l;

    /* renamed from: m */
    private final int f14152m;

    /* renamed from: n */
    private final int f14153n;

    /* renamed from: o */
    private final deo f14154o;

    /* renamed from: p */
    private final ddp f14155p;

    /* renamed from: q */
    private final dfv<?, ?> f14156q;

    /* renamed from: r */
    private final dck<?> f14157r;

    /* renamed from: s */
    private final ddz f14158s;

    private dek(int[] iArr, Object[] objArr, int i, int i2, deg degVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, deo deoVar, ddp ddpVar, dfv<?, ?> dfvVar, dck<?> dckVar, ddz ddzVar) {
        this.f14142c = iArr;
        this.f14143d = objArr;
        this.f14144e = i;
        this.f14145f = i2;
        this.f14148i = degVar instanceof dcw;
        this.f14149j = z;
        this.f14147h = dckVar != null && dckVar.mo10133a(degVar);
        this.f14150k = false;
        this.f14151l = iArr2;
        this.f14152m = i3;
        this.f14153n = i4;
        this.f14154o = deoVar;
        this.f14155p = ddpVar;
        this.f14156q = dfvVar;
        this.f14157r = dckVar;
        this.f14146g = degVar;
        this.f14158s = ddzVar;
    }

    /* renamed from: a */
    private final int m9973a(int i, int i2) {
        return (i < this.f14144e || i > this.f14145f) ? -1 : m9951b(i, i2);
    }

    /* renamed from: a */
    private static <UT, UB> int m9970a(dfv<UT, UB> dfvVar, T t) {
        return dfvVar.mo9717f(dfvVar.mo9725b(t));
    }

    /* renamed from: a */
    private final int m9957a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, dbh dbhVar) {
        int i9;
        int m10242a;
        Unsafe unsafe = f14141b;
        long j2 = this.f14142c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                i9 = i;
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(dbe.m10235c(bArr, i)));
                    m10242a = i + 8;
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 52:
                i9 = i;
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(dbe.m10233d(bArr, i)));
                    m10242a = i + 4;
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 53:
            case 54:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10236b(bArr, i, dbhVar);
                    unsafe.putObject(t, j, Long.valueOf(dbhVar.f13929b));
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 55:
            case 62:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10239a(bArr, i, dbhVar);
                    unsafe.putObject(t, j, Integer.valueOf(dbhVar.f13928a));
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 56:
            case 65:
                i9 = i;
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(dbe.m10237b(bArr, i)));
                    m10242a = i + 8;
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 57:
            case 64:
                i9 = i;
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(dbe.m10240a(bArr, i)));
                    m10242a = i + 4;
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 58:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10236b(bArr, i, dbhVar);
                    unsafe.putObject(t, j, Boolean.valueOf(dbhVar.f13929b != 0));
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 59:
                i9 = i;
                if (i5 == 2) {
                    int m10239a = dbe.m10239a(bArr, i, dbhVar);
                    int i10 = dbhVar.f13928a;
                    if (i10 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((536870912 & i6) != 0 && !dgd.m9641a(bArr, m10239a, m10239a + i10)) {
                        throw zzeco.m6542i();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, m10239a, i10, dcz.f14093a));
                        m10239a += i10;
                    }
                    unsafe.putInt(t, j2, i4);
                    i9 = m10239a;
                    break;
                }
                break;
            case 60:
                i9 = i;
                if (i5 == 2) {
                    i9 = dbe.m10241a(m9974a(i8), bArr, i, i2, dbhVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, dbhVar.f13930c);
                    } else {
                        unsafe.putObject(t, j, dcz.m10046a(object, dbhVar.f13930c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                i9 = i;
                if (i5 == 2) {
                    m10242a = dbe.m10231e(bArr, i, dbhVar);
                    unsafe.putObject(t, j, dbhVar.f13930c);
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 63:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10239a(bArr, i, dbhVar);
                    int i11 = dbhVar.f13928a;
                    dda m9945c = m9945c(i8);
                    if (m9945c != null && !m9945c.mo8205a(i11)) {
                        m9939e(t).m9751a(i3, Long.valueOf(i11));
                        i9 = m10242a;
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        unsafe.putInt(t, j2, i4);
                        i9 = m10242a;
                        break;
                    }
                }
                break;
            case 66:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10239a(bArr, i, dbhVar);
                    unsafe.putObject(t, j, Integer.valueOf(dby.m10196e(dbhVar.f13928a)));
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 67:
                i9 = i;
                if (i5 == 0) {
                    m10242a = dbe.m10236b(bArr, i, dbhVar);
                    unsafe.putObject(t, j, Long.valueOf(dby.m10198a(dbhVar.f13929b)));
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            case 68:
                i9 = i;
                if (i5 == 3) {
                    m10242a = dbe.m10242a(m9974a(i8), bArr, i, i2, (i3 & (-8)) | 4, dbhVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, dbhVar.f13930c);
                    } else {
                        unsafe.putObject(t, j, dcz.m10046a(object2, dbhVar.f13930c));
                    }
                    unsafe.putInt(t, j2, i4);
                    i9 = m10242a;
                    break;
                }
                break;
            default:
                i9 = i;
                break;
        }
        return i9;
    }

    /* renamed from: a */
    private final int m9956a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, dbh dbhVar) {
        int i8;
        int m10246a;
        dde ddeVar = (dde) f14141b.getObject(t, j2);
        if (!ddeVar.mo10030a()) {
            int size = ddeVar.size();
            ddeVar = ddeVar.mo9923a(size == 0 ? 10 : size << 1);
            f14141b.putObject(t, j2, ddeVar);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 1) {
                        dch dchVar = (dch) ddeVar;
                        dchVar.m10141a(dbe.m10235c(bArr, i));
                        int i9 = i + 8;
                        while (true) {
                            i8 = i9;
                            if (i9 >= i2) {
                                break;
                            } else {
                                int m10239a = dbe.m10239a(bArr, i9, dbhVar);
                                i8 = i9;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    dchVar.m10141a(dbe.m10235c(bArr, m10239a));
                                    i9 = m10239a + 8;
                                }
                            }
                        }
                    }
                } else {
                    dch dchVar2 = (dch) ddeVar;
                    int m10239a2 = dbe.m10239a(bArr, i, dbhVar);
                    int i10 = dbhVar.f13928a + m10239a2;
                    while (m10239a2 < i10) {
                        dchVar2.m10141a(dbe.m10235c(bArr, m10239a2));
                        m10239a2 += 8;
                    }
                    i8 = m10239a2;
                    if (m10239a2 != i10) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 19:
            case 36:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 5) {
                        dcr dcrVar = (dcr) ddeVar;
                        dcrVar.m10102a(dbe.m10233d(bArr, i));
                        int i11 = i + 4;
                        while (true) {
                            i8 = i11;
                            if (i11 >= i2) {
                                break;
                            } else {
                                int m10239a3 = dbe.m10239a(bArr, i11, dbhVar);
                                i8 = i11;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    dcrVar.m10102a(dbe.m10233d(bArr, m10239a3));
                                    i11 = m10239a3 + 4;
                                }
                            }
                        }
                    }
                } else {
                    dcr dcrVar2 = (dcr) ddeVar;
                    int m10239a4 = dbe.m10239a(bArr, i, dbhVar);
                    int i12 = dbhVar.f13928a + m10239a4;
                    while (m10239a4 < i12) {
                        dcrVar2.m10102a(dbe.m10233d(bArr, m10239a4));
                        m10239a4 += 4;
                    }
                    i8 = m10239a4;
                    if (m10239a4 != i12) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        ddu dduVar = (ddu) ddeVar;
                        int m10236b = dbe.m10236b(bArr, i, dbhVar);
                        dduVar.m10018a(dbhVar.f13929b);
                        while (true) {
                            i8 = m10236b;
                            if (m10236b >= i2) {
                                break;
                            } else {
                                int m10239a5 = dbe.m10239a(bArr, m10236b, dbhVar);
                                i8 = m10236b;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    m10236b = dbe.m10236b(bArr, m10239a5, dbhVar);
                                    dduVar.m10018a(dbhVar.f13929b);
                                }
                            }
                        }
                    }
                } else {
                    ddu dduVar2 = (ddu) ddeVar;
                    int m10239a6 = dbe.m10239a(bArr, i, dbhVar);
                    int i13 = dbhVar.f13928a + m10239a6;
                    while (m10239a6 < i13) {
                        m10239a6 = dbe.m10236b(bArr, m10239a6, dbhVar);
                        dduVar2.m10018a(dbhVar.f13929b);
                    }
                    i8 = m10239a6;
                    if (m10239a6 != i13) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        i8 = dbe.m10246a(i3, bArr, i, i2, ddeVar, dbhVar);
                        break;
                    }
                } else {
                    i8 = dbe.m10238a(bArr, i, ddeVar, dbhVar);
                    break;
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 1) {
                        ddu dduVar3 = (ddu) ddeVar;
                        dduVar3.m10018a(dbe.m10237b(bArr, i));
                        int i14 = i + 8;
                        while (true) {
                            i8 = i14;
                            if (i14 >= i2) {
                                break;
                            } else {
                                int m10239a7 = dbe.m10239a(bArr, i14, dbhVar);
                                i8 = i14;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    dduVar3.m10018a(dbe.m10237b(bArr, m10239a7));
                                    i14 = m10239a7 + 8;
                                }
                            }
                        }
                    }
                } else {
                    ddu dduVar4 = (ddu) ddeVar;
                    int m10239a8 = dbe.m10239a(bArr, i, dbhVar);
                    int i15 = dbhVar.f13928a + m10239a8;
                    while (m10239a8 < i15) {
                        dduVar4.m10018a(dbe.m10237b(bArr, m10239a8));
                        m10239a8 += 8;
                    }
                    i8 = m10239a8;
                    if (m10239a8 != i15) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 5) {
                        dcx dcxVar = (dcx) ddeVar;
                        dcxVar.mo10039d(dbe.m10240a(bArr, i));
                        int i16 = i + 4;
                        while (true) {
                            i8 = i16;
                            if (i16 >= i2) {
                                break;
                            } else {
                                int m10239a9 = dbe.m10239a(bArr, i16, dbhVar);
                                i8 = i16;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    dcxVar.mo10039d(dbe.m10240a(bArr, m10239a9));
                                    i16 = m10239a9 + 4;
                                }
                            }
                        }
                    }
                } else {
                    dcx dcxVar2 = (dcx) ddeVar;
                    int m10239a10 = dbe.m10239a(bArr, i, dbhVar);
                    int i17 = dbhVar.f13928a + m10239a10;
                    while (m10239a10 < i17) {
                        dcxVar2.mo10039d(dbe.m10240a(bArr, m10239a10));
                        m10239a10 += 4;
                    }
                    i8 = m10239a10;
                    if (m10239a10 != i17) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 25:
            case 42:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        dbg dbgVar = (dbg) ddeVar;
                        int m10236b2 = dbe.m10236b(bArr, i, dbhVar);
                        dbgVar.m10227a(dbhVar.f13929b != 0);
                        while (true) {
                            i8 = m10236b2;
                            if (m10236b2 >= i2) {
                                break;
                            } else {
                                int m10239a11 = dbe.m10239a(bArr, m10236b2, dbhVar);
                                i8 = m10236b2;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    m10236b2 = dbe.m10236b(bArr, m10239a11, dbhVar);
                                    dbgVar.m10227a(dbhVar.f13929b != 0);
                                }
                            }
                        }
                    }
                } else {
                    dbg dbgVar2 = (dbg) ddeVar;
                    int m10239a12 = dbe.m10239a(bArr, i, dbhVar);
                    int i18 = m10239a12 + dbhVar.f13928a;
                    while (m10239a12 < i18) {
                        m10239a12 = dbe.m10236b(bArr, m10239a12, dbhVar);
                        dbgVar2.m10227a(dbhVar.f13929b != 0);
                    }
                    i8 = m10239a12;
                    if (m10239a12 != i18) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 26:
                i8 = i;
                if (i5 == 2) {
                    if ((536870912 & j) != 0) {
                        int m10239a13 = dbe.m10239a(bArr, i, dbhVar);
                        int i19 = dbhVar.f13928a;
                        if (i19 >= 0) {
                            if (i19 == 0) {
                                ddeVar.add("");
                            } else if (!dgd.m9641a(bArr, m10239a13, m10239a13 + i19)) {
                                throw zzeco.m6542i();
                            } else {
                                ddeVar.add(new String(bArr, m10239a13, i19, dcz.f14093a));
                                m10239a13 += i19;
                            }
                            while (true) {
                                i8 = m10239a13;
                                if (m10239a13 >= i2) {
                                    break;
                                } else {
                                    int m10239a14 = dbe.m10239a(bArr, m10239a13, dbhVar);
                                    i8 = m10239a13;
                                    if (i3 != dbhVar.f13928a) {
                                        break;
                                    } else {
                                        m10239a13 = dbe.m10239a(bArr, m10239a14, dbhVar);
                                        int i20 = dbhVar.f13928a;
                                        if (i20 < 0) {
                                            throw zzeco.m6549b();
                                        }
                                        if (i20 == 0) {
                                            ddeVar.add("");
                                        } else if (!dgd.m9641a(bArr, m10239a13, m10239a13 + i20)) {
                                            throw zzeco.m6542i();
                                        } else {
                                            ddeVar.add(new String(bArr, m10239a13, i20, dcz.f14093a));
                                            m10239a13 += i20;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzeco.m6549b();
                        }
                    } else {
                        int m10239a15 = dbe.m10239a(bArr, i, dbhVar);
                        int i21 = dbhVar.f13928a;
                        if (i21 >= 0) {
                            if (i21 == 0) {
                                ddeVar.add("");
                            } else {
                                ddeVar.add(new String(bArr, m10239a15, i21, dcz.f14093a));
                                m10239a15 += i21;
                            }
                            while (true) {
                                i8 = m10239a15;
                                if (m10239a15 >= i2) {
                                    break;
                                } else {
                                    int m10239a16 = dbe.m10239a(bArr, m10239a15, dbhVar);
                                    i8 = m10239a15;
                                    if (i3 != dbhVar.f13928a) {
                                        break;
                                    } else {
                                        m10239a15 = dbe.m10239a(bArr, m10239a16, dbhVar);
                                        int i22 = dbhVar.f13928a;
                                        if (i22 < 0) {
                                            throw zzeco.m6549b();
                                        }
                                        if (i22 == 0) {
                                            ddeVar.add("");
                                        } else {
                                            ddeVar.add(new String(bArr, m10239a15, i22, dcz.f14093a));
                                            m10239a15 += i22;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzeco.m6549b();
                        }
                    }
                }
                break;
            case 27:
                i8 = i;
                if (i5 == 2) {
                    i8 = dbe.m10243a(m9974a(i6), i3, bArr, i, i2, ddeVar, dbhVar);
                    break;
                }
                break;
            case 28:
                i8 = i;
                if (i5 == 2) {
                    int m10239a17 = dbe.m10239a(bArr, i, dbhVar);
                    int i23 = dbhVar.f13928a;
                    if (i23 >= 0) {
                        if (i23 <= bArr.length - m10239a17) {
                            if (i23 == 0) {
                                ddeVar.add(dbi.f13932a);
                            } else {
                                ddeVar.add(dbi.m10218a(bArr, m10239a17, i23));
                                m10239a17 += i23;
                            }
                            while (true) {
                                i8 = m10239a17;
                                if (m10239a17 >= i2) {
                                    break;
                                } else {
                                    int m10239a18 = dbe.m10239a(bArr, m10239a17, dbhVar);
                                    i8 = m10239a17;
                                    if (i3 != dbhVar.f13928a) {
                                        break;
                                    } else {
                                        m10239a17 = dbe.m10239a(bArr, m10239a18, dbhVar);
                                        int i24 = dbhVar.f13928a;
                                        if (i24 < 0) {
                                            throw zzeco.m6549b();
                                        }
                                        if (i24 > bArr.length - m10239a17) {
                                            throw zzeco.m6551a();
                                        }
                                        if (i24 == 0) {
                                            ddeVar.add(dbi.f13932a);
                                        } else {
                                            ddeVar.add(dbi.m10218a(bArr, m10239a17, i24));
                                            m10239a17 += i24;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzeco.m6551a();
                        }
                    } else {
                        throw zzeco.m6549b();
                    }
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    m10246a = dbe.m10238a(bArr, i, ddeVar, dbhVar);
                } else {
                    i8 = i;
                    if (i5 == 0) {
                        m10246a = dbe.m10246a(i3, bArr, i, i2, ddeVar, dbhVar);
                    }
                }
                dfu dfuVar = ((dcw) t).zzhxv;
                dfu dfuVar2 = dfuVar;
                if (dfuVar == dfu.m9752a()) {
                    dfuVar2 = null;
                }
                dfu dfuVar3 = (dfu) dff.m9816a(i4, ddeVar, m9945c(i6), dfuVar2, this.f14156q);
                if (dfuVar3 == null) {
                    i8 = m10246a;
                    break;
                } else {
                    ((dcw) t).zzhxv = dfuVar3;
                    i8 = m10246a;
                    break;
                }
            case 33:
            case 47:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        dcx dcxVar3 = (dcx) ddeVar;
                        int m10239a19 = dbe.m10239a(bArr, i, dbhVar);
                        dcxVar3.mo10039d(dby.m10196e(dbhVar.f13928a));
                        while (true) {
                            i8 = m10239a19;
                            if (m10239a19 >= i2) {
                                break;
                            } else {
                                int m10239a20 = dbe.m10239a(bArr, m10239a19, dbhVar);
                                i8 = m10239a19;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    m10239a19 = dbe.m10239a(bArr, m10239a20, dbhVar);
                                    dcxVar3.mo10039d(dby.m10196e(dbhVar.f13928a));
                                }
                            }
                        }
                    }
                } else {
                    dcx dcxVar4 = (dcx) ddeVar;
                    int m10239a21 = dbe.m10239a(bArr, i, dbhVar);
                    int i25 = dbhVar.f13928a + m10239a21;
                    while (m10239a21 < i25) {
                        m10239a21 = dbe.m10239a(bArr, m10239a21, dbhVar);
                        dcxVar4.mo10039d(dby.m10196e(dbhVar.f13928a));
                    }
                    i8 = m10239a21;
                    if (m10239a21 != i25) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 34:
            case 48:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        ddu dduVar5 = (ddu) ddeVar;
                        int m10236b3 = dbe.m10236b(bArr, i, dbhVar);
                        dduVar5.m10018a(dby.m10198a(dbhVar.f13929b));
                        while (true) {
                            i8 = m10236b3;
                            if (m10236b3 >= i2) {
                                break;
                            } else {
                                int m10239a22 = dbe.m10239a(bArr, m10236b3, dbhVar);
                                i8 = m10236b3;
                                if (i3 != dbhVar.f13928a) {
                                    break;
                                } else {
                                    m10236b3 = dbe.m10236b(bArr, m10239a22, dbhVar);
                                    dduVar5.m10018a(dby.m10198a(dbhVar.f13929b));
                                }
                            }
                        }
                    }
                } else {
                    ddu dduVar6 = (ddu) ddeVar;
                    int m10239a23 = dbe.m10239a(bArr, i, dbhVar);
                    int i26 = dbhVar.f13928a + m10239a23;
                    while (m10239a23 < i26) {
                        m10239a23 = dbe.m10236b(bArr, m10239a23, dbhVar);
                        dduVar6.m10018a(dby.m10198a(dbhVar.f13929b));
                    }
                    i8 = m10239a23;
                    if (m10239a23 != i26) {
                        throw zzeco.m6551a();
                    }
                }
                break;
            case 49:
                i8 = i;
                if (i5 == 3) {
                    dfd m9974a = m9974a(i6);
                    int i27 = (i3 & (-8)) | 4;
                    int m10242a = dbe.m10242a(m9974a, bArr, i, i2, i27, dbhVar);
                    ddeVar.add(dbhVar.f13930c);
                    while (true) {
                        i8 = m10242a;
                        if (m10242a >= i2) {
                            break;
                        } else {
                            int m10239a24 = dbe.m10239a(bArr, m10242a, dbhVar);
                            i8 = m10242a;
                            if (i3 != dbhVar.f13928a) {
                                break;
                            } else {
                                m10242a = dbe.m10242a(m9974a, bArr, m10239a24, i2, i27, dbhVar);
                                ddeVar.add(dbhVar.f13930c);
                            }
                        }
                    }
                }
                break;
            default:
                i8 = i;
                break;
        }
        return i8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v60, types: [int] */
    /* renamed from: a */
    private final <K, V> int m9955a(T t, byte[] bArr, int i, int i2, int i3, long j, dbh dbhVar) {
        Object obj;
        Unsafe unsafe = f14141b;
        Object m9952b = m9952b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.f14158s.mo9995c(object)) {
            Object mo9993e = this.f14158s.mo9993e(m9952b);
            this.f14158s.mo9997a(mo9993e, object);
            unsafe.putObject(t, j, mo9993e);
            obj = mo9993e;
        } else {
            obj = object;
        }
        ddx<?, ?> mo9992f = this.f14158s.mo9992f(m9952b);
        Map<?, ?> mo9998a = this.f14158s.mo9998a(obj);
        int m10239a = dbe.m10239a(bArr, i, dbhVar);
        int i4 = dbhVar.f13928a;
        if (i4 < 0 || i4 > i2 - m10239a) {
            throw zzeco.m6551a();
        }
        int i5 = m10239a + i4;
        Object obj2 = mo9992f.f14132b;
        Object obj3 = mo9992f.f14134d;
        while (m10239a < i5) {
            int i6 = m10239a + 1;
            byte b = bArr[m10239a];
            byte b2 = b;
            int i7 = i6;
            if (b < 0) {
                i7 = dbe.m10244a(b, bArr, i6, dbhVar);
                b2 = dbhVar.f13928a;
            }
            int i8 = b2 & 7;
            switch (b2 >>> 3) {
                case 1:
                    if (i8 != mo9992f.f14131a.m9628b()) {
                        break;
                    } else {
                        m10239a = m9953a(bArr, i7, i2, mo9992f.f14131a, (Class<?>) null, dbhVar);
                        obj2 = dbhVar.f13930c;
                        continue;
                    }
                case 2:
                    if (i8 != mo9992f.f14133c.m9628b()) {
                        break;
                    } else {
                        m10239a = m9953a(bArr, i7, i2, mo9992f.f14133c, mo9992f.f14134d.getClass(), dbhVar);
                        obj3 = dbhVar.f13930c;
                        continue;
                    }
            }
            m10239a = dbe.m10247a(b2, bArr, i7, i2, dbhVar);
        }
        if (m10239a != i5) {
            throw zzeco.m6543h();
        }
        mo9998a.put(obj2, obj3);
        return i5;
    }

    /* renamed from: a */
    private static int m9953a(byte[] bArr, int i, int i2, dgi dgiVar, Class<?> cls, dbh dbhVar) {
        int m10232d;
        switch (dej.f14139a[dgiVar.ordinal()]) {
            case 1:
                m10232d = dbe.m10236b(bArr, i, dbhVar);
                dbhVar.f13930c = Boolean.valueOf(dbhVar.f13929b != 0);
                break;
            case 2:
                m10232d = dbe.m10231e(bArr, i, dbhVar);
                break;
            case 3:
                dbhVar.f13930c = Double.valueOf(dbe.m10235c(bArr, i));
                m10232d = i + 8;
                break;
            case 4:
            case 5:
                dbhVar.f13930c = Integer.valueOf(dbe.m10240a(bArr, i));
                m10232d = i + 4;
                break;
            case 6:
            case 7:
                dbhVar.f13930c = Long.valueOf(dbe.m10237b(bArr, i));
                m10232d = i + 8;
                break;
            case 8:
                dbhVar.f13930c = Float.valueOf(dbe.m10233d(bArr, i));
                m10232d = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                m10232d = dbe.m10239a(bArr, i, dbhVar);
                dbhVar.f13930c = Integer.valueOf(dbhVar.f13928a);
                break;
            case 12:
            case 13:
                m10232d = dbe.m10236b(bArr, i, dbhVar);
                dbhVar.f13930c = Long.valueOf(dbhVar.f13929b);
                break;
            case 14:
                m10232d = dbe.m10241a(der.m9928a().m9927a((Class) cls), bArr, i, i2, dbhVar);
                break;
            case 15:
                m10232d = dbe.m10239a(bArr, i, dbhVar);
                dbhVar.f13930c = Integer.valueOf(dby.m10196e(dbhVar.f13928a));
                break;
            case 16:
                m10232d = dbe.m10236b(bArr, i, dbhVar);
                dbhVar.f13930c = Long.valueOf(dby.m10198a(dbhVar.f13929b));
                break;
            case 17:
                m10232d = dbe.m10232d(bArr, i, dbhVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return m10232d;
    }

    /* renamed from: a */
    public static <T> dek<T> m9967a(Class<T> cls, dee deeVar, deo deoVar, ddp ddpVar, dfv<?, ?> dfvVar, dck<?> dckVar, ddz ddzVar) {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        char c2;
        int i6;
        char c3;
        int[] iArr;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        char charAt;
        int i13;
        char charAt2;
        char charAt3;
        int i14;
        char charAt4;
        int i15;
        int charAt5;
        int i16;
        int charAt6;
        int charAt7;
        int i17;
        int charAt8;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        Field m9966a;
        int charAt9;
        int i29;
        Field m9966a2;
        Field m9966a3;
        int charAt10;
        int charAt11;
        int i30;
        int charAt12;
        int i31;
        int charAt13;
        int charAt14;
        if (!(deeVar instanceof deu)) {
            if (((dfo) deeVar).mo9758a() == dcw.C2960f.f14084i) {
            }
            throw new NoSuchMethodError();
        }
        deu deuVar = (deu) deeVar;
        boolean z = deuVar.mo9758a() == dcw.C2960f.f14084i;
        String m9925d = deuVar.m9925d();
        int length = m9925d.length();
        int i32 = 1;
        int charAt15 = m9925d.charAt(0);
        if (charAt15 >= 55296) {
            int i33 = charAt15 & 8191;
            int i34 = 13;
            while (true) {
                i = i32 + 1;
                charAt14 = m9925d.charAt(i32);
                if (charAt14 < 55296) {
                    break;
                }
                i33 |= (charAt14 & 8191) << i34;
                i32 = i;
                i34 += 13;
            }
            charAt15 = (charAt14 << i34) | i33;
        } else {
            i = 1;
        }
        int i35 = i + 1;
        int charAt16 = m9925d.charAt(i);
        if (charAt16 >= 55296) {
            int i36 = charAt16 & 8191;
            int i37 = 13;
            while (true) {
                i31 = i35 + 1;
                charAt13 = m9925d.charAt(i35);
                if (charAt13 < 55296) {
                    break;
                }
                i36 |= (charAt13 & 8191) << i37;
                i35 = i31;
                i37 += 13;
            }
            i2 = i31;
            charAt16 = (charAt13 << i37) | i36;
        } else {
            i2 = i35;
        }
        if (charAt16 == 0) {
            i8 = 0;
            i9 = 0;
            c = 0;
            i12 = 0;
            i10 = 0;
            iArr = f14140a;
            i11 = 0;
            i7 = 0;
        } else {
            int i38 = i2 + 1;
            int charAt17 = m9925d.charAt(i2);
            if (charAt17 >= 55296) {
                int i39 = charAt17 & 8191;
                int i40 = 13;
                while (true) {
                    i17 = i38 + 1;
                    charAt8 = m9925d.charAt(i38);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i39 |= (charAt8 & 8191) << i40;
                    i38 = i17;
                    i40 += 13;
                }
                i3 = i17;
                charAt17 = (charAt8 << i40) | i39;
            } else {
                i3 = i38;
            }
            int i41 = i3 + 1;
            int charAt18 = m9925d.charAt(i3);
            int i42 = charAt18;
            int i43 = i41;
            if (charAt18 >= 55296) {
                int i44 = charAt18 & 8191;
                int i45 = 13;
                while (true) {
                    int i46 = i41;
                    i41 = i46 + 1;
                    charAt7 = m9925d.charAt(i46);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i44 |= (charAt7 & 8191) << i45;
                    i45 += 13;
                }
                i42 = (charAt7 << i45) | i44;
                i43 = i41;
            }
            int i47 = i43 + 1;
            int charAt19 = m9925d.charAt(i43);
            int i48 = charAt19;
            int i49 = i47;
            if (charAt19 >= 55296) {
                int i50 = charAt19 & 8191;
                int i51 = i47;
                int i52 = 13;
                while (true) {
                    i16 = i51 + 1;
                    charAt6 = m9925d.charAt(i51);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i50 |= (charAt6 & 8191) << i52;
                    i51 = i16;
                    i52 += 13;
                }
                i49 = i16;
                i48 = (charAt6 << i52) | i50;
            }
            int i53 = i49 + 1;
            int charAt20 = m9925d.charAt(i49);
            if (charAt20 >= 55296) {
                int i54 = charAt20 & 8191;
                int i55 = i53;
                int i56 = 13;
                while (true) {
                    i15 = i55 + 1;
                    charAt5 = m9925d.charAt(i55);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i54 |= (charAt5 & 8191) << i56;
                    i55 = i15;
                    i56 += 13;
                }
                i53 = i15;
                charAt20 = (charAt5 << i56) | i54;
            }
            int i57 = i53 + 1;
            char charAt21 = m9925d.charAt(i53);
            if (charAt21 >= 55296) {
                int i58 = charAt21 & 8191;
                int i59 = i57;
                int i60 = 13;
                while (true) {
                    i14 = i59 + 1;
                    charAt4 = m9925d.charAt(i59);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i58 |= (charAt4 & 8191) << i60;
                    i60 += 13;
                    i59 = i14;
                }
                i4 = i14;
                c = (charAt4 << i60) | i58;
            } else {
                i4 = i57;
                c = charAt21;
            }
            int i61 = i4 + 1;
            char charAt22 = m9925d.charAt(i4);
            if (charAt22 >= 55296) {
                int i62 = charAt22 & 8191;
                int i63 = i61;
                int i64 = 13;
                while (true) {
                    i5 = i63 + 1;
                    charAt3 = m9925d.charAt(i63);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i62 |= (charAt3 & 8191) << i64;
                    i64 += 13;
                    i63 = i5;
                }
                c2 = (charAt3 << i64) | i62;
            } else {
                i5 = i61;
                c2 = charAt22;
            }
            int i65 = i5 + 1;
            char charAt23 = m9925d.charAt(i5);
            if (charAt23 >= 55296) {
                int i66 = charAt23 & 8191;
                int i67 = 13;
                while (true) {
                    i13 = i65 + 1;
                    charAt2 = m9925d.charAt(i65);
                    if (charAt2 < 55296) {
                        break;
                    }
                    i66 |= (charAt2 & 8191) << i67;
                    i67 += 13;
                    i65 = i13;
                }
                c3 = (charAt2 << i67) | i66;
                i6 = i13;
            } else {
                i6 = i65;
                c3 = charAt23;
            }
            int i68 = i6 + 1;
            char charAt24 = m9925d.charAt(i6);
            char c4 = charAt24;
            if (charAt24 >= 55296) {
                int i69 = charAt24 & 8191;
                int i70 = 13;
                while (true) {
                    int i71 = i68;
                    i68 = i71 + 1;
                    charAt = m9925d.charAt(i71);
                    if (charAt < 55296) {
                        break;
                    }
                    i69 |= (charAt & 8191) << i70;
                    i70 += 13;
                }
                c4 = (charAt << i70) | i69;
            }
            iArr = new int[c3 + c4 + c2];
            i7 = charAt17;
            i8 = i48;
            i9 = charAt20;
            i10 = c4;
            i11 = i42 + (charAt17 << 1);
            i12 = c2;
            i2 = i68;
        }
        Unsafe unsafe = f14141b;
        Object[] m9924e = deuVar.m9924e();
        Class<?> cls2 = deuVar.mo9756c().getClass();
        int[] iArr2 = new int[c * 3];
        Object[] objArr = new Object[c << 1];
        int i72 = i10 + i12;
        int i73 = 0;
        int i74 = i10;
        int i75 = i11;
        int i76 = 0;
        while (true) {
            int i77 = i74;
            if (i2 >= length) {
                return new dek<>(iArr2, objArr, i8, i9, deuVar.mo9756c(), z, false, iArr, i10, i10 + i12, deoVar, ddpVar, dfvVar, dckVar, ddzVar);
            }
            int i78 = i2 + 1;
            int charAt25 = m9925d.charAt(i2);
            if (charAt25 >= 55296) {
                int i79 = charAt25 & 8191;
                int i80 = 13;
                while (true) {
                    i30 = i78 + 1;
                    charAt12 = m9925d.charAt(i78);
                    if (charAt12 < 55296) {
                        break;
                    }
                    i79 |= (charAt12 & 8191) << i80;
                    i78 = i30;
                    i80 += 13;
                }
                i19 = (charAt12 << i80) | i79;
                i18 = i30;
            } else {
                i18 = i78;
                i19 = charAt25;
            }
            i2 = i18 + 1;
            int charAt26 = m9925d.charAt(i18);
            if (charAt26 >= 55296) {
                int i81 = charAt26 & 8191;
                int i82 = 13;
                while (true) {
                    int i83 = i2;
                    i2 = i83 + 1;
                    charAt11 = m9925d.charAt(i83);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i81 |= (charAt11 & 8191) << i82;
                    i82 += 13;
                }
                charAt26 = (charAt11 << i82) | i81;
            }
            int i84 = charAt26 & 255;
            if ((charAt26 & 1024) != 0) {
                iArr[i76] = i73;
                i76++;
            }
            if (i84 >= 51) {
                int i85 = i2 + 1;
                int charAt27 = m9925d.charAt(i2);
                if (charAt27 >= 55296) {
                    int i86 = 13;
                    int i87 = i85;
                    int i88 = charAt27 & 8191;
                    while (true) {
                        i2 = i87 + 1;
                        charAt10 = m9925d.charAt(i87);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i88 |= (charAt10 & 8191) << i86;
                        i87 = i2;
                        i86 += 13;
                    }
                    i29 = (charAt10 << i86) | i88;
                } else {
                    i2 = i85;
                    i29 = charAt27;
                }
                int i89 = i84 - 51;
                if (i89 == 9 || i89 == 17) {
                    objArr[((i73 / 3) << 1) + 1] = m9924e[i75];
                    i75++;
                } else if (i89 == 12 && (charAt15 & 1) == 1) {
                    objArr[((i73 / 3) << 1) + 1] = m9924e[i75];
                    i75++;
                }
                int i90 = i29 << 1;
                Object obj = m9924e[i90];
                if (obj instanceof Field) {
                    m9966a2 = (Field) obj;
                } else {
                    m9966a2 = m9966a(cls2, (String) obj);
                    m9924e[i90] = m9966a2;
                }
                int objectFieldOffset = (int) unsafe.objectFieldOffset(m9966a2);
                int i91 = i90 + 1;
                Object obj2 = m9924e[i91];
                if (obj2 instanceof Field) {
                    m9966a3 = (Field) obj2;
                } else {
                    m9966a3 = m9966a(cls2, (String) obj2);
                    m9924e[i91] = m9966a3;
                }
                i23 = (int) unsafe.objectFieldOffset(m9966a3);
                i27 = i75;
                i26 = i77;
                i25 = objectFieldOffset;
                i24 = 0;
            } else {
                int i92 = i75 + 1;
                Field m9966a4 = m9966a(cls2, (String) m9924e[i75]);
                if (i84 == 9 || i84 == 17) {
                    objArr[((i73 / 3) << 1) + 1] = m9966a4.getType();
                    i20 = i92;
                } else if (i84 == 27 || i84 == 49) {
                    objArr[((i73 / 3) << 1) + 1] = m9924e[i92];
                    i20 = i92 + 1;
                } else if (i84 == 12 || i84 == 30 || i84 == 44) {
                    if ((charAt15 & 1) == 1) {
                        objArr[((i73 / 3) << 1) + 1] = m9924e[i92];
                        i20 = i92 + 1;
                    }
                    i20 = i92;
                } else {
                    if (i84 == 50) {
                        int i93 = i77 + 1;
                        iArr[i77] = i73;
                        int i94 = i92 + 1;
                        objArr[(i73 / 3) << 1] = m9924e[i92];
                        if ((charAt26 & 2048) != 0) {
                            objArr[((i73 / 3) << 1) + 1] = m9924e[i94];
                            i77 = i93;
                            i20 = i94 + 1;
                        } else {
                            i77 = i93;
                            i20 = i94;
                        }
                    }
                    i20 = i92;
                }
                int objectFieldOffset2 = (int) unsafe.objectFieldOffset(m9966a4);
                if ((charAt15 & 1) != 1 || i84 > 17) {
                    i21 = 0;
                    i22 = 0;
                } else {
                    int i95 = i2 + 1;
                    int charAt28 = m9925d.charAt(i2);
                    if (charAt28 >= 55296) {
                        int i96 = charAt28 & 8191;
                        int i97 = i95;
                        int i98 = 13;
                        while (true) {
                            i2 = i97 + 1;
                            charAt9 = m9925d.charAt(i97);
                            if (charAt9 < 55296) {
                                break;
                            }
                            i96 |= (charAt9 & 8191) << i98;
                            i97 = i2;
                            i98 += 13;
                        }
                        i28 = (charAt9 << i98) | i96;
                    } else {
                        i2 = i95;
                        i28 = charAt28;
                    }
                    int i99 = (i28 / 32) + (i7 << 1);
                    Object obj3 = m9924e[i99];
                    if (obj3 instanceof Field) {
                        m9966a = (Field) obj3;
                    } else {
                        m9966a = m9966a(cls2, (String) obj3);
                        m9924e[i99] = m9966a;
                    }
                    i21 = (int) unsafe.objectFieldOffset(m9966a);
                    i22 = i28 % 32;
                }
                if (i84 < 18 || i84 > 49) {
                    int i100 = i20;
                    i23 = i21;
                    i24 = i22;
                    i25 = objectFieldOffset2;
                    i26 = i77;
                    i27 = i100;
                } else {
                    iArr[i72] = objectFieldOffset2;
                    i72++;
                    int i101 = i20;
                    i23 = i21;
                    i24 = i22;
                    i25 = objectFieldOffset2;
                    i26 = i77;
                    i27 = i101;
                }
            }
            int i102 = i73 + 1;
            iArr2[i73] = i19;
            int i103 = i102 + 1;
            iArr2[i102] = ((charAt26 & 256) != 0 ? 268435456 : 0) | ((charAt26 & 512) != 0 ? 536870912 : 0) | (i84 << 20) | i25;
            iArr2[i103] = i23 | (i24 << 20);
            i73 = i103 + 1;
            i74 = i26;
            i75 = i27;
        }
    }

    /* renamed from: a */
    private final dfd m9974a(int i) {
        int i2 = (i / 3) << 1;
        dfd<T> dfdVar = (dfd) this.f14143d[i2];
        if (dfdVar == null) {
            dfdVar = der.m9928a().m9927a((Class) ((Class) this.f14143d[i2 + 1]));
            this.f14143d[i2] = dfdVar;
        }
        return dfdVar;
    }

    /* renamed from: a */
    private final <K, V, UT, UB> UB m9972a(int i, int i2, Map<K, V> map, dda ddaVar, UB ub, dfv<UT, UB> dfvVar) {
        ddx<?, ?> mo9992f = this.f14158s.mo9992f(m9952b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!ddaVar.mo8205a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = dfvVar.mo9735a();
                }
                dbq m10212c = dbi.m10212c(ddy.m10012a(mo9992f, next.getKey(), next.getValue()));
                try {
                    ddy.m10011a(m10212c.m10205b(), mo9992f, next.getKey(), next.getValue());
                    dfvVar.mo9730a((dfv<UT, UB>) ub2, i2, m10212c.m10206a());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private final <UT, UB> UB m9960a(Object obj, int i, UB ub, dfv<UT, UB> dfvVar) {
        UB ub2;
        int i2 = this.f14142c[i];
        Object m9684f = dgb.m9684f(obj, m9942d(i) & 1048575);
        if (m9684f == null) {
            ub2 = ub;
        } else {
            dda m9945c = m9945c(i);
            ub2 = ub;
            if (m9945c != null) {
                ub2 = m9972a(i, i2, this.f14158s.mo9998a(m9684f), m9945c, (dda) ub, (dfv<UT, dda>) dfvVar);
            }
        }
        return ub2;
    }

    /* renamed from: a */
    private static Field m9966a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field2 : declaredFields) {
                field = field2;
                if (!str.equals(field2.getName())) {
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            throw new RuntimeException(new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length()).append("Field ").append(str).append(" for ").append(name).append(" not found. Known fields are ").append(arrays).toString());
        }
        return field;
    }

    /* renamed from: a */
    private static List<?> m9959a(Object obj, long j) {
        return (List) dgb.m9684f(obj, j);
    }

    /* renamed from: a */
    private static void m9971a(int i, Object obj, dgo dgoVar) {
        if (obj instanceof String) {
            dgoVar.mo9617a(i, (String) obj);
        } else {
            dgoVar.mo9621a(i, (dbi) obj);
        }
    }

    /* renamed from: a */
    private static <UT, UB> void m9969a(dfv<UT, UB> dfvVar, T t, dgo dgoVar) {
        dfvVar.mo9727a((dfv<UT, UB>) dfvVar.mo9725b(t), dgoVar);
    }

    /* renamed from: a */
    private final <K, V> void m9968a(dgo dgoVar, int i, Object obj, int i2) {
        if (obj != null) {
            dgoVar.mo9620a(i, this.f14158s.mo9992f(m9952b(i2)), this.f14158s.mo9996b(obj));
        }
    }

    /* renamed from: a */
    private final void m9962a(Object obj, int i, dex dexVar) {
        if (m9937f(i)) {
            dgb.m9707a(obj, i & 1048575, dexVar.mo9871m());
        } else if (this.f14148i) {
            dgb.m9707a(obj, i & 1048575, dexVar.mo9873l());
        } else {
            dgb.m9707a(obj, i & 1048575, dexVar.mo9869n());
        }
    }

    /* renamed from: a */
    private final void m9958a(T t, T t2, int i) {
        long m9942d = m9942d(i) & 1048575;
        if (!m9965a((dek<T>) t2, i)) {
            return;
        }
        Object m9684f = dgb.m9684f(t, m9942d);
        Object m9684f2 = dgb.m9684f(t2, m9942d);
        if (m9684f != null && m9684f2 != null) {
            dgb.m9707a(t, m9942d, dcz.m10046a(m9684f, m9684f2));
            m9950b((dek<T>) t, i);
        } else if (m9684f2 == null) {
        } else {
            dgb.m9707a(t, m9942d, m9684f2);
            m9950b((dek<T>) t, i);
        }
    }

    /* renamed from: a */
    private final boolean m9965a(T t, int i) {
        boolean z;
        if (this.f14149j) {
            int m9942d = m9942d(i);
            long j = m9942d & 1048575;
            switch ((m9942d & 267386880) >>> 20) {
                case 0:
                    if (dgb.m9687e(t, j) == 0.0d) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    if (dgb.m9691d(t, j) == 0.0f) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 2:
                    if (dgb.m9701b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 3:
                    if (dgb.m9701b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 4:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 5:
                    if (dgb.m9701b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 6:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 7:
                    z = dgb.m9696c(t, j);
                    break;
                case 8:
                    Object m9684f = dgb.m9684f(t, j);
                    if (m9684f instanceof String) {
                        if (((String) m9684f).isEmpty()) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    } else if (!(m9684f instanceof dbi)) {
                        throw new IllegalArgumentException();
                    } else {
                        if (dbi.f13932a.equals(m9684f)) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    }
                case 9:
                    if (dgb.m9684f(t, j) == null) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 10:
                    if (dbi.f13932a.equals(dgb.m9684f(t, j))) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 11:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 12:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 13:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 14:
                    if (dgb.m9701b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 15:
                    if (dgb.m9713a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 16:
                    if (dgb.m9701b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 17:
                    if (dgb.m9684f(t, j) == null) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int m9940e = m9940e(i);
            z = (dgb.m9713a(t, (long) (m9940e & 1048575)) & (1 << (m9940e >>> 20))) != 0;
        }
        return z;
    }

    /* renamed from: a */
    private final boolean m9964a(T t, int i, int i2) {
        return dgb.m9713a(t, (long) (m9940e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m9963a(T t, int i, int i2, int i3) {
        return this.f14149j ? m9965a((dek<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m9961a(Object obj, int i, dfd dfdVar) {
        return dfdVar.mo9837d(dgb.m9684f(obj, 1048575 & i));
    }

    /* renamed from: b */
    private static <T> double m9948b(T t, long j) {
        return ((Double) dgb.m9684f(t, j)).doubleValue();
    }

    /* renamed from: b */
    private final int m9951b(int i, int i2) {
        int i3;
        int length = (this.f14142c.length / 3) - 1;
        while (true) {
            if (i2 > length) {
                i3 = -1;
                break;
            }
            int i4 = (length + i2) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f14142c[i5];
            if (i == i6) {
                i3 = i5;
                break;
            } else if (i < i6) {
                length = i4 - 1;
            } else {
                i2 = i4 + 1;
            }
        }
        return i3;
    }

    /* renamed from: b */
    private final Object m9952b(int i) {
        return this.f14143d[(i / 3) << 1];
    }

    /* renamed from: b */
    private final void m9950b(T t, int i) {
        if (this.f14149j) {
            return;
        }
        int m9940e = m9940e(i);
        long j = m9940e & 1048575;
        dgb.m9709a((Object) t, j, dgb.m9713a(t, j) | (1 << (m9940e >>> 20)));
    }

    /* renamed from: b */
    private final void m9949b(T t, int i, int i2) {
        dgb.m9709a((Object) t, m9940e(i2) & 1048575, i);
    }

    /* renamed from: b */
    private final void m9947b(T t, dgo dgoVar) {
        int i;
        int i2;
        int i3;
        Map.Entry<?, ?> entry = null;
        Iterator<Map.Entry<?, Object>> it = null;
        if (this.f14147h) {
            dcl<?> mo10129a = this.f14157r.mo10129a(t);
            entry = null;
            it = null;
            if (!mo10129a.f13991a.isEmpty()) {
                it = mo10129a.m10110d();
                entry = it.next();
            }
        }
        int i4 = -1;
        int i5 = 0;
        int length = this.f14142c.length;
        Unsafe unsafe = f14141b;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int m9942d = m9942d(i6);
            int i7 = this.f14142c[i6];
            int i8 = (267386880 & m9942d) >>> 20;
            if (this.f14149j || i8 > 17) {
                i = 0;
            } else {
                int i9 = this.f14142c[i6 + 2];
                int i10 = i9 & 1048575;
                if (i10 != i4) {
                    i3 = unsafe.getInt(t, i10);
                    i2 = i10;
                } else {
                    int i11 = i5;
                    i2 = i4;
                    i3 = i11;
                }
                int i12 = i3;
                i4 = i2;
                i5 = i12;
                i = 1 << (i9 >>> 20);
            }
            while (entry != null && this.f14157r.mo10128a(entry) <= i7) {
                this.f14157r.mo10130a(dgoVar, entry);
                entry = it.hasNext() ? it.next() : null;
            }
            long j = 1048575 & m9942d;
            switch (i8) {
                case 0:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9625a(i7, dgb.m9687e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9624a(i7, dgb.m9691d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9622a(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9604c(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9605c(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9601d(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9602d(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9613a(i7, dgb.m9696c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i5 & i) != 0) {
                        m9971a(i7, unsafe.getObject(t, j), dgoVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9618a(i7, unsafe.getObject(t, j), m9974a(i6));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9621a(i7, (dbi) unsafe.getObject(t, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9599e(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9611b(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9623a(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9610b(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9596f(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9598e(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i5 & i) != 0) {
                        dgoVar.mo9609b(i7, unsafe.getObject(t, j), m9974a(i6));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    dff.m9812a(this.f14142c[i6], (List<Double>) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 19:
                    dff.m9798b(this.f14142c[i6], (List<Float>) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 20:
                    dff.m9794c(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 21:
                    dff.m9790d(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 22:
                    dff.m9777h(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 23:
                    dff.m9783f(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 24:
                    dff.m9768k(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 25:
                    dff.m9765n(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 26:
                    dff.m9814a(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar);
                    break;
                case 27:
                    dff.m9813a(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, m9974a(i6));
                    break;
                case 28:
                    dff.m9800b(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar);
                    break;
                case 29:
                    dff.m9774i(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 30:
                    dff.m9766m(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 31:
                    dff.m9767l(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 32:
                    dff.m9780g(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 33:
                    dff.m9771j(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 34:
                    dff.m9786e(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, false);
                    break;
                case 35:
                    dff.m9812a(this.f14142c[i6], (List<Double>) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 36:
                    dff.m9798b(this.f14142c[i6], (List<Float>) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 37:
                    dff.m9794c(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 38:
                    dff.m9790d(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 39:
                    dff.m9777h(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 40:
                    dff.m9783f(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 41:
                    dff.m9768k(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 42:
                    dff.m9765n(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 43:
                    dff.m9774i(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 44:
                    dff.m9766m(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 45:
                    dff.m9767l(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 46:
                    dff.m9780g(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 47:
                    dff.m9771j(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 48:
                    dff.m9786e(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, true);
                    break;
                case 49:
                    dff.m9799b(this.f14142c[i6], (List) unsafe.getObject(t, j), dgoVar, m9974a(i6));
                    break;
                case 50:
                    m9968a(dgoVar, i7, unsafe.getObject(t, j), i6);
                    break;
                case 51:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9625a(i7, m9948b(t, j));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9624a(i7, m9944c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9622a(i7, m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9604c(i7, m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9605c(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9601d(i7, m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9602d(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9613a(i7, m9936f(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        m9971a(i7, unsafe.getObject(t, j), dgoVar);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9618a(i7, unsafe.getObject(t, j), m9974a(i6));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9621a(i7, (dbi) unsafe.getObject(t, j));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9599e(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9611b(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9623a(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9610b(i7, m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9596f(i7, m9941d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9598e(i7, m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m9964a((dek<T>) t, i7, i6)) {
                        dgoVar.mo9609b(i7, unsafe.getObject(t, j), m9974a(i6));
                        break;
                    } else {
                        break;
                    }
            }
        }
        while (entry != null) {
            this.f14157r.mo10130a(dgoVar, entry);
            entry = it.hasNext() ? it.next() : null;
        }
        m9969a(this.f14156q, t, dgoVar);
    }

    /* renamed from: b */
    private final void m9946b(T t, T t2, int i) {
        int m9942d = m9942d(i);
        int i2 = this.f14142c[i];
        long j = m9942d & 1048575;
        if (!m9964a((dek<T>) t2, i2, i)) {
            return;
        }
        Object m9684f = dgb.m9684f(t, j);
        Object m9684f2 = dgb.m9684f(t2, j);
        if (m9684f != null && m9684f2 != null) {
            dgb.m9707a(t, j, dcz.m10046a(m9684f, m9684f2));
            m9949b((dek<T>) t, i2, i);
        } else if (m9684f2 == null) {
        } else {
            dgb.m9707a(t, j, m9684f2);
            m9949b((dek<T>) t, i2, i);
        }
    }

    /* renamed from: c */
    private static <T> float m9944c(T t, long j) {
        return ((Float) dgb.m9684f(t, j)).floatValue();
    }

    /* renamed from: c */
    private final dda m9945c(int i) {
        return (dda) this.f14143d[((i / 3) << 1) + 1];
    }

    /* renamed from: c */
    private final boolean m9943c(T t, T t2, int i) {
        return m9965a((dek<T>) t, i) == m9965a((dek<T>) t2, i);
    }

    /* renamed from: d */
    private final int m9942d(int i) {
        return this.f14142c[i + 1];
    }

    /* renamed from: d */
    private static <T> int m9941d(T t, long j) {
        return ((Integer) dgb.m9684f(t, j)).intValue();
    }

    /* renamed from: e */
    private final int m9940e(int i) {
        return this.f14142c[i + 2];
    }

    /* renamed from: e */
    private static <T> long m9938e(T t, long j) {
        return ((Long) dgb.m9684f(t, j)).longValue();
    }

    /* renamed from: e */
    private static dfu m9939e(Object obj) {
        dfu dfuVar = ((dcw) obj).zzhxv;
        dfu dfuVar2 = dfuVar;
        if (dfuVar == dfu.m9752a()) {
            dfuVar2 = dfu.m9746b();
            ((dcw) obj).zzhxv = dfuVar2;
        }
        return dfuVar2;
    }

    /* renamed from: f */
    private static boolean m9937f(int i) {
        return (536870912 & i) != 0;
    }

    /* renamed from: f */
    private static <T> boolean m9936f(T t, long j) {
        return ((Boolean) dgb.m9684f(t, j)).booleanValue();
    }

    /* renamed from: g */
    private final int m9935g(int i) {
        return (i < this.f14144e || i > this.f14145f) ? -1 : m9951b(i, 0);
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final int mo9845a(T t) {
        int length = this.f14142c.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int m9942d = m9942d(i2);
            int i3 = this.f14142c[i2];
            long j = 1048575 & m9942d;
            switch ((m9942d & 267386880) >>> 20) {
                case 0:
                    i = (i * 53) + dcz.m10049a(Double.doubleToLongBits(dgb.m9687e(t, j)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(dgb.m9691d(t, j));
                    break;
                case 2:
                    i = (i * 53) + dcz.m10049a(dgb.m9701b(t, j));
                    break;
                case 3:
                    i = (i * 53) + dcz.m10049a(dgb.m9701b(t, j));
                    break;
                case 4:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 5:
                    i = (i * 53) + dcz.m10049a(dgb.m9701b(t, j));
                    break;
                case 6:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 7:
                    i = (i * 53) + dcz.m10044a(dgb.m9696c(t, j));
                    break;
                case 8:
                    i = ((String) dgb.m9684f(t, j)).hashCode() + (i * 53);
                    break;
                case 9:
                    Object m9684f = dgb.m9684f(t, j);
                    i = (m9684f != null ? m9684f.hashCode() : 37) + (i * 53);
                    break;
                case 10:
                    i = (i * 53) + dgb.m9684f(t, j).hashCode();
                    break;
                case 11:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 12:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 13:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 14:
                    i = (i * 53) + dcz.m10049a(dgb.m9701b(t, j));
                    break;
                case 15:
                    i = (i * 53) + dgb.m9713a(t, j);
                    break;
                case 16:
                    i = (i * 53) + dcz.m10049a(dgb.m9701b(t, j));
                    break;
                case 17:
                    Object m9684f2 = dgb.m9684f(t, j);
                    i = (m9684f2 != null ? m9684f2.hashCode() : 37) + (i * 53);
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
                    i = (i * 53) + dgb.m9684f(t, j).hashCode();
                    break;
                case 50:
                    i = (i * 53) + dgb.m9684f(t, j).hashCode();
                    break;
                case 51:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(Double.doubleToLongBits(m9948b(t, j)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + Float.floatToIntBits(m9944c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10044a(m9936f(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = ((String) dgb.m9684f(t, j)).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = dgb.m9684f(t, j).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dgb.m9684f(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + m9941d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = (i * 53) + dcz.m10049a(m9938e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m9964a((dek<T>) t, i3, i2)) {
                        i = dgb.m9684f(t, j).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i * 53) + this.f14156q.mo9725b(t).hashCode();
        int i4 = hashCode;
        if (this.f14147h) {
            i4 = (hashCode * 53) + this.f14157r.mo10129a(t).hashCode();
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x068f, code lost:
        if (r28 == (-1)) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0692, code lost:
        r0.putInt(r17, r28, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x069c, code lost:
        r18 = null;
        r19 = r16.f14152m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x06a8, code lost:
        if (r19 >= r16.f14153n) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x06ab, code lost:
        r18 = (com.google.android.gms.internal.ads.dfu) m9960a((java.lang.Object) r17, r16.f14151l[r19], (int) r18, (com.google.android.gms.internal.ads.dfv<UT, int>) r16.f14156q);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x06c6, code lost:
        if (r18 == null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x06c9, code lost:
        r16.f14156q.mo9722b((java.lang.Object) r17, (T) r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x06d4, code lost:
        if (r21 != 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x06db, code lost:
        if (r29 == r20) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x06e1, code lost:
        throw com.google.android.gms.internal.ads.zzeco.m6543h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06e6, code lost:
        if (r29 > r20) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x06ed, code lost:
        if (r26 == r21) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x06f3, code lost:
        throw com.google.android.gms.internal.ads.zzeco.m6543h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06f6, code lost:
        return r29;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9954a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.dbh r22) {
        /*
            Method dump skipped, instructions count: 1815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dek.m9954a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.dbh):int");
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final T mo9846a() {
        return (T) this.f14154o.mo9932a(this.f14146g);
    }

    /* JADX WARN: Removed duplicated region for block: B:493:0x0315 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:511:0x001e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02f6  */
    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9844a(T r9, com.google.android.gms.internal.ads.dex r10, com.google.android.gms.internal.ads.dci r11) {
        /*
            Method dump skipped, instructions count: 3764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dek.mo9844a(java.lang.Object, com.google.android.gms.internal.ads.dex, com.google.android.gms.internal.ads.dci):void");
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final void mo9843a(T t, dgo dgoVar) {
        Map.Entry<?, ?> entry;
        Map.Entry<?, ?> entry2;
        if (dgoVar.mo9627a() == dcw.C2960f.f14086k) {
            m9969a(this.f14156q, t, dgoVar);
            Map.Entry<?, ?> entry3 = null;
            Iterator<Map.Entry<?, Object>> it = null;
            if (this.f14147h) {
                dcl<?> mo10129a = this.f14157r.mo10129a(t);
                entry3 = null;
                it = null;
                if (!mo10129a.f13991a.isEmpty()) {
                    it = mo10129a.m10109e();
                    entry3 = it.next();
                }
            }
            int length = this.f14142c.length - 3;
            while (true) {
                entry2 = entry3;
                if (length >= 0) {
                    int m9942d = m9942d(length);
                    int i = this.f14142c[length];
                    while (entry3 != null && this.f14157r.mo10128a(entry3) > i) {
                        this.f14157r.mo10130a(dgoVar, entry3);
                        entry3 = it.hasNext() ? it.next() : null;
                    }
                    switch ((267386880 & m9942d) >>> 20) {
                        case 0:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9625a(i, dgb.m9687e(t, 1048575 & m9942d));
                                break;
                            }
                        case 1:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9624a(i, dgb.m9691d(t, 1048575 & m9942d));
                                break;
                            }
                        case 2:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9622a(i, dgb.m9701b(t, 1048575 & m9942d));
                                break;
                            }
                        case 3:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9604c(i, dgb.m9701b(t, 1048575 & m9942d));
                                break;
                            }
                        case 4:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9605c(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 5:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9601d(i, dgb.m9701b(t, 1048575 & m9942d));
                                break;
                            }
                        case 6:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9602d(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 7:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9613a(i, dgb.m9696c(t, 1048575 & m9942d));
                                break;
                            }
                        case 8:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                m9971a(i, dgb.m9684f(t, 1048575 & m9942d), dgoVar);
                                break;
                            }
                        case 9:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9618a(i, dgb.m9684f(t, 1048575 & m9942d), m9974a(length));
                                break;
                            }
                        case 10:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9621a(i, (dbi) dgb.m9684f(t, 1048575 & m9942d));
                                break;
                            }
                        case 11:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9599e(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 12:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9611b(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 13:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9623a(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 14:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9610b(i, dgb.m9701b(t, 1048575 & m9942d));
                                break;
                            }
                        case 15:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9596f(i, dgb.m9713a(t, 1048575 & m9942d));
                                break;
                            }
                        case 16:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9598e(i, dgb.m9701b(t, 1048575 & m9942d));
                                break;
                            }
                        case 17:
                            if (!m9965a((dek<T>) t, length)) {
                                break;
                            } else {
                                dgoVar.mo9609b(i, dgb.m9684f(t, 1048575 & m9942d), m9974a(length));
                                break;
                            }
                        case 18:
                            dff.m9812a(this.f14142c[length], (List<Double>) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 19:
                            dff.m9798b(this.f14142c[length], (List<Float>) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 20:
                            dff.m9794c(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 21:
                            dff.m9790d(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 22:
                            dff.m9777h(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 23:
                            dff.m9783f(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 24:
                            dff.m9768k(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 25:
                            dff.m9765n(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 26:
                            dff.m9814a(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar);
                            break;
                        case 27:
                            dff.m9813a(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, m9974a(length));
                            break;
                        case 28:
                            dff.m9800b(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar);
                            break;
                        case 29:
                            dff.m9774i(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 30:
                            dff.m9766m(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 31:
                            dff.m9767l(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 32:
                            dff.m9780g(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 33:
                            dff.m9771j(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 34:
                            dff.m9786e(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, false);
                            break;
                        case 35:
                            dff.m9812a(this.f14142c[length], (List<Double>) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 36:
                            dff.m9798b(this.f14142c[length], (List<Float>) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 37:
                            dff.m9794c(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 38:
                            dff.m9790d(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 39:
                            dff.m9777h(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 40:
                            dff.m9783f(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 41:
                            dff.m9768k(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 42:
                            dff.m9765n(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 43:
                            dff.m9774i(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 44:
                            dff.m9766m(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 45:
                            dff.m9767l(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 46:
                            dff.m9780g(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 47:
                            dff.m9771j(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 48:
                            dff.m9786e(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, true);
                            break;
                        case 49:
                            dff.m9799b(this.f14142c[length], (List) dgb.m9684f(t, 1048575 & m9942d), dgoVar, m9974a(length));
                            break;
                        case 50:
                            m9968a(dgoVar, i, dgb.m9684f(t, 1048575 & m9942d), length);
                            break;
                        case 51:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9625a(i, m9948b(t, 1048575 & m9942d));
                                break;
                            }
                        case 52:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9624a(i, m9944c(t, 1048575 & m9942d));
                                break;
                            }
                        case 53:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9622a(i, m9938e(t, 1048575 & m9942d));
                                break;
                            }
                        case 54:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9604c(i, m9938e(t, 1048575 & m9942d));
                                break;
                            }
                        case 55:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9605c(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 56:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9601d(i, m9938e(t, 1048575 & m9942d));
                                break;
                            }
                        case 57:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9602d(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 58:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9613a(i, m9936f(t, 1048575 & m9942d));
                                break;
                            }
                        case 59:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                m9971a(i, dgb.m9684f(t, 1048575 & m9942d), dgoVar);
                                break;
                            }
                        case 60:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9618a(i, dgb.m9684f(t, 1048575 & m9942d), m9974a(length));
                                break;
                            }
                        case 61:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9621a(i, (dbi) dgb.m9684f(t, 1048575 & m9942d));
                                break;
                            }
                        case 62:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9599e(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 63:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9611b(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 64:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9623a(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 65:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9610b(i, m9938e(t, 1048575 & m9942d));
                                break;
                            }
                        case 66:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9596f(i, m9941d(t, 1048575 & m9942d));
                                break;
                            }
                        case 67:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9598e(i, m9938e(t, 1048575 & m9942d));
                                break;
                            }
                        case 68:
                            if (!m9964a((dek<T>) t, i, length)) {
                                break;
                            } else {
                                dgoVar.mo9609b(i, dgb.m9684f(t, 1048575 & m9942d), m9974a(length));
                                break;
                            }
                    }
                    length -= 3;
                }
            }
            while (entry2 != null) {
                this.f14157r.mo10130a(dgoVar, entry2);
                entry2 = it.hasNext() ? it.next() : null;
            }
        } else if (!this.f14149j) {
            m9947b((dek<T>) t, dgoVar);
        } else {
            Map.Entry<?, ?> entry4 = null;
            Iterator<Map.Entry<?, Object>> it2 = null;
            if (this.f14147h) {
                dcl<?> mo10129a2 = this.f14157r.mo10129a(t);
                entry4 = null;
                it2 = null;
                if (!mo10129a2.f13991a.isEmpty()) {
                    it2 = mo10129a2.m10110d();
                    entry4 = it2.next();
                }
            }
            int length2 = this.f14142c.length;
            int i2 = 0;
            while (true) {
                entry = entry4;
                if (i2 < length2) {
                    int m9942d2 = m9942d(i2);
                    int i3 = this.f14142c[i2];
                    while (entry4 != null && this.f14157r.mo10128a(entry4) <= i3) {
                        this.f14157r.mo10130a(dgoVar, entry4);
                        entry4 = it2.hasNext() ? it2.next() : null;
                    }
                    switch ((267386880 & m9942d2) >>> 20) {
                        case 0:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9625a(i3, dgb.m9687e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 1:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9624a(i3, dgb.m9691d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 2:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9622a(i3, dgb.m9701b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 3:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9604c(i3, dgb.m9701b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 4:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9605c(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 5:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9601d(i3, dgb.m9701b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 6:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9602d(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 7:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9613a(i3, dgb.m9696c(t, 1048575 & m9942d2));
                                break;
                            }
                        case 8:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                m9971a(i3, dgb.m9684f(t, 1048575 & m9942d2), dgoVar);
                                break;
                            }
                        case 9:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9618a(i3, dgb.m9684f(t, 1048575 & m9942d2), m9974a(i2));
                                break;
                            }
                        case 10:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9621a(i3, (dbi) dgb.m9684f(t, 1048575 & m9942d2));
                                break;
                            }
                        case 11:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9599e(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 12:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9611b(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 13:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9623a(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 14:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9610b(i3, dgb.m9701b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 15:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9596f(i3, dgb.m9713a(t, 1048575 & m9942d2));
                                break;
                            }
                        case 16:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9598e(i3, dgb.m9701b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 17:
                            if (!m9965a((dek<T>) t, i2)) {
                                break;
                            } else {
                                dgoVar.mo9609b(i3, dgb.m9684f(t, 1048575 & m9942d2), m9974a(i2));
                                break;
                            }
                        case 18:
                            dff.m9812a(this.f14142c[i2], (List<Double>) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 19:
                            dff.m9798b(this.f14142c[i2], (List<Float>) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 20:
                            dff.m9794c(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 21:
                            dff.m9790d(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 22:
                            dff.m9777h(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 23:
                            dff.m9783f(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 24:
                            dff.m9768k(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 25:
                            dff.m9765n(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 26:
                            dff.m9814a(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar);
                            break;
                        case 27:
                            dff.m9813a(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, m9974a(i2));
                            break;
                        case 28:
                            dff.m9800b(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar);
                            break;
                        case 29:
                            dff.m9774i(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 30:
                            dff.m9766m(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 31:
                            dff.m9767l(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 32:
                            dff.m9780g(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 33:
                            dff.m9771j(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 34:
                            dff.m9786e(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, false);
                            break;
                        case 35:
                            dff.m9812a(this.f14142c[i2], (List<Double>) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 36:
                            dff.m9798b(this.f14142c[i2], (List<Float>) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 37:
                            dff.m9794c(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 38:
                            dff.m9790d(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 39:
                            dff.m9777h(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 40:
                            dff.m9783f(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 41:
                            dff.m9768k(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 42:
                            dff.m9765n(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 43:
                            dff.m9774i(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 44:
                            dff.m9766m(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 45:
                            dff.m9767l(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 46:
                            dff.m9780g(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 47:
                            dff.m9771j(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 48:
                            dff.m9786e(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, true);
                            break;
                        case 49:
                            dff.m9799b(this.f14142c[i2], (List) dgb.m9684f(t, 1048575 & m9942d2), dgoVar, m9974a(i2));
                            break;
                        case 50:
                            m9968a(dgoVar, i3, dgb.m9684f(t, 1048575 & m9942d2), i2);
                            break;
                        case 51:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9625a(i3, m9948b(t, 1048575 & m9942d2));
                                break;
                            }
                        case 52:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9624a(i3, m9944c(t, 1048575 & m9942d2));
                                break;
                            }
                        case 53:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9622a(i3, m9938e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 54:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9604c(i3, m9938e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 55:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9605c(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 56:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9601d(i3, m9938e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 57:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9602d(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 58:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9613a(i3, m9936f(t, 1048575 & m9942d2));
                                break;
                            }
                        case 59:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                m9971a(i3, dgb.m9684f(t, 1048575 & m9942d2), dgoVar);
                                break;
                            }
                        case 60:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9618a(i3, dgb.m9684f(t, 1048575 & m9942d2), m9974a(i2));
                                break;
                            }
                        case 61:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9621a(i3, (dbi) dgb.m9684f(t, 1048575 & m9942d2));
                                break;
                            }
                        case 62:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9599e(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 63:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9611b(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 64:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9623a(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 65:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9610b(i3, m9938e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 66:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9596f(i3, m9941d(t, 1048575 & m9942d2));
                                break;
                            }
                        case 67:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9598e(i3, m9938e(t, 1048575 & m9942d2));
                                break;
                            }
                        case 68:
                            if (!m9964a((dek<T>) t, i3, i2)) {
                                break;
                            } else {
                                dgoVar.mo9609b(i3, dgb.m9684f(t, 1048575 & m9942d2), m9974a(i2));
                                break;
                            }
                    }
                    i2 += 3;
                }
            }
            while (entry != null) {
                this.f14157r.mo10130a(dgoVar, entry);
                entry = it2.hasNext() ? it2.next() : null;
            }
            m9969a(this.f14156q, t, dgoVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v187, types: [int] */
    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final void mo9841a(T t, byte[] bArr, int i, int i2, dbh dbhVar) {
        int i3;
        int i4;
        int i5;
        if (!this.f14149j) {
            m9954a((dek<T>) t, bArr, i, i2, 0, dbhVar);
            return;
        }
        Unsafe unsafe = f14141b;
        int i6 = 0;
        int i7 = i;
        int i8 = -1;
        while (i7 < i2) {
            int i9 = i7 + 1;
            byte b = bArr[i7];
            int i10 = i9;
            byte b2 = b;
            if (b < 0) {
                i10 = dbe.m10244a(b, bArr, i9, dbhVar);
                b2 = dbhVar.f13928a;
            }
            int i11 = b2 >>> 3;
            int i12 = b2 & 7;
            i6 = i11 > i8 ? m9973a(i11, i6 / 3) : m9935g(i11);
            if (i6 == -1) {
                i3 = 0;
                i4 = i10;
            } else {
                int i13 = this.f14142c[i6 + 1];
                int i14 = (267386880 & i13) >>> 20;
                long j = 1048575 & i13;
                if (i14 <= 17) {
                    switch (i14) {
                        case 0:
                            if (i12 != 1) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                dgb.m9711a(t, j, dbe.m10235c(bArr, i10));
                                i8 = i11;
                                i7 = i10 + 8;
                                break;
                            }
                        case 1:
                            if (i12 != 5) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                dgb.m9710a((Object) t, j, dbe.m10233d(bArr, i10));
                                i8 = i11;
                                i7 = i10 + 4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10236b = dbe.m10236b(bArr, i10, dbhVar);
                                unsafe.putLong(t, j, dbhVar.f13929b);
                                i8 = i11;
                                i7 = m10236b;
                                break;
                            }
                        case 4:
                        case 11:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10239a = dbe.m10239a(bArr, i10, dbhVar);
                                unsafe.putInt(t, j, dbhVar.f13928a);
                                i8 = i11;
                                i7 = m10239a;
                                break;
                            }
                        case 5:
                        case 14:
                            if (i12 != 1) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                unsafe.putLong(t, j, dbe.m10237b(bArr, i10));
                                i8 = i11;
                                i7 = i10 + 8;
                                break;
                            }
                        case 6:
                        case 13:
                            if (i12 != 5) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                unsafe.putInt(t, j, dbe.m10240a(bArr, i10));
                                i8 = i11;
                                i7 = i10 + 4;
                                break;
                            }
                        case 7:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10236b2 = dbe.m10236b(bArr, i10, dbhVar);
                                dgb.m9706a(t, j, dbhVar.f13929b != 0);
                                i8 = i11;
                                i7 = m10236b2;
                                break;
                            }
                        case 8:
                            if (i12 != 2) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10234c = (536870912 & i13) == 0 ? dbe.m10234c(bArr, i10, dbhVar) : dbe.m10232d(bArr, i10, dbhVar);
                                unsafe.putObject(t, j, dbhVar.f13930c);
                                i8 = i11;
                                i7 = m10234c;
                                break;
                            }
                        case 9:
                            if (i12 != 2) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10241a = dbe.m10241a(m9974a(i6), bArr, i10, i2, dbhVar);
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, dcz.m10046a(object, dbhVar.f13930c));
                                    i8 = i11;
                                    i7 = m10241a;
                                    break;
                                } else {
                                    unsafe.putObject(t, j, dbhVar.f13930c);
                                    i8 = i11;
                                    i7 = m10241a;
                                    break;
                                }
                            }
                        case 10:
                            if (i12 != 2) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10231e = dbe.m10231e(bArr, i10, dbhVar);
                                unsafe.putObject(t, j, dbhVar.f13930c);
                                i8 = i11;
                                i7 = m10231e;
                                break;
                            }
                        case 12:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10239a2 = dbe.m10239a(bArr, i10, dbhVar);
                                unsafe.putInt(t, j, dbhVar.f13928a);
                                i8 = i11;
                                i7 = m10239a2;
                                break;
                            }
                        case 15:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10239a3 = dbe.m10239a(bArr, i10, dbhVar);
                                unsafe.putInt(t, j, dby.m10196e(dbhVar.f13928a));
                                i8 = i11;
                                i7 = m10239a3;
                                break;
                            }
                        case 16:
                            if (i12 != 0) {
                                i4 = i10;
                                i3 = i6;
                                break;
                            } else {
                                int m10236b3 = dbe.m10236b(bArr, i10, dbhVar);
                                unsafe.putLong(t, j, dby.m10198a(dbhVar.f13929b));
                                i8 = i11;
                                i7 = m10236b3;
                                break;
                            }
                        default:
                            i4 = i10;
                            i3 = i6;
                            break;
                    }
                } else if (i14 == 27) {
                    if (i12 == 2) {
                        dde ddeVar = (dde) unsafe.getObject(t, j);
                        if (!ddeVar.mo10030a()) {
                            int size = ddeVar.size();
                            ddeVar = ddeVar.mo9923a(size == 0 ? 10 : size << 1);
                            unsafe.putObject(t, j, ddeVar);
                        }
                        i8 = i11;
                        i7 = dbe.m10243a(m9974a(i6), b2, bArr, i10, i2, ddeVar, dbhVar);
                    } else {
                        i4 = i10;
                        i3 = i6;
                    }
                } else if (i14 <= 49) {
                    int m9956a = m9956a((dek<T>) t, bArr, i10, i2, b2, i11, i12, i6, i13, i14, j, dbhVar);
                    i4 = m9956a;
                    i3 = i6;
                    if (m9956a != i10) {
                        i5 = m9956a;
                        i8 = i11;
                        i7 = i5;
                    }
                } else if (i14 != 50) {
                    i4 = m9957a((dek<T>) t, bArr, i10, i2, b2, i11, i12, i13, i14, j, i6, dbhVar);
                    i5 = i4;
                    if (i4 == i10) {
                        i3 = i6;
                    } else {
                        i8 = i11;
                        i7 = i5;
                    }
                } else if (i12 == 2) {
                    i4 = m9955a((dek<T>) t, bArr, i10, i2, i6, j, dbhVar);
                    i5 = i4;
                    if (i4 == i10) {
                        i3 = i6;
                    } else {
                        i8 = i11;
                        i7 = i5;
                    }
                } else {
                    i4 = i10;
                    i3 = i6;
                }
            }
            i8 = i11;
            i7 = dbe.m10245a(b2, bArr, i4, i2, m9939e(t), dbhVar);
            i6 = i3;
        }
        if (i7 == i2) {
            return;
        }
        throw zzeco.m6543h();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final boolean mo9842a(T t, T t2) {
        boolean z;
        boolean z2;
        int length = this.f14142c.length;
        int i = 0;
        while (true) {
            if (i < length) {
                int m9942d = m9942d(i);
                long j = m9942d & 1048575;
                switch ((m9942d & 267386880) >>> 20) {
                    case 0:
                        if (!m9943c(t, t2, i) || Double.doubleToLongBits(dgb.m9687e(t, j)) != Double.doubleToLongBits(dgb.m9687e(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 1:
                        if (!m9943c(t, t2, i) || Float.floatToIntBits(dgb.m9691d(t, j)) != Float.floatToIntBits(dgb.m9691d(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 2:
                        if (!m9943c(t, t2, i) || dgb.m9701b(t, j) != dgb.m9701b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 3:
                        if (!m9943c(t, t2, i) || dgb.m9701b(t, j) != dgb.m9701b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 4:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 5:
                        if (!m9943c(t, t2, i) || dgb.m9701b(t, j) != dgb.m9701b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 6:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 7:
                        if (!m9943c(t, t2, i) || dgb.m9696c(t, j) != dgb.m9696c(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 8:
                        if (!m9943c(t, t2, i) || !dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 9:
                        if (!m9943c(t, t2, i) || !dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 10:
                        if (!m9943c(t, t2, i) || !dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 11:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 12:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 13:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 14:
                        if (!m9943c(t, t2, i) || dgb.m9701b(t, j) != dgb.m9701b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 15:
                        if (!m9943c(t, t2, i) || dgb.m9713a(t, j) != dgb.m9713a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 16:
                        if (!m9943c(t, t2, i) || dgb.m9701b(t, j) != dgb.m9701b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 17:
                        if (!m9943c(t, t2, i) || !dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
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
                        z2 = dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j));
                        break;
                    case 50:
                        z2 = dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j));
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
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        int m9940e = m9940e(i);
                        if (dgb.m9713a(t, m9940e & 1048575) != dgb.m9713a(t2, m9940e & 1048575) || !dff.m9806a(dgb.m9684f(t, j), dgb.m9684f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    default:
                        z2 = true;
                        break;
                }
                if (!z2) {
                    z = false;
                } else {
                    i += 3;
                }
            } else {
                z = false;
                if (this.f14156q.mo9725b(t).equals(this.f14156q.mo9725b(t2))) {
                    z = this.f14147h ? this.f14157r.mo10129a(t).equals(this.f14157r.mo10129a(t2)) : true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: b */
    public final int mo9840b(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.f14149j) {
            Unsafe unsafe = f14141b;
            int i6 = 0;
            int i7 = 0;
            while (i7 < this.f14142c.length) {
                int m9942d = m9942d(i7);
                int i8 = (267386880 & m9942d) >>> 20;
                int i9 = this.f14142c[i7];
                long j = m9942d & 1048575;
                int i10 = (i8 < dcq.DOUBLE_LIST_PACKED.m10103a() || i8 > dcq.SINT64_LIST_PACKED.m10103a()) ? 0 : this.f14142c[i7 + 2] & 1048575;
                switch (i8) {
                    case 0:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6623b(i9, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6622b(i9, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6603d(i9, dgb.m9701b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6599e(i9, dgb.m9701b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6596f(i9, dgb.m9713a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6591g(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6584i(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6616b(i9, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            Object m9684f = dgb.m9684f(t, j);
                            if (m9684f instanceof dbi) {
                                i5 = i6 + zzebk.m6607c(i9, (dbi) m9684f);
                                break;
                            } else {
                                i5 = i6 + zzebk.m6617b(i9, (String) m9684f);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + dff.m9818a(i9, dgb.m9684f(t, j), m9974a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6607c(i9, (dbi) dgb.m9684f(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6592g(i9, dgb.m9713a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6579k(i9, dgb.m9713a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6581j(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6587h(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6588h(i9, dgb.m9713a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6595f(i9, dgb.m9701b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i5 = i6;
                        if (m9965a((dek<T>) t, i7)) {
                            i5 = i6 + zzebk.m6606c(i9, (deg) dgb.m9684f(t, j), m9974a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i5 = i6 + dff.m9773i(i9, m9959a(t, j), false);
                        break;
                    case 19:
                        i5 = i6 + dff.m9776h(i9, m9959a(t, j), false);
                        break;
                    case 20:
                        i5 = i6 + dff.m9811a(i9, (List<Long>) m9959a(t, j), false);
                        break;
                    case 21:
                        i5 = i6 + dff.m9797b(i9, (List<Long>) m9959a(t, j), false);
                        break;
                    case 22:
                        i5 = i6 + dff.m9785e(i9, m9959a(t, j), false);
                        break;
                    case 23:
                        i5 = i6 + dff.m9773i(i9, m9959a(t, j), false);
                        break;
                    case 24:
                        i5 = i6 + dff.m9776h(i9, m9959a(t, j), false);
                        break;
                    case 25:
                        i5 = i6 + dff.m9770j(i9, m9959a(t, j), false);
                        break;
                    case 26:
                        i5 = i6 + dff.m9817a(i9, m9959a(t, j));
                        break;
                    case 27:
                        i5 = i6 + dff.m9815a(i9, m9959a(t, j), m9974a(i7));
                        break;
                    case 28:
                        i5 = i6 + dff.m9802b(i9, m9959a(t, j));
                        break;
                    case 29:
                        i5 = i6 + dff.m9782f(i9, m9959a(t, j), false);
                        break;
                    case 30:
                        i5 = i6 + dff.m9789d(i9, m9959a(t, j), false);
                        break;
                    case 31:
                        i5 = i6 + dff.m9776h(i9, m9959a(t, j), false);
                        break;
                    case 32:
                        i5 = i6 + dff.m9773i(i9, m9959a(t, j), false);
                        break;
                    case 33:
                        i5 = i6 + dff.m9779g(i9, m9959a(t, j), false);
                        break;
                    case 34:
                        i5 = i6 + dff.m9793c(i9, m9959a(t, j), false);
                        break;
                    case 35:
                        int m9772i = dff.m9772i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9772i <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9772i);
                            }
                            i5 = i6 + m9772i + zzebk.m6600e(i9) + zzebk.m6593g(m9772i);
                            break;
                        }
                    case 36:
                        int m9775h = dff.m9775h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9775h <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9775h);
                            }
                            i5 = i6 + m9775h + zzebk.m6600e(i9) + zzebk.m6593g(m9775h);
                            break;
                        }
                    case 37:
                        int m9805a = dff.m9805a((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9805a <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9805a);
                            }
                            i5 = i6 + m9805a + zzebk.m6600e(i9) + zzebk.m6593g(m9805a);
                            break;
                        }
                    case 38:
                        int m9796b = dff.m9796b((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9796b <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9796b);
                            }
                            i5 = i6 + m9796b + zzebk.m6600e(i9) + zzebk.m6593g(m9796b);
                            break;
                        }
                    case 39:
                        int m9784e = dff.m9784e((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9784e <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9784e);
                            }
                            i5 = i6 + m9784e + zzebk.m6600e(i9) + zzebk.m6593g(m9784e);
                            break;
                        }
                    case 40:
                        int m9772i2 = dff.m9772i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9772i2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9772i2);
                            }
                            i5 = i6 + m9772i2 + zzebk.m6600e(i9) + zzebk.m6593g(m9772i2);
                            break;
                        }
                    case 41:
                        int m9775h2 = dff.m9775h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9775h2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9775h2);
                            }
                            i5 = i6 + m9775h2 + zzebk.m6600e(i9) + zzebk.m6593g(m9775h2);
                            break;
                        }
                    case 42:
                        int m9769j = dff.m9769j((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9769j <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9769j);
                            }
                            i5 = i6 + m9769j + zzebk.m6600e(i9) + zzebk.m6593g(m9769j);
                            break;
                        }
                    case 43:
                        int m9781f = dff.m9781f((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9781f <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9781f);
                            }
                            i5 = i6 + m9781f + zzebk.m6600e(i9) + zzebk.m6593g(m9781f);
                            break;
                        }
                    case 44:
                        int m9788d = dff.m9788d((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9788d <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9788d);
                            }
                            i5 = i6 + m9788d + zzebk.m6600e(i9) + zzebk.m6593g(m9788d);
                            break;
                        }
                    case 45:
                        int m9775h3 = dff.m9775h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9775h3 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9775h3);
                            }
                            i5 = i6 + m9775h3 + zzebk.m6600e(i9) + zzebk.m6593g(m9775h3);
                            break;
                        }
                    case 46:
                        int m9772i3 = dff.m9772i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9772i3 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9772i3);
                            }
                            i5 = i6 + m9772i3 + zzebk.m6600e(i9) + zzebk.m6593g(m9772i3);
                            break;
                        }
                    case 47:
                        int m9778g = dff.m9778g((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9778g <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9778g);
                            }
                            i5 = i6 + m9778g + zzebk.m6600e(i9) + zzebk.m6593g(m9778g);
                            break;
                        }
                    case 48:
                        int m9792c = dff.m9792c((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m9792c <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe.putInt(t, i10, m9792c);
                            }
                            i5 = i6 + m9792c + zzebk.m6600e(i9) + zzebk.m6593g(m9792c);
                            break;
                        }
                    case 49:
                        i5 = i6 + dff.m9801b(i9, (List<deg>) m9959a(t, j), m9974a(i7));
                        break;
                    case 50:
                        i5 = i6 + this.f14158s.mo9999a(i9, dgb.m9684f(t, j), m9952b(i7));
                        break;
                    case 51:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6623b(i9, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6622b(i9, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6603d(i9, m9938e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6599e(i9, m9938e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6596f(i9, m9941d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6591g(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6584i(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6616b(i9, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            Object m9684f2 = dgb.m9684f(t, j);
                            if (m9684f2 instanceof dbi) {
                                i5 = i6 + zzebk.m6607c(i9, (dbi) m9684f2);
                                break;
                            } else {
                                i5 = i6 + zzebk.m6617b(i9, (String) m9684f2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + dff.m9818a(i9, dgb.m9684f(t, j), m9974a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6607c(i9, (dbi) dgb.m9684f(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6592g(i9, m9941d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6579k(i9, m9941d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6581j(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6587h(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6588h(i9, m9941d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6595f(i9, m9938e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i5 = i6;
                        if (m9964a((dek<T>) t, i9, i7)) {
                            i5 = i6 + zzebk.m6606c(i9, (deg) dgb.m9684f(t, j), m9974a(i7));
                            break;
                        } else {
                            break;
                        }
                    default:
                        i5 = i6;
                        break;
                }
                i7 += 3;
                i6 = i5;
            }
            i = m9970a((dfv) this.f14156q, (Object) t) + i6;
        } else {
            int i11 = 0;
            Unsafe unsafe2 = f14141b;
            int i12 = -1;
            int i13 = 0;
            int i14 = 0;
            while (i14 < this.f14142c.length) {
                int m9942d2 = m9942d(i14);
                int i15 = this.f14142c[i14];
                int i16 = (267386880 & m9942d2) >>> 20;
                int i17 = 0;
                if (i16 <= 17) {
                    int i18 = this.f14142c[i14 + 2];
                    int i19 = 1048575 & i18;
                    int i20 = i12;
                    if (i19 != i12) {
                        i13 = unsafe2.getInt(t, i19);
                        i20 = i19;
                    }
                    i17 = 1 << (i18 >>> 20);
                    i3 = i18;
                    i2 = i20;
                } else if (!this.f14150k || i16 < dcq.DOUBLE_LIST_PACKED.m10103a() || i16 > dcq.SINT64_LIST_PACKED.m10103a()) {
                    i2 = i12;
                    i3 = 0;
                } else {
                    i2 = i12;
                    i3 = this.f14142c[i14 + 2] & 1048575;
                }
                long j2 = 1048575 & m9942d2;
                switch (i16) {
                    case 0:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6623b(i15, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6622b(i15, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6603d(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6599e(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6596f(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6591g(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6584i(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6616b(i15, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            Object object = unsafe2.getObject(t, j2);
                            if (object instanceof dbi) {
                                i4 = i11 + zzebk.m6607c(i15, (dbi) object);
                                break;
                            } else {
                                i4 = i11 + zzebk.m6617b(i15, (String) object);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + dff.m9818a(i15, unsafe2.getObject(t, j2), m9974a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6607c(i15, (dbi) unsafe2.getObject(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6592g(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6579k(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6581j(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6587h(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6588h(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6595f(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzebk.m6606c(i15, (deg) unsafe2.getObject(t, j2), m9974a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i4 = i11 + dff.m9773i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 19:
                        i4 = i11 + dff.m9776h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 20:
                        i4 = i11 + dff.m9811a(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                        break;
                    case 21:
                        i4 = i11 + dff.m9797b(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                        break;
                    case 22:
                        i4 = i11 + dff.m9785e(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 23:
                        i4 = i11 + dff.m9773i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 24:
                        i4 = i11 + dff.m9776h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 25:
                        i4 = i11 + dff.m9770j(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 26:
                        i4 = i11 + dff.m9817a(i15, (List) unsafe2.getObject(t, j2));
                        break;
                    case 27:
                        i4 = i11 + dff.m9815a(i15, (List<?>) unsafe2.getObject(t, j2), m9974a(i14));
                        break;
                    case 28:
                        i4 = i11 + dff.m9802b(i15, (List) unsafe2.getObject(t, j2));
                        break;
                    case 29:
                        i4 = i11 + dff.m9782f(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 30:
                        i4 = i11 + dff.m9789d(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 31:
                        i4 = i11 + dff.m9776h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 32:
                        i4 = i11 + dff.m9773i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 33:
                        i4 = i11 + dff.m9779g(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 34:
                        i4 = i11 + dff.m9793c(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 35:
                        int m9772i4 = dff.m9772i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9772i4 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9772i4);
                            }
                            i4 = i11 + m9772i4 + zzebk.m6600e(i15) + zzebk.m6593g(m9772i4);
                            break;
                        }
                    case 36:
                        int m9775h4 = dff.m9775h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9775h4 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9775h4);
                            }
                            i4 = i11 + m9775h4 + zzebk.m6600e(i15) + zzebk.m6593g(m9775h4);
                            break;
                        }
                    case 37:
                        int m9805a2 = dff.m9805a((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9805a2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9805a2);
                            }
                            i4 = i11 + m9805a2 + zzebk.m6600e(i15) + zzebk.m6593g(m9805a2);
                            break;
                        }
                    case 38:
                        int m9796b2 = dff.m9796b((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9796b2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9796b2);
                            }
                            i4 = i11 + m9796b2 + zzebk.m6600e(i15) + zzebk.m6593g(m9796b2);
                            break;
                        }
                    case 39:
                        int m9784e2 = dff.m9784e((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9784e2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9784e2);
                            }
                            i4 = i11 + m9784e2 + zzebk.m6600e(i15) + zzebk.m6593g(m9784e2);
                            break;
                        }
                    case 40:
                        int m9772i5 = dff.m9772i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9772i5 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9772i5);
                            }
                            i4 = i11 + m9772i5 + zzebk.m6600e(i15) + zzebk.m6593g(m9772i5);
                            break;
                        }
                    case 41:
                        int m9775h5 = dff.m9775h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9775h5 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9775h5);
                            }
                            i4 = i11 + m9775h5 + zzebk.m6600e(i15) + zzebk.m6593g(m9775h5);
                            break;
                        }
                    case 42:
                        int m9769j2 = dff.m9769j((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9769j2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9769j2);
                            }
                            i4 = i11 + m9769j2 + zzebk.m6600e(i15) + zzebk.m6593g(m9769j2);
                            break;
                        }
                    case 43:
                        int m9781f2 = dff.m9781f((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9781f2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9781f2);
                            }
                            i4 = i11 + m9781f2 + zzebk.m6600e(i15) + zzebk.m6593g(m9781f2);
                            break;
                        }
                    case 44:
                        int m9788d2 = dff.m9788d((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9788d2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9788d2);
                            }
                            i4 = i11 + m9788d2 + zzebk.m6600e(i15) + zzebk.m6593g(m9788d2);
                            break;
                        }
                    case 45:
                        int m9775h6 = dff.m9775h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9775h6 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9775h6);
                            }
                            i4 = i11 + m9775h6 + zzebk.m6600e(i15) + zzebk.m6593g(m9775h6);
                            break;
                        }
                    case 46:
                        int m9772i6 = dff.m9772i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9772i6 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9772i6);
                            }
                            i4 = i11 + m9772i6 + zzebk.m6600e(i15) + zzebk.m6593g(m9772i6);
                            break;
                        }
                    case 47:
                        int m9778g2 = dff.m9778g((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9778g2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9778g2);
                            }
                            i4 = i11 + m9778g2 + zzebk.m6600e(i15) + zzebk.m6593g(m9778g2);
                            break;
                        }
                    case 48:
                        int m9792c2 = dff.m9792c((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m9792c2 <= 0) {
                            break;
                        } else {
                            if (this.f14150k) {
                                unsafe2.putInt(t, i3, m9792c2);
                            }
                            i4 = i11 + m9792c2 + zzebk.m6600e(i15) + zzebk.m6593g(m9792c2);
                            break;
                        }
                    case 49:
                        i4 = i11 + dff.m9801b(i15, (List) unsafe2.getObject(t, j2), m9974a(i14));
                        break;
                    case 50:
                        i4 = i11 + this.f14158s.mo9999a(i15, unsafe2.getObject(t, j2), m9952b(i14));
                        break;
                    case 51:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6623b(i15, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6622b(i15, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6603d(i15, m9938e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6599e(i15, m9938e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6596f(i15, m9941d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6591g(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6584i(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6616b(i15, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            Object object2 = unsafe2.getObject(t, j2);
                            if (object2 instanceof dbi) {
                                i4 = i11 + zzebk.m6607c(i15, (dbi) object2);
                                break;
                            } else {
                                i4 = i11 + zzebk.m6617b(i15, (String) object2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + dff.m9818a(i15, unsafe2.getObject(t, j2), m9974a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6607c(i15, (dbi) unsafe2.getObject(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6592g(i15, m9941d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6579k(i15, m9941d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6581j(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6587h(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6588h(i15, m9941d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6595f(i15, m9938e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i4 = i11;
                        if (m9964a((dek<T>) t, i15, i14)) {
                            i4 = i11 + zzebk.m6606c(i15, (deg) unsafe2.getObject(t, j2), m9974a(i14));
                            break;
                        } else {
                            break;
                        }
                    default:
                        i4 = i11;
                        break;
                }
                i14 += 3;
                i12 = i2;
                i11 = i4;
            }
            int m9970a = i11 + m9970a((dfv) this.f14156q, (Object) t);
            if (this.f14147h) {
                dcl<?> mo10129a = this.f14157r.mo10129a(t);
                int i21 = 0;
                for (int i22 = 0; i22 < mo10129a.f13991a.m9828c(); i22++) {
                    Map.Entry<?, Object> m9830b = mo10129a.f13991a.m9830b(i22);
                    i21 += dcl.m10122a((dcn) m9830b.getKey(), m9830b.getValue());
                }
                for (Map.Entry<?, Object> entry : mo10129a.f13991a.m9825d()) {
                    i21 += dcl.m10122a((dcn) entry.getKey(), entry.getValue());
                }
                i = m9970a + i21;
            } else {
                i = m9970a;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: b */
    public final void mo9839b(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.f14142c.length; i += 3) {
            int m9942d = m9942d(i);
            long j = 1048575 & m9942d;
            int i2 = this.f14142c[i];
            switch ((m9942d & 267386880) >>> 20) {
                case 0:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9711a(t, j, dgb.m9687e(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9710a((Object) t, j, dgb.m9691d(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9708a((Object) t, j, dgb.m9701b(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9708a((Object) t, j, dgb.m9701b(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9708a((Object) t, j, dgb.m9701b(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9706a(t, j, dgb.m9696c(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9707a(t, j, dgb.m9684f(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m9958a(t, t2, i);
                    break;
                case 10:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9707a(t, j, dgb.m9684f(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9708a((Object) t, j, dgb.m9701b(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9709a((Object) t, j, dgb.m9713a(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m9965a((dek<T>) t2, i)) {
                        dgb.m9708a((Object) t, j, dgb.m9701b(t2, j));
                        m9950b((dek<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m9958a(t, t2, i);
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
                    this.f14155p.mo10023a(t, t2, j);
                    break;
                case 50:
                    dff.m9809a(this.f14158s, t, t2, j);
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
                    if (m9964a((dek<T>) t2, i2, i)) {
                        dgb.m9707a(t, j, dgb.m9684f(t2, j));
                        m9949b((dek<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m9946b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m9964a((dek<T>) t2, i2, i)) {
                        dgb.m9707a(t, j, dgb.m9684f(t2, j));
                        m9949b((dek<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m9946b(t, t2, i);
                    break;
            }
        }
        dff.m9808a(this.f14156q, t, t2);
        if (!this.f14147h) {
            return;
        }
        dff.m9810a(this.f14157r, t, t2);
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: c */
    public final void mo9838c(T t) {
        for (int i = this.f14152m; i < this.f14153n; i++) {
            long m9942d = m9942d(this.f14151l[i]) & 1048575;
            Object m9684f = dgb.m9684f(t, m9942d);
            if (m9684f != null) {
                dgb.m9707a(t, m9942d, this.f14158s.mo9994d(m9684f));
            }
        }
        int length = this.f14151l.length;
        for (int i2 = this.f14153n; i2 < length; i2++) {
            this.f14155p.mo10022b(t, this.f14151l[i2]);
        }
        this.f14156q.mo9719d(t);
        if (this.f14147h) {
            this.f14157r.mo10126c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d8 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9837d(T r7) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dek.mo9837d(java.lang.Object):boolean");
    }
}

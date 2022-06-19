package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.fr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fr.class */
public final class C3947fr<T> implements AbstractC3960gd<T> {

    /* renamed from: a */
    private static final int[] f18160a = new int[0];

    /* renamed from: b */
    private static final Unsafe f18161b = C3984ha.m5281c();

    /* renamed from: c */
    private final int[] f18162c;

    /* renamed from: d */
    private final Object[] f18163d;

    /* renamed from: e */
    private final int f18164e;

    /* renamed from: f */
    private final int f18165f;

    /* renamed from: g */
    private final AbstractC3943fn f18166g;

    /* renamed from: h */
    private final boolean f18167h;

    /* renamed from: i */
    private final boolean f18168i;

    /* renamed from: j */
    private final boolean f18169j;

    /* renamed from: k */
    private final boolean f18170k;

    /* renamed from: l */
    private final int[] f18171l;

    /* renamed from: m */
    private final int f18172m;

    /* renamed from: n */
    private final int f18173n;

    /* renamed from: o */
    private final AbstractC3952fw f18174o;

    /* renamed from: p */
    private final AbstractC3926ex f18175p;

    /* renamed from: q */
    private final AbstractC3978gv<?, ?> f18176q;

    /* renamed from: r */
    private final AbstractC3887dr<?> f18177r;

    /* renamed from: s */
    private final AbstractC3936fg f18178s;

    private C3947fr(int[] iArr, Object[] objArr, int i, int i2, AbstractC3943fn abstractC3943fn, boolean z, boolean z2, int[] iArr2, int i3, int i4, AbstractC3952fw abstractC3952fw, AbstractC3926ex abstractC3926ex, AbstractC3978gv<?, ?> abstractC3978gv, AbstractC3887dr<?> abstractC3887dr, AbstractC3936fg abstractC3936fg) {
        this.f18162c = iArr;
        this.f18163d = objArr;
        this.f18164e = i;
        this.f18165f = i2;
        this.f18168i = abstractC3943fn instanceof AbstractC3900ed;
        this.f18169j = z;
        this.f18167h = abstractC3887dr != null && abstractC3887dr.mo5686a(abstractC3943fn);
        this.f18170k = false;
        this.f18171l = iArr2;
        this.f18172m = i3;
        this.f18173n = i4;
        this.f18174o = abstractC3952fw;
        this.f18175p = abstractC3926ex;
        this.f18176q = abstractC3978gv;
        this.f18177r = abstractC3887dr;
        this.f18166g = abstractC3943fn;
        this.f18178s = abstractC3936fg;
    }

    /* renamed from: a */
    private final int m5531a(int i, int i2) {
        return (i < this.f18164e || i > this.f18165f) ? -1 : m5509b(i, i2);
    }

    /* renamed from: a */
    private static <UT, UB> int m5528a(AbstractC3978gv<UT, UB> abstractC3978gv, T t) {
        return abstractC3978gv.mo5316f(abstractC3978gv.mo5324b(t));
    }

    /* renamed from: a */
    private final int m5515a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C3858cs c3858cs) {
        int i9;
        int m5831a;
        Unsafe unsafe = f18161b;
        long j2 = this.f18162c[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                i9 = i;
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(C3855cp.m5824c(bArr, i)));
                    m5831a = i + 8;
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 52:
                i9 = i;
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(C3855cp.m5822d(bArr, i)));
                    m5831a = i + 4;
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 53:
            case 54:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5825b(bArr, i, c3858cs);
                    unsafe.putObject(t, j, Long.valueOf(c3858cs.f17940b));
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 55:
            case 62:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5828a(bArr, i, c3858cs);
                    unsafe.putObject(t, j, Integer.valueOf(c3858cs.f17939a));
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 56:
            case 65:
                i9 = i;
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(C3855cp.m5826b(bArr, i)));
                    m5831a = i + 8;
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 57:
            case 64:
                i9 = i;
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(C3855cp.m5829a(bArr, i)));
                    m5831a = i + 4;
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 58:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5825b(bArr, i, c3858cs);
                    unsafe.putObject(t, j, Boolean.valueOf(c3858cs.f17940b != 0));
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 59:
                i9 = i;
                if (i5 == 2) {
                    int m5828a = C3855cp.m5828a(bArr, i, c3858cs);
                    int i10 = c3858cs.f17939a;
                    if (i10 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((536870912 & i6) != 0 && !C3991hd.m5240a(bArr, m5828a, m5828a + i10)) {
                        throw zzft.m4847h();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, m5828a, i10, C3908ef.f18107a));
                        m5828a += i10;
                    }
                    unsafe.putInt(t, j2, i4);
                    i9 = m5828a;
                    break;
                }
                break;
            case 60:
                i9 = i;
                if (i5 == 2) {
                    i9 = C3855cp.m5830a(m5532a(i8), bArr, i, i2, c3858cs);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, c3858cs.f17941c);
                    } else {
                        unsafe.putObject(t, j, C3908ef.m5611a(object, c3858cs.f17941c));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                i9 = i;
                if (i5 == 2) {
                    m5831a = C3855cp.m5820e(bArr, i, c3858cs);
                    unsafe.putObject(t, j, c3858cs.f17941c);
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 63:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5828a(bArr, i, c3858cs);
                    int i11 = c3858cs.f17939a;
                    AbstractC3913ek m5503c = m5503c(i8);
                    if (m5503c != null && !m5503c.mo5598a(i11)) {
                        m5497e(t).m5314a(i3, Long.valueOf(i11));
                        i9 = m5831a;
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        unsafe.putInt(t, j2, i4);
                        i9 = m5831a;
                        break;
                    }
                }
                break;
            case 66:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5828a(bArr, i, c3858cs);
                    unsafe.putObject(t, j, Integer.valueOf(AbstractC3875dg.m5741e(c3858cs.f17939a)));
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 67:
                i9 = i;
                if (i5 == 0) {
                    m5831a = C3855cp.m5825b(bArr, i, c3858cs);
                    unsafe.putObject(t, j, Long.valueOf(AbstractC3875dg.m5743a(c3858cs.f17940b)));
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
                    break;
                }
                break;
            case 68:
                i9 = i;
                if (i5 == 3) {
                    m5831a = C3855cp.m5831a(m5532a(i8), bArr, i, i2, (i3 & (-8)) | 4, c3858cs);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, c3858cs.f17941c);
                    } else {
                        unsafe.putObject(t, j, C3908ef.m5611a(object2, c3858cs.f17941c));
                    }
                    unsafe.putInt(t, j2, i4);
                    i9 = m5831a;
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
    private final int m5514a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, C3858cs c3858cs) {
        int i8;
        int m5835a;
        AbstractC3914el abstractC3914el = (AbstractC3914el) f18161b.getObject(t, j2);
        if (!abstractC3914el.mo5588a()) {
            int size = abstractC3914el.size();
            abstractC3914el = abstractC3914el.mo5476a(size == 0 ? 10 : size << 1);
            f18161b.putObject(t, j2, abstractC3914el);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 1) {
                        C3882dn c3882dn = (C3882dn) abstractC3914el;
                        c3882dn.m5698a(C3855cp.m5824c(bArr, i));
                        int i9 = i + 8;
                        while (true) {
                            i8 = i9;
                            if (i9 >= i2) {
                                break;
                            } else {
                                int m5828a = C3855cp.m5828a(bArr, i9, c3858cs);
                                i8 = i9;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    c3882dn.m5698a(C3855cp.m5824c(bArr, m5828a));
                                    i9 = m5828a + 8;
                                }
                            }
                        }
                    }
                } else {
                    C3882dn c3882dn2 = (C3882dn) abstractC3914el;
                    int m5828a2 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i10 = c3858cs.f17939a + m5828a2;
                    while (m5828a2 < i10) {
                        c3882dn2.m5698a(C3855cp.m5824c(bArr, m5828a2));
                        m5828a2 += 8;
                    }
                    i8 = m5828a2;
                    if (m5828a2 != i10) {
                        throw zzft.m4854a();
                    }
                }
                break;
            case 19:
            case 36:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 5) {
                        C3899ec c3899ec = (C3899ec) abstractC3914el;
                        c3899ec.m5655a(C3855cp.m5822d(bArr, i));
                        int i11 = i + 4;
                        while (true) {
                            i8 = i11;
                            if (i11 >= i2) {
                                break;
                            } else {
                                int m5828a3 = C3855cp.m5828a(bArr, i11, c3858cs);
                                i8 = i11;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    c3899ec.m5655a(C3855cp.m5822d(bArr, m5828a3));
                                    i11 = m5828a3 + 4;
                                }
                            }
                        }
                    }
                } else {
                    C3899ec c3899ec2 = (C3899ec) abstractC3914el;
                    int m5828a4 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i12 = c3858cs.f17939a + m5828a4;
                    while (m5828a4 < i12) {
                        c3899ec2.m5655a(C3855cp.m5822d(bArr, m5828a4));
                        m5828a4 += 4;
                    }
                    i8 = m5828a4;
                    if (m5828a4 != i12) {
                        throw zzft.m4854a();
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
                        C3931fb c3931fb = (C3931fb) abstractC3914el;
                        int m5825b = C3855cp.m5825b(bArr, i, c3858cs);
                        c3931fb.m5576a(c3858cs.f17940b);
                        while (true) {
                            i8 = m5825b;
                            if (m5825b >= i2) {
                                break;
                            } else {
                                int m5828a5 = C3855cp.m5828a(bArr, m5825b, c3858cs);
                                i8 = m5825b;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    m5825b = C3855cp.m5825b(bArr, m5828a5, c3858cs);
                                    c3931fb.m5576a(c3858cs.f17940b);
                                }
                            }
                        }
                    }
                } else {
                    C3931fb c3931fb2 = (C3931fb) abstractC3914el;
                    int m5828a6 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i13 = c3858cs.f17939a + m5828a6;
                    while (m5828a6 < i13) {
                        m5828a6 = C3855cp.m5825b(bArr, m5828a6, c3858cs);
                        c3931fb2.m5576a(c3858cs.f17940b);
                    }
                    i8 = m5828a6;
                    if (m5828a6 != i13) {
                        throw zzft.m4854a();
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
                        i8 = C3855cp.m5835a(i3, bArr, i, i2, abstractC3914el, c3858cs);
                        break;
                    }
                } else {
                    i8 = C3855cp.m5827a(bArr, i, abstractC3914el, c3858cs);
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
                        C3931fb c3931fb3 = (C3931fb) abstractC3914el;
                        c3931fb3.m5576a(C3855cp.m5826b(bArr, i));
                        int i14 = i + 8;
                        while (true) {
                            i8 = i14;
                            if (i14 >= i2) {
                                break;
                            } else {
                                int m5828a7 = C3855cp.m5828a(bArr, i14, c3858cs);
                                i8 = i14;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    c3931fb3.m5576a(C3855cp.m5826b(bArr, m5828a7));
                                    i14 = m5828a7 + 8;
                                }
                            }
                        }
                    }
                } else {
                    C3931fb c3931fb4 = (C3931fb) abstractC3914el;
                    int m5828a8 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i15 = c3858cs.f17939a + m5828a8;
                    while (m5828a8 < i15) {
                        c3931fb4.m5576a(C3855cp.m5826b(bArr, m5828a8));
                        m5828a8 += 8;
                    }
                    i8 = m5828a8;
                    if (m5828a8 != i15) {
                        throw zzft.m4854a();
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
                        C3909eg c3909eg = (C3909eg) abstractC3914el;
                        c3909eg.m5603d(C3855cp.m5829a(bArr, i));
                        int i16 = i + 4;
                        while (true) {
                            i8 = i16;
                            if (i16 >= i2) {
                                break;
                            } else {
                                int m5828a9 = C3855cp.m5828a(bArr, i16, c3858cs);
                                i8 = i16;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    c3909eg.m5603d(C3855cp.m5829a(bArr, m5828a9));
                                    i16 = m5828a9 + 4;
                                }
                            }
                        }
                    }
                } else {
                    C3909eg c3909eg2 = (C3909eg) abstractC3914el;
                    int m5828a10 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i17 = c3858cs.f17939a + m5828a10;
                    while (m5828a10 < i17) {
                        c3909eg2.m5603d(C3855cp.m5829a(bArr, m5828a10));
                        m5828a10 += 4;
                    }
                    i8 = m5828a10;
                    if (m5828a10 != i17) {
                        throw zzft.m4854a();
                    }
                }
                break;
            case 25:
            case 42:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        C3857cr c3857cr = (C3857cr) abstractC3914el;
                        int m5825b2 = C3855cp.m5825b(bArr, i, c3858cs);
                        c3857cr.m5816a(c3858cs.f17940b != 0);
                        while (true) {
                            i8 = m5825b2;
                            if (m5825b2 >= i2) {
                                break;
                            } else {
                                int m5828a11 = C3855cp.m5828a(bArr, m5825b2, c3858cs);
                                i8 = m5825b2;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    m5825b2 = C3855cp.m5825b(bArr, m5828a11, c3858cs);
                                    c3857cr.m5816a(c3858cs.f17940b != 0);
                                }
                            }
                        }
                    }
                } else {
                    C3857cr c3857cr2 = (C3857cr) abstractC3914el;
                    int m5828a12 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i18 = m5828a12 + c3858cs.f17939a;
                    while (m5828a12 < i18) {
                        m5828a12 = C3855cp.m5825b(bArr, m5828a12, c3858cs);
                        c3857cr2.m5816a(c3858cs.f17940b != 0);
                    }
                    i8 = m5828a12;
                    if (m5828a12 != i18) {
                        throw zzft.m4854a();
                    }
                }
                break;
            case 26:
                i8 = i;
                if (i5 == 2) {
                    if ((536870912 & j) != 0) {
                        int m5828a13 = C3855cp.m5828a(bArr, i, c3858cs);
                        int i19 = c3858cs.f17939a;
                        if (i19 >= 0) {
                            if (i19 == 0) {
                                abstractC3914el.add("");
                            } else if (!C3991hd.m5240a(bArr, m5828a13, m5828a13 + i19)) {
                                throw zzft.m4847h();
                            } else {
                                abstractC3914el.add(new String(bArr, m5828a13, i19, C3908ef.f18107a));
                                m5828a13 += i19;
                            }
                            while (true) {
                                i8 = m5828a13;
                                if (m5828a13 >= i2) {
                                    break;
                                } else {
                                    int m5828a14 = C3855cp.m5828a(bArr, m5828a13, c3858cs);
                                    i8 = m5828a13;
                                    if (i3 != c3858cs.f17939a) {
                                        break;
                                    } else {
                                        m5828a13 = C3855cp.m5828a(bArr, m5828a14, c3858cs);
                                        int i20 = c3858cs.f17939a;
                                        if (i20 < 0) {
                                            throw zzft.m4853b();
                                        }
                                        if (i20 == 0) {
                                            abstractC3914el.add("");
                                        } else if (!C3991hd.m5240a(bArr, m5828a13, m5828a13 + i20)) {
                                            throw zzft.m4847h();
                                        } else {
                                            abstractC3914el.add(new String(bArr, m5828a13, i20, C3908ef.f18107a));
                                            m5828a13 += i20;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzft.m4853b();
                        }
                    } else {
                        int m5828a15 = C3855cp.m5828a(bArr, i, c3858cs);
                        int i21 = c3858cs.f17939a;
                        if (i21 >= 0) {
                            if (i21 == 0) {
                                abstractC3914el.add("");
                            } else {
                                abstractC3914el.add(new String(bArr, m5828a15, i21, C3908ef.f18107a));
                                m5828a15 += i21;
                            }
                            while (true) {
                                i8 = m5828a15;
                                if (m5828a15 >= i2) {
                                    break;
                                } else {
                                    int m5828a16 = C3855cp.m5828a(bArr, m5828a15, c3858cs);
                                    i8 = m5828a15;
                                    if (i3 != c3858cs.f17939a) {
                                        break;
                                    } else {
                                        m5828a15 = C3855cp.m5828a(bArr, m5828a16, c3858cs);
                                        int i22 = c3858cs.f17939a;
                                        if (i22 < 0) {
                                            throw zzft.m4853b();
                                        }
                                        if (i22 == 0) {
                                            abstractC3914el.add("");
                                        } else {
                                            abstractC3914el.add(new String(bArr, m5828a15, i22, C3908ef.f18107a));
                                            m5828a15 += i22;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzft.m4853b();
                        }
                    }
                }
                break;
            case 27:
                i8 = i;
                if (i5 == 2) {
                    i8 = C3855cp.m5832a(m5532a(i6), i3, bArr, i, i2, abstractC3914el, c3858cs);
                    break;
                }
                break;
            case 28:
                i8 = i;
                if (i5 == 2) {
                    int m5828a17 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i23 = c3858cs.f17939a;
                    if (i23 >= 0) {
                        if (i23 <= bArr.length - m5828a17) {
                            if (i23 == 0) {
                                abstractC3914el.add(AbstractC3859ct.f17943a);
                            } else {
                                abstractC3914el.add(AbstractC3859ct.m5810a(bArr, m5828a17, i23));
                                m5828a17 += i23;
                            }
                            while (true) {
                                i8 = m5828a17;
                                if (m5828a17 >= i2) {
                                    break;
                                } else {
                                    int m5828a18 = C3855cp.m5828a(bArr, m5828a17, c3858cs);
                                    i8 = m5828a17;
                                    if (i3 != c3858cs.f17939a) {
                                        break;
                                    } else {
                                        m5828a17 = C3855cp.m5828a(bArr, m5828a18, c3858cs);
                                        int i24 = c3858cs.f17939a;
                                        if (i24 < 0) {
                                            throw zzft.m4853b();
                                        }
                                        if (i24 > bArr.length - m5828a17) {
                                            throw zzft.m4854a();
                                        }
                                        if (i24 == 0) {
                                            abstractC3914el.add(AbstractC3859ct.f17943a);
                                        } else {
                                            abstractC3914el.add(AbstractC3859ct.m5810a(bArr, m5828a17, i24));
                                            m5828a17 += i24;
                                        }
                                    }
                                }
                            }
                        } else {
                            throw zzft.m4854a();
                        }
                    } else {
                        throw zzft.m4853b();
                    }
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    m5835a = C3855cp.m5827a(bArr, i, abstractC3914el, c3858cs);
                } else {
                    i8 = i;
                    if (i5 == 0) {
                        m5835a = C3855cp.m5835a(i3, bArr, i, i2, abstractC3914el, c3858cs);
                    }
                }
                C3980gx c3980gx = ((AbstractC3900ed) t).zzb;
                C3980gx c3980gx2 = c3980gx;
                if (c3980gx == C3980gx.m5315a()) {
                    c3980gx2 = null;
                }
                C3980gx c3980gx3 = (C3980gx) C3962gf.m5416a(i4, abstractC3914el, m5503c(i6), c3980gx2, this.f18176q);
                if (c3980gx3 == null) {
                    i8 = m5835a;
                    break;
                } else {
                    ((AbstractC3900ed) t).zzb = c3980gx3;
                    i8 = m5835a;
                    break;
                }
            case 33:
            case 47:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        C3909eg c3909eg3 = (C3909eg) abstractC3914el;
                        int m5828a19 = C3855cp.m5828a(bArr, i, c3858cs);
                        c3909eg3.m5603d(AbstractC3875dg.m5741e(c3858cs.f17939a));
                        while (true) {
                            i8 = m5828a19;
                            if (m5828a19 >= i2) {
                                break;
                            } else {
                                int m5828a20 = C3855cp.m5828a(bArr, m5828a19, c3858cs);
                                i8 = m5828a19;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    m5828a19 = C3855cp.m5828a(bArr, m5828a20, c3858cs);
                                    c3909eg3.m5603d(AbstractC3875dg.m5741e(c3858cs.f17939a));
                                }
                            }
                        }
                    }
                } else {
                    C3909eg c3909eg4 = (C3909eg) abstractC3914el;
                    int m5828a21 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i25 = c3858cs.f17939a + m5828a21;
                    while (m5828a21 < i25) {
                        m5828a21 = C3855cp.m5828a(bArr, m5828a21, c3858cs);
                        c3909eg4.m5603d(AbstractC3875dg.m5741e(c3858cs.f17939a));
                    }
                    i8 = m5828a21;
                    if (m5828a21 != i25) {
                        throw zzft.m4854a();
                    }
                }
                break;
            case 34:
            case 48:
                if (i5 != 2) {
                    i8 = i;
                    if (i5 == 0) {
                        C3931fb c3931fb5 = (C3931fb) abstractC3914el;
                        int m5825b3 = C3855cp.m5825b(bArr, i, c3858cs);
                        c3931fb5.m5576a(AbstractC3875dg.m5743a(c3858cs.f17940b));
                        while (true) {
                            i8 = m5825b3;
                            if (m5825b3 >= i2) {
                                break;
                            } else {
                                int m5828a22 = C3855cp.m5828a(bArr, m5825b3, c3858cs);
                                i8 = m5825b3;
                                if (i3 != c3858cs.f17939a) {
                                    break;
                                } else {
                                    m5825b3 = C3855cp.m5825b(bArr, m5828a22, c3858cs);
                                    c3931fb5.m5576a(AbstractC3875dg.m5743a(c3858cs.f17940b));
                                }
                            }
                        }
                    }
                } else {
                    C3931fb c3931fb6 = (C3931fb) abstractC3914el;
                    int m5828a23 = C3855cp.m5828a(bArr, i, c3858cs);
                    int i26 = c3858cs.f17939a + m5828a23;
                    while (m5828a23 < i26) {
                        m5828a23 = C3855cp.m5825b(bArr, m5828a23, c3858cs);
                        c3931fb6.m5576a(AbstractC3875dg.m5743a(c3858cs.f17940b));
                    }
                    i8 = m5828a23;
                    if (m5828a23 != i26) {
                        throw zzft.m4854a();
                    }
                }
                break;
            case 49:
                i8 = i;
                if (i5 == 3) {
                    AbstractC3960gd m5532a = m5532a(i6);
                    int i27 = (i3 & (-8)) | 4;
                    int m5831a = C3855cp.m5831a(m5532a, bArr, i, i2, i27, c3858cs);
                    abstractC3914el.add(c3858cs.f17941c);
                    while (true) {
                        i8 = m5831a;
                        if (m5831a >= i2) {
                            break;
                        } else {
                            int m5828a24 = C3855cp.m5828a(bArr, m5831a, c3858cs);
                            i8 = m5831a;
                            if (i3 != c3858cs.f17939a) {
                                break;
                            } else {
                                m5831a = C3855cp.m5831a(m5532a, bArr, m5828a24, i2, i27, c3858cs);
                                abstractC3914el.add(c3858cs.f17941c);
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
    private final <K, V> int m5513a(T t, byte[] bArr, int i, int i2, int i3, long j, C3858cs c3858cs) {
        Object obj;
        Unsafe unsafe = f18161b;
        Object m5510b = m5510b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.f18178s.mo5554c(object)) {
            Object mo5552e = this.f18178s.mo5552e(m5510b);
            this.f18178s.mo5556a(mo5552e, object);
            unsafe.putObject(t, j, mo5552e);
            obj = mo5552e;
        } else {
            obj = object;
        }
        C3934fe<?, ?> mo5551f = this.f18178s.mo5551f(m5510b);
        Map<?, ?> mo5557a = this.f18178s.mo5557a(obj);
        int m5828a = C3855cp.m5828a(bArr, i, c3858cs);
        int i4 = c3858cs.f17939a;
        if (i4 < 0 || i4 > i2 - m5828a) {
            throw zzft.m4854a();
        }
        int i5 = m5828a + i4;
        Object obj2 = mo5551f.f18152b;
        Object obj3 = mo5551f.f18154d;
        while (m5828a < i5) {
            int i6 = m5828a + 1;
            byte b = bArr[m5828a];
            byte b2 = b;
            int i7 = i6;
            if (b < 0) {
                i7 = C3855cp.m5833a(b, bArr, i6, c3858cs);
                b2 = c3858cs.f17939a;
            }
            int i8 = b2 & 7;
            switch (b2 >>> 3) {
                case 1:
                    if (i8 != mo5551f.f18151a.m5212b()) {
                        break;
                    } else {
                        m5828a = m5511a(bArr, i7, i2, mo5551f.f18151a, (Class<?>) null, c3858cs);
                        obj2 = c3858cs.f17941c;
                        continue;
                    }
                case 2:
                    if (i8 != mo5551f.f18153c.m5212b()) {
                        break;
                    } else {
                        m5828a = m5511a(bArr, i7, i2, mo5551f.f18153c, mo5551f.f18154d.getClass(), c3858cs);
                        obj3 = c3858cs.f17941c;
                        continue;
                    }
            }
            m5828a = C3855cp.m5836a(b2, bArr, i7, i2, c3858cs);
        }
        if (m5828a != i5) {
            throw zzft.m4848g();
        }
        mo5557a.put(obj2, obj3);
        return i5;
    }

    /* renamed from: a */
    private static int m5511a(byte[] bArr, int i, int i2, EnumC3999hl enumC3999hl, Class<?> cls, C3858cs c3858cs) {
        int m5821d;
        switch (C3946fq.f18159a[enumC3999hl.ordinal()]) {
            case 1:
                m5821d = C3855cp.m5825b(bArr, i, c3858cs);
                c3858cs.f17941c = Boolean.valueOf(c3858cs.f17940b != 0);
                break;
            case 2:
                m5821d = C3855cp.m5820e(bArr, i, c3858cs);
                break;
            case 3:
                c3858cs.f17941c = Double.valueOf(C3855cp.m5824c(bArr, i));
                m5821d = i + 8;
                break;
            case 4:
            case 5:
                c3858cs.f17941c = Integer.valueOf(C3855cp.m5829a(bArr, i));
                m5821d = i + 4;
                break;
            case 6:
            case 7:
                c3858cs.f17941c = Long.valueOf(C3855cp.m5826b(bArr, i));
                m5821d = i + 8;
                break;
            case 8:
                c3858cs.f17941c = Float.valueOf(C3855cp.m5822d(bArr, i));
                m5821d = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                m5821d = C3855cp.m5828a(bArr, i, c3858cs);
                c3858cs.f17941c = Integer.valueOf(c3858cs.f17939a);
                break;
            case 12:
            case 13:
                m5821d = C3855cp.m5825b(bArr, i, c3858cs);
                c3858cs.f17941c = Long.valueOf(c3858cs.f17940b);
                break;
            case 14:
                m5821d = C3855cp.m5830a(C3955fz.m5481a().m5480a((Class) cls), bArr, i, i2, c3858cs);
                break;
            case 15:
                m5821d = C3855cp.m5828a(bArr, i, c3858cs);
                c3858cs.f17941c = Integer.valueOf(AbstractC3875dg.m5741e(c3858cs.f17939a));
                break;
            case 16:
                m5821d = C3855cp.m5825b(bArr, i, c3858cs);
                c3858cs.f17941c = Long.valueOf(AbstractC3875dg.m5743a(c3858cs.f17940b));
                break;
            case 17:
                m5821d = C3855cp.m5821d(bArr, i, c3858cs);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return m5821d;
    }

    /* renamed from: a */
    public static <T> C3947fr<T> m5525a(Class<T> cls, AbstractC3941fl abstractC3941fl, AbstractC3952fw abstractC3952fw, AbstractC3926ex abstractC3926ex, AbstractC3978gv<?, ?> abstractC3978gv, AbstractC3887dr<?> abstractC3887dr, AbstractC3936fg abstractC3936fg) {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        char c2;
        int[] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        char charAt;
        char charAt2;
        int i12;
        char charAt3;
        int i13;
        char charAt4;
        int i14;
        int charAt5;
        int i15;
        int charAt6;
        int charAt7;
        int i16;
        int charAt8;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        Field m5524a;
        int charAt9;
        Field m5524a2;
        Field m5524a3;
        int charAt10;
        int charAt11;
        int i26;
        int charAt12;
        int charAt13;
        if (!(abstractC3941fl instanceof C3958gb)) {
            if (((C3975gs) abstractC3941fl).mo5340a() == AbstractC3900ed.C3905e.f18100i) {
            }
            throw new NoSuchMethodError();
        }
        C3958gb c3958gb = (C3958gb) abstractC3941fl;
        boolean z = c3958gb.mo5340a() == AbstractC3900ed.C3905e.f18100i;
        String m5478d = c3958gb.m5478d();
        int length = m5478d.length();
        int i27 = 1;
        char charAt14 = m5478d.charAt(0);
        if (charAt14 >= 55296) {
            int i28 = charAt14 & 8191;
            int i29 = 13;
            while (true) {
                int i30 = i27 + 1;
                char charAt15 = m5478d.charAt(i27);
                i = i30;
                if (charAt15 < 55296) {
                    break;
                }
                i28 |= (charAt15 & 8191) << i29;
                i29 += 13;
                i27 = i30;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int charAt16 = m5478d.charAt(i);
        if (charAt16 >= 55296) {
            int i32 = charAt16 & 8191;
            int i33 = 13;
            while (true) {
                int i34 = i31;
                i31 = i34 + 1;
                charAt13 = m5478d.charAt(i34);
                if (charAt13 < 55296) {
                    break;
                }
                i32 |= (charAt13 & 8191) << i33;
                i33 += 13;
            }
            i2 = i31;
            i3 = (charAt13 << i33) | i32;
        } else {
            i2 = i31;
            i3 = charAt16;
        }
        if (i3 == 0) {
            i8 = 0;
            i9 = 0;
            c = 0;
            i10 = 0;
            iArr = f18160a;
            i11 = 0;
            i6 = 0;
            i7 = 0;
        } else {
            int i35 = i2 + 1;
            int charAt17 = m5478d.charAt(i2);
            if (charAt17 >= 55296) {
                int i36 = charAt17 & 8191;
                int i37 = 13;
                while (true) {
                    i16 = i35 + 1;
                    charAt8 = m5478d.charAt(i35);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i36 |= (charAt8 & 8191) << i37;
                    i35 = i16;
                    i37 += 13;
                }
                i4 = i16;
                charAt17 = (charAt8 << i37) | i36;
            } else {
                i4 = i35;
            }
            int i38 = i4 + 1;
            int charAt18 = m5478d.charAt(i4);
            int i39 = charAt18;
            int i40 = i38;
            if (charAt18 >= 55296) {
                int i41 = charAt18 & 8191;
                int i42 = 13;
                while (true) {
                    int i43 = i38;
                    i38 = i43 + 1;
                    charAt7 = m5478d.charAt(i43);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i41 |= (charAt7 & 8191) << i42;
                    i42 += 13;
                }
                i39 = (charAt7 << i42) | i41;
                i40 = i38;
            }
            int i44 = i40 + 1;
            int charAt19 = m5478d.charAt(i40);
            int i45 = charAt19;
            int i46 = i44;
            if (charAt19 >= 55296) {
                int i47 = charAt19 & 8191;
                int i48 = i44;
                int i49 = 13;
                while (true) {
                    i15 = i48 + 1;
                    charAt6 = m5478d.charAt(i48);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i47 |= (charAt6 & 8191) << i49;
                    i48 = i15;
                    i49 += 13;
                }
                i46 = i15;
                i45 = (charAt6 << i49) | i47;
            }
            int i50 = i46 + 1;
            int charAt20 = m5478d.charAt(i46);
            if (charAt20 >= 55296) {
                int i51 = charAt20 & 8191;
                int i52 = i50;
                int i53 = 13;
                while (true) {
                    i14 = i52 + 1;
                    charAt5 = m5478d.charAt(i52);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i51 |= (charAt5 & 8191) << i53;
                    i52 = i14;
                    i53 += 13;
                }
                i50 = i14;
                charAt20 = (charAt5 << i53) | i51;
            }
            int i54 = i50 + 1;
            char charAt21 = m5478d.charAt(i50);
            c = charAt21;
            if (charAt21 >= 55296) {
                int i55 = 13;
                int i56 = i54;
                int i57 = charAt21 & 8191;
                while (true) {
                    i13 = i56 + 1;
                    charAt4 = m5478d.charAt(i56);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i57 |= (charAt4 & 8191) << i55;
                    i55 += 13;
                    i56 = i13;
                }
                i54 = i13;
                c = (charAt4 << i55) | i57;
            }
            int i58 = i54 + 1;
            char charAt22 = m5478d.charAt(i54);
            if (charAt22 >= 55296) {
                int i59 = 13;
                int i60 = i58;
                int i61 = charAt22 & 8191;
                while (true) {
                    i12 = i60 + 1;
                    charAt3 = m5478d.charAt(i60);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i61 |= (charAt3 & 8191) << i59;
                    i59 += 13;
                    i60 = i12;
                }
                i5 = i12;
                c2 = (charAt3 << i59) | i61;
            } else {
                i5 = i58;
                c2 = charAt22;
            }
            int i62 = i5 + 1;
            char charAt23 = m5478d.charAt(i5);
            char c3 = charAt23;
            int i63 = i62;
            if (charAt23 >= 55296) {
                int i64 = charAt23 & 8191;
                int i65 = 13;
                while (true) {
                    int i66 = i62;
                    i62 = i66 + 1;
                    charAt2 = m5478d.charAt(i66);
                    if (charAt2 < 55296) {
                        break;
                    }
                    i64 |= (charAt2 & 8191) << i65;
                    i65 += 13;
                }
                c3 = (charAt2 << i65) | i64;
                i63 = i62;
            }
            int i67 = i63 + 1;
            char charAt24 = m5478d.charAt(i63);
            char c4 = charAt24;
            if (charAt24 >= 55296) {
                int i68 = charAt24 & 8191;
                int i69 = 13;
                while (true) {
                    int i70 = i67;
                    i67 = i70 + 1;
                    charAt = m5478d.charAt(i70);
                    if (charAt < 55296) {
                        break;
                    }
                    i68 |= (charAt & 8191) << i69;
                    i69 += 13;
                }
                c4 = (charAt << i69) | i68;
            }
            iArr = new int[c3 + c4 + c2];
            int i71 = i39 + (charAt17 << 1);
            i6 = c2;
            i7 = charAt17;
            i8 = i45;
            i9 = charAt20;
            i10 = c4;
            i11 = i71;
            i2 = i67;
        }
        Unsafe unsafe = f18161b;
        Object[] m5477e = c3958gb.m5477e();
        Class<?> cls2 = c3958gb.mo5338c().getClass();
        int[] iArr2 = new int[c * 3];
        Object[] objArr = new Object[c << 1];
        int i72 = i10 + i6;
        int i73 = 0;
        int i74 = i10;
        int i75 = i11;
        int i76 = 0;
        while (true) {
            int i77 = i74;
            if (i2 >= length) {
                return new C3947fr<>(iArr2, objArr, i8, i9, c3958gb.mo5338c(), z, false, iArr, i10, i10 + i6, abstractC3952fw, abstractC3926ex, abstractC3978gv, abstractC3887dr, abstractC3936fg);
            }
            int i78 = i2 + 1;
            int charAt25 = m5478d.charAt(i2);
            if (charAt25 >= 55296) {
                int i79 = charAt25 & 8191;
                int i80 = 13;
                while (true) {
                    i26 = i78 + 1;
                    charAt12 = m5478d.charAt(i78);
                    if (charAt12 < 55296) {
                        break;
                    }
                    i79 |= (charAt12 & 8191) << i80;
                    i78 = i26;
                    i80 += 13;
                }
                i18 = (charAt12 << i80) | i79;
                i17 = i26;
            } else {
                i17 = i78;
                i18 = charAt25;
            }
            i2 = i17 + 1;
            int charAt26 = m5478d.charAt(i17);
            if (charAt26 >= 55296) {
                int i81 = charAt26 & 8191;
                int i82 = 13;
                while (true) {
                    int i83 = i2;
                    i2 = i83 + 1;
                    charAt11 = m5478d.charAt(i83);
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
                int charAt27 = m5478d.charAt(i2);
                if (charAt27 >= 55296) {
                    int i86 = charAt27 & 8191;
                    int i87 = 13;
                    while (true) {
                        i2 = i85 + 1;
                        charAt10 = m5478d.charAt(i85);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i86 |= (charAt10 & 8191) << i87;
                        i85 = i2;
                        i87 += 13;
                    }
                    charAt27 = (charAt10 << i87) | i86;
                } else {
                    i2 = i85;
                }
                int i88 = i84 - 51;
                if (i88 == 9 || i88 == 17) {
                    objArr[((i73 / 3) << 1) + 1] = m5477e[i75];
                    i75++;
                } else if (i88 == 12 && !z) {
                    objArr[((i73 / 3) << 1) + 1] = m5477e[i75];
                    i75++;
                }
                int i89 = charAt27 << 1;
                Object obj = m5477e[i89];
                if (obj instanceof Field) {
                    m5524a2 = (Field) obj;
                } else {
                    m5524a2 = m5524a(cls2, (String) obj);
                    m5477e[i89] = m5524a2;
                }
                int objectFieldOffset = (int) unsafe.objectFieldOffset(m5524a2);
                int i90 = i89 + 1;
                Object obj2 = m5477e[i90];
                if (obj2 instanceof Field) {
                    m5524a3 = (Field) obj2;
                } else {
                    m5524a3 = m5524a(cls2, (String) obj2);
                    m5477e[i90] = m5524a3;
                }
                i20 = (int) unsafe.objectFieldOffset(m5524a3);
                i22 = i75;
                i25 = i77;
                i24 = objectFieldOffset;
                i23 = 0;
            } else {
                int i91 = i75 + 1;
                Field m5524a4 = m5524a(cls2, (String) m5477e[i75]);
                if (i84 == 9 || i84 == 17) {
                    objArr[((i73 / 3) << 1) + 1] = m5524a4.getType();
                    i19 = i91;
                } else if (i84 == 27 || i84 == 49) {
                    objArr[((i73 / 3) << 1) + 1] = m5477e[i91];
                    i19 = i91 + 1;
                } else if (i84 == 12 || i84 == 30 || i84 == 44) {
                    if (!z) {
                        objArr[((i73 / 3) << 1) + 1] = m5477e[i91];
                        i19 = i91 + 1;
                    }
                    i19 = i91;
                } else {
                    if (i84 == 50) {
                        int i92 = i77 + 1;
                        iArr[i77] = i73;
                        int i93 = i91 + 1;
                        objArr[(i73 / 3) << 1] = m5477e[i91];
                        if ((charAt26 & 2048) != 0) {
                            objArr[((i73 / 3) << 1) + 1] = m5477e[i93];
                            i77 = i92;
                            i19 = i93 + 1;
                        } else {
                            i77 = i92;
                            i19 = i93;
                        }
                    }
                    i19 = i91;
                }
                int objectFieldOffset2 = (int) unsafe.objectFieldOffset(m5524a4);
                if ((charAt26 & 4096) != 4096 || i84 > 17) {
                    i20 = 1048575;
                    i21 = 0;
                } else {
                    int i94 = i2 + 1;
                    int charAt28 = m5478d.charAt(i2);
                    if (charAt28 >= 55296) {
                        int i95 = charAt28 & 8191;
                        int i96 = 13;
                        while (true) {
                            i2 = i94 + 1;
                            charAt9 = m5478d.charAt(i94);
                            if (charAt9 < 55296) {
                                break;
                            }
                            i95 |= (charAt9 & 8191) << i96;
                            i94 = i2;
                            i96 += 13;
                        }
                        charAt28 = (charAt9 << i96) | i95;
                    } else {
                        i2 = i94;
                    }
                    int i97 = (charAt28 / 32) + (i7 << 1);
                    Object obj3 = m5477e[i97];
                    if (obj3 instanceof Field) {
                        m5524a = (Field) obj3;
                    } else {
                        m5524a = m5524a(cls2, (String) obj3);
                        m5477e[i97] = m5524a;
                    }
                    i20 = (int) unsafe.objectFieldOffset(m5524a);
                    i21 = charAt28 % 32;
                }
                if (i84 < 18 || i84 > 49) {
                    int i98 = i77;
                    i22 = i19;
                    i23 = i21;
                    i24 = objectFieldOffset2;
                    i25 = i98;
                } else {
                    iArr[i72] = objectFieldOffset2;
                    i72++;
                    int i99 = i19;
                    i23 = i21;
                    i24 = objectFieldOffset2;
                    i25 = i77;
                    i22 = i99;
                }
            }
            int i100 = i73 + 1;
            iArr2[i73] = i18;
            int i101 = i100 + 1;
            iArr2[i100] = ((charAt26 & 256) != 0 ? 268435456 : 0) | ((charAt26 & 512) != 0 ? 536870912 : 0) | (i84 << 20) | i24;
            iArr2[i101] = i20 | (i23 << 20);
            i73 = i101 + 1;
            i74 = i25;
            i75 = i22;
        }
    }

    /* renamed from: a */
    private final AbstractC3960gd m5532a(int i) {
        int i2 = (i / 3) << 1;
        AbstractC3960gd<T> abstractC3960gd = (AbstractC3960gd) this.f18163d[i2];
        if (abstractC3960gd == null) {
            abstractC3960gd = C3955fz.m5481a().m5480a((Class) ((Class) this.f18163d[i2 + 1]));
            this.f18163d[i2] = abstractC3960gd;
        }
        return abstractC3960gd;
    }

    /* renamed from: a */
    private final <K, V, UT, UB> UB m5530a(int i, int i2, Map<K, V> map, AbstractC3913ek abstractC3913ek, UB ub, AbstractC3978gv<UT, UB> abstractC3978gv) {
        C3934fe<?, ?> mo5551f = this.f18178s.mo5551f(m5510b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!abstractC3913ek.mo5598a(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = abstractC3978gv.mo5334a();
                }
                C3871dc m5806c = AbstractC3859ct.m5806c(C3935ff.m5570a(mo5551f, next.getKey(), next.getValue()));
                try {
                    C3935ff.m5569a(m5806c.m5755b(), mo5551f, next.getKey(), next.getValue());
                    abstractC3978gv.mo5329a((AbstractC3978gv<UT, UB>) ub2, i2, m5806c.m5756a());
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
    private final <UT, UB> UB m5518a(Object obj, int i, UB ub, AbstractC3978gv<UT, UB> abstractC3978gv) {
        UB ub2;
        int i2 = this.f18162c[i];
        Object m5267f = C3984ha.m5267f(obj, m5500d(i) & 1048575);
        if (m5267f == null) {
            ub2 = ub;
        } else {
            AbstractC3913ek m5503c = m5503c(i);
            ub2 = ub;
            if (m5503c != null) {
                ub2 = m5530a(i, i2, this.f18178s.mo5557a(m5267f), m5503c, (AbstractC3913ek) ub, (AbstractC3978gv<UT, AbstractC3913ek>) abstractC3978gv);
            }
        }
        return ub2;
    }

    /* renamed from: a */
    private static Field m5524a(Class<?> cls, String str) {
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
    private static List<?> m5517a(Object obj, long j) {
        return (List) C3984ha.m5267f(obj, j);
    }

    /* renamed from: a */
    private static void m5529a(int i, Object obj, AbstractC4005hr abstractC4005hr) {
        if (obj instanceof String) {
            abstractC4005hr.mo5200a(i, (String) obj);
        } else {
            abstractC4005hr.mo5204a(i, (AbstractC3859ct) obj);
        }
    }

    /* renamed from: a */
    private static <UT, UB> void m5527a(AbstractC3978gv<UT, UB> abstractC3978gv, T t, AbstractC4005hr abstractC4005hr) {
        abstractC3978gv.mo5326a((AbstractC3978gv<UT, UB>) abstractC3978gv.mo5324b(t), abstractC4005hr);
    }

    /* renamed from: a */
    private final <K, V> void m5526a(AbstractC4005hr abstractC4005hr, int i, Object obj, int i2) {
        if (obj != null) {
            abstractC4005hr.mo5203a(i, this.f18178s.mo5551f(m5510b(i2)), this.f18178s.mo5555b(obj));
        }
    }

    /* renamed from: a */
    private final void m5519a(Object obj, int i, AbstractC3961ge abstractC3961ge) {
        if (m5495f(i)) {
            C3984ha.m5290a(obj, i & 1048575, abstractC3961ge.mo5433m());
        } else if (this.f18168i) {
            C3984ha.m5290a(obj, i & 1048575, abstractC3961ge.mo5435l());
        } else {
            C3984ha.m5290a(obj, i & 1048575, abstractC3961ge.mo5431n());
        }
    }

    /* renamed from: a */
    private final void m5516a(T t, T t2, int i) {
        long m5500d = m5500d(i) & 1048575;
        if (!m5523a((C3947fr<T>) t2, i)) {
            return;
        }
        Object m5267f = C3984ha.m5267f(t, m5500d);
        Object m5267f2 = C3984ha.m5267f(t2, m5500d);
        if (m5267f != null && m5267f2 != null) {
            C3984ha.m5290a(t, m5500d, C3908ef.m5611a(m5267f, m5267f2));
            m5508b((C3947fr<T>) t, i);
        } else if (m5267f2 == null) {
        } else {
            C3984ha.m5290a(t, m5500d, m5267f2);
            m5508b((C3947fr<T>) t, i);
        }
    }

    /* renamed from: a */
    private final boolean m5523a(T t, int i) {
        boolean z;
        int m5498e = m5498e(i);
        if ((m5498e & 1048575) == 1048575) {
            int m5500d = m5500d(i);
            long j = m5500d & 1048575;
            switch ((m5500d & 267386880) >>> 20) {
                case 0:
                    if (C3984ha.m5270e(t, j) == 0.0d) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 1:
                    if (C3984ha.m5274d(t, j) == 0.0f) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 2:
                    if (C3984ha.m5284b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 3:
                    if (C3984ha.m5284b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 4:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 5:
                    if (C3984ha.m5284b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 6:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 7:
                    z = C3984ha.m5279c(t, j);
                    break;
                case 8:
                    Object m5267f = C3984ha.m5267f(t, j);
                    if (m5267f instanceof String) {
                        if (((String) m5267f).isEmpty()) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    } else if (!(m5267f instanceof AbstractC3859ct)) {
                        throw new IllegalArgumentException();
                    } else {
                        if (AbstractC3859ct.f17943a.equals(m5267f)) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    }
                case 9:
                    if (C3984ha.m5267f(t, j) == null) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 10:
                    if (AbstractC3859ct.f17943a.equals(C3984ha.m5267f(t, j))) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 11:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 12:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 13:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 14:
                    if (C3984ha.m5284b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 15:
                    if (C3984ha.m5296a(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 16:
                    if (C3984ha.m5284b(t, j) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 17:
                    if (C3984ha.m5267f(t, j) == null) {
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
            z = (C3984ha.m5296a(t, (long) (m5498e & 1048575)) & (1 << (m5498e >>> 20))) != 0;
        }
        return z;
    }

    /* renamed from: a */
    private final boolean m5522a(T t, int i, int i2) {
        return C3984ha.m5296a(t, (long) (m5498e(i2) & 1048575)) == i;
    }

    /* renamed from: a */
    private final boolean m5521a(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m5523a((C3947fr<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static boolean m5520a(Object obj, int i, AbstractC3960gd abstractC3960gd) {
        return abstractC3960gd.mo5463d(C3984ha.m5267f(obj, 1048575 & i));
    }

    /* renamed from: b */
    private static <T> double m5506b(T t, long j) {
        return ((Double) C3984ha.m5267f(t, j)).doubleValue();
    }

    /* renamed from: b */
    private final int m5509b(int i, int i2) {
        int i3;
        int length = (this.f18162c.length / 3) - 1;
        while (true) {
            if (i2 > length) {
                i3 = -1;
                break;
            }
            int i4 = (length + i2) >>> 1;
            int i5 = i4 * 3;
            int i6 = this.f18162c[i5];
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
    private final Object m5510b(int i) {
        return this.f18163d[(i / 3) << 1];
    }

    /* renamed from: b */
    private final void m5508b(T t, int i) {
        int m5498e = m5498e(i);
        long j = 1048575 & m5498e;
        if (j == 1048575) {
            return;
        }
        C3984ha.m5292a((Object) t, j, (1 << (m5498e >>> 20)) | C3984ha.m5296a(t, j));
    }

    /* renamed from: b */
    private final void m5507b(T t, int i, int i2) {
        C3984ha.m5292a((Object) t, m5498e(i2) & 1048575, i);
    }

    /* renamed from: b */
    private final void m5505b(T t, AbstractC4005hr abstractC4005hr) {
        int i;
        int i2;
        int i3;
        Map.Entry<?, ?> entry = null;
        Iterator<Map.Entry<?, Object>> it = null;
        if (this.f18167h) {
            C3892dw<?> mo5682a = this.f18177r.mo5682a(t);
            entry = null;
            it = null;
            if (!mo5682a.f18013a.isEmpty()) {
                it = mo5682a.m5662d();
                entry = it.next();
            }
        }
        int i4 = 1048575;
        int i5 = 0;
        int length = this.f18162c.length;
        Unsafe unsafe = f18161b;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int m5500d = m5500d(i6);
            int i7 = this.f18162c[i6];
            int i8 = (267386880 & m5500d) >>> 20;
            if (this.f18169j || i8 > 17) {
                i = 0;
            } else {
                int i9 = this.f18162c[i6 + 2];
                int i10 = i9 & 1048575;
                if (i10 != i4) {
                    i2 = unsafe.getInt(t, i10);
                    i3 = i10;
                } else {
                    int i11 = i4;
                    i2 = i5;
                    i3 = i11;
                }
                int i12 = i2;
                i4 = i3;
                i5 = i12;
                i = 1 << (i9 >>> 20);
            }
            while (entry != null && this.f18177r.mo5681a(entry) <= i7) {
                this.f18177r.mo5683a(abstractC4005hr, entry);
                entry = it.hasNext() ? it.next() : null;
            }
            long j = 1048575 & m5500d;
            switch (i8) {
                case 0:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5208a(i7, C3984ha.m5270e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5207a(i7, C3984ha.m5274d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5205a(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5187c(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5188c(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5184d(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5185d(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5196a(i7, C3984ha.m5279c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i5 & i) != 0) {
                        m5529a(i7, unsafe.getObject(t, j), abstractC4005hr);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5201a(i7, unsafe.getObject(t, j), m5532a(i6));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5204a(i7, (AbstractC3859ct) unsafe.getObject(t, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5182e(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5194b(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5206a(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5193b(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5179f(i7, unsafe.getInt(t, j));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5181e(i7, unsafe.getLong(t, j));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i5 & i) != 0) {
                        abstractC4005hr.mo5192b(i7, unsafe.getObject(t, j), m5532a(i6));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    C3962gf.m5412a(this.f18162c[i6], (List<Double>) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 19:
                    C3962gf.m5398b(this.f18162c[i6], (List<Float>) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 20:
                    C3962gf.m5394c(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 21:
                    C3962gf.m5390d(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 22:
                    C3962gf.m5377h(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 23:
                    C3962gf.m5383f(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 24:
                    C3962gf.m5368k(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 25:
                    C3962gf.m5365n(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 26:
                    C3962gf.m5414a(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr);
                    break;
                case 27:
                    C3962gf.m5413a(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, m5532a(i6));
                    break;
                case 28:
                    C3962gf.m5400b(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr);
                    break;
                case 29:
                    C3962gf.m5374i(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 30:
                    C3962gf.m5366m(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 31:
                    C3962gf.m5367l(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 32:
                    C3962gf.m5380g(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 33:
                    C3962gf.m5371j(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 34:
                    C3962gf.m5386e(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, false);
                    break;
                case 35:
                    C3962gf.m5412a(this.f18162c[i6], (List<Double>) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 36:
                    C3962gf.m5398b(this.f18162c[i6], (List<Float>) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 37:
                    C3962gf.m5394c(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 38:
                    C3962gf.m5390d(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 39:
                    C3962gf.m5377h(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 40:
                    C3962gf.m5383f(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 41:
                    C3962gf.m5368k(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 42:
                    C3962gf.m5365n(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 43:
                    C3962gf.m5374i(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 44:
                    C3962gf.m5366m(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 45:
                    C3962gf.m5367l(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 46:
                    C3962gf.m5380g(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 47:
                    C3962gf.m5371j(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 48:
                    C3962gf.m5386e(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, true);
                    break;
                case 49:
                    C3962gf.m5399b(this.f18162c[i6], (List) unsafe.getObject(t, j), abstractC4005hr, m5532a(i6));
                    break;
                case 50:
                    m5526a(abstractC4005hr, i7, unsafe.getObject(t, j), i6);
                    break;
                case 51:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5208a(i7, m5506b(t, j));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5207a(i7, m5502c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5205a(i7, m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5187c(i7, m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5188c(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5184d(i7, m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5185d(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5196a(i7, m5494f(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        m5529a(i7, unsafe.getObject(t, j), abstractC4005hr);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5201a(i7, unsafe.getObject(t, j), m5532a(i6));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5204a(i7, (AbstractC3859ct) unsafe.getObject(t, j));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5182e(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5194b(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5206a(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5193b(i7, m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5179f(i7, m5499d(t, j));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5181e(i7, m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m5522a((C3947fr<T>) t, i7, i6)) {
                        abstractC4005hr.mo5192b(i7, unsafe.getObject(t, j), m5532a(i6));
                        break;
                    } else {
                        break;
                    }
            }
        }
        while (entry != null) {
            this.f18177r.mo5683a(abstractC4005hr, entry);
            entry = it.hasNext() ? it.next() : null;
        }
        m5527a(this.f18176q, t, abstractC4005hr);
    }

    /* renamed from: b */
    private final void m5504b(T t, T t2, int i) {
        int m5500d = m5500d(i);
        int i2 = this.f18162c[i];
        long j = m5500d & 1048575;
        if (!m5522a((C3947fr<T>) t2, i2, i)) {
            return;
        }
        Object m5267f = C3984ha.m5267f(t, j);
        Object m5267f2 = C3984ha.m5267f(t2, j);
        if (m5267f != null && m5267f2 != null) {
            C3984ha.m5290a(t, j, C3908ef.m5611a(m5267f, m5267f2));
            m5507b((C3947fr<T>) t, i2, i);
        } else if (m5267f2 == null) {
        } else {
            C3984ha.m5290a(t, j, m5267f2);
            m5507b((C3947fr<T>) t, i2, i);
        }
    }

    /* renamed from: c */
    private static <T> float m5502c(T t, long j) {
        return ((Float) C3984ha.m5267f(t, j)).floatValue();
    }

    /* renamed from: c */
    private final AbstractC3913ek m5503c(int i) {
        return (AbstractC3913ek) this.f18163d[((i / 3) << 1) + 1];
    }

    /* renamed from: c */
    private final boolean m5501c(T t, T t2, int i) {
        return m5523a((C3947fr<T>) t, i) == m5523a((C3947fr<T>) t2, i);
    }

    /* renamed from: d */
    private final int m5500d(int i) {
        return this.f18162c[i + 1];
    }

    /* renamed from: d */
    private static <T> int m5499d(T t, long j) {
        return ((Integer) C3984ha.m5267f(t, j)).intValue();
    }

    /* renamed from: e */
    private final int m5498e(int i) {
        return this.f18162c[i + 2];
    }

    /* renamed from: e */
    private static <T> long m5496e(T t, long j) {
        return ((Long) C3984ha.m5267f(t, j)).longValue();
    }

    /* renamed from: e */
    private static C3980gx m5497e(Object obj) {
        C3980gx c3980gx = ((AbstractC3900ed) obj).zzb;
        C3980gx c3980gx2 = c3980gx;
        if (c3980gx == C3980gx.m5315a()) {
            c3980gx2 = C3980gx.m5309b();
            ((AbstractC3900ed) obj).zzb = c3980gx2;
        }
        return c3980gx2;
    }

    /* renamed from: f */
    private static boolean m5495f(int i) {
        return (536870912 & i) != 0;
    }

    /* renamed from: f */
    private static <T> boolean m5494f(T t, long j) {
        return ((Boolean) C3984ha.m5267f(t, j)).booleanValue();
    }

    /* renamed from: g */
    private final int m5493g(int i) {
        return (i < this.f18164e || i > this.f18165f) ? -1 : m5509b(i, 0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final int mo5471a(T t) {
        int length = this.f18162c.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2 += 3) {
            int m5500d = m5500d(i2);
            int i3 = this.f18162c[i2];
            long j = 1048575 & m5500d;
            switch ((m5500d & 267386880) >>> 20) {
                case 0:
                    i = (i * 53) + C3908ef.m5614a(Double.doubleToLongBits(C3984ha.m5270e(t, j)));
                    break;
                case 1:
                    i = (i * 53) + Float.floatToIntBits(C3984ha.m5274d(t, j));
                    break;
                case 2:
                    i = (i * 53) + C3908ef.m5614a(C3984ha.m5284b(t, j));
                    break;
                case 3:
                    i = (i * 53) + C3908ef.m5614a(C3984ha.m5284b(t, j));
                    break;
                case 4:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 5:
                    i = (i * 53) + C3908ef.m5614a(C3984ha.m5284b(t, j));
                    break;
                case 6:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 7:
                    i = (i * 53) + C3908ef.m5609a(C3984ha.m5279c(t, j));
                    break;
                case 8:
                    i = ((String) C3984ha.m5267f(t, j)).hashCode() + (i * 53);
                    break;
                case 9:
                    Object m5267f = C3984ha.m5267f(t, j);
                    i = (m5267f != null ? m5267f.hashCode() : 37) + (i * 53);
                    break;
                case 10:
                    i = (i * 53) + C3984ha.m5267f(t, j).hashCode();
                    break;
                case 11:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 12:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 13:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 14:
                    i = (i * 53) + C3908ef.m5614a(C3984ha.m5284b(t, j));
                    break;
                case 15:
                    i = (i * 53) + C3984ha.m5296a(t, j);
                    break;
                case 16:
                    i = (i * 53) + C3908ef.m5614a(C3984ha.m5284b(t, j));
                    break;
                case 17:
                    Object m5267f2 = C3984ha.m5267f(t, j);
                    i = (m5267f2 != null ? m5267f2.hashCode() : 37) + (i * 53);
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
                    i = (i * 53) + C3984ha.m5267f(t, j).hashCode();
                    break;
                case 50:
                    i = (i * 53) + C3984ha.m5267f(t, j).hashCode();
                    break;
                case 51:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(Double.doubleToLongBits(m5506b(t, j)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + Float.floatToIntBits(m5502c(t, j));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5609a(m5494f(t, j));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = ((String) C3984ha.m5267f(t, j)).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = C3984ha.m5267f(t, j).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3984ha.m5267f(t, j).hashCode();
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + m5499d(t, j);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = (i * 53) + C3908ef.m5614a(m5496e(t, j));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m5522a((C3947fr<T>) t, i3, i2)) {
                        i = C3984ha.m5267f(t, j).hashCode() + (i * 53);
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i * 53) + this.f18176q.mo5324b(t).hashCode();
        int i4 = hashCode;
        if (this.f18167h) {
            i4 = (hashCode * 53) + this.f18177r.mo5682a(t).hashCode();
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x068e, code lost:
        if (r28 == 1048575) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0691, code lost:
        r0.putInt(r17, r28, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x069b, code lost:
        r18 = null;
        r19 = r16.f18172m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x06a7, code lost:
        if (r19 >= r16.f18173n) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x06aa, code lost:
        r18 = (com.google.android.gms.internal.measurement.C3980gx) m5518a((java.lang.Object) r17, r16.f18171l[r19], (int) r18, (com.google.android.gms.internal.measurement.AbstractC3978gv<UT, int>) r16.f18176q);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x06c5, code lost:
        if (r18 == null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x06c8, code lost:
        r16.f18176q.mo5321b((java.lang.Object) r17, (T) r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x06d3, code lost:
        if (r21 != 0) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x06da, code lost:
        if (r29 == r20) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x06e0, code lost:
        throw com.google.android.gms.internal.measurement.zzft.m4848g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06e5, code lost:
        if (r29 > r20) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x06ec, code lost:
        if (r26 == r21) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x06f2, code lost:
        throw com.google.android.gms.internal.measurement.zzft.m4848g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06f5, code lost:
        return r29;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5512a(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.C3858cs r22) {
        /*
            Method dump skipped, instructions count: 1814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3947fr.m5512a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.cs):int");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final T mo5472a() {
        return (T) this.f18174o.mo5485a(this.f18166g);
    }

    /* JADX WARN: Removed duplicated region for block: B:493:0x0315 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:511:0x001e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02f6  */
    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5470a(T r9, com.google.android.gms.internal.measurement.AbstractC3961ge r10, com.google.android.gms.internal.measurement.C3884dp r11) {
        /*
            Method dump skipped, instructions count: 3764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3947fr.mo5470a(java.lang.Object, com.google.android.gms.internal.measurement.ge, com.google.android.gms.internal.measurement.dp):void");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final void mo5469a(T t, AbstractC4005hr abstractC4005hr) {
        Map.Entry<?, ?> entry;
        Map.Entry<?, ?> entry2;
        if (abstractC4005hr.mo5210a() == AbstractC3900ed.C3905e.f18102k) {
            m5527a(this.f18176q, t, abstractC4005hr);
            Map.Entry<?, ?> entry3 = null;
            Iterator<Map.Entry<?, Object>> it = null;
            if (this.f18167h) {
                C3892dw<?> mo5682a = this.f18177r.mo5682a(t);
                entry3 = null;
                it = null;
                if (!mo5682a.f18013a.isEmpty()) {
                    it = mo5682a.m5661e();
                    entry3 = it.next();
                }
            }
            int length = this.f18162c.length - 3;
            while (true) {
                entry2 = entry3;
                if (length >= 0) {
                    int m5500d = m5500d(length);
                    int i = this.f18162c[length];
                    while (entry3 != null && this.f18177r.mo5681a(entry3) > i) {
                        this.f18177r.mo5683a(abstractC4005hr, entry3);
                        entry3 = it.hasNext() ? it.next() : null;
                    }
                    switch ((267386880 & m5500d) >>> 20) {
                        case 0:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5208a(i, C3984ha.m5270e(t, 1048575 & m5500d));
                                break;
                            }
                        case 1:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5207a(i, C3984ha.m5274d(t, 1048575 & m5500d));
                                break;
                            }
                        case 2:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5205a(i, C3984ha.m5284b(t, 1048575 & m5500d));
                                break;
                            }
                        case 3:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5187c(i, C3984ha.m5284b(t, 1048575 & m5500d));
                                break;
                            }
                        case 4:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5188c(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 5:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5184d(i, C3984ha.m5284b(t, 1048575 & m5500d));
                                break;
                            }
                        case 6:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5185d(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 7:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5196a(i, C3984ha.m5279c(t, 1048575 & m5500d));
                                break;
                            }
                        case 8:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                m5529a(i, C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr);
                                break;
                            }
                        case 9:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5201a(i, C3984ha.m5267f(t, 1048575 & m5500d), m5532a(length));
                                break;
                            }
                        case 10:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5204a(i, (AbstractC3859ct) C3984ha.m5267f(t, 1048575 & m5500d));
                                break;
                            }
                        case 11:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5182e(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 12:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5194b(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 13:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5206a(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 14:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5193b(i, C3984ha.m5284b(t, 1048575 & m5500d));
                                break;
                            }
                        case 15:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5179f(i, C3984ha.m5296a(t, 1048575 & m5500d));
                                break;
                            }
                        case 16:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5181e(i, C3984ha.m5284b(t, 1048575 & m5500d));
                                break;
                            }
                        case 17:
                            if (!m5523a((C3947fr<T>) t, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5192b(i, C3984ha.m5267f(t, 1048575 & m5500d), m5532a(length));
                                break;
                            }
                        case 18:
                            C3962gf.m5412a(this.f18162c[length], (List<Double>) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 19:
                            C3962gf.m5398b(this.f18162c[length], (List<Float>) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 20:
                            C3962gf.m5394c(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 21:
                            C3962gf.m5390d(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 22:
                            C3962gf.m5377h(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 23:
                            C3962gf.m5383f(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 24:
                            C3962gf.m5368k(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 25:
                            C3962gf.m5365n(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 26:
                            C3962gf.m5414a(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr);
                            break;
                        case 27:
                            C3962gf.m5413a(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, m5532a(length));
                            break;
                        case 28:
                            C3962gf.m5400b(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr);
                            break;
                        case 29:
                            C3962gf.m5374i(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 30:
                            C3962gf.m5366m(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 31:
                            C3962gf.m5367l(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 32:
                            C3962gf.m5380g(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 33:
                            C3962gf.m5371j(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 34:
                            C3962gf.m5386e(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, false);
                            break;
                        case 35:
                            C3962gf.m5412a(this.f18162c[length], (List<Double>) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 36:
                            C3962gf.m5398b(this.f18162c[length], (List<Float>) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 37:
                            C3962gf.m5394c(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 38:
                            C3962gf.m5390d(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 39:
                            C3962gf.m5377h(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 40:
                            C3962gf.m5383f(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 41:
                            C3962gf.m5368k(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 42:
                            C3962gf.m5365n(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 43:
                            C3962gf.m5374i(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 44:
                            C3962gf.m5366m(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 45:
                            C3962gf.m5367l(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 46:
                            C3962gf.m5380g(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 47:
                            C3962gf.m5371j(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 48:
                            C3962gf.m5386e(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, true);
                            break;
                        case 49:
                            C3962gf.m5399b(this.f18162c[length], (List) C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr, m5532a(length));
                            break;
                        case 50:
                            m5526a(abstractC4005hr, i, C3984ha.m5267f(t, 1048575 & m5500d), length);
                            break;
                        case 51:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5208a(i, m5506b(t, 1048575 & m5500d));
                                break;
                            }
                        case 52:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5207a(i, m5502c(t, 1048575 & m5500d));
                                break;
                            }
                        case 53:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5205a(i, m5496e(t, 1048575 & m5500d));
                                break;
                            }
                        case 54:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5187c(i, m5496e(t, 1048575 & m5500d));
                                break;
                            }
                        case 55:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5188c(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 56:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5184d(i, m5496e(t, 1048575 & m5500d));
                                break;
                            }
                        case 57:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5185d(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 58:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5196a(i, m5494f(t, 1048575 & m5500d));
                                break;
                            }
                        case 59:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                m5529a(i, C3984ha.m5267f(t, 1048575 & m5500d), abstractC4005hr);
                                break;
                            }
                        case 60:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5201a(i, C3984ha.m5267f(t, 1048575 & m5500d), m5532a(length));
                                break;
                            }
                        case 61:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5204a(i, (AbstractC3859ct) C3984ha.m5267f(t, 1048575 & m5500d));
                                break;
                            }
                        case 62:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5182e(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 63:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5194b(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 64:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5206a(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 65:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5193b(i, m5496e(t, 1048575 & m5500d));
                                break;
                            }
                        case 66:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5179f(i, m5499d(t, 1048575 & m5500d));
                                break;
                            }
                        case 67:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5181e(i, m5496e(t, 1048575 & m5500d));
                                break;
                            }
                        case 68:
                            if (!m5522a((C3947fr<T>) t, i, length)) {
                                break;
                            } else {
                                abstractC4005hr.mo5192b(i, C3984ha.m5267f(t, 1048575 & m5500d), m5532a(length));
                                break;
                            }
                    }
                    length -= 3;
                }
            }
            while (entry2 != null) {
                this.f18177r.mo5683a(abstractC4005hr, entry2);
                entry2 = it.hasNext() ? it.next() : null;
            }
        } else if (!this.f18169j) {
            m5505b((C3947fr<T>) t, abstractC4005hr);
        } else {
            Map.Entry<?, ?> entry4 = null;
            Iterator<Map.Entry<?, Object>> it2 = null;
            if (this.f18167h) {
                C3892dw<?> mo5682a2 = this.f18177r.mo5682a(t);
                entry4 = null;
                it2 = null;
                if (!mo5682a2.f18013a.isEmpty()) {
                    it2 = mo5682a2.m5662d();
                    entry4 = it2.next();
                }
            }
            int length2 = this.f18162c.length;
            int i2 = 0;
            while (true) {
                entry = entry4;
                if (i2 < length2) {
                    int m5500d2 = m5500d(i2);
                    int i3 = this.f18162c[i2];
                    while (entry4 != null && this.f18177r.mo5681a(entry4) <= i3) {
                        this.f18177r.mo5683a(abstractC4005hr, entry4);
                        entry4 = it2.hasNext() ? it2.next() : null;
                    }
                    switch ((267386880 & m5500d2) >>> 20) {
                        case 0:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5208a(i3, C3984ha.m5270e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 1:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5207a(i3, C3984ha.m5274d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 2:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5205a(i3, C3984ha.m5284b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 3:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5187c(i3, C3984ha.m5284b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 4:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5188c(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 5:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5184d(i3, C3984ha.m5284b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 6:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5185d(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 7:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5196a(i3, C3984ha.m5279c(t, 1048575 & m5500d2));
                                break;
                            }
                        case 8:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                m5529a(i3, C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr);
                                break;
                            }
                        case 9:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5201a(i3, C3984ha.m5267f(t, 1048575 & m5500d2), m5532a(i2));
                                break;
                            }
                        case 10:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5204a(i3, (AbstractC3859ct) C3984ha.m5267f(t, 1048575 & m5500d2));
                                break;
                            }
                        case 11:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5182e(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 12:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5194b(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 13:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5206a(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 14:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5193b(i3, C3984ha.m5284b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 15:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5179f(i3, C3984ha.m5296a(t, 1048575 & m5500d2));
                                break;
                            }
                        case 16:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5181e(i3, C3984ha.m5284b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 17:
                            if (!m5523a((C3947fr<T>) t, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5192b(i3, C3984ha.m5267f(t, 1048575 & m5500d2), m5532a(i2));
                                break;
                            }
                        case 18:
                            C3962gf.m5412a(this.f18162c[i2], (List<Double>) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 19:
                            C3962gf.m5398b(this.f18162c[i2], (List<Float>) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 20:
                            C3962gf.m5394c(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 21:
                            C3962gf.m5390d(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 22:
                            C3962gf.m5377h(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 23:
                            C3962gf.m5383f(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 24:
                            C3962gf.m5368k(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 25:
                            C3962gf.m5365n(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 26:
                            C3962gf.m5414a(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr);
                            break;
                        case 27:
                            C3962gf.m5413a(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, m5532a(i2));
                            break;
                        case 28:
                            C3962gf.m5400b(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr);
                            break;
                        case 29:
                            C3962gf.m5374i(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 30:
                            C3962gf.m5366m(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 31:
                            C3962gf.m5367l(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 32:
                            C3962gf.m5380g(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 33:
                            C3962gf.m5371j(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 34:
                            C3962gf.m5386e(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, false);
                            break;
                        case 35:
                            C3962gf.m5412a(this.f18162c[i2], (List<Double>) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 36:
                            C3962gf.m5398b(this.f18162c[i2], (List<Float>) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 37:
                            C3962gf.m5394c(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 38:
                            C3962gf.m5390d(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 39:
                            C3962gf.m5377h(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 40:
                            C3962gf.m5383f(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 41:
                            C3962gf.m5368k(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 42:
                            C3962gf.m5365n(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 43:
                            C3962gf.m5374i(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 44:
                            C3962gf.m5366m(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 45:
                            C3962gf.m5367l(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 46:
                            C3962gf.m5380g(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 47:
                            C3962gf.m5371j(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 48:
                            C3962gf.m5386e(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, true);
                            break;
                        case 49:
                            C3962gf.m5399b(this.f18162c[i2], (List) C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr, m5532a(i2));
                            break;
                        case 50:
                            m5526a(abstractC4005hr, i3, C3984ha.m5267f(t, 1048575 & m5500d2), i2);
                            break;
                        case 51:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5208a(i3, m5506b(t, 1048575 & m5500d2));
                                break;
                            }
                        case 52:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5207a(i3, m5502c(t, 1048575 & m5500d2));
                                break;
                            }
                        case 53:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5205a(i3, m5496e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 54:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5187c(i3, m5496e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 55:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5188c(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 56:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5184d(i3, m5496e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 57:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5185d(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 58:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5196a(i3, m5494f(t, 1048575 & m5500d2));
                                break;
                            }
                        case 59:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                m5529a(i3, C3984ha.m5267f(t, 1048575 & m5500d2), abstractC4005hr);
                                break;
                            }
                        case 60:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5201a(i3, C3984ha.m5267f(t, 1048575 & m5500d2), m5532a(i2));
                                break;
                            }
                        case 61:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5204a(i3, (AbstractC3859ct) C3984ha.m5267f(t, 1048575 & m5500d2));
                                break;
                            }
                        case 62:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5182e(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 63:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5194b(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 64:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5206a(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 65:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5193b(i3, m5496e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 66:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5179f(i3, m5499d(t, 1048575 & m5500d2));
                                break;
                            }
                        case 67:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5181e(i3, m5496e(t, 1048575 & m5500d2));
                                break;
                            }
                        case 68:
                            if (!m5522a((C3947fr<T>) t, i3, i2)) {
                                break;
                            } else {
                                abstractC4005hr.mo5192b(i3, C3984ha.m5267f(t, 1048575 & m5500d2), m5532a(i2));
                                break;
                            }
                    }
                    i2 += 3;
                }
            }
            while (entry != null) {
                this.f18177r.mo5683a(abstractC4005hr, entry);
                entry = it2.hasNext() ? it2.next() : null;
            }
            m5527a(this.f18176q, t, abstractC4005hr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v223, types: [int] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final void mo5467a(T t, byte[] bArr, int i, int i2, C3858cs c3858cs) {
        int i3;
        int i4;
        if (!this.f18169j) {
            m5512a((C3947fr<T>) t, bArr, i, i2, 0, c3858cs);
            return;
        }
        Unsafe unsafe = f18161b;
        int i5 = 0;
        int i6 = 0;
        int i7 = -1;
        int i8 = i;
        int i9 = 1048575;
        while (i8 < i2) {
            int i10 = i8 + 1;
            byte b = bArr[i8];
            int i11 = i10;
            byte b2 = b;
            if (b < 0) {
                i11 = C3855cp.m5833a(b, bArr, i10, c3858cs);
                b2 = c3858cs.f17939a;
            }
            int i12 = b2 >>> 3;
            int i13 = b2 & 7;
            i6 = i12 > i7 ? m5531a(i12, i6 / 3) : m5493g(i12);
            if (i6 == -1) {
                i6 = 0;
                i3 = i11;
            } else {
                int i14 = this.f18162c[i6 + 1];
                int i15 = (267386880 & i14) >>> 20;
                long j = 1048575 & i14;
                if (i15 <= 17) {
                    int i16 = this.f18162c[i6 + 2];
                    int i17 = 1 << (i16 >>> 20);
                    int i18 = i16 & 1048575;
                    if (i18 != i9) {
                        if (i9 != 1048575) {
                            unsafe.putInt(t, i9, i5);
                        }
                        i5 = i18 != 1048575 ? unsafe.getInt(t, i18) : i5;
                        i9 = i18;
                    }
                    switch (i15) {
                        case 0:
                            if (i13 != 1) {
                                i3 = i11;
                                break;
                            } else {
                                C3984ha.m5294a(t, j, C3855cp.m5824c(bArr, i11));
                                i5 |= i17;
                                i7 = i12;
                                i8 = i11 + 8;
                                break;
                            }
                        case 1:
                            if (i13 != 5) {
                                i3 = i11;
                                break;
                            } else {
                                C3984ha.m5293a((Object) t, j, C3855cp.m5822d(bArr, i11));
                                i5 |= i17;
                                i7 = i12;
                                i8 = i11 + 4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5825b = C3855cp.m5825b(bArr, i11, c3858cs);
                                unsafe.putLong(t, j, c3858cs.f17940b);
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5825b;
                                break;
                            }
                        case 4:
                        case 11:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5828a = C3855cp.m5828a(bArr, i11, c3858cs);
                                unsafe.putInt(t, j, c3858cs.f17939a);
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5828a;
                                break;
                            }
                        case 5:
                        case 14:
                            if (i13 != 1) {
                                i3 = i11;
                                break;
                            } else {
                                unsafe.putLong(t, j, C3855cp.m5826b(bArr, i11));
                                i5 |= i17;
                                i7 = i12;
                                i8 = i11 + 8;
                                break;
                            }
                        case 6:
                        case 13:
                            if (i13 != 5) {
                                i3 = i11;
                                break;
                            } else {
                                unsafe.putInt(t, j, C3855cp.m5829a(bArr, i11));
                                i5 |= i17;
                                i7 = i12;
                                i8 = i11 + 4;
                                break;
                            }
                        case 7:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5825b2 = C3855cp.m5825b(bArr, i11, c3858cs);
                                C3984ha.m5289a(t, j, c3858cs.f17940b != 0);
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5825b2;
                                break;
                            }
                        case 8:
                            if (i13 != 2) {
                                i3 = i11;
                                break;
                            } else {
                                int m5823c = (536870912 & i14) == 0 ? C3855cp.m5823c(bArr, i11, c3858cs) : C3855cp.m5821d(bArr, i11, c3858cs);
                                unsafe.putObject(t, j, c3858cs.f17941c);
                                i7 = i12;
                                i8 = m5823c;
                                i5 |= i17;
                                break;
                            }
                        case 9:
                            if (i13 != 2) {
                                i3 = i11;
                                break;
                            } else {
                                int m5830a = C3855cp.m5830a(m5532a(i6), bArr, i11, i2, c3858cs);
                                Object object = unsafe.getObject(t, j);
                                if (object == null) {
                                    unsafe.putObject(t, j, c3858cs.f17941c);
                                } else {
                                    unsafe.putObject(t, j, C3908ef.m5611a(object, c3858cs.f17941c));
                                }
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5830a;
                                break;
                            }
                        case 10:
                            if (i13 != 2) {
                                i3 = i11;
                                break;
                            } else {
                                int m5820e = C3855cp.m5820e(bArr, i11, c3858cs);
                                unsafe.putObject(t, j, c3858cs.f17941c);
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5820e;
                                break;
                            }
                        case 12:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5828a2 = C3855cp.m5828a(bArr, i11, c3858cs);
                                unsafe.putInt(t, j, c3858cs.f17939a);
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5828a2;
                                break;
                            }
                        case 15:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5828a3 = C3855cp.m5828a(bArr, i11, c3858cs);
                                unsafe.putInt(t, j, AbstractC3875dg.m5741e(c3858cs.f17939a));
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5828a3;
                                break;
                            }
                        case 16:
                            if (i13 != 0) {
                                i3 = i11;
                                break;
                            } else {
                                int m5825b3 = C3855cp.m5825b(bArr, i11, c3858cs);
                                unsafe.putLong(t, j, AbstractC3875dg.m5743a(c3858cs.f17940b));
                                i5 |= i17;
                                i7 = i12;
                                i8 = m5825b3;
                                break;
                            }
                        default:
                            i3 = i11;
                            break;
                    }
                } else if (i15 == 27) {
                    if (i13 == 2) {
                        AbstractC3914el abstractC3914el = (AbstractC3914el) unsafe.getObject(t, j);
                        if (!abstractC3914el.mo5588a()) {
                            int size = abstractC3914el.size();
                            abstractC3914el = abstractC3914el.mo5476a(size == 0 ? 10 : size << 1);
                            unsafe.putObject(t, j, abstractC3914el);
                        }
                        i7 = i12;
                        i8 = C3855cp.m5832a(m5532a(i6), b2, bArr, i11, i2, abstractC3914el, c3858cs);
                    } else {
                        i3 = i11;
                    }
                } else if (i15 <= 49) {
                    i3 = m5514a((C3947fr<T>) t, bArr, i11, i2, b2, i12, i13, i6, i14, i15, j, c3858cs);
                    i4 = i3;
                    if (i3 != i11) {
                        i7 = i12;
                        i8 = i4;
                    }
                } else if (i15 != 50) {
                    i3 = m5515a((C3947fr<T>) t, bArr, i11, i2, b2, i12, i13, i14, i15, j, i6, c3858cs);
                    i4 = i3;
                    if (i3 != i11) {
                        i7 = i12;
                        i8 = i4;
                    }
                } else if (i13 == 2) {
                    i3 = m5513a((C3947fr<T>) t, bArr, i11, i2, i6, j, c3858cs);
                    i4 = i3;
                    if (i3 != i11) {
                        i7 = i12;
                        i8 = i4;
                    }
                } else {
                    i3 = i11;
                }
            }
            i7 = i12;
            i8 = C3855cp.m5834a(b2, bArr, i3, i2, m5497e(t), c3858cs);
        }
        if (i9 != 1048575) {
            unsafe.putInt(t, i9, i5);
        }
        if (i8 == i2) {
            return;
        }
        throw zzft.m4848g();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: a */
    public final boolean mo5468a(T t, T t2) {
        boolean z;
        boolean z2;
        int length = this.f18162c.length;
        int i = 0;
        while (true) {
            if (i < length) {
                int m5500d = m5500d(i);
                long j = m5500d & 1048575;
                switch ((m5500d & 267386880) >>> 20) {
                    case 0:
                        if (!m5501c(t, t2, i) || Double.doubleToLongBits(C3984ha.m5270e(t, j)) != Double.doubleToLongBits(C3984ha.m5270e(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 1:
                        if (!m5501c(t, t2, i) || Float.floatToIntBits(C3984ha.m5274d(t, j)) != Float.floatToIntBits(C3984ha.m5274d(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 2:
                        if (!m5501c(t, t2, i) || C3984ha.m5284b(t, j) != C3984ha.m5284b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 3:
                        if (!m5501c(t, t2, i) || C3984ha.m5284b(t, j) != C3984ha.m5284b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 4:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 5:
                        if (!m5501c(t, t2, i) || C3984ha.m5284b(t, j) != C3984ha.m5284b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 6:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 7:
                        if (!m5501c(t, t2, i) || C3984ha.m5279c(t, j) != C3984ha.m5279c(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 8:
                        if (!m5501c(t, t2, i) || !C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 9:
                        if (!m5501c(t, t2, i) || !C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 10:
                        if (!m5501c(t, t2, i) || !C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j))) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 11:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 12:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 13:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 14:
                        if (!m5501c(t, t2, i) || C3984ha.m5284b(t, j) != C3984ha.m5284b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 15:
                        if (!m5501c(t, t2, i) || C3984ha.m5296a(t, j) != C3984ha.m5296a(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 16:
                        if (!m5501c(t, t2, i) || C3984ha.m5284b(t, j) != C3984ha.m5284b(t2, j)) {
                            z2 = false;
                            break;
                        }
                        z2 = true;
                        break;
                    case 17:
                        if (!m5501c(t, t2, i) || !C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j))) {
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
                        z2 = C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j));
                        break;
                    case 50:
                        z2 = C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j));
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
                        int m5498e = m5498e(i);
                        if (C3984ha.m5296a(t, m5498e & 1048575) != C3984ha.m5296a(t2, m5498e & 1048575) || !C3962gf.m5406a(C3984ha.m5267f(t, j), C3984ha.m5267f(t2, j))) {
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
                if (this.f18176q.mo5324b(t).equals(this.f18176q.mo5324b(t2))) {
                    z = this.f18167h ? this.f18177r.mo5682a(t).equals(this.f18177r.mo5682a(t2)) : true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: b */
    public final int mo5466b(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.f18169j) {
            Unsafe unsafe = f18161b;
            int i6 = 0;
            int i7 = 0;
            while (i7 < this.f18162c.length) {
                int m5500d = m5500d(i7);
                int i8 = (267386880 & m5500d) >>> 20;
                int i9 = this.f18162c[i7];
                long j = m5500d & 1048575;
                int i10 = (i8 < EnumC3893dx.DOUBLE_LIST_PACKED.m5658a() || i8 > EnumC3893dx.SINT64_LIST_PACKED.m5658a()) ? 0 : this.f18162c[i7 + 2] & 1048575;
                switch (i8) {
                    case 0:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4926b(i9, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4925b(i9, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4906d(i9, C3984ha.m5284b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4902e(i9, C3984ha.m5284b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4899f(i9, C3984ha.m5296a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4894g(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4887i(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4919b(i9, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            Object m5267f = C3984ha.m5267f(t, j);
                            if (m5267f instanceof AbstractC3859ct) {
                                i5 = i6 + zzes.m4910c(i9, (AbstractC3859ct) m5267f);
                                break;
                            } else {
                                i5 = i6 + zzes.m4920b(i9, (String) m5267f);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + C3962gf.m5418a(i9, C3984ha.m5267f(t, j), m5532a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4910c(i9, (AbstractC3859ct) C3984ha.m5267f(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4895g(i9, C3984ha.m5296a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4882k(i9, C3984ha.m5296a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4884j(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4890h(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4891h(i9, C3984ha.m5296a(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4898f(i9, C3984ha.m5284b(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i5 = i6;
                        if (m5523a((C3947fr<T>) t, i7)) {
                            i5 = i6 + zzes.m4909c(i9, (AbstractC3943fn) C3984ha.m5267f(t, j), m5532a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i5 = i6 + C3962gf.m5373i(i9, m5517a(t, j), false);
                        break;
                    case 19:
                        i5 = i6 + C3962gf.m5376h(i9, m5517a(t, j), false);
                        break;
                    case 20:
                        i5 = i6 + C3962gf.m5411a(i9, (List<Long>) m5517a(t, j), false);
                        break;
                    case 21:
                        i5 = i6 + C3962gf.m5397b(i9, (List<Long>) m5517a(t, j), false);
                        break;
                    case 22:
                        i5 = i6 + C3962gf.m5385e(i9, m5517a(t, j), false);
                        break;
                    case 23:
                        i5 = i6 + C3962gf.m5373i(i9, m5517a(t, j), false);
                        break;
                    case 24:
                        i5 = i6 + C3962gf.m5376h(i9, m5517a(t, j), false);
                        break;
                    case 25:
                        i5 = i6 + C3962gf.m5370j(i9, m5517a(t, j), false);
                        break;
                    case 26:
                        i5 = i6 + C3962gf.m5417a(i9, m5517a(t, j));
                        break;
                    case 27:
                        i5 = i6 + C3962gf.m5415a(i9, m5517a(t, j), m5532a(i7));
                        break;
                    case 28:
                        i5 = i6 + C3962gf.m5402b(i9, m5517a(t, j));
                        break;
                    case 29:
                        i5 = i6 + C3962gf.m5382f(i9, m5517a(t, j), false);
                        break;
                    case 30:
                        i5 = i6 + C3962gf.m5389d(i9, m5517a(t, j), false);
                        break;
                    case 31:
                        i5 = i6 + C3962gf.m5376h(i9, m5517a(t, j), false);
                        break;
                    case 32:
                        i5 = i6 + C3962gf.m5373i(i9, m5517a(t, j), false);
                        break;
                    case 33:
                        i5 = i6 + C3962gf.m5379g(i9, m5517a(t, j), false);
                        break;
                    case 34:
                        i5 = i6 + C3962gf.m5393c(i9, m5517a(t, j), false);
                        break;
                    case 35:
                        int m5372i = C3962gf.m5372i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5372i <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5372i);
                            }
                            i5 = i6 + m5372i + zzes.m4903e(i9) + zzes.m4896g(m5372i);
                            break;
                        }
                    case 36:
                        int m5375h = C3962gf.m5375h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5375h <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5375h);
                            }
                            i5 = i6 + m5375h + zzes.m4903e(i9) + zzes.m4896g(m5375h);
                            break;
                        }
                    case 37:
                        int m5405a = C3962gf.m5405a((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5405a <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5405a);
                            }
                            i5 = i6 + m5405a + zzes.m4903e(i9) + zzes.m4896g(m5405a);
                            break;
                        }
                    case 38:
                        int m5396b = C3962gf.m5396b((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5396b <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5396b);
                            }
                            i5 = i6 + m5396b + zzes.m4903e(i9) + zzes.m4896g(m5396b);
                            break;
                        }
                    case 39:
                        int m5384e = C3962gf.m5384e((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5384e <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5384e);
                            }
                            i5 = i6 + m5384e + zzes.m4903e(i9) + zzes.m4896g(m5384e);
                            break;
                        }
                    case 40:
                        int m5372i2 = C3962gf.m5372i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5372i2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5372i2);
                            }
                            i5 = i6 + m5372i2 + zzes.m4903e(i9) + zzes.m4896g(m5372i2);
                            break;
                        }
                    case 41:
                        int m5375h2 = C3962gf.m5375h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5375h2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5375h2);
                            }
                            i5 = i6 + m5375h2 + zzes.m4903e(i9) + zzes.m4896g(m5375h2);
                            break;
                        }
                    case 42:
                        int m5369j = C3962gf.m5369j((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5369j <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5369j);
                            }
                            i5 = i6 + m5369j + zzes.m4903e(i9) + zzes.m4896g(m5369j);
                            break;
                        }
                    case 43:
                        int m5381f = C3962gf.m5381f((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5381f <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5381f);
                            }
                            i5 = i6 + m5381f + zzes.m4903e(i9) + zzes.m4896g(m5381f);
                            break;
                        }
                    case 44:
                        int m5388d = C3962gf.m5388d((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5388d <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5388d);
                            }
                            i5 = i6 + m5388d + zzes.m4903e(i9) + zzes.m4896g(m5388d);
                            break;
                        }
                    case 45:
                        int m5375h3 = C3962gf.m5375h((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5375h3 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5375h3);
                            }
                            i5 = i6 + m5375h3 + zzes.m4903e(i9) + zzes.m4896g(m5375h3);
                            break;
                        }
                    case 46:
                        int m5372i3 = C3962gf.m5372i((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5372i3 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5372i3);
                            }
                            i5 = i6 + m5372i3 + zzes.m4903e(i9) + zzes.m4896g(m5372i3);
                            break;
                        }
                    case 47:
                        int m5378g = C3962gf.m5378g((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5378g <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5378g);
                            }
                            i5 = i6 + m5378g + zzes.m4903e(i9) + zzes.m4896g(m5378g);
                            break;
                        }
                    case 48:
                        int m5392c = C3962gf.m5392c((List) unsafe.getObject(t, j));
                        i5 = i6;
                        if (m5392c <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe.putInt(t, i10, m5392c);
                            }
                            i5 = i6 + m5392c + zzes.m4903e(i9) + zzes.m4896g(m5392c);
                            break;
                        }
                    case 49:
                        i5 = i6 + C3962gf.m5401b(i9, (List<AbstractC3943fn>) m5517a(t, j), m5532a(i7));
                        break;
                    case 50:
                        i5 = i6 + this.f18178s.mo5558a(i9, C3984ha.m5267f(t, j), m5510b(i7));
                        break;
                    case 51:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4926b(i9, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4925b(i9, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4906d(i9, m5496e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4902e(i9, m5496e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4899f(i9, m5499d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4894g(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4887i(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4919b(i9, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            Object m5267f2 = C3984ha.m5267f(t, j);
                            if (m5267f2 instanceof AbstractC3859ct) {
                                i5 = i6 + zzes.m4910c(i9, (AbstractC3859ct) m5267f2);
                                break;
                            } else {
                                i5 = i6 + zzes.m4920b(i9, (String) m5267f2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + C3962gf.m5418a(i9, C3984ha.m5267f(t, j), m5532a(i7));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4910c(i9, (AbstractC3859ct) C3984ha.m5267f(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4895g(i9, m5499d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4882k(i9, m5499d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4884j(i9, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4890h(i9, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4891h(i9, m5499d(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4898f(i9, m5496e(t, j));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i5 = i6;
                        if (m5522a((C3947fr<T>) t, i9, i7)) {
                            i5 = i6 + zzes.m4909c(i9, (AbstractC3943fn) C3984ha.m5267f(t, j), m5532a(i7));
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
            i = m5528a((AbstractC3978gv) this.f18176q, (Object) t) + i6;
        } else {
            int i11 = 0;
            Unsafe unsafe2 = f18161b;
            int i12 = 1048575;
            int i13 = 0;
            int i14 = 0;
            while (i14 < this.f18162c.length) {
                int m5500d2 = m5500d(i14);
                int i15 = this.f18162c[i14];
                int i16 = (267386880 & m5500d2) >>> 20;
                int i17 = 0;
                if (i16 <= 17) {
                    int i18 = this.f18162c[i14 + 2];
                    int i19 = 1048575 & i18;
                    int i20 = i12;
                    if (i19 != i12) {
                        i13 = unsafe2.getInt(t, i19);
                        i20 = i19;
                    }
                    i17 = 1 << (i18 >>> 20);
                    i3 = i18;
                    i2 = i20;
                } else if (!this.f18170k || i16 < EnumC3893dx.DOUBLE_LIST_PACKED.m5658a() || i16 > EnumC3893dx.SINT64_LIST_PACKED.m5658a()) {
                    i2 = i12;
                    i3 = 0;
                } else {
                    i2 = i12;
                    i3 = this.f18162c[i14 + 2] & 1048575;
                }
                long j2 = 1048575 & m5500d2;
                switch (i16) {
                    case 0:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4926b(i15, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4925b(i15, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4906d(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4902e(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4899f(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4894g(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4887i(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4919b(i15, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            Object object = unsafe2.getObject(t, j2);
                            if (object instanceof AbstractC3859ct) {
                                i4 = i11 + zzes.m4910c(i15, (AbstractC3859ct) object);
                                break;
                            } else {
                                i4 = i11 + zzes.m4920b(i15, (String) object);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 9:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + C3962gf.m5418a(i15, unsafe2.getObject(t, j2), m5532a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4910c(i15, (AbstractC3859ct) unsafe2.getObject(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4895g(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4882k(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4884j(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4890h(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4891h(i15, unsafe2.getInt(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4898f(i15, unsafe2.getLong(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i4 = i11;
                        if ((i17 & i13) != 0) {
                            i4 = i11 + zzes.m4909c(i15, (AbstractC3943fn) unsafe2.getObject(t, j2), m5532a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i4 = i11 + C3962gf.m5373i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 19:
                        i4 = i11 + C3962gf.m5376h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 20:
                        i4 = i11 + C3962gf.m5411a(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                        break;
                    case 21:
                        i4 = i11 + C3962gf.m5397b(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                        break;
                    case 22:
                        i4 = i11 + C3962gf.m5385e(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 23:
                        i4 = i11 + C3962gf.m5373i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 24:
                        i4 = i11 + C3962gf.m5376h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 25:
                        i4 = i11 + C3962gf.m5370j(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 26:
                        i4 = i11 + C3962gf.m5417a(i15, (List) unsafe2.getObject(t, j2));
                        break;
                    case 27:
                        i4 = i11 + C3962gf.m5415a(i15, (List<?>) unsafe2.getObject(t, j2), m5532a(i14));
                        break;
                    case 28:
                        i4 = i11 + C3962gf.m5402b(i15, (List) unsafe2.getObject(t, j2));
                        break;
                    case 29:
                        i4 = i11 + C3962gf.m5382f(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 30:
                        i4 = i11 + C3962gf.m5389d(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 31:
                        i4 = i11 + C3962gf.m5376h(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 32:
                        i4 = i11 + C3962gf.m5373i(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 33:
                        i4 = i11 + C3962gf.m5379g(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 34:
                        i4 = i11 + C3962gf.m5393c(i15, (List) unsafe2.getObject(t, j2), false);
                        break;
                    case 35:
                        int m5372i4 = C3962gf.m5372i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5372i4 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5372i4);
                            }
                            i4 = i11 + m5372i4 + zzes.m4903e(i15) + zzes.m4896g(m5372i4);
                            break;
                        }
                    case 36:
                        int m5375h4 = C3962gf.m5375h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5375h4 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5375h4);
                            }
                            i4 = i11 + m5375h4 + zzes.m4903e(i15) + zzes.m4896g(m5375h4);
                            break;
                        }
                    case 37:
                        int m5405a2 = C3962gf.m5405a((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5405a2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5405a2);
                            }
                            i4 = i11 + m5405a2 + zzes.m4903e(i15) + zzes.m4896g(m5405a2);
                            break;
                        }
                    case 38:
                        int m5396b2 = C3962gf.m5396b((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5396b2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5396b2);
                            }
                            i4 = i11 + m5396b2 + zzes.m4903e(i15) + zzes.m4896g(m5396b2);
                            break;
                        }
                    case 39:
                        int m5384e2 = C3962gf.m5384e((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5384e2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5384e2);
                            }
                            i4 = i11 + m5384e2 + zzes.m4903e(i15) + zzes.m4896g(m5384e2);
                            break;
                        }
                    case 40:
                        int m5372i5 = C3962gf.m5372i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5372i5 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5372i5);
                            }
                            i4 = i11 + m5372i5 + zzes.m4903e(i15) + zzes.m4896g(m5372i5);
                            break;
                        }
                    case 41:
                        int m5375h5 = C3962gf.m5375h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5375h5 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5375h5);
                            }
                            i4 = i11 + m5375h5 + zzes.m4903e(i15) + zzes.m4896g(m5375h5);
                            break;
                        }
                    case 42:
                        int m5369j2 = C3962gf.m5369j((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5369j2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5369j2);
                            }
                            i4 = i11 + m5369j2 + zzes.m4903e(i15) + zzes.m4896g(m5369j2);
                            break;
                        }
                    case 43:
                        int m5381f2 = C3962gf.m5381f((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5381f2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5381f2);
                            }
                            i4 = i11 + m5381f2 + zzes.m4903e(i15) + zzes.m4896g(m5381f2);
                            break;
                        }
                    case 44:
                        int m5388d2 = C3962gf.m5388d((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5388d2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5388d2);
                            }
                            i4 = i11 + m5388d2 + zzes.m4903e(i15) + zzes.m4896g(m5388d2);
                            break;
                        }
                    case 45:
                        int m5375h6 = C3962gf.m5375h((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5375h6 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5375h6);
                            }
                            i4 = i11 + m5375h6 + zzes.m4903e(i15) + zzes.m4896g(m5375h6);
                            break;
                        }
                    case 46:
                        int m5372i6 = C3962gf.m5372i((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5372i6 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5372i6);
                            }
                            i4 = i11 + m5372i6 + zzes.m4903e(i15) + zzes.m4896g(m5372i6);
                            break;
                        }
                    case 47:
                        int m5378g2 = C3962gf.m5378g((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5378g2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5378g2);
                            }
                            i4 = i11 + m5378g2 + zzes.m4903e(i15) + zzes.m4896g(m5378g2);
                            break;
                        }
                    case 48:
                        int m5392c2 = C3962gf.m5392c((List) unsafe2.getObject(t, j2));
                        i4 = i11;
                        if (m5392c2 <= 0) {
                            break;
                        } else {
                            if (this.f18170k) {
                                unsafe2.putInt(t, i3, m5392c2);
                            }
                            i4 = i11 + m5392c2 + zzes.m4903e(i15) + zzes.m4896g(m5392c2);
                            break;
                        }
                    case 49:
                        i4 = i11 + C3962gf.m5401b(i15, (List) unsafe2.getObject(t, j2), m5532a(i14));
                        break;
                    case 50:
                        i4 = i11 + this.f18178s.mo5558a(i15, unsafe2.getObject(t, j2), m5510b(i14));
                        break;
                    case 51:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4926b(i15, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4925b(i15, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4906d(i15, m5496e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4902e(i15, m5496e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4899f(i15, m5499d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4894g(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4887i(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4919b(i15, true);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            Object object2 = unsafe2.getObject(t, j2);
                            if (object2 instanceof AbstractC3859ct) {
                                i4 = i11 + zzes.m4910c(i15, (AbstractC3859ct) object2);
                                break;
                            } else {
                                i4 = i11 + zzes.m4920b(i15, (String) object2);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + C3962gf.m5418a(i15, unsafe2.getObject(t, j2), m5532a(i14));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4910c(i15, (AbstractC3859ct) unsafe2.getObject(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4895g(i15, m5499d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4882k(i15, m5499d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4884j(i15, 0);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4890h(i15, 0L);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4891h(i15, m5499d(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4898f(i15, m5496e(t, j2));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i4 = i11;
                        if (m5522a((C3947fr<T>) t, i15, i14)) {
                            i4 = i11 + zzes.m4909c(i15, (AbstractC3943fn) unsafe2.getObject(t, j2), m5532a(i14));
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
            int m5528a = i11 + m5528a((AbstractC3978gv) this.f18176q, (Object) t);
            if (this.f18167h) {
                C3892dw<?> mo5682a = this.f18177r.mo5682a(t);
                int i21 = 0;
                for (int i22 = 0; i22 < mo5682a.f18013a.m5354c(); i22++) {
                    Map.Entry<?, Object> m5356b = mo5682a.f18013a.m5356b(i22);
                    i21 += C3892dw.m5674a((AbstractC3894dy) m5356b.getKey(), m5356b.getValue());
                }
                for (Map.Entry<?, Object> entry : mo5682a.f18013a.m5351d()) {
                    i21 += C3892dw.m5674a((AbstractC3894dy) entry.getKey(), entry.getValue());
                }
                i = m5528a + i21;
            } else {
                i = m5528a;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: b */
    public final void mo5465b(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.f18162c.length; i += 3) {
            int m5500d = m5500d(i);
            long j = 1048575 & m5500d;
            int i2 = this.f18162c[i];
            switch ((m5500d & 267386880) >>> 20) {
                case 0:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5294a(t, j, C3984ha.m5270e(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5293a((Object) t, j, C3984ha.m5274d(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5291a((Object) t, j, C3984ha.m5284b(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5291a((Object) t, j, C3984ha.m5284b(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5291a((Object) t, j, C3984ha.m5284b(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5289a(t, j, C3984ha.m5279c(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5290a(t, j, C3984ha.m5267f(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    m5516a(t, t2, i);
                    break;
                case 10:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5290a(t, j, C3984ha.m5267f(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5291a((Object) t, j, C3984ha.m5284b(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5292a((Object) t, j, C3984ha.m5296a(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m5523a((C3947fr<T>) t2, i)) {
                        C3984ha.m5291a((Object) t, j, C3984ha.m5284b(t2, j));
                        m5508b((C3947fr<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    m5516a(t, t2, i);
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
                    this.f18175p.mo5581a(t, t2, j);
                    break;
                case 50:
                    C3962gf.m5409a(this.f18178s, t, t2, j);
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
                    if (m5522a((C3947fr<T>) t2, i2, i)) {
                        C3984ha.m5290a(t, j, C3984ha.m5267f(t2, j));
                        m5507b((C3947fr<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    m5504b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m5522a((C3947fr<T>) t2, i2, i)) {
                        C3984ha.m5290a(t, j, C3984ha.m5267f(t2, j));
                        m5507b((C3947fr<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    m5504b(t, t2, i);
                    break;
            }
        }
        C3962gf.m5408a(this.f18176q, t, t2);
        if (!this.f18167h) {
            return;
        }
        C3962gf.m5410a(this.f18177r, t, t2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: c */
    public final void mo5464c(T t) {
        for (int i = this.f18172m; i < this.f18173n; i++) {
            long m5500d = m5500d(this.f18171l[i]) & 1048575;
            Object m5267f = C3984ha.m5267f(t, m5500d);
            if (m5267f != null) {
                C3984ha.m5290a(t, m5500d, this.f18178s.mo5553d(m5267f));
            }
        }
        int length = this.f18171l.length;
        for (int i2 = this.f18173n; i2 < length; i2++) {
            this.f18175p.mo5580b(t, this.f18171l[i2]);
        }
        this.f18176q.mo5318d(t);
        if (this.f18167h) {
            this.f18177r.mo5679c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e0 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3960gd
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo5463d(T r8) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3947fr.mo5463d(java.lang.Object):boolean");
    }
}

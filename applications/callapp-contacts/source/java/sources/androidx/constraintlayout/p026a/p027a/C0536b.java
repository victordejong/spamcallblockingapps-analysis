package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0554b;
import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.C0567h;
import androidx.constraintlayout.p026a.p027a.C0541e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/b.class */
public final class C0536b {
    /* renamed from: a */
    public static void m45313a(C0544f c0544f, C0557d c0557d, ArrayList<C0541e> arrayList, int i) {
        int i2;
        int i3;
        C0537c[] c0537cArr;
        int i4;
        int i5;
        boolean z;
        C0541e c0541e;
        boolean z2;
        boolean z3;
        boolean z4;
        C0567h c0567h;
        C0541e c0541e2;
        C0567h c0567h2;
        C0567h c0567h3;
        C0538d c0538d;
        C0541e c0541e3;
        C0567h c0567h4;
        C0567h c0567h5;
        C0538d c0538d2;
        if (i == 0) {
            i3 = c0544f.f2142aO;
            c0537cArr = c0544f.f2145aR;
            i2 = 0;
        } else {
            i3 = c0544f.f2143aP;
            c0537cArr = c0544f.f2144aQ;
            i2 = 2;
        }
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < i3) {
                C0537c c0537c = c0537cArr[i7];
                if (!c0537c.f2028t) {
                    c0537c.m45312a();
                }
                c0537c.f2028t = true;
                if (arrayList == null || (arrayList != null && arrayList.contains(c0537c.f2009a))) {
                    C0541e c0541e4 = c0537c.f2009a;
                    C0541e c0541e5 = c0537c.f2011c;
                    C0541e c0541e6 = c0537c.f2010b;
                    C0541e c0541e7 = c0537c.f2012d;
                    C0541e c0541e8 = c0537c.f2013e;
                    float f = c0537c.f2019k;
                    boolean z5 = c0544f.f2059R[i] == C0541e.EnumC0543a.WRAP_CONTENT;
                    if (i == 0) {
                        z2 = c0541e8.f2104ax == 0;
                        z4 = c0541e8.f2104ax == 1;
                        z3 = false;
                        c0541e = c0541e4;
                        z = c0541e8.f2104ax == 2;
                    } else {
                        z2 = c0541e8.f2105ay == 0;
                        c0541e = c0541e4;
                        z4 = c0541e8.f2105ay == 1;
                        z3 = false;
                        z = c0541e8.f2105ay == 2;
                    }
                    while (!z3) {
                        C0538d c0538d3 = c0541e.f2057P[i2];
                        int i8 = z ? 1 : 4;
                        int m45301e = c0538d3.m45301e();
                        boolean z6 = c0541e.f2059R[i] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2122q[i] == 0;
                        int i9 = m45301e;
                        if (c0538d3.f2036f != null) {
                            i9 = m45301e;
                            if (c0541e != c0541e4) {
                                i9 = m45301e + c0538d3.f2036f.m45301e();
                            }
                        }
                        if (z && c0541e != c0541e4 && c0541e != c0541e6) {
                            i8 = 8;
                        }
                        if (c0538d3.f2036f != null) {
                            if (c0541e == c0541e6) {
                                c0557d.m45140a(c0538d3.f2039i, c0538d3.f2036f.f2039i, i9, 6);
                            } else {
                                c0557d.m45140a(c0538d3.f2039i, c0538d3.f2036f.f2039i, i9, 8);
                            }
                            if (z6 && !z) {
                                i8 = 5;
                            }
                            c0557d.m45131c(c0538d3.f2039i, c0538d3.f2036f.f2039i, i9, i8);
                        }
                        if (z5) {
                            if (c0541e.f2091ak != 8 && c0541e.f2059R[i] == C0541e.EnumC0543a.MATCH_CONSTRAINT) {
                                c0557d.m45140a(c0541e.f2057P[i2 + 1].f2039i, c0541e.f2057P[i2].f2039i, 0, 5);
                            }
                            c0557d.m45140a(c0541e.f2057P[i2].f2039i, c0544f.f2057P[i2].f2039i, 0, 8);
                        }
                        C0538d c0538d4 = c0541e.f2057P[i2 + 1].f2036f;
                        C0541e c0541e9 = null;
                        if (c0538d4 != null) {
                            C0541e c0541e10 = c0538d4.f2034d;
                            c0541e9 = null;
                            if (c0541e10.f2057P[i2].f2036f != null) {
                                c0541e9 = c0541e10.f2057P[i2].f2036f.f2034d != c0541e ? null : c0541e10;
                            }
                        }
                        if (c0541e9 != null) {
                            c0541e = c0541e9;
                        } else {
                            z3 = true;
                        }
                    }
                    int i10 = i3;
                    C0537c[] c0537cArr2 = c0537cArr;
                    if (c0541e7 != null) {
                        int i11 = i2 + 1;
                        if (c0541e5.f2057P[i11].f2036f != null) {
                            C0538d c0538d5 = c0541e7.f2057P[i11];
                            if ((c0541e7.f2059R[i] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e7.f2122q[i] == 0) && !z && c0538d5.f2036f.f2034d == c0544f) {
                                c0557d.m45131c(c0538d5.f2039i, c0538d5.f2036f.f2039i, -c0538d5.m45301e(), 5);
                            } else if (z && c0538d5.f2036f.f2034d == c0544f) {
                                c0557d.m45131c(c0538d5.f2039i, c0538d5.f2036f.f2039i, -c0538d5.m45301e(), 4);
                            }
                            c0557d.m45134b(c0538d5.f2039i, c0541e5.f2057P[i11].f2036f.f2039i, -c0538d5.m45301e(), 6);
                        }
                    }
                    if (z5) {
                        int i12 = i2 + 1;
                        c0557d.m45140a(c0544f.f2057P[i12].f2039i, c0541e5.f2057P[i12].f2039i, c0541e5.f2057P[i12].m45301e(), 8);
                    }
                    ArrayList<C0541e> arrayList2 = c0537c.f2016h;
                    C0537c c0537c2 = c0537c;
                    if (arrayList2 != null) {
                        int size = arrayList2.size();
                        c0537c2 = c0537c;
                        if (size > 1) {
                            float f2 = f;
                            if (c0537c.f2024p) {
                                f2 = f;
                                if (!c0537c.f2026r) {
                                    f2 = c0537c.f2018j;
                                }
                            }
                            C0541e c0541e11 = null;
                            int i13 = 0;
                            float f3 = 0.0f;
                            while (true) {
                                c0537c2 = c0537c;
                                if (i13 >= size) {
                                    break;
                                }
                                C0541e c0541e12 = arrayList2.get(i13);
                                float f4 = c0541e12.f2070aB[i];
                                if (f4 < BitmapDescriptorFactory.HUE_RED) {
                                    if (c0537c.f2026r) {
                                        c0557d.m45131c(c0541e12.f2057P[i2 + 1].f2039i, c0541e12.f2057P[i2].f2039i, 0, 4);
                                        f4 = f3;
                                        i13++;
                                        f3 = f4;
                                    } else {
                                        f4 = 1.0f;
                                    }
                                }
                                int i14 = (f4 > BitmapDescriptorFactory.HUE_RED ? 1 : (f4 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                                if (i14 == 0) {
                                    c0557d.m45131c(c0541e12.f2057P[i2 + 1].f2039i, c0541e12.f2057P[i2].f2039i, 0, 8);
                                    f4 = f3;
                                    i13++;
                                    f3 = f4;
                                } else {
                                    if (c0541e11 != null) {
                                        C0567h c0567h6 = c0541e11.f2057P[i2].f2039i;
                                        int i15 = i2 + 1;
                                        C0567h c0567h7 = c0541e11.f2057P[i15].f2039i;
                                        C0567h c0567h8 = c0541e12.f2057P[i2].f2039i;
                                        C0567h c0567h9 = c0541e12.f2057P[i15].f2039i;
                                        C0554b m45132c = c0557d.m45132c();
                                        m45132c.f2233b = BitmapDescriptorFactory.HUE_RED;
                                        if (f2 == BitmapDescriptorFactory.HUE_RED || f3 == f4) {
                                            m45132c.f2236e.mo45100a(c0567h6, 1.0f);
                                            m45132c.f2236e.mo45100a(c0567h7, -1.0f);
                                            m45132c.f2236e.mo45100a(c0567h9, 1.0f);
                                            m45132c.f2236e.mo45100a(c0567h8, -1.0f);
                                        } else if (f3 == BitmapDescriptorFactory.HUE_RED) {
                                            m45132c.f2236e.mo45100a(c0567h6, 1.0f);
                                            m45132c.f2236e.mo45100a(c0567h7, -1.0f);
                                        } else if (i14 == 0) {
                                            m45132c.f2236e.mo45100a(c0567h8, 1.0f);
                                            m45132c.f2236e.mo45100a(c0567h9, -1.0f);
                                        } else {
                                            float f5 = (f3 / f2) / (f4 / f2);
                                            m45132c.f2236e.mo45100a(c0567h6, 1.0f);
                                            m45132c.f2236e.mo45100a(c0567h7, -1.0f);
                                            m45132c.f2236e.mo45100a(c0567h9, f5);
                                            m45132c.f2236e.mo45100a(c0567h8, -f5);
                                        }
                                        c0557d.m45147a(m45132c);
                                    }
                                    c0541e11 = c0541e12;
                                    i13++;
                                    f3 = f4;
                                }
                            }
                        }
                    }
                    if (c0541e6 != null && (c0541e6 == c0541e7 || z)) {
                        C0538d c0538d6 = c0541e4.f2057P[i2];
                        int i16 = i2 + 1;
                        C0538d c0538d7 = c0541e5.f2057P[i16];
                        C0567h c0567h10 = c0538d6.f2036f != null ? c0538d6.f2036f.f2039i : null;
                        C0567h c0567h11 = c0538d7.f2036f != null ? c0538d7.f2036f.f2039i : null;
                        C0538d c0538d8 = c0541e6.f2057P[i2];
                        C0538d c0538d9 = c0541e7.f2057P[i16];
                        if (c0567h10 != null && c0567h11 != null) {
                            c0557d.m45141a(c0538d8.f2039i, c0567h10, c0538d8.m45301e(), i == 0 ? c0541e8.f2088ah : c0541e8.f2089ai, c0567h11, c0538d9.f2039i, c0538d9.m45301e(), 7);
                        }
                    } else if (z2 && c0541e6 != null) {
                        boolean z7 = c0537c2.f2018j > 0 && c0537c2.f2017i == c0537c2.f2018j;
                        C0541e c0541e13 = c0541e6;
                        C0541e c0541e14 = c0541e13;
                        while (c0541e14 != null) {
                            C0541e c0541e15 = c0541e14.f2072aD[i];
                            while (true) {
                                c0541e3 = c0541e15;
                                if (c0541e3 == null || c0541e3.f2091ak != 8) {
                                    break;
                                }
                                c0541e15 = c0541e3.f2072aD[i];
                            }
                            if (c0541e3 != null || c0541e14 == c0541e7) {
                                C0538d c0538d10 = c0541e14.f2057P[i2];
                                C0567h c0567h12 = c0538d10.f2039i;
                                C0567h c0567h13 = c0538d10.f2036f != null ? c0538d10.f2036f.f2039i : null;
                                if (c0541e13 != c0541e14) {
                                    c0567h4 = c0541e13.f2057P[i2 + 1].f2039i;
                                } else {
                                    c0567h4 = c0567h13;
                                    if (c0541e14 == c0541e6) {
                                        c0567h4 = c0567h13;
                                        if (c0541e13 == c0541e14) {
                                            c0567h4 = c0541e4.f2057P[i2].f2036f != null ? c0541e4.f2057P[i2].f2036f.f2039i : null;
                                        }
                                    }
                                }
                                int m45301e2 = c0538d10.m45301e();
                                int i17 = i2 + 1;
                                int m45301e3 = c0541e14.f2057P[i17].m45301e();
                                if (c0541e3 != null) {
                                    c0538d2 = c0541e3.f2057P[i2];
                                    c0567h5 = c0538d2.f2039i;
                                } else {
                                    c0538d2 = c0541e5.f2057P[i17].f2036f;
                                    c0567h5 = c0538d2 != null ? c0538d2.f2039i : null;
                                }
                                C0567h c0567h14 = c0541e14.f2057P[i17].f2039i;
                                int i18 = m45301e3;
                                if (c0538d2 != null) {
                                    i18 = m45301e3 + c0538d2.m45301e();
                                }
                                int i19 = m45301e2;
                                if (c0541e13 != null) {
                                    i19 = m45301e2 + c0541e13.f2057P[i17].m45301e();
                                }
                                if (c0567h12 != null && c0567h4 != null && c0567h5 != null && c0567h14 != null) {
                                    if (c0541e14 == c0541e6) {
                                        i19 = c0541e6.f2057P[i2].m45301e();
                                    }
                                    if (c0541e14 == c0541e7) {
                                        i18 = c0541e7.f2057P[i17].m45301e();
                                    }
                                    c0557d.m45141a(c0567h12, c0567h4, i19, 0.5f, c0567h5, c0567h14, i18, z7 ? 8 : 5);
                                }
                            }
                            if (c0541e14.f2091ak != 8) {
                                c0541e13 = c0541e14;
                            }
                            c0541e14 = c0541e3;
                        }
                    } else if (z4 && c0541e6 != null) {
                        boolean z8 = c0537c2.f2018j > 0 && c0537c2.f2017i == c0537c2.f2018j;
                        C0541e c0541e16 = c0541e6;
                        C0541e c0541e17 = c0541e16;
                        while (c0541e16 != null) {
                            C0541e c0541e18 = c0541e16.f2072aD[i];
                            while (true) {
                                c0541e2 = c0541e18;
                                if (c0541e2 == null || c0541e2.f2091ak != 8) {
                                    break;
                                }
                                c0541e18 = c0541e2.f2072aD[i];
                            }
                            if (c0541e16 != c0541e6 && c0541e16 != c0541e7 && c0541e2 != null) {
                                if (c0541e2 == c0541e7) {
                                    c0541e2 = null;
                                }
                                C0538d c0538d11 = c0541e16.f2057P[i2];
                                C0567h c0567h15 = c0538d11.f2039i;
                                int i20 = i2 + 1;
                                C0567h c0567h16 = c0541e17.f2057P[i20].f2039i;
                                int m45301e4 = c0538d11.m45301e();
                                int m45301e5 = c0541e16.f2057P[i20].m45301e();
                                if (c0541e2 != null) {
                                    c0538d = c0541e2.f2057P[i2];
                                    c0567h2 = c0538d.f2039i;
                                    c0567h3 = c0538d.f2036f != null ? c0538d.f2036f.f2039i : null;
                                } else {
                                    C0538d c0538d12 = c0541e7.f2057P[i2];
                                    C0567h c0567h17 = c0538d12 != null ? c0538d12.f2039i : null;
                                    c0567h3 = c0541e16.f2057P[i20].f2039i;
                                    c0567h2 = c0567h17;
                                    c0538d = c0538d12;
                                }
                                int i21 = m45301e5;
                                if (c0538d != null) {
                                    i21 = m45301e5 + c0538d.m45301e();
                                }
                                int i22 = m45301e4;
                                if (c0541e17 != null) {
                                    i22 = m45301e4 + c0541e17.f2057P[i20].m45301e();
                                }
                                int i23 = z8 ? 8 : 4;
                                if (c0567h15 != null && c0567h16 != null && c0567h2 != null && c0567h3 != null) {
                                    c0557d.m45141a(c0567h15, c0567h16, i22, 0.5f, c0567h2, c0567h3, i21, i23);
                                }
                            }
                            if (c0541e16.f2091ak != 8) {
                                c0541e17 = c0541e16;
                            }
                            c0541e16 = c0541e2;
                        }
                        C0538d c0538d13 = c0541e6.f2057P[i2];
                        C0538d c0538d14 = c0541e4.f2057P[i2].f2036f;
                        C0538d[] c0538dArr = c0541e7.f2057P;
                        int i24 = i2 + 1;
                        C0538d c0538d15 = c0538dArr[i24];
                        C0538d c0538d16 = c0541e5.f2057P[i24].f2036f;
                        if (c0538d14 != null) {
                            if (c0541e6 != c0541e7) {
                                c0557d.m45131c(c0538d13.f2039i, c0538d14.f2039i, c0538d13.m45301e(), 5);
                            } else if (c0538d16 != null) {
                                c0557d.m45141a(c0538d13.f2039i, c0538d14.f2039i, c0538d13.m45301e(), 0.5f, c0538d15.f2039i, c0538d16.f2039i, c0538d15.m45301e(), 5);
                            }
                        }
                        if (c0538d16 != null && c0541e6 != c0541e7) {
                            c0557d.m45131c(c0538d15.f2039i, c0538d16.f2039i, -c0538d15.m45301e(), 5);
                        }
                    }
                    if (!z2) {
                        i5 = i7;
                        c0537cArr = c0537cArr2;
                        i4 = i10;
                        if (!z4) {
                        }
                    }
                    i5 = i7;
                    c0537cArr = c0537cArr2;
                    i4 = i10;
                    if (c0541e6 != null) {
                        i5 = i7;
                        c0537cArr = c0537cArr2;
                        i4 = i10;
                        if (c0541e6 != c0541e7) {
                            C0538d c0538d17 = c0541e6.f2057P[i2];
                            C0538d[] c0538dArr2 = c0541e7.f2057P;
                            int i25 = i2 + 1;
                            C0538d c0538d18 = c0538dArr2[i25];
                            C0567h c0567h18 = c0538d17.f2036f != null ? c0538d17.f2036f.f2039i : null;
                            C0567h c0567h19 = c0538d18.f2036f != null ? c0538d18.f2036f.f2039i : null;
                            if (c0541e5 != c0541e7) {
                                C0538d c0538d19 = c0541e5.f2057P[i25];
                                C0567h c0567h20 = null;
                                if (c0538d19.f2036f != null) {
                                    c0567h20 = c0538d19.f2036f.f2039i;
                                }
                                c0567h = c0567h20;
                            } else {
                                c0567h = c0567h19;
                            }
                            if (c0541e6 == c0541e7) {
                                c0538d17 = c0541e6.f2057P[i2];
                                c0538d18 = c0541e6.f2057P[i25];
                            }
                            i5 = i7;
                            c0537cArr = c0537cArr2;
                            i4 = i10;
                            if (c0567h18 != null) {
                                i5 = i7;
                                c0537cArr = c0537cArr2;
                                i4 = i10;
                                if (c0567h != null) {
                                    int m45301e6 = c0538d17.m45301e();
                                    if (c0541e7 != null) {
                                        c0541e5 = c0541e7;
                                    }
                                    c0557d.m45141a(c0538d17.f2039i, c0567h18, m45301e6, 0.5f, c0567h, c0538d18.f2039i, c0541e5.f2057P[i25].m45301e(), 5);
                                    i4 = i10;
                                    c0537cArr = c0537cArr2;
                                    i5 = i7;
                                }
                            }
                        }
                    }
                } else {
                    i4 = i3;
                    i5 = i7;
                }
                int i26 = i5 + 1;
                i3 = i4;
                i6 = i26;
            } else {
                return;
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsf.class */
public final class dsf {

    /* renamed from: a */
    public static final byte[] f15547a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final float[] f15548b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    private static final Object f15549c = new Object();

    /* renamed from: d */
    private static int[] f15550d = new int[10];

    /* renamed from: a */
    public static dsi m8753a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        dsj dsjVar = new dsj(bArr, i, i2);
        dsjVar.m8747a(8);
        int m8745b = dsjVar.m8745b(8);
        dsjVar.m8747a(16);
        int m8746b = dsjVar.m8746b();
        int i8 = 1;
        boolean z = false;
        if (m8745b == 100 || m8745b == 110 || m8745b == 122 || m8745b == 244 || m8745b == 44 || m8745b == 83 || m8745b == 86 || m8745b == 118 || m8745b == 128 || m8745b == 138) {
            int m8746b2 = dsjVar.m8746b();
            if (m8746b2 == 3) {
                z = dsjVar.m8748a();
            }
            dsjVar.m8746b();
            dsjVar.m8746b();
            dsjVar.m8747a(1);
            if (dsjVar.m8748a()) {
                int i9 = m8746b2 != 3 ? 8 : 12;
                int i10 = 0;
                while (i10 < i9) {
                    if (dsjVar.m8748a()) {
                        int i11 = i10 < 6 ? 16 : 64;
                        int i12 = 8;
                        int i13 = 8;
                        int i14 = 0;
                        while (i14 < i11) {
                            int i15 = i13;
                            if (i13 != 0) {
                                i15 = ((dsjVar.m8744c() + i12) + 256) % 256;
                            }
                            if (i15 != 0) {
                                i12 = i15;
                            }
                            i14++;
                            i13 = i15;
                        }
                    }
                    i10++;
                }
            }
            i8 = m8746b2;
        } else {
            z = false;
        }
        int m8746b3 = dsjVar.m8746b();
        int m8746b4 = dsjVar.m8746b();
        boolean z2 = false;
        if (m8746b4 == 0) {
            i3 = dsjVar.m8746b() + 4;
        } else {
            i3 = 0;
            if (m8746b4 == 1) {
                boolean m8748a = dsjVar.m8748a();
                dsjVar.m8744c();
                dsjVar.m8744c();
                long m8746b5 = dsjVar.m8746b();
                int i16 = 0;
                while (true) {
                    i3 = 0;
                    z2 = m8748a;
                    if (i16 >= m8746b5) {
                        break;
                    }
                    dsjVar.m8746b();
                    i16++;
                }
            }
        }
        dsjVar.m8746b();
        dsjVar.m8747a(1);
        int m8746b6 = dsjVar.m8746b();
        int m8746b7 = dsjVar.m8746b();
        boolean m8748a2 = dsjVar.m8748a();
        int i17 = m8748a2 ? 1 : 0;
        if (!m8748a2) {
            dsjVar.m8747a(1);
        }
        dsjVar.m8747a(1);
        int i18 = (m8746b6 + 1) << 4;
        int i19 = ((2 - i17) * (m8746b7 + 1)) << 4;
        if (dsjVar.m8748a()) {
            int m8746b8 = dsjVar.m8746b();
            int m8746b9 = dsjVar.m8746b();
            int m8746b10 = dsjVar.m8746b();
            int m8746b11 = dsjVar.m8746b();
            if (i8 == 0) {
                i6 = 1;
                i7 = 2 - (m8748a2 ? 1 : 0);
            } else {
                int i20 = i8 == 3 ? 1 : 2;
                int i21 = (2 - (m8748a2 ? 1 : 0)) * (i8 == 1 ? 2 : 1);
                i6 = i20;
                i7 = i21;
            }
            i5 = i18 - (i6 * (m8746b8 + m8746b9));
            i4 = i19 - (i7 * (m8746b10 + m8746b11));
        } else {
            i4 = i19;
            i5 = i18;
        }
        if (dsjVar.m8748a() && dsjVar.m8748a()) {
            int m8745b2 = dsjVar.m8745b(8);
            if (m8745b2 == 255) {
                int m8745b3 = dsjVar.m8745b(16);
                int m8745b4 = dsjVar.m8745b(16);
                f = 1.0f;
                if (m8745b3 != 0) {
                    f = 1.0f;
                    if (m8745b4 != 0) {
                        f = m8745b3 / m8745b4;
                    }
                }
            } else if (m8745b2 < f15548b.length) {
                f = f15548b[m8745b2];
            } else {
                Log.w("NalUnitUtil", new StringBuilder(46).append("Unexpected aspect_ratio_idc value: ").append(m8745b2).toString());
            }
            return new dsi(m8746b, i5, i4, f, z, m8748a2, m8746b3 + 4, m8746b4, i3, z2);
        }
        f = 1.0f;
        return new dsi(m8746b, i5, i4, f, z, m8748a2, m8746b3 + 4, m8746b4, i3, z2);
    }

    /* renamed from: a */
    public static void m8754a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int i2 = 0;
        for (int i3 = 0; i3 + 1 < position; i3++) {
            int i4 = byteBuffer.get(i3) & 255;
            if (i2 == 3) {
                i = i2;
                if (i4 == 1) {
                    i = i2;
                    if ((byteBuffer.get(i3 + 1) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i3 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                }
            } else {
                i = i2;
                if (i4 == 0) {
                    i = i2 + 1;
                }
            }
            i2 = i;
            if (i4 != 0) {
                i2 = 0;
            }
        }
        byteBuffer.clear();
    }
}

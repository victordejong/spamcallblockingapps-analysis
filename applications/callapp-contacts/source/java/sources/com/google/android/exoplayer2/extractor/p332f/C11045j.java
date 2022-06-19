package com.google.android.exoplayer2.extractor.p332f;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.f.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/j.class */
final class C11045j {

    /* renamed from: a */
    private static final int[] f35926a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private C11045j() {
    }

    /* renamed from: a */
    private static boolean m21601a(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : f35926a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m21600a(AbstractC11121i abstractC11121i) throws IOException {
        return m21598a(abstractC11121i, true, false);
    }

    /* renamed from: a */
    public static boolean m21599a(AbstractC11121i abstractC11121i, boolean z) throws IOException {
        return m21598a(abstractC11121i, false, z);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: a */
    private static boolean m21598a(AbstractC11121i abstractC11121i, boolean z, boolean z2) throws IOException {
        boolean z3;
        char c;
        boolean z4;
        ?? mo21395d = abstractC11121i.mo21395d();
        int i = (mo21395d > (-1L) ? 1 : (mo21395d == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = mo21395d > PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM ? (char) 4096 : mo21395d;
        }
        int i2 = c2;
        C11628u c11628u = new C11628u(64);
        int i3 = 0;
        boolean z5 = false;
        while (i3 < i2) {
            c11628u.m19811a(8);
            if (!abstractC11121i.mo21399b(c11628u.f38733a, 0, 8, true)) {
                break;
            }
            ?? m19794h = c11628u.m19794h();
            int m19792j = c11628u.m19792j();
            int i4 = 16;
            if (m19794h == 1) {
                abstractC11121i.mo21394d(c11628u.f38733a, 8, 8);
                c11628u.m19803c(16);
                c = c11628u.m19790l();
            } else {
                c = m19794h;
                if (m19794h == 0) {
                    long mo21395d2 = abstractC11121i.mo21395d();
                    c = m19794h;
                    if (mo21395d2 != -1) {
                        c = (mo21395d2 - abstractC11121i.mo21402b()) + 8;
                    }
                }
                i4 = 8;
            }
            long j = i4;
            if (c >= j) {
                int i5 = i3 + i4;
                if (m19792j != 1836019574) {
                    if (m19792j != 1836019558 && m19792j != 1836475768) {
                        if ((i5 + c) - j >= i2) {
                            break;
                        }
                        int i6 = (int) (c - j);
                        int i7 = i5 + i6;
                        if (m19792j != 1718909296) {
                            z4 = z5;
                            if (i6 != 0) {
                                abstractC11121i.mo21397c(i6);
                                z4 = z5;
                            }
                        } else if (i6 < 8) {
                            return false;
                        } else {
                            c11628u.m19811a(i6);
                            abstractC11121i.mo21394d(c11628u.f38733a, 0, i6);
                            int i8 = i6 / 4;
                            int i9 = 0;
                            while (true) {
                                if (i9 >= i8) {
                                    break;
                                }
                                if (i9 == 1) {
                                    c11628u.m19799e(4);
                                } else if (m21601a(c11628u.m19792j(), z2)) {
                                    z5 = true;
                                    break;
                                }
                                i9++;
                            }
                            z4 = z5;
                            if (!z5) {
                                return false;
                            }
                        }
                        i3 = i7;
                        z5 = z4;
                    } else {
                        z3 = true;
                        break;
                    }
                } else {
                    int i10 = i2 + c;
                    int i11 = i10;
                    if (i != 0) {
                        i11 = i10;
                        if (i10 > mo21395d) {
                            i11 = (int) mo21395d;
                        }
                    }
                    i2 = i11;
                    i3 = i5;
                }
            } else {
                return false;
            }
        }
        z3 = false;
        return z5 && z == z3;
    }
}

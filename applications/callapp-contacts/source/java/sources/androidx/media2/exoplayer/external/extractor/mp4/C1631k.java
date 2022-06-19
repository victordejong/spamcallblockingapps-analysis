package androidx.media2.exoplayer.external.extractor.mp4;

import android.support.p008v4.media.session.PlaybackStateCompat;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/k.class */
final class C1631k {

    /* renamed from: a */
    private static final int[] f6456a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153};

    private C1631k() {
    }

    /* renamed from: a */
    private static boolean m42517a(int i) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        for (int i2 : f6456a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m42516a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return m42515a(abstractC1600h, true);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    private static boolean m42515a(AbstractC1600h abstractC1600h, boolean z) throws IOException, InterruptedException {
        boolean z2;
        char c;
        boolean z3;
        boolean z4;
        ?? mo42600d = abstractC1600h.mo42600d();
        int i = (mo42600d > (-1L) ? 1 : (mo42600d == (-1L) ? 0 : -1));
        char c2 = 4096;
        if (i != 0) {
            c2 = mo42600d > PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM ? (char) 4096 : mo42600d;
        }
        int i2 = c2;
        C2018p c2018p = new C2018p(64);
        int i3 = 0;
        boolean z5 = false;
        while (i3 < i2) {
            c2018p.m41541a(8);
            abstractC1600h.mo42601c(c2018p.f8131a, 0, 8);
            ?? m41526g = c2018p.m41526g();
            int m41524i = c2018p.m41524i();
            int i4 = 16;
            if (m41526g == 1) {
                abstractC1600h.mo42601c(c2018p.f8131a, 8, 8);
                c2018p.m41535b(16);
                c = c2018p.m41522k();
            } else {
                c = m41526g;
                if (m41526g == 0) {
                    long mo42600d2 = abstractC1600h.mo42600d();
                    c = m41526g;
                    if (mo42600d2 != -1) {
                        c = (mo42600d2 - abstractC1600h.mo42607b()) + 8;
                    }
                }
                i4 = 8;
            }
            if (i != 0 && i3 + c > mo42600d) {
                return false;
            }
            long j = i4;
            if (c >= j) {
                int i5 = i3 + i4;
                if (m41524i != 1836019574) {
                    if (m41524i != 1836019558 && m41524i != 1836475768) {
                        if ((i5 + c) - j >= i2) {
                            break;
                        }
                        int i6 = (int) (c - j);
                        int i7 = i5 + i6;
                        if (m41524i != 1718909296) {
                            z3 = z5;
                            if (i6 != 0) {
                                abstractC1600h.mo42602c(i6);
                                z3 = z5;
                            }
                        } else if (i6 < 8) {
                            return false;
                        } else {
                            c2018p.m41541a(i6);
                            abstractC1600h.mo42601c(c2018p.f8131a, 0, i6);
                            int i8 = i6 / 4;
                            int i9 = 0;
                            while (true) {
                                z4 = z5;
                                if (i9 >= i8) {
                                    break;
                                }
                                if (i9 == 1) {
                                    c2018p.m41531d(4);
                                } else if (m42517a(c2018p.m41524i())) {
                                    z4 = true;
                                    break;
                                }
                                i9++;
                            }
                            z3 = z4;
                            if (!z4) {
                                return false;
                            }
                        }
                        i3 = i7;
                        z5 = z3;
                    } else {
                        z2 = true;
                        break;
                    }
                } else {
                    int i10 = i2 + c;
                    int i11 = i10;
                    if (i != 0) {
                        i11 = i10;
                        if (i10 > mo42600d) {
                            i11 = (int) mo42600d;
                        }
                    }
                    i2 = i11;
                    i3 = i5;
                }
            } else {
                return false;
            }
        }
        z2 = false;
        return z5 && z == z2;
    }

    /* renamed from: b */
    public static boolean m42514b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return m42515a(abstractC1600h, false);
    }
}

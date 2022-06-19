package com.google.zxing.p170a.p171a;

import com.google.zxing.common.C5116a;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.google.zxing.a.a.d */
/* loaded from: classes-dex2jar.jar:com/google/zxing/a/a/d.class */
public final class C5074d {

    /* renamed from: a */
    static final String[] f21510a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: b */
    static final int[][] f21511b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: c */
    static final int[][] f21512c;

    /* renamed from: d */
    private static final int[][] f21513d;

    /* renamed from: e */
    private final byte[] f21514e;

    /* JADX WARN: Type inference failed for: r0v3, types: [int[], int[][]] */
    static {
        int[][] iArr = new int[5][256];
        f21513d = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f21513d[0][i] = (i - 65) + 2;
        }
        f21513d[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f21513d[1][i2] = (i2 - 97) + 2;
        }
        f21513d[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f21513d[2][i3] = (i3 - 48) + 2;
        }
        f21513d[2][44] = 12;
        f21513d[2][46] = 13;
        for (int i4 = 0; i4 < 28; i4++) {
            f21513d[3][new int[]{0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127}[i4]] = i4;
        }
        int[] iArr2 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr2[i5] > 0) {
                f21513d[4][iArr2[i5]] = i5;
            }
        }
        int[][] iArr3 = new int[6][6];
        f21512c = iArr3;
        for (int[] iArr4 : iArr3) {
            Arrays.fill(iArr4, -1);
        }
        f21512c[0][4] = 0;
        f21512c[1][4] = 0;
        f21512c[1][0] = 28;
        f21512c[3][4] = 0;
        f21512c[2][4] = 0;
        f21512c[2][0] = 15;
    }

    public C5074d(byte[] bArr) {
        this.f21514e = bArr;
    }

    /* renamed from: a */
    private static Collection<C5077f> m1585a(Iterable<C5077f> iterable) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        for (C5077f c5077f : iterable) {
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                C5077f c5077f2 = (C5077f) it.next();
                if (c5077f2.m1578a(c5077f)) {
                    z = false;
                    break;
                } else if (c5077f.m1578a(c5077f2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(c5077f);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    private Collection<C5077f> m1584a(Iterable<C5077f> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        for (C5077f c5077f : iterable) {
            m1586a(c5077f, i, linkedList);
        }
        return m1585a(linkedList);
    }

    /* renamed from: a */
    private static Collection<C5077f> m1583a(Iterable<C5077f> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (C5077f c5077f : iterable) {
            m1587a(c5077f, i, i2, linkedList);
        }
        return m1585a(linkedList);
    }

    /* renamed from: a */
    private static void m1587a(C5077f c5077f, int i, int i2, Collection<C5077f> collection) {
        C5077f m1575b = c5077f.m1575b(i);
        collection.add(m1575b.m1579a(4, i2));
        if (c5077f.m1581a() != 4) {
            collection.add(m1575b.m1574b(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(m1575b.m1579a(2, 16 - i2).m1579a(2, 1));
        }
        if (c5077f.m1576b() > 0) {
            collection.add(c5077f.m1580a(i).m1580a(i + 1));
        }
    }

    /* renamed from: a */
    private void m1586a(C5077f c5077f, int i, Collection<C5077f> collection) {
        C5077f c5077f2;
        char c = (char) (this.f21514e[i] & 255);
        boolean z = f21513d[c5077f.m1581a()][c] > 0;
        C5077f c5077f3 = null;
        int i2 = 0;
        while (i2 <= 4) {
            int i3 = f21513d[i2][c];
            if (i3 > 0) {
                if (c5077f3 == null) {
                    c5077f3 = c5077f.m1575b(i);
                }
                if (!z || i2 == c5077f.m1581a() || i2 == 2) {
                    collection.add(c5077f3.m1579a(i2, i3));
                }
                c5077f2 = c5077f3;
                if (!z) {
                    c5077f2 = c5077f3;
                    if (f21512c[c5077f.m1581a()][i2] >= 0) {
                        collection.add(c5077f3.m1574b(i2, i3));
                        c5077f2 = c5077f3;
                    }
                }
            } else {
                c5077f2 = c5077f3;
            }
            i2++;
            c5077f3 = c5077f2;
        }
        if (c5077f.m1576b() > 0 || f21513d[c5077f.m1581a()][c] == 0) {
            collection.add(c5077f.m1580a(i));
        }
    }

    /* renamed from: a */
    public C5116a m1588a() {
        int i;
        List singletonList = Collections.singletonList(C5077f.f21518a);
        int i2 = 0;
        while (i2 < this.f21514e.length) {
            byte b = i2 + 1 < this.f21514e.length ? this.f21514e[i2 + 1] : (byte) 0;
            switch (this.f21514e[i2]) {
                case 13:
                    if (b != 10) {
                        i = 0;
                        break;
                    } else {
                        i = 2;
                        break;
                    }
                case 44:
                    if (b != 32) {
                        i = 0;
                        break;
                    } else {
                        i = 4;
                        break;
                    }
                case 46:
                    if (b != 32) {
                        i = 0;
                        break;
                    } else {
                        i = 3;
                        break;
                    }
                case 58:
                    if (b != 32) {
                        i = 0;
                        break;
                    } else {
                        i = 5;
                        break;
                    }
                default:
                    i = 0;
                    break;
            }
            if (i > 0) {
                singletonList = m1583a(singletonList, i2, i);
                i2++;
            } else {
                singletonList = m1584a(singletonList, i2);
            }
            i2++;
        }
        return ((C5077f) Collections.min(singletonList, new Comparator<C5077f>() { // from class: com.google.zxing.a.a.d.1
            /* renamed from: a */
            public int compare(C5077f c5077f, C5077f c5077f2) {
                return c5077f.m1573c() - c5077f2.m1573c();
            }
        })).m1577a(this.f21514e);
    }
}

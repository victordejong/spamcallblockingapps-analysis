package com.google.zxing.p404a.p405a;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.zxing.a.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/d.class */
public final class C16144d {

    /* renamed from: a */
    static final String[] f57058a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: b */
    static final int[][] f57059b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: c */
    static final int[][] f57060c;

    /* renamed from: e */
    private static final int[][] f57061e;

    /* renamed from: d */
    final byte[] f57062d;

    /* JADX WARN: Type inference failed for: r0v9, types: [int[], int[][]] */
    static {
        int[][] iArr = new int[5][PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        f57061e = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f57061e[0][i] = (i - 65) + 2;
        }
        f57061e[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f57061e[1][i2] = (i2 - 97) + 2;
        }
        f57061e[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f57061e[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = f57061e;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        for (int i4 = 0; i4 < 28; i4++) {
            f57061e[3][new int[]{0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, WebSocketProtocol.PAYLOAD_SHORT, 127}[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, JsonReaderKt.END_OBJ};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                f57061e[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = new int[6][6];
        f57060c = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        int[][] iArr6 = f57060c;
        iArr6[0][4] = 0;
        iArr6[1][4] = 0;
        iArr6[1][0] = 28;
        iArr6[3][4] = 0;
        iArr6[2][4] = 0;
        iArr6[2][0] = 15;
    }

    public C16144d(byte[] bArr) {
        this.f57062d = bArr;
    }

    /* renamed from: a */
    public static Collection<C16147f> m7755a(Iterable<C16147f> iterable) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        for (C16147f c16147f : iterable) {
            Iterator it2 = linkedList.iterator();
            while (true) {
                z = true;
                if (!it2.hasNext()) {
                    break;
                }
                C16147f c16147f2 = (C16147f) it2.next();
                if (c16147f2.m7751a(c16147f)) {
                    z = false;
                    break;
                } else if (c16147f.m7751a(c16147f2)) {
                    it2.remove();
                }
            }
            if (z) {
                linkedList.add(c16147f);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    public static Collection<C16147f> m7754a(Iterable<C16147f> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (C16147f c16147f : iterable) {
            C16147f m7749b = c16147f.m7749b(i);
            linkedList.add(m7749b.m7752a(4, i2));
            if (c16147f.f57067b != 4) {
                linkedList.add(m7749b.m7748b(4, i2));
            }
            if (i2 == 3 || i2 == 4) {
                linkedList.add(m7749b.m7752a(2, 16 - i2).m7752a(2, 1));
            }
            if (c16147f.f57068c > 0) {
                linkedList.add(c16147f.m7753a(i).m7753a(i + 1));
            }
        }
        return m7755a(linkedList);
    }

    /* renamed from: a */
    public final void m7756a(C16147f c16147f, int i, Collection<C16147f> collection) {
        char c = (char) (this.f57062d[i] & 255);
        int i2 = 0;
        boolean z = f57061e[c16147f.f57067b][c] > 0;
        C16147f c16147f2 = null;
        while (true) {
            C16147f c16147f3 = c16147f2;
            if (i2 > 4) {
                break;
            }
            int i3 = f57061e[i2][c];
            C16147f c16147f4 = c16147f3;
            if (i3 > 0) {
                C16147f c16147f5 = c16147f3;
                if (c16147f3 == null) {
                    c16147f5 = c16147f.m7749b(i);
                }
                if (!z || i2 == c16147f.f57067b || i2 == 2) {
                    collection.add(c16147f5.m7752a(i2, i3));
                }
                c16147f4 = c16147f5;
                if (!z) {
                    c16147f4 = c16147f5;
                    if (f57060c[c16147f.f57067b][i2] >= 0) {
                        collection.add(c16147f5.m7748b(i2, i3));
                        c16147f4 = c16147f5;
                    }
                }
            }
            i2++;
            c16147f2 = c16147f4;
        }
        if (c16147f.f57068c > 0 || f57061e[c16147f.f57067b][c] == 0) {
            collection.add(c16147f.m7753a(i));
        }
    }
}

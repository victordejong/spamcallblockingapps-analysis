package p081h.p203i.p402h.p403j.p404b;

import androidx.media2.exoplayer.external.text.cea.Cea708Decoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: h.i.h.j.b.d */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/b/d.class */
public final class C10543d {

    /* renamed from: b */
    public static final String[] f23964b = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: c */
    public static final int[][] f23965c = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: d */
    public static final int[][] f23966d;

    /* renamed from: e */
    public static final int[][] f23967e;

    /* renamed from: a */
    public final byte[] f23968a;

    /* renamed from: h.i.h.j.b.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/j/b/d$a.class */
    public class C10544a implements Comparator<C10546f> {
        public C10544a(C10543d dVar) {
        }

        /* renamed from: a */
        public int compare(C10546f fVar, C10546f fVar2) {
            return fVar.m11466b() - fVar2.m11466b();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [int[], int[][]] */
    static {
        int[][] iArr = new int[5][256];
        f23966d = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f23966d[0][i] = (i - 65) + 2;
        }
        f23966d[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f23966d[1][i2] = (i2 - 97) + 2;
        }
        f23966d[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f23966d[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = f23966d;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        for (int i4 = 0; i4 < 28; i4++) {
            f23966d[3][new int[]{0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, 127}[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                f23966d[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = new int[6][6];
        f23967e = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        int[][] iArr6 = f23967e;
        iArr6[0][4] = 0;
        iArr6[1][4] = 0;
        iArr6[1][0] = 28;
        iArr6[3][4] = 0;
        iArr6[2][4] = 0;
        iArr6[2][0] = 15;
    }

    public C10543d(byte[] bArr) {
        this.f23968a = bArr;
    }

    /* renamed from: a */
    public static Collection<C10546f> m11475a(Iterable<C10546f> iterable) {
        LinkedList linkedList = new LinkedList();
        for (C10546f fVar : iterable) {
            boolean z = true;
            Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C10546f fVar2 = (C10546f) it.next();
                if (fVar2.m11468a(fVar)) {
                    z = false;
                    break;
                } else if (fVar.m11468a(fVar2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(fVar);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    public static Collection<C10546f> m11473a(Iterable<C10546f> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (C10546f fVar : iterable) {
            m11477a(fVar, i, i2, linkedList);
        }
        return m11475a(linkedList);
    }

    /* renamed from: a */
    public static void m11477a(C10546f fVar, int i, int i2, Collection<C10546f> collection) {
        C10546f b = fVar.m11465b(i);
        collection.add(b.m11469a(4, i2));
        if (fVar.m11463c() != 4) {
            collection.add(b.m11464b(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(b.m11469a(2, 16 - i2).m11469a(2, 1));
        }
        if (fVar.m11471a() > 0) {
            collection.add(fVar.m11470a(i).m11470a(i + 1));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p081h.p203i.p402h.p405k.C10548a m11478a() {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p403j.p404b.C10543d.m11478a():h.i.h.k.a");
    }

    /* renamed from: a */
    public final Collection<C10546f> m11474a(Iterable<C10546f> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        for (C10546f fVar : iterable) {
            m11476a(fVar, i, linkedList);
        }
        return m11475a(linkedList);
    }

    /* renamed from: a */
    public final void m11476a(C10546f fVar, int i, Collection<C10546f> collection) {
        char c = (char) (this.f23968a[i] & 255);
        boolean z = f23966d[fVar.m11463c()][c] > 0;
        C10546f fVar2 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = f23966d[i2][c];
            fVar2 = fVar2;
            if (i3 > 0) {
                C10546f fVar3 = fVar2;
                if (fVar2 == null) {
                    fVar3 = fVar.m11465b(i);
                }
                if (!z || i2 == fVar.m11463c() || i2 == 2) {
                    collection.add(fVar3.m11469a(i2, i3));
                }
                fVar2 = fVar3;
                if (!z) {
                    fVar2 = fVar3;
                    if (f23967e[fVar.m11463c()][i2] >= 0) {
                        collection.add(fVar3.m11464b(i2, i3));
                        fVar2 = fVar3;
                    }
                }
            }
        }
        if (fVar.m11471a() > 0 || f23966d[fVar.m11463c()][c] == 0) {
            collection.add(fVar.m11470a(i));
        }
    }
}

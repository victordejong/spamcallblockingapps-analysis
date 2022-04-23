package com.google.zxing.a.a;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/a/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f32906a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: b  reason: collision with root package name */
    static final int[][] f32907b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: c  reason: collision with root package name */
    static final int[][] f32908c;
    private static final int[][] e;

    /* renamed from: d  reason: collision with root package name */
    final byte[] f32909d;

    /* JADX WARN: Type inference failed for: r0v9, types: [int[], int[][]] */
    static {
        int[][] iArr = new int[5][PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        e = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            e[0][i] = (i - 65) + 2;
        }
        e[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            e[1][i2] = (i2 - 97) + 2;
        }
        e[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            e[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = e;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        for (int i4 = 0; i4 < 28; i4++) {
            e[3][new int[]{0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, WebSocketProtocol.PAYLOAD_SHORT, 127}[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, JsonReaderKt.END_OBJ};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                e[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = new int[6][6];
        f32908c = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        int[][] iArr6 = f32908c;
        iArr6[0][4] = 0;
        iArr6[1][4] = 0;
        iArr6[1][0] = 28;
        iArr6[3][4] = 0;
        iArr6[2][4] = 0;
        iArr6[2][0] = 15;
    }

    public d(byte[] bArr) {
        this.f32909d = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Collection<f> a(Iterable<f> iterable) {
        LinkedList linkedList = new LinkedList();
        for (f fVar : iterable) {
            boolean z = true;
            Iterator it2 = linkedList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                f fVar2 = (f) it2.next();
                if (fVar2.a(fVar)) {
                    z = false;
                    break;
                } else if (fVar.a(fVar2)) {
                    it2.remove();
                }
            }
            if (z) {
                linkedList.add(fVar);
            }
        }
        return linkedList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Collection<f> a(Iterable<f> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (f fVar : iterable) {
            f b2 = fVar.b(i);
            linkedList.add(b2.a(4, i2));
            if (fVar.f32914b != 4) {
                linkedList.add(b2.b(4, i2));
            }
            if (i2 == 3 || i2 == 4) {
                linkedList.add(b2.a(2, 16 - i2).a(2, 1));
            }
            if (fVar.f32915c > 0) {
                linkedList.add(fVar.a(i).a(i + 1));
            }
        }
        return a(linkedList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar, int i, Collection<f> collection) {
        char c2 = (char) (this.f32909d[i] & 255);
        boolean z = e[fVar.f32914b][c2] > 0;
        f fVar2 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = e[i2][c2];
            fVar2 = fVar2;
            if (i3 > 0) {
                f fVar3 = fVar2;
                if (fVar2 == null) {
                    fVar3 = fVar.b(i);
                }
                if (!z || i2 == fVar.f32914b || i2 == 2) {
                    collection.add(fVar3.a(i2, i3));
                }
                fVar2 = fVar3;
                if (!z) {
                    fVar2 = fVar3;
                    if (f32908c[fVar.f32914b][i2] >= 0) {
                        collection.add(fVar3.b(i2, i3));
                        fVar2 = fVar3;
                    }
                }
            }
        }
        if (fVar.f32915c > 0 || e[fVar.f32914b][c2] == 0) {
            collection.add(fVar.a(i));
        }
    }
}

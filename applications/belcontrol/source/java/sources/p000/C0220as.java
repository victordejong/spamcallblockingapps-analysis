package p000;

import androidx.media2.exoplayer.external.Format;
/* renamed from: as */
/* loaded from: classes-dex2jar.jar:as.class */
public final class C0220as {
    /* renamed from: a */
    public static int[] m5837a(Format[] formatArr, int[] iArr) {
        int length = formatArr.length;
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = new int[length];
        }
        for (int i = 0; i < length; i++) {
            iArr2[i] = formatArr[i].f1115f;
        }
        return iArr2;
    }
}

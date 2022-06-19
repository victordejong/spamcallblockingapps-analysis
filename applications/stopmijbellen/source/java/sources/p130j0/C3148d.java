package p130j0;

import java.util.Comparator;
/* renamed from: j0.d */
/* loaded from: classes-dex2jar.jar:j0/d.class */
public class C3148d {

    /* renamed from: a */
    public static final Comparator<byte[]> f10597a = new C3149a();

    /* renamed from: j0.d$a */
    /* loaded from: classes-dex2jar.jar:j0/d$a.class */
    public class C3149a implements Comparator<byte[]> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v24, types: [int] */
        /* JADX WARN: Type inference failed for: r0v26, types: [int] */
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            byte b;
            byte b2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length == bArr4.length) {
                int i2 = 0;
                while (true) {
                    i = 0;
                    if (i2 >= bArr3.length) {
                        break;
                    } else if (bArr3[i2] != bArr4[i2]) {
                        byte b3 = bArr3[i2];
                        b = bArr4[i2];
                        b2 = b3;
                        break;
                    } else {
                        i2++;
                    }
                }
                return i;
            }
            b2 = bArr3.length;
            b = bArr4.length;
            i = b2 - b;
            return i;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0103 A[LOOP:1: B:14:0x0084->B:29:0x0103, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p130j0.C3157k m2587a(android.content.Context r9, p130j0.C3150e r10, android.os.CancellationSignal r11) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p130j0.C3148d.m2587a(android.content.Context, j0.e, android.os.CancellationSignal):j0.k");
    }
}

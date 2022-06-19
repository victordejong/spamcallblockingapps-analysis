package p1727n3.p1807k.p1817f;

import java.util.Comparator;
/* renamed from: n3.k.f.d */
/* loaded from: classes-dex2jar.jar:n3/k/f/d.class */
public class C26520d {

    /* renamed from: a */
    public static final Comparator<byte[]> f74314a = new C26521a();

    /* renamed from: n3.k.f.d$a */
    /* loaded from: classes-dex2jar.jar:n3/k/f/d$a.class */
    public class C26521a implements Comparator<byte[]> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v21, types: [int] */
        /* JADX WARN: Type inference failed for: r0v23, types: [int] */
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
    /* JADX WARN: Removed duplicated region for block: B:123:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0100 A[LOOP:1: B:14:0x0083->B:29:0x0100, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1807k.p1817f.C26529k m1714a(android.content.Context r9, p1727n3.p1807k.p1817f.C26522e r10, android.os.CancellationSignal r11) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1817f.C26520d.m1714a(android.content.Context, n3.k.f.e, android.os.CancellationSignal):n3.k.f.k");
    }
}

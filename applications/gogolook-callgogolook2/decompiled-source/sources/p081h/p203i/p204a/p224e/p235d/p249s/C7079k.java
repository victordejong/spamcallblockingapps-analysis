package p081h.p203i.p204a.p224e.p235d.p249s;
/* renamed from: h.i.a.e.d.s.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/k.class */
public class C7079k {

    /* renamed from: a */
    public static final char[] f17188a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    public static final char[] f17189b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static String m21140a(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = i + 1;
            char[] cArr2 = f17189b;
            cArr[i] = cArr2[i2 >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m21139a(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i = 0; i < length && (!z || i != length - 1 || (bArr[i] & 255) != 0); i++) {
            sb.append(f17188a[(bArr[i] & 240) >>> 4]);
            sb.append(f17188a[bArr[i] & 15]);
        }
        return sb.toString();
    }
}

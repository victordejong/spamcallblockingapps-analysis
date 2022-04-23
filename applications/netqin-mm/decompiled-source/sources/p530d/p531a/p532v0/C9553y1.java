package p530d.p531a.p532v0;

import com.google.common.p493io.BaseEncoding;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4916c;
import p530d.p531a.C9214a0;
import p530d.p531a.C9260k0;
/* renamed from: d.a.v0.y1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/y1.class */
public final class C9553y1 {

    /* renamed from: a */
    public static final Logger f36449a = Logger.getLogger(C9553y1.class.getName());

    /* renamed from: b */
    public static final byte[] f36450b = "-bin".getBytes(C4916c.f17555a);

    /* renamed from: a */
    public static boolean m2494a(byte[] bArr) {
        for (byte b : bArr) {
            if (b < 32 || b > 126) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m2493a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i = length; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i - length]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [byte[], byte[][]] */
    /* renamed from: a */
    public static byte[][] m2495a(C9260k0 k0Var) {
        byte[][] b = C9214a0.m3144b(k0Var);
        if (b == null) {
            return new byte[0];
        }
        int i = 0;
        for (int i2 = 0; i2 < b.length; i2 += 2) {
            byte[] bArr = b[i2];
            byte[] bArr2 = b[i2 + 1];
            if (m2493a(bArr, f36450b)) {
                b[i] = bArr;
                b[i + 1] = C9214a0.f35766b.m7917a(bArr2).getBytes(C4916c.f17555a);
            } else if (m2494a(bArr2)) {
                b[i] = bArr;
                b[i + 1] = bArr2;
            } else {
                String str = new String(bArr, C4916c.f17555a);
                Logger logger = f36449a;
                logger.warning("Metadata key=" + str + ", value=" + Arrays.toString(bArr2) + " contains invalid ASCII characters");
            }
            i += 2;
        }
        return i == b.length ? b : (byte[][]) Arrays.copyOfRange(b, 0, i);
    }

    /* renamed from: a */
    public static byte[][] m2492a(byte[][] bArr) {
        for (int i = 0; i < bArr.length; i += 2) {
            byte[] bArr2 = bArr[i];
            int i2 = i + 1;
            byte[] bArr3 = bArr[i2];
            if (m2493a(bArr2, f36450b)) {
                for (byte b : bArr3) {
                    if (b == 44) {
                        return m2491a(bArr, i);
                    }
                }
                bArr[i2] = BaseEncoding.m7912d().m7918a(new String(bArr3, C4916c.f17555a));
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[][] m2491a(byte[][] bArr, int i) {
        int i2;
        ArrayList arrayList = new ArrayList(bArr.length + 10);
        int i3 = 0;
        while (true) {
            if (i3 < i) {
                arrayList.add(bArr[i3]);
                i3++;
            }
        }
        for (i2 = i; i2 < bArr.length; i2 += 2) {
            byte[] bArr2 = bArr[i2];
            byte[] bArr3 = bArr[i2 + 1];
            if (!m2493a(bArr2, f36450b)) {
                arrayList.add(bArr2);
                arrayList.add(bArr3);
            } else {
                int i4 = 0;
                for (int i5 = 0; i5 <= bArr3.length; i5++) {
                    if (i5 == bArr3.length || bArr3[i5] == 44) {
                        byte[] a = BaseEncoding.m7912d().m7918a(new String(bArr3, i4, i5 - i4, C4916c.f17555a));
                        arrayList.add(bArr2);
                        arrayList.add(a);
                        i4 = i5 + 1;
                    }
                }
            }
        }
        return (byte[][]) arrayList.toArray(new byte[0]);
    }
}

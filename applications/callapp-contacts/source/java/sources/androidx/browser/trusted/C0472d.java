package androidx.browser.trusted;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.browser.trusted.d */
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/d.class */
final class C0472d {

    /* renamed from: a */
    List<byte[]> f1823a;

    /* renamed from: b */
    private final byte[] f1824b;

    /* renamed from: c */
    private String f1825c;

    private C0472d(byte[] bArr) {
        this.f1824b = bArr;
    }

    private C0472d(byte[] bArr, String str, List<byte[]> list) {
        this.f1824b = bArr;
        this.f1825c = str;
        this.f1823a = new ArrayList(list.size());
        for (byte[] bArr2 : list) {
            this.f1823a.add(Arrays.copyOf(bArr2, bArr2.length));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* renamed from: a */
    public static int m45437a(byte[] bArr, byte[] bArr2) {
        byte length;
        byte length2;
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int i = 0;
        while (true) {
            if (i < Math.min(bArr.length, bArr2.length)) {
                if (bArr[i] != bArr2[i]) {
                    byte b = bArr[i];
                    length2 = bArr2[i];
                    length = b;
                    break;
                }
                i++;
            } else if (bArr.length == bArr2.length) {
                return 0;
            } else {
                length = bArr.length;
                length2 = bArr2.length;
            }
        }
        return length - length2;
    }

    /* renamed from: a */
    public static C0472d m45438a(String str, List<byte[]> list) throws IOException {
        return new C0472d(m45435b(str, list), str, list);
    }

    /* renamed from: b */
    private static byte[] m45435b(String str, List<byte[]> list) throws IOException {
        Collections.sort(list, _$$Lambda$d$7vHfQgquP4btSz84BA92YzYxMkQ.INSTANCE);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeUTF(str);
        dataOutputStream.writeInt(list.size());
        for (byte[] bArr : list) {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
        dataOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    public final String m45439a() throws IOException {
        m45436b();
        String str = this.f1825c;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public final void m45436b() throws IOException {
        if (this.f1825c != null) {
            return;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.f1824b));
        this.f1825c = dataInputStream.readUTF();
        int readInt = dataInputStream.readInt();
        this.f1823a = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            int readInt2 = dataInputStream.readInt();
            byte[] bArr = new byte[readInt2];
            if (dataInputStream.read(bArr) != readInt2) {
                throw new IllegalStateException("Could not read fingerprint");
            }
            this.f1823a.add(bArr);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.f1824b, ((C0472d) obj).f1824b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1824b);
    }
}

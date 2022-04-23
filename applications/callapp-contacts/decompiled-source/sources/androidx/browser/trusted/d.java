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
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    List<byte[]> f1254a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f1255b;

    /* renamed from: c  reason: collision with root package name */
    private String f1256c;

    private d(byte[] bArr) {
        this.f1255b = bArr;
    }

    private d(byte[] bArr, String str, List<byte[]> list) {
        this.f1255b = bArr;
        this.f1256c = str;
        this.f1254a = new ArrayList(list.size());
        for (byte[] bArr2 : list) {
            this.f1254a.add(Arrays.copyOf(bArr2, bArr2.length));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int i3 = 0;
        while (true) {
            if (i3 < Math.min(bArr.length, bArr2.length)) {
                if (bArr[i3] != bArr2[i3]) {
                    byte b2 = bArr[i3];
                    byte b3 = bArr2[i3];
                    i2 = b2;
                    i = b3;
                    break;
                }
                i3++;
            } else if (bArr.length == bArr2.length) {
                return 0;
            } else {
                i2 = bArr.length;
                i = bArr2.length;
            }
        }
        return i2 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(String str, List<byte[]> list) throws IOException {
        return new d(b(str, list), str, list);
    }

    private static byte[] b(String str, List<byte[]> list) throws IOException {
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

    public final String a() throws IOException {
        b();
        String str = this.f1256c;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() throws IOException {
        if (this.f1256c == null) {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.f1255b));
            this.f1256c = dataInputStream.readUTF();
            int readInt = dataInputStream.readInt();
            this.f1254a = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = dataInputStream.readInt();
                byte[] bArr = new byte[readInt2];
                if (dataInputStream.read(bArr) == readInt2) {
                    this.f1254a.add(bArr);
                } else {
                    throw new IllegalStateException("Could not read fingerprint");
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f1255b, ((d) obj).f1255b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1255b);
    }
}

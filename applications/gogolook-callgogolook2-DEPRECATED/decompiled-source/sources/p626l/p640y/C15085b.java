package p626l.p640y;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.y.b */
/* loaded from: classes3-dex2jar.jar:l/y/b.class */
public final class C15085b {
    /* renamed from: a */
    public static final long m449a(InputStream inputStream, OutputStream outputStream, int i) {
        C15149k.m377b(inputStream, "$this$copyTo");
        C15149k.m377b(outputStream, "out");
        byte[] bArr = new byte[i];
        int read = inputStream.read(bArr);
        long j = 0;
        while (read >= 0) {
            outputStream.write(bArr, 0, read);
            j += read;
            read = inputStream.read(bArr);
        }
        return j;
    }

    /* renamed from: a */
    public static /* synthetic */ long m448a(InputStream inputStream, OutputStream outputStream, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return m449a(inputStream, outputStream, i);
    }

    /* renamed from: a */
    public static final byte[] m450a(InputStream inputStream) {
        C15149k.m377b(inputStream, "$this$readBytes");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        m448a(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        C15149k.m383a((Object) byteArray, "buffer.toByteArray()");
        return byteArray;
    }
}

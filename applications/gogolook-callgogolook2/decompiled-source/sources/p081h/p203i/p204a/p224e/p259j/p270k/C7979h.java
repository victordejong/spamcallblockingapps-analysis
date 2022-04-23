package p081h.p203i.p204a.p224e.p259j.p270k;

import io.realm.internal.OsCollectionChangeSet;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Deque;
/* renamed from: h.i.a.e.j.k.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/h.class */
public final class C7979h {
    static {
        new C7978g();
    }

    /* renamed from: a */
    public static InputStream m18709a(InputStream inputStream, long j) {
        return new C7981j(inputStream, 1048577L);
    }

    /* renamed from: a */
    public static byte[] m18710a(InputStream inputStream) throws IOException {
        C7976e.m18711a(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 0;
        int i2 = 8192;
        while (i < 2147483639) {
            byte[] bArr = new byte[Math.min(i2, OsCollectionChangeSet.MAX_ARRAY_LENGTH - i)];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < bArr.length) {
                int read = inputStream.read(bArr, i3, bArr.length - i3);
                if (read == -1) {
                    return m18708a(arrayDeque, i);
                }
                i3 += read;
                i += read;
            }
            i2 = C7984l.m18704a(i2, 2);
        }
        if (inputStream.read() == -1) {
            return m18708a(arrayDeque, (int) OsCollectionChangeSet.MAX_ARRAY_LENGTH);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: a */
    public static byte[] m18708a(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] removeFirst = deque.removeFirst();
            int min = Math.min(i2, removeFirst.length);
            System.arraycopy(removeFirst, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }
}

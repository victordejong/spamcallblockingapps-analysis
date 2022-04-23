package com.google.android.gms.internal.d;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final OutputStream f28869a = new e();

    public static byte[] a(InputStream inputStream) throws IOException {
        byte[] a2;
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = PropertyFlags.UNSIGNED;
        int i2 = 0;
        loop0: while (true) {
            if (i2 < 2147483639) {
                int min = Math.min(i, 2147483639 - i2);
                byte[] bArr = new byte[min];
                arrayDeque.add(bArr);
                int i3 = 0;
                while (i3 < min) {
                    int read = inputStream.read(bArr, i3, min - i3);
                    if (read == -1) {
                        a2 = a(arrayDeque, i2);
                        break loop0;
                    }
                    i3 += read;
                    i2 += read;
                }
                long j = i;
                long j2 = j + j;
                i = j2 > 2147483647L ? Integer.MAX_VALUE : j2 < -2147483648L ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : (int) j2;
            } else if (inputStream.read() == -1) {
                a2 = a(arrayDeque, 2147483639);
            } else {
                throw new OutOfMemoryError("input is too large to fit in a byte array");
            }
        }
        return a2;
    }

    private static byte[] a(Queue<byte[]> queue, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] remove = queue.remove();
            int min = Math.min(i2, remove.length);
            System.arraycopy(remove, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }

    public static InputStream b(InputStream inputStream) {
        return new f(inputStream, 1048577L);
    }
}

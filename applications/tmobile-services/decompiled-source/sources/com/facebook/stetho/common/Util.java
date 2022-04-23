package com.facebook.stetho.common;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/Util.class */
public class Util {
    public static void awaitUninterruptibly(CountDownLatch countDownLatch) {
        while (true) {
            try {
                countDownLatch.await();
                return;
            } catch (InterruptedException e) {
            }
        }
    }

    public static void close(Closeable closeable, boolean z) throws IOException {
        if (closeable == null) {
            return;
        }
        if (z) {
            try {
                closeable.close();
            } catch (IOException e) {
                LogUtil.m15614e(e, "Hiding IOException because another is pending");
            }
        } else {
            closeable.close();
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static <T> T getUninterruptibly(Future<T> future) throws ExecutionException {
        while (true) {
            try {
                return future.get();
            } catch (InterruptedException e) {
            }
        }
    }

    public static <T> T getUninterruptibly(Future<T> future, long j, TimeUnit timeUnit) throws TimeoutException, ExecutionException {
        long millis = timeUnit.toMillis(j);
        while (true) {
            try {
                return future.get(millis, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                millis -= System.currentTimeMillis() - System.currentTimeMillis();
            }
        }
    }

    public static void joinUninterruptibly(Thread thread) {
        while (true) {
            try {
                thread.join();
                return;
            } catch (InterruptedException e) {
            }
        }
    }

    public static String readAsUTF8(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream, new byte[1024]);
        return byteArrayOutputStream.toString(Utf8Charset.NAME);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void sleepUninterruptibly(long r7) {
        /*
            long r0 = java.lang.System.currentTimeMillis()
            r9 = r0
        L_0x0004:
            r0 = r7
            java.lang.Thread.sleep(r0)     // Catch: InterruptedException -> 0x0009
            return
        L_0x0009:
            r11 = move-exception
            r0 = r7
            long r1 = java.lang.System.currentTimeMillis()
            r2 = r9
            long r1 = r1 - r2
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0004
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.stetho.common.Util.sleepUninterruptibly(long):void");
    }

    public static void throwIf(boolean z) {
        if (z) {
            throw new IllegalStateException();
        }
    }

    public static void throwIfNot(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void throwIfNot(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static void throwIfNotNull(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    public static <T> T throwIfNull(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public static <T1, T2> void throwIfNull(T1 t1, T2 t2) {
        throwIfNull(t1);
        throwIfNull(t2);
    }

    public static <T1, T2, T3> void throwIfNull(T1 t1, T2 t2, T3 t3) {
        throwIfNull(t1);
        throwIfNull(t2);
        throwIfNull(t3);
    }
}

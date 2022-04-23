package com.dropbox.core.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/IOUtil.class */
public final class IOUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final InputStream f17839a = new InputStream() { // from class: com.dropbox.core.util.IOUtil.1
        @Override // java.io.InputStream
        public final int read() {
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr) {
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            return -1;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final OutputStream f17840b = new OutputStream() { // from class: com.dropbox.core.util.IOUtil.2
        @Override // java.io.OutputStream
        public final void write(int i) {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/IOUtil$ReadException.class */
    public static final class ReadException extends WrappedException {
        public ReadException(IOException iOException) {
            super(iOException);
        }

        public ReadException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/IOUtil$WrappedException.class */
    public static abstract class WrappedException extends IOException {
        public WrappedException(IOException iOException) {
            super(iOException);
        }

        public WrappedException(String str, IOException iOException) {
            super(str + ": " + iOException.getMessage(), iOException);
        }

        public final IOException a() {
            return (IOException) super.getCause();
        }

        @Override // java.lang.Throwable
        public /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getCause().getMessage();
            String str = message;
            if (message == null) {
                str = "";
            }
            return str;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/IOUtil$WriteException.class */
    public static final class WriteException extends WrappedException {
        public WriteException(IOException iOException) {
            super(iOException);
        }

        public WriteException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/IOUtil$a.class */
    public interface a {
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(InputStream inputStream, OutputStream outputStream) throws ReadException, WriteException {
        a(inputStream, outputStream, new byte[16384]);
    }

    private static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws ReadException, WriteException {
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    try {
                        outputStream.write(bArr, 0, read);
                    } catch (IOException e) {
                        throw new WriteException(e);
                    }
                } else {
                    return;
                }
            } catch (IOException e2) {
                throw new ReadException(e2);
            }
        }
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream, new byte[16384]);
        return byteArrayOutputStream.toByteArray();
    }

    public static void b(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (IOException e) {
        }
    }
}

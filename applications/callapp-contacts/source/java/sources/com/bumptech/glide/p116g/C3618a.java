package com.bumptech.glide.p116g;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.g.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a.class */
public final class C3618a {

    /* renamed from: a */
    private static final AtomicReference<byte[]> f13729a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.g.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a$a.class */
    public static final class C3619a extends InputStream {

        /* renamed from: a */
        private final ByteBuffer f13730a;

        /* renamed from: b */
        private int f13731b = -1;

        C3619a(ByteBuffer byteBuffer) {
            this.f13730a = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f13730a.remaining();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            synchronized (this) {
                this.f13731b = this.f13730a.position();
            }
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (!this.f13730a.hasRemaining()) {
                return -1;
            }
            return this.f13730a.get() & 255;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.f13730a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f13730a.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public final void reset() throws IOException {
            synchronized (this) {
                int i = this.f13731b;
                if (i == -1) {
                    throw new IOException("Cannot reset to unset mark position");
                }
                this.f13730a.position(i);
            }
        }

        @Override // java.io.InputStream
        public final long skip(long j) throws IOException {
            if (!this.f13730a.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f13730a;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.g.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a$b.class */
    public static final class C3620b {

        /* renamed from: a */
        final int f13732a;

        /* renamed from: b */
        final int f13733b;

        /* renamed from: c */
        final byte[] f13734c;

        C3620b(byte[] bArr, int i, int i2) {
            this.f13734c = bArr;
            this.f13732a = i;
            this.f13733b = i2;
        }
    }

    private C3618a() {
    }

    /* renamed from: a */
    public static ByteBuffer m37615a(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            FileChannel fileChannel2 = null;
            try {
                FileChannel channel = randomAccessFile.getChannel();
                fileChannel2 = channel;
                MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e) {
                    }
                }
                try {
                    randomAccessFile.close();
                } catch (IOException e2) {
                }
                return load;
            } catch (Throwable th2) {
                fileChannel = fileChannel2;
                th = th2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m37614a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f13729a.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                f13729a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: a */
    public static void m37612a(ByteBuffer byteBuffer, File file) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        RandomAccessFile randomAccessFile2;
        FileChannel fileChannel;
        byteBuffer.position(0);
        FileChannel fileChannel2 = null;
        try {
            randomAccessFile2 = new RandomAccessFile(file, "rw");
            fileChannel = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
        try {
            FileChannel channel = randomAccessFile2.getChannel();
            channel.write(byteBuffer);
            channel.force(false);
            channel.close();
            fileChannel = channel;
            randomAccessFile2.close();
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException e) {
                }
            }
            try {
                randomAccessFile2.close();
            } catch (IOException e2) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileChannel2 = fileChannel;
            randomAccessFile = randomAccessFile2;
            if (fileChannel2 != null) {
                try {
                    fileChannel2.close();
                } catch (IOException e3) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static byte[] m37613a(ByteBuffer byteBuffer) {
        byte[] bArr;
        C3620b c3620b = (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) ? null : new C3620b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        if (c3620b != null && c3620b.f13732a == 0 && c3620b.f13733b == c3620b.f13734c.length) {
            bArr = byteBuffer.array();
        } else {
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            bArr = new byte[asReadOnlyBuffer.limit()];
            asReadOnlyBuffer.position(0);
            asReadOnlyBuffer.get(bArr);
        }
        return bArr;
    }

    /* renamed from: b */
    public static InputStream m37611b(ByteBuffer byteBuffer) {
        return new C3619a(byteBuffer);
    }
}

package com.bumptech.glide.g;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<byte[]> f7333a = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a$a.class */
    static final class C0142a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f7334a;

        /* renamed from: b  reason: collision with root package name */
        private int f7335b = -1;

        C0142a(ByteBuffer byteBuffer) {
            this.f7334a = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f7334a.remaining();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            synchronized (this) {
                this.f7335b = this.f7334a.position();
            }
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (!this.f7334a.hasRemaining()) {
                return -1;
            }
            return this.f7334a.get() & 255;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.f7334a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f7334a.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public final void reset() throws IOException {
            synchronized (this) {
                int i = this.f7335b;
                if (i != -1) {
                    this.f7334a.position(i);
                } else {
                    throw new IOException("Cannot reset to unset mark position");
                }
            }
        }

        @Override // java.io.InputStream
        public final long skip(long j) throws IOException {
            if (!this.f7334a.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f7334a;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f7340a;

        /* renamed from: b  reason: collision with root package name */
        final int f7341b;

        /* renamed from: c  reason: collision with root package name */
        final byte[] f7342c;

        b(byte[] bArr, int i, int i2) {
            this.f7342c = bArr;
            this.f7340a = i;
            this.f7341b = i2;
        }
    }

    private a() {
    }

    public static ByteBuffer a(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        FileChannel fileChannel = null;
        fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            } else if (length != 0) {
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    FileChannel channel = randomAccessFile.getChannel();
                    fileChannel = channel;
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
            } else {
                throw new IOException("File unsuitable for memory mapping");
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static ByteBuffer a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f7333a.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                f7333a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
        }
    }

    public static void a(ByteBuffer byteBuffer, File file) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        RandomAccessFile randomAccessFile2;
        byteBuffer.position(0);
        FileChannel fileChannel = null;
        fileChannel = null;
        try {
            randomAccessFile2 = new RandomAccessFile(file, "rw");
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
            randomAccessFile = randomAccessFile2;
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
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        byte[] bArr;
        b bVar = (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) ? null : new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        if (bVar != null && bVar.f7340a == 0 && bVar.f7341b == bVar.f7342c.length) {
            bArr = byteBuffer.array();
        } else {
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            bArr = new byte[asReadOnlyBuffer.limit()];
            asReadOnlyBuffer.position(0);
            asReadOnlyBuffer.get(bArr);
        }
        return bArr;
    }

    public static InputStream b(ByteBuffer byteBuffer) {
        return new C0142a(byteBuffer);
    }
}

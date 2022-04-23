package com.bumptech.glide.p029o;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.o.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/a.class */
public final class C0843a {

    /* renamed from: a */
    private static final AtomicReference<byte[]> f3805a = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.o.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/a$a.class */
    private static class C0844a extends InputStream {

        /* renamed from: b */
        private final ByteBuffer f3806b;

        /* renamed from: c */
        private int f3807c = -1;

        C0844a(ByteBuffer byteBuffer) {
            this.f3806b = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f3806b.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                this.f3807c = this.f3806b.position();
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (!this.f3806b.hasRemaining()) {
                return -1;
            }
            return this.f3806b.get() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (!this.f3806b.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f3806b.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                int i = this.f3807c;
                if (i != -1) {
                    this.f3806b.position(i);
                } else {
                    throw new IOException("Cannot reset to unset mark position");
                }
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (!this.f3806b.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f3806b;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.o.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/a$b.class */
    public static final class C0845b {

        /* renamed from: a */
        final int f3808a;

        /* renamed from: b */
        final int f3809b;

        /* renamed from: c */
        final byte[] f3810c;

        C0845b(byte[] bArr, int i, int i2) {
            this.f3810c = bArr;
            this.f3808a = i;
            this.f3809b = i2;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m10790a(File file) {
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

    /* renamed from: b */
    public static ByteBuffer m10789b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f3805a.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                f3805a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
        }
    }

    /* renamed from: c */
    private static C0845b m10788c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new C0845b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    /* renamed from: d */
    public static byte[] m10787d(ByteBuffer byteBuffer) {
        byte[] bArr;
        C0845b c = m10788c(byteBuffer);
        if (c != null && c.f3808a == 0 && c.f3809b == c.f3810c.length) {
            bArr = byteBuffer.array();
        } else {
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            bArr = new byte[asReadOnlyBuffer.limit()];
            asReadOnlyBuffer.position(0);
            asReadOnlyBuffer.get(bArr);
        }
        return bArr;
    }

    /* renamed from: e */
    public static void m10786e(ByteBuffer byteBuffer, File file) {
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

    /* renamed from: f */
    public static InputStream m10785f(ByteBuffer byteBuffer) {
        return new C0844a(byteBuffer);
    }
}

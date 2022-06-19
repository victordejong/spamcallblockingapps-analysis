package com.bumptech.glide.p223p;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.p.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/a.class */
public final class C4368a {

    /* renamed from: a */
    private static final AtomicReference<byte[]> f13366a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.p.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/a$a.class */
    public static class C4369a extends InputStream {

        /* renamed from: d */
        private final ByteBuffer f13367d;

        /* renamed from: e */
        private int f13368e = -1;

        C4369a(ByteBuffer byteBuffer) {
            this.f13367d = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f13367d.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                this.f13368e = this.f13367d.position();
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (!this.f13367d.hasRemaining()) {
                return -1;
            }
            return this.f13367d.get() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (!this.f13367d.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f13367d.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                int i = this.f13368e;
                if (i == -1) {
                    throw new IOException("Cannot reset to unset mark position");
                }
                this.f13367d.position(i);
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (!this.f13367d.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f13367d;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
    }

    /* renamed from: com.bumptech.glide.p.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/a$b.class */
    public static final class C4370b {

        /* renamed from: a */
        final int f13369a;

        /* renamed from: b */
        final int f13370b;

        /* renamed from: c */
        final byte[] f13371c;

        C4370b(byte[] bArr, int i, int i2) {
            this.f13371c = bArr;
            this.f13369a = i;
            this.f13370b = i2;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m22753a(File file) {
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
                try {
                    channel.close();
                } catch (IOException e) {
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

    /* renamed from: b */
    public static ByteBuffer m22752b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f13366a.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                f13366a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: c */
    private static C4370b m22751c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new C4370b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    /* renamed from: d */
    public static byte[] m22750d(ByteBuffer byteBuffer) {
        byte[] bArr;
        C4370b m22751c = m22751c(byteBuffer);
        if (m22751c != null && m22751c.f13369a == 0 && m22751c.f13370b == m22751c.f13371c.length) {
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
    public static void m22749e(ByteBuffer byteBuffer, File file) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        byteBuffer.position(0);
        FileChannel fileChannel = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
            FileChannel fileChannel2 = null;
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                fileChannel2 = channel;
                randomAccessFile2.close();
                try {
                    channel.close();
                } catch (IOException e) {
                }
                try {
                    randomAccessFile2.close();
                } catch (IOException e2) {
                }
            } catch (Throwable th2) {
                th = th2;
                fileChannel = fileChannel2;
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
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    /* renamed from: f */
    public static InputStream m22748f(ByteBuffer byteBuffer) {
        return new C4369a(byteBuffer);
    }
}

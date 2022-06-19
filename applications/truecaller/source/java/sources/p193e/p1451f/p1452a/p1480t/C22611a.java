package p193e.p1451f.p1452a.p1480t;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.f.a.t.a */
/* loaded from: classes-dex2jar.jar:e/f/a/t/a.class */
public final class C22611a {

    /* renamed from: a */
    public static final AtomicReference<byte[]> f62625a = new AtomicReference<>();

    /* renamed from: e.f.a.t.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/a$a.class */
    public static class C22612a extends InputStream {

        /* renamed from: a */
        public final ByteBuffer f62626a;

        /* renamed from: b */
        public int f62627b = -1;

        public C22612a(ByteBuffer byteBuffer) {
            this.f62626a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f62626a.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                this.f62627b = this.f62626a.position();
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (!this.f62626a.hasRemaining()) {
                return -1;
            }
            return this.f62626a.get() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.f62626a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f62626a.get(bArr, i, min);
            return min;
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            synchronized (this) {
                int i = this.f62627b;
                if (i == -1) {
                    throw new IOException("Cannot reset to unset mark position");
                }
                this.f62626a.position(i);
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (!this.f62626a.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            ByteBuffer byteBuffer = this.f62626a;
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }
    }

    /* renamed from: e.f.a.t.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/a$b.class */
    public static final class C22613b {

        /* renamed from: a */
        public final int f62628a;

        /* renamed from: b */
        public final int f62629b;

        /* renamed from: c */
        public final byte[] f62630c;

        public C22613b(byte[] bArr, int i, int i2) {
            this.f62630c = bArr;
            this.f62628a = i;
            this.f62629b = i2;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m8035a(File file) throws IOException {
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
    public static void m8034b(ByteBuffer byteBuffer, File file) throws IOException {
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
}

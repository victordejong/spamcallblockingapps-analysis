package com.bumptech.glide.p077h;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.bumptech.glide.h.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a.class */
public final class C1434a {

    /* renamed from: a */
    private static final AtomicReference<byte[]> f4743a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.h.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a$a.class */
    public static class C1435a extends InputStream {

        /* renamed from: a */
        private final ByteBuffer f4744a;

        /* renamed from: b */
        private int f4745b = -1;

        C1435a(ByteBuffer byteBuffer) {
            this.f4744a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f4744a.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                this.f4745b = this.f4744a.position();
            }
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            return !this.f4744a.hasRemaining() ? (byte) -1 : this.f4744a.get();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int i3;
            if (!this.f4744a.hasRemaining()) {
                i3 = -1;
            } else {
                int min = Math.min(i2, available());
                this.f4744a.get(bArr, i, min);
                i3 = min;
            }
            return i3;
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                if (this.f4745b == -1) {
                    throw new IOException("Cannot reset to unset mark position");
                }
                this.f4744a.position(this.f4745b);
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        @Override // java.io.InputStream
        public long skip(long j) {
            char min;
            if (!this.f4744a.hasRemaining()) {
                min = 65535;
            } else {
                min = Math.min(j, available());
                this.f4744a.position((int) (this.f4744a.position() + min));
            }
            return min;
        }
    }

    /* renamed from: com.bumptech.glide.h.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/a$b.class */
    public static final class C1436b {

        /* renamed from: a */
        final int f4746a;

        /* renamed from: b */
        final int f4747b;

        /* renamed from: c */
        final byte[] f4748c;

        C1436b(byte[] bArr, int i, int i2) {
            this.f4748c = bArr;
            this.f4746a = i;
            this.f4747b = i2;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m17035a(File file) {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel;
        Throwable th;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                try {
                    MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e) {
                        }
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e2) {
                        }
                    }
                    return load;
                } catch (Throwable th2) {
                    randomAccessFile = randomAccessFile2;
                    th = th2;
                    fileChannel = channel;
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
                randomAccessFile = randomAccessFile2;
                th = th3;
                fileChannel = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileChannel = null;
            randomAccessFile = null;
        }
    }

    /* renamed from: a */
    public static void m17033a(ByteBuffer byteBuffer, File file) {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel;
        Throwable th;
        byteBuffer.position(0);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
            } catch (Throwable th2) {
                th = th2;
                fileChannel = null;
            }
            try {
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e) {
                    }
                }
                if (randomAccessFile == null) {
                    return;
                }
                try {
                    randomAccessFile.close();
                } catch (IOException e2) {
                }
            } catch (Throwable th3) {
                th = th3;
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
        } catch (Throwable th4) {
            th = th4;
            fileChannel = null;
            randomAccessFile = null;
        }
    }

    /* renamed from: a */
    public static byte[] m17034a(ByteBuffer byteBuffer) {
        byte[] bArr;
        C1436b m17031c = m17031c(byteBuffer);
        if (m17031c != null && m17031c.f4746a == 0 && m17031c.f4747b == m17031c.f4748c.length) {
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
    public static InputStream m17032b(ByteBuffer byteBuffer) {
        return new C1435a(byteBuffer);
    }

    /* renamed from: c */
    private static C1436b m17031c(ByteBuffer byteBuffer) {
        return (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) ? null : new C1436b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }
}

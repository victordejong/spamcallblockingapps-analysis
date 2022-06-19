package io.fabric.sdk.android.services.p068b;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.fabric.sdk.android.services.b.r */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/r.class */
public class C1498r implements Closeable {

    /* renamed from: b */
    private static final Logger f4117b = Logger.getLogger(C1498r.class.getName());

    /* renamed from: a */
    int f4118a;

    /* renamed from: c */
    private final RandomAccessFile f4119c;

    /* renamed from: d */
    private int f4120d;

    /* renamed from: e */
    private C1500a f4121e;

    /* renamed from: f */
    private C1500a f4122f;

    /* renamed from: g */
    private final byte[] f4123g = new byte[16];

    /* renamed from: io.fabric.sdk.android.services.b.r$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/r$a.class */
    public static class C1500a {

        /* renamed from: a */
        static final C1500a f4127a = new C1500a(0, 0);

        /* renamed from: b */
        final int f4128b;

        /* renamed from: c */
        final int f4129c;

        C1500a(int i, int i2) {
            this.f4128b = i;
            this.f4129c = i2;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f4128b + ", length = " + this.f4129c + "]";
        }
    }

    /* renamed from: io.fabric.sdk.android.services.b.r$b */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/r$b.class */
    public final class C1501b extends InputStream {

        /* renamed from: b */
        private int f4131b;

        /* renamed from: c */
        private int f4132c;

        private C1501b(C1500a c1500a) {
            C1498r.this = r6;
            this.f4131b = r6.m3411b(c1500a.f4128b + 4);
            this.f4132c = c1500a.f4129c;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f4132c == 0) {
                return -1;
            }
            C1498r.this.f4119c.seek(this.f4131b);
            int read = C1498r.this.f4119c.read();
            this.f4131b = C1498r.this.m3411b(this.f4131b + 1);
            this.f4132c--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            C1498r.m3408b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f4132c;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C1498r.this.m3410b(this.f4131b, bArr, i, i4);
            this.f4131b = C1498r.this.m3411b(this.f4131b + i4);
            this.f4132c -= i4;
            return i4;
        }
    }

    /* renamed from: io.fabric.sdk.android.services.b.r$c */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/r$c.class */
    public interface AbstractC1502c {
        void read(InputStream inputStream, int i);
    }

    public C1498r(File file) {
        if (!file.exists()) {
            m3418a(file);
        }
        this.f4119c = m3409b(file);
        m3402e();
    }

    /* renamed from: a */
    private static int m3415a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: a */
    private C1500a m3426a(int i) {
        if (i == 0) {
            return C1500a.f4127a;
        }
        this.f4119c.seek(i);
        return new C1500a(i, this.f4119c.readInt());
    }

    /* renamed from: a */
    private void m3424a(int i, int i2, int i3, int i4) {
        m3413a(this.f4123g, i, i2, i3, i4);
        this.f4119c.seek(0L);
        this.f4119c.write(this.f4123g);
    }

    /* renamed from: a */
    private void m3423a(int i, byte[] bArr, int i2, int i3) {
        int m3411b = m3411b(i);
        int i4 = this.f4118a;
        if (m3411b + i3 <= i4) {
            this.f4119c.seek(m3411b);
            this.f4119c.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - m3411b;
        this.f4119c.seek(m3411b);
        this.f4119c.write(bArr, i2, i5);
        this.f4119c.seek(16L);
        this.f4119c.write(bArr, i2 + i5, i3 - i5);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static void m3418a(File file) {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile m3409b = m3409b(file2);
        try {
            m3409b.setLength(4096L);
            m3409b.seek(0L);
            byte[] bArr = new byte[16];
            m3413a(bArr, CodedOutputStream.DEFAULT_BUFFER_SIZE, 0, 0, 0);
            m3409b.write(bArr);
            m3409b.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            m3409b.close();
            throw th;
        }
    }

    /* renamed from: a */
    private static void m3413a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m3407b(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: b */
    public int m3411b(int i) {
        int i2 = this.f4118a;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: b */
    private static RandomAccessFile m3409b(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: b */
    public static <T> T m3408b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: b */
    public void m3410b(int i, byte[] bArr, int i2, int i3) {
        int m3411b = m3411b(i);
        int i4 = this.f4118a;
        if (m3411b + i3 <= i4) {
            this.f4119c.seek(m3411b);
            this.f4119c.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - m3411b;
        this.f4119c.seek(m3411b);
        this.f4119c.readFully(bArr, i2, i5);
        this.f4119c.seek(16L);
        this.f4119c.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: b */
    private static void m3407b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: c */
    private void m3405c(int i) {
        int i2;
        int i3;
        int i4 = i + 4;
        int m3401f = m3401f();
        if (m3401f >= i4) {
            return;
        }
        int i5 = this.f4118a;
        do {
            i2 = m3401f + i5;
            i3 = i5 << 1;
            m3401f = i2;
            i5 = i3;
        } while (i2 < i4);
        m3403d(i3);
        int m3411b = m3411b(this.f4122f.f4128b + 4 + this.f4122f.f4129c);
        if (m3411b < this.f4121e.f4128b) {
            FileChannel channel = this.f4119c.getChannel();
            channel.position(this.f4118a);
            long j = m3411b - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        if (this.f4122f.f4128b < this.f4121e.f4128b) {
            int i6 = (this.f4118a + this.f4122f.f4128b) - 16;
            m3424a(i3, this.f4120d, this.f4121e.f4128b, i6);
            this.f4122f = new C1500a(i6, this.f4122f.f4129c);
        } else {
            m3424a(i3, this.f4120d, this.f4121e.f4128b, this.f4122f.f4128b);
        }
        this.f4118a = i3;
    }

    /* renamed from: d */
    private void m3403d(int i) {
        this.f4119c.setLength(i);
        this.f4119c.getChannel().force(true);
    }

    /* renamed from: e */
    private void m3402e() {
        this.f4119c.seek(0L);
        this.f4119c.readFully(this.f4123g);
        this.f4118a = m3415a(this.f4123g, 0);
        if (this.f4118a <= this.f4119c.length()) {
            this.f4120d = m3415a(this.f4123g, 4);
            int m3415a = m3415a(this.f4123g, 8);
            int m3415a2 = m3415a(this.f4123g, 12);
            this.f4121e = m3426a(m3415a);
            this.f4122f = m3426a(m3415a2);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f4118a + ", Actual length: " + this.f4119c.length());
    }

    /* renamed from: f */
    private int m3401f() {
        return this.f4118a - m3427a();
    }

    /* renamed from: a */
    public int m3427a() {
        if (this.f4120d == 0) {
            return 16;
        }
        return this.f4122f.f4128b >= this.f4121e.f4128b ? (this.f4122f.f4128b - this.f4121e.f4128b) + 4 + this.f4122f.f4129c + 16 : (((this.f4122f.f4128b + 4) + this.f4122f.f4129c) + this.f4118a) - this.f4121e.f4128b;
    }

    /* renamed from: a */
    public void m3422a(AbstractC1502c abstractC1502c) {
        synchronized (this) {
            int i = this.f4121e.f4128b;
            for (int i2 = 0; i2 < this.f4120d; i2++) {
                C1500a m3426a = m3426a(i);
                abstractC1502c.read(new C1501b(m3426a), m3426a.f4129c);
                i = m3411b(m3426a.f4128b + 4 + m3426a.f4129c);
            }
        }
    }

    /* renamed from: a */
    public void m3416a(byte[] bArr) {
        m3414a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m3414a(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m3408b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            m3405c(i2);
            boolean m3412b = m3412b();
            C1500a c1500a = new C1500a(m3412b ? 16 : m3411b(this.f4122f.f4128b + 4 + this.f4122f.f4129c), i2);
            m3407b(this.f4123g, 0, i2);
            m3423a(c1500a.f4128b, this.f4123g, 0, 4);
            m3423a(c1500a.f4128b + 4, bArr, i, i2);
            m3424a(this.f4118a, this.f4120d + 1, m3412b ? c1500a.f4128b : this.f4121e.f4128b, c1500a.f4128b);
            this.f4122f = c1500a;
            this.f4120d++;
            if (m3412b) {
                this.f4121e = this.f4122f;
            }
        }
    }

    /* renamed from: a */
    public boolean m3425a(int i, int i2) {
        return (m3427a() + 4) + i <= i2;
    }

    /* renamed from: b */
    public boolean m3412b() {
        boolean z;
        synchronized (this) {
            z = this.f4120d == 0;
        }
        return z;
    }

    /* renamed from: c */
    public void m3406c() {
        synchronized (this) {
            if (m3412b()) {
                throw new NoSuchElementException();
            }
            if (this.f4120d == 1) {
                m3404d();
            } else {
                int m3411b = m3411b(this.f4121e.f4128b + 4 + this.f4121e.f4129c);
                m3410b(m3411b, this.f4123g, 0, 4);
                int m3415a = m3415a(this.f4123g, 0);
                m3424a(this.f4118a, this.f4120d - 1, m3411b, this.f4122f.f4128b);
                this.f4120d--;
                this.f4121e = new C1500a(m3411b, m3415a);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f4119c.close();
        }
    }

    /* renamed from: d */
    public void m3404d() {
        synchronized (this) {
            m3424a(CodedOutputStream.DEFAULT_BUFFER_SIZE, 0, 0, 0);
            this.f4120d = 0;
            this.f4121e = C1500a.f4127a;
            this.f4122f = C1500a.f4127a;
            if (this.f4118a > 4096) {
                m3403d(CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            this.f4118a = CodedOutputStream.DEFAULT_BUFFER_SIZE;
        }
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f4118a);
        sb.append(", size=");
        sb.append(this.f4120d);
        sb.append(", first=");
        sb.append(this.f4121e);
        sb.append(", last=");
        sb.append(this.f4122f);
        sb.append(", element lengths=[");
        try {
            m3422a(new AbstractC1502c() { // from class: io.fabric.sdk.android.services.b.r.1

                /* renamed from: a */
                boolean f4124a = true;

                @Override // io.fabric.sdk.android.services.p068b.C1498r.AbstractC1502c
                public void read(InputStream inputStream, int i) {
                    if (this.f4124a) {
                        this.f4124a = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i);
                }
            });
        } catch (IOException e) {
            f4117b.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}

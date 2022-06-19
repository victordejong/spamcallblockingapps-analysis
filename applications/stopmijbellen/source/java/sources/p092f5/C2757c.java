package p092f5;

import android.support.p012v4.media.C0082b;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import p007a6.C0033h;
/* renamed from: f5.c */
/* loaded from: classes-dex2jar.jar:f5/c.class */
public class C2757c implements Closeable {

    /* renamed from: g */
    public static final Logger f9441g = Logger.getLogger(C2757c.class.getName());

    /* renamed from: a */
    public final RandomAccessFile f9442a;

    /* renamed from: b */
    public int f9443b;

    /* renamed from: c */
    public int f9444c;

    /* renamed from: d */
    public C2759b f9445d;

    /* renamed from: e */
    public C2759b f9446e;

    /* renamed from: f */
    public final byte[] f9447f = new byte[16];

    /* renamed from: f5.c$a */
    /* loaded from: classes-dex2jar.jar:f5/c$a.class */
    public class C2758a {
    }

    /* renamed from: f5.c$b */
    /* loaded from: classes-dex2jar.jar:f5/c$b.class */
    public static class C2759b {

        /* renamed from: c */
        public static final C2759b f9448c = new C2759b(0, 0);

        /* renamed from: a */
        public final int f9449a;

        /* renamed from: b */
        public final int f9450b;

        public C2759b(int i, int i2) {
            this.f9449a = i;
            this.f9450b = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(C2759b.class.getSimpleName());
            sb.append("[position = ");
            sb.append(this.f9449a);
            sb.append(", length = ");
            return C0033h.m8885l(sb, this.f9450b, "]");
        }
    }

    /* renamed from: f5.c$c */
    /* loaded from: classes-dex2jar.jar:f5/c$c.class */
    public final class C2760c extends InputStream {

        /* renamed from: a */
        public int f9451a;

        /* renamed from: b */
        public int f9452b;

        public C2760c(C2759b c2759b, C2758a c2758a) {
            C2757c.this = r4;
            int i = c2759b.f9449a + 4;
            int i2 = r4.f9443b;
            this.f9451a = i >= i2 ? (i + 16) - i2 : i;
            this.f9452b = c2759b.f9450b;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f9452b == 0) {
                return -1;
            }
            C2757c.this.f9442a.seek(this.f9451a);
            int read = C2757c.this.f9442a.read();
            this.f9451a = C2757c.m3159d(C2757c.this, this.f9451a + 1);
            this.f9452b--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            Objects.requireNonNull(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f9452b;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C2757c.this.m3165B(this.f9451a, bArr, i, i4);
            this.f9451a = C2757c.m3159d(C2757c.this, this.f9451a + i4);
            this.f9452b -= i4;
            return i4;
        }
    }

    /* JADX WARN: Finally extract failed */
    public C2757c(File file) throws IOException {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr = new byte[16];
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    m3160P(bArr, i, new int[]{4096, 0, 0, 0}[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.f9442a = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(this.f9447f);
        int m3153s = m3153s(this.f9447f, 0);
        this.f9443b = m3153s;
        if (m3153s > randomAccessFile2.length()) {
            StringBuilder m8752j = C0082b.m8752j("File is truncated. Expected length: ");
            m8752j.append(this.f9443b);
            m8752j.append(", Actual length: ");
            m8752j.append(randomAccessFile2.length());
            throw new IOException(m8752j.toString());
        }
        this.f9444c = m3153s(this.f9447f, 4);
        int m3153s2 = m3153s(this.f9447f, 8);
        int m3153s3 = m3153s(this.f9447f, 12);
        this.f9445d = m3154r(m3153s2);
        this.f9446e = m3154r(m3153s3);
    }

    /* renamed from: P */
    public static void m3160P(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: d */
    public static int m3159d(C2757c c2757c, int i) {
        int i2 = c2757c.f9443b;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: s */
    public static int m3153s(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: A */
    public void m3166A() throws IOException {
        synchronized (this) {
            if (m3155p()) {
                throw new NoSuchElementException();
            }
            if (this.f9444c == 1) {
                m3157l();
            } else {
                C2759b c2759b = this.f9445d;
                int m3162K = m3162K(c2759b.f9449a + 4 + c2759b.f9450b);
                m3165B(m3162K, this.f9447f, 0, 4);
                int m3153s = m3153s(this.f9447f, 0);
                m3161L(this.f9443b, this.f9444c - 1, m3162K, this.f9446e.f9449a);
                this.f9444c--;
                this.f9445d = new C2759b(m3162K, m3153s);
            }
        }
    }

    /* renamed from: B */
    public final void m3165B(int i, byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f9443b;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.f9442a.seek(i);
            this.f9442a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.f9442a.seek(i);
        this.f9442a.readFully(bArr, i2, i5);
        this.f9442a.seek(16L);
        this.f9442a.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: D */
    public final void m3164D(int i, byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f9443b;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.f9442a.seek(i);
            this.f9442a.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.f9442a.seek(i);
        this.f9442a.write(bArr, i2, i5);
        this.f9442a.seek(16L);
        this.f9442a.write(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: J */
    public int m3163J() {
        if (this.f9444c == 0) {
            return 16;
        }
        C2759b c2759b = this.f9446e;
        int i = c2759b.f9449a;
        int i2 = this.f9445d.f9449a;
        return i >= i2 ? (i - i2) + 4 + c2759b.f9450b + 16 : (((i + 4) + c2759b.f9450b) + this.f9443b) - i2;
    }

    /* renamed from: K */
    public final int m3162K(int i) {
        int i2 = this.f9443b;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: L */
    public final void m3161L(int i, int i2, int i3, int i4) throws IOException {
        byte[] bArr = this.f9447f;
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            m3160P(bArr, i5, new int[]{i, i2, i3, i4}[i6]);
            i5 += 4;
        }
        this.f9442a.seek(0L);
        this.f9442a.write(this.f9447f);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.f9442a.close();
        }
    }

    /* renamed from: k */
    public void m3158k(byte[] bArr) throws IOException {
        int i;
        int length = bArr.length;
        synchronized (this) {
            if ((0 | length) >= 0) {
                if (length <= bArr.length - 0) {
                    m3156o(length);
                    boolean m3155p = m3155p();
                    if (m3155p) {
                        i = 16;
                    } else {
                        C2759b c2759b = this.f9446e;
                        i = m3162K(c2759b.f9449a + 4 + c2759b.f9450b);
                    }
                    C2759b c2759b2 = new C2759b(i, length);
                    m3160P(this.f9447f, 0, length);
                    m3164D(i, this.f9447f, 0, 4);
                    m3164D(i + 4, bArr, 0, length);
                    m3161L(this.f9443b, this.f9444c + 1, m3155p ? i : this.f9445d.f9449a, i);
                    this.f9446e = c2759b2;
                    this.f9444c++;
                    if (m3155p) {
                        this.f9445d = c2759b2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: l */
    public void m3157l() throws IOException {
        synchronized (this) {
            m3161L(4096, 0, 0, 0);
            this.f9444c = 0;
            C2759b c2759b = C2759b.f9448c;
            this.f9445d = c2759b;
            this.f9446e = c2759b;
            if (this.f9443b > 4096) {
                this.f9442a.setLength(4096);
                this.f9442a.getChannel().force(true);
            }
            this.f9443b = 4096;
        }
    }

    /* renamed from: o */
    public final void m3156o(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int m3163J = this.f9443b - m3163J();
        if (m3163J >= i4) {
            return;
        }
        int i5 = this.f9443b;
        do {
            i2 = m3163J + i5;
            i3 = i5 << 1;
            m3163J = i2;
            i5 = i3;
        } while (i2 < i4);
        this.f9442a.setLength(i3);
        this.f9442a.getChannel().force(true);
        C2759b c2759b = this.f9446e;
        int m3162K = m3162K(c2759b.f9449a + 4 + c2759b.f9450b);
        if (m3162K < this.f9445d.f9449a) {
            FileChannel channel = this.f9442a.getChannel();
            channel.position(this.f9443b);
            long j = m3162K - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i6 = this.f9446e.f9449a;
        int i7 = this.f9445d.f9449a;
        if (i6 < i7) {
            int i8 = (this.f9443b + i6) - 16;
            m3161L(i3, this.f9444c, i7, i8);
            this.f9446e = new C2759b(i8, this.f9446e.f9450b);
        } else {
            m3161L(i3, this.f9444c, i7, i6);
        }
        this.f9443b = i3;
    }

    /* renamed from: p */
    public boolean m3155p() {
        boolean z;
        synchronized (this) {
            z = this.f9444c == 0;
        }
        return z;
    }

    /* renamed from: r */
    public final C2759b m3154r(int i) throws IOException {
        if (i == 0) {
            return C2759b.f9448c;
        }
        this.f9442a.seek(i);
        return new C2759b(i, this.f9442a.readInt());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C2757c.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f9443b);
        sb.append(", size=");
        sb.append(this.f9444c);
        sb.append(", first=");
        sb.append(this.f9445d);
        sb.append(", last=");
        sb.append(this.f9446e);
        sb.append(", element lengths=[");
        try {
            synchronized (this) {
                int i = this.f9445d.f9449a;
                boolean z = true;
                for (int i2 = 0; i2 < this.f9444c; i2++) {
                    C2759b m3154r = m3154r(i);
                    new C2760c(m3154r, null);
                    int i3 = m3154r.f9450b;
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i3);
                    i = m3162K(m3154r.f9449a + 4 + m3154r.f9450b);
                }
            }
        } catch (IOException e) {
            f9441g.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}

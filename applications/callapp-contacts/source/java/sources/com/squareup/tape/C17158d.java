package com.squareup.tape;

import android.support.p008v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.squareup.tape.d */
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/d.class */
public class C17158d {

    /* renamed from: c */
    private static final Logger f60730c = Logger.getLogger(C17158d.class.getName());

    /* renamed from: d */
    private static final byte[] f60731d = new byte[4096];

    /* renamed from: a */
    final RandomAccessFile f60732a;

    /* renamed from: b */
    int f60733b;

    /* renamed from: e */
    private int f60734e;

    /* renamed from: f */
    private C17160a f60735f;

    /* renamed from: g */
    private C17160a f60736g;

    /* renamed from: h */
    private final byte[] f60737h;

    /* renamed from: com.squareup.tape.d$a */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$a.class */
    public static final class C17160a {

        /* renamed from: a */
        static final C17160a f60741a = new C17160a(0, 0);

        /* renamed from: b */
        final int f60742b;

        /* renamed from: c */
        final int f60743c;

        C17160a(int i, int i2) {
            this.f60742b = i;
            this.f60743c = i2;
        }

        public final String toString() {
            return getClass().getSimpleName() + "[position = " + this.f60742b + ", length = " + this.f60743c + "]";
        }
    }

    /* renamed from: com.squareup.tape.d$b */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$b.class */
    public final class C17161b extends InputStream {

        /* renamed from: b */
        private int f60745b;

        /* renamed from: c */
        private int f60746c;

        private C17161b(C17160a c17160a) {
            C17158d.this = r6;
            this.f60745b = r6.m5840b(c17160a.f60742b + 4);
            this.f60746c = c17160a.f60743c;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            if (this.f60746c == 0) {
                return -1;
            }
            C17158d.this.f60732a.seek(this.f60745b);
            int read = C17158d.this.f60732a.read();
            this.f60745b = C17158d.this.m5840b(this.f60745b + 1);
            this.f60746c--;
            return read;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            C17158d.m5838b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f60746c;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C17158d.this.m5839b(this.f60745b, bArr, i, i4);
            this.f60745b = C17158d.this.m5840b(this.f60745b + i4);
            this.f60746c -= i4;
            return i4;
        }
    }

    /* renamed from: com.squareup.tape.d$c */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$c.class */
    public interface AbstractC17162c {
        /* renamed from: a */
        void mo5830a(int i) throws IOException;
    }

    /* JADX WARN: Finally extract failed */
    public C17158d(File file) throws IOException {
        this.f60737h = new byte[16];
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile m5846a = m5846a(file2);
            try {
                m5846a.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                m5846a.seek(0L);
                byte[] bArr = new byte[16];
                m5842a(bArr, 4096, 0, 0, 0);
                m5846a.write(bArr);
                m5846a.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                m5846a.close();
                throw th;
            }
        }
        this.f60732a = m5846a(file);
        m5834d();
    }

    C17158d(RandomAccessFile randomAccessFile) throws IOException {
        this.f60737h = new byte[16];
        this.f60732a = randomAccessFile;
        m5834d();
    }

    /* renamed from: a */
    private C17160a m5853a(int i) throws IOException {
        if (i == 0) {
            return C17160a.f60741a;
        }
        m5839b(i, this.f60737h, 0, 4);
        return new C17160a(i, m5837b(this.f60737h, 0));
    }

    /* renamed from: a */
    private static RandomAccessFile m5846a(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: a */
    private void m5852a(int i, int i2) throws IOException {
        while (i2 > 0) {
            byte[] bArr = f60731d;
            int min = Math.min(i2, bArr.length);
            m5850a(i, bArr, 0, min);
            i2 -= min;
            i += min;
        }
    }

    /* renamed from: a */
    private void m5851a(int i, int i2, int i3, int i4) throws IOException {
        m5842a(this.f60737h, i, i2, i3, i4);
        this.f60732a.seek(0L);
        this.f60732a.write(this.f60737h);
    }

    /* renamed from: a */
    private void m5850a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int m5840b = m5840b(i);
        int i4 = this.f60733b;
        if (m5840b + i3 <= i4) {
            this.f60732a.seek(m5840b);
            this.f60732a.write(bArr, 0, i3);
            return;
        }
        int i5 = i4 - m5840b;
        this.f60732a.seek(m5840b);
        this.f60732a.write(bArr, 0, i5);
        this.f60732a.seek(16L);
        this.f60732a.write(bArr, i5 + 0, i3 - i5);
    }

    /* renamed from: a */
    private void m5849a(AbstractC17162c abstractC17162c) throws IOException {
        synchronized (this) {
            int i = this.f60735f.f60742b;
            for (int i2 = 0; i2 < this.f60734e; i2++) {
                C17160a m5853a = m5853a(i);
                new C17161b(m5853a);
                abstractC17162c.mo5830a(m5853a.f60743c);
                i = m5840b(m5853a.f60742b + 4 + m5853a.f60743c);
            }
        }
    }

    /* renamed from: a */
    private static void m5843a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: a */
    private static void m5842a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            m5843a(bArr, i, iArr[i2]);
            i += 4;
        }
    }

    /* renamed from: b */
    public int m5840b(int i) {
        int i2 = this.f60733b;
        return i < i2 ? i : (i + 16) - i2;
    }

    /* renamed from: b */
    private static int m5837b(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: b */
    public static <T> T m5838b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: b */
    public void m5839b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int m5840b = m5840b(i);
        int i4 = this.f60733b;
        if (m5840b + i3 <= i4) {
            this.f60732a.seek(m5840b);
            this.f60732a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - m5840b;
        this.f60732a.seek(m5840b);
        this.f60732a.readFully(bArr, i2, i5);
        this.f60732a.seek(16L);
        this.f60732a.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: c */
    private void m5835c(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int usedBytes = this.f60733b - usedBytes();
        if (usedBytes >= i4) {
            return;
        }
        int i5 = this.f60733b;
        do {
            i2 = usedBytes + i5;
            i3 = i5 << 1;
            usedBytes = i2;
            i5 = i3;
        } while (i2 < i4);
        m5833d(i3);
        int m5840b = m5840b(this.f60736g.f60742b + 4 + this.f60736g.f60743c);
        if (m5840b <= this.f60735f.f60742b) {
            FileChannel channel = this.f60732a.getChannel();
            channel.position(this.f60733b);
            int i6 = m5840b - 16;
            long j = i6;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
            m5852a(16, i6);
        }
        if (this.f60736g.f60742b < this.f60735f.f60742b) {
            int i7 = (this.f60733b + this.f60736g.f60742b) - 16;
            m5851a(i3, this.f60734e, this.f60735f.f60742b, i7);
            this.f60736g = new C17160a(i7, this.f60736g.f60743c);
        } else {
            m5851a(i3, this.f60734e, this.f60735f.f60742b, this.f60736g.f60742b);
        }
        this.f60733b = i3;
    }

    /* renamed from: d */
    private void m5834d() throws IOException {
        this.f60732a.seek(0L);
        this.f60732a.readFully(this.f60737h);
        int m5837b = m5837b(this.f60737h, 0);
        this.f60733b = m5837b;
        if (m5837b > this.f60732a.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f60733b + ", Actual length: " + this.f60732a.length());
        } else if (this.f60733b == 0) {
            throw new IOException("File is corrupt; length stored in header is 0.");
        } else {
            this.f60734e = m5837b(this.f60737h, 4);
            int m5837b2 = m5837b(this.f60737h, 8);
            int m5837b3 = m5837b(this.f60737h, 12);
            this.f60735f = m5853a(m5837b2);
            this.f60736g = m5853a(m5837b3);
        }
    }

    /* renamed from: d */
    private void m5833d(int i) throws IOException {
        this.f60732a.setLength(i);
        this.f60732a.getChannel().force(true);
    }

    /* renamed from: e */
    private boolean m5832e() {
        boolean z;
        synchronized (this) {
            z = this.f60734e == 0;
        }
        return z;
    }

    /* renamed from: f */
    private void m5831f() throws IOException {
        synchronized (this) {
            this.f60732a.seek(0L);
            this.f60732a.write(f60731d);
            m5851a(4096, 0, 0, 0);
            this.f60734e = 0;
            this.f60735f = C17160a.f60741a;
            this.f60736g = C17160a.f60741a;
            if (this.f60733b > 4096) {
                m5833d(4096);
            }
            this.f60733b = 4096;
        }
    }

    private int usedBytes() {
        if (this.f60734e == 0) {
            return 16;
        }
        return this.f60736g.f60742b >= this.f60735f.f60742b ? (this.f60736g.f60742b - this.f60735f.f60742b) + 4 + this.f60736g.f60743c + 16 : (((this.f60736g.f60742b + 4) + this.f60736g.f60743c) + this.f60733b) - this.f60735f.f60742b;
    }

    /* renamed from: a */
    public final void m5844a(byte[] bArr, int i) throws IOException {
        synchronized (this) {
            m5838b(bArr, "buffer");
            if ((i | 0) < 0 || i > bArr.length - 0) {
                throw new IndexOutOfBoundsException();
            }
            m5835c(i);
            boolean m5832e = m5832e();
            C17160a c17160a = new C17160a(m5832e ? 16 : m5840b(this.f60736g.f60742b + 4 + this.f60736g.f60743c), i);
            m5843a(this.f60737h, 0, i);
            m5850a(c17160a.f60742b, this.f60737h, 0, 4);
            m5850a(c17160a.f60742b + 4, bArr, 0, i);
            m5851a(this.f60733b, this.f60734e + 1, m5832e ? c17160a.f60742b : this.f60735f.f60742b, c17160a.f60742b);
            this.f60736g = c17160a;
            this.f60734e++;
            if (m5832e) {
                this.f60735f = c17160a;
            }
        }
    }

    /* renamed from: a */
    public final byte[] m5854a() throws IOException {
        synchronized (this) {
            if (m5832e()) {
                return null;
            }
            int i = this.f60735f.f60743c;
            byte[] bArr = new byte[i];
            m5839b(this.f60735f.f60742b + 4, bArr, 0, i);
            return bArr;
        }
    }

    /* renamed from: b */
    public final int m5841b() {
        int i;
        synchronized (this) {
            i = this.f60734e;
        }
        return i;
    }

    /* renamed from: c */
    public final void m5836c() throws IOException {
        synchronized (this) {
            if (!m5832e()) {
                if (this.f60734e == 1) {
                    m5831f();
                    return;
                }
                int i = this.f60735f.f60743c + 4;
                m5852a(this.f60735f.f60742b, i);
                int m5840b = m5840b(this.f60735f.f60742b + i);
                m5839b(m5840b, this.f60737h, 0, 4);
                int m5837b = m5837b(this.f60737h, 0);
                m5851a(this.f60733b, this.f60734e - 1, m5840b, this.f60736g.f60742b);
                this.f60734e--;
                this.f60735f = new C17160a(m5840b, m5837b);
                return;
            }
            throw new NoSuchElementException();
        }
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f60733b);
        sb.append(", size=");
        sb.append(this.f60734e);
        sb.append(", first=");
        sb.append(this.f60735f);
        sb.append(", last=");
        sb.append(this.f60736g);
        sb.append(", element lengths=[");
        try {
            m5849a(new AbstractC17162c() { // from class: com.squareup.tape.d.1

                /* renamed from: a */
                boolean f60738a = true;

                @Override // com.squareup.tape.C17158d.AbstractC17162c
                /* renamed from: a */
                public final void mo5830a(int i) throws IOException {
                    if (this.f60738a) {
                        this.f60738a = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i);
                }
            });
        } catch (IOException e) {
            f60730c.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}

package com.google.firebase.crashlytics.p293d.p296g;

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
/* renamed from: com.google.firebase.crashlytics.d.g.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/c.class */
public class C8917c implements Closeable {

    /* renamed from: d */
    private static final Logger f38887d = Logger.getLogger(C8917c.class.getName());

    /* renamed from: e */
    private final RandomAccessFile f38888e;

    /* renamed from: f */
    int f38889f;

    /* renamed from: g */
    private int f38890g;

    /* renamed from: h */
    private C8919b f38891h;

    /* renamed from: i */
    private C8919b f38892i;

    /* renamed from: j */
    private final byte[] f38893j = new byte[16];

    /* renamed from: com.google.firebase.crashlytics.d.g.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/c$a.class */
    public class C8918a implements AbstractC8921d {

        /* renamed from: a */
        boolean f38894a = true;

        /* renamed from: b */
        final /* synthetic */ StringBuilder f38895b;

        C8918a(StringBuilder sb) {
            C8917c.this = r4;
            this.f38895b = sb;
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.C8917c.AbstractC8921d
        /* renamed from: a */
        public void mo2331a(InputStream inputStream, int i) {
            if (this.f38894a) {
                this.f38894a = false;
            } else {
                this.f38895b.append(", ");
            }
            this.f38895b.append(i);
        }
    }

    /* renamed from: com.google.firebase.crashlytics.d.g.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/c$b.class */
    public static class C8919b {

        /* renamed from: a */
        static final C8919b f38897a = new C8919b(0, 0);

        /* renamed from: b */
        final int f38898b;

        /* renamed from: c */
        final int f38899c;

        C8919b(int i, int i2) {
            this.f38898b = i;
            this.f38899c = i2;
        }

        public String toString() {
            return C8919b.class.getSimpleName() + "[position = " + this.f38898b + ", length = " + this.f38899c + "]";
        }
    }

    /* renamed from: com.google.firebase.crashlytics.d.g.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/c$c.class */
    public final class C8920c extends InputStream {

        /* renamed from: d */
        private int f38900d;

        /* renamed from: e */
        private int f38901e;

        private C8920c(C8919b c8919b) {
            C8917c.this = r6;
            this.f38900d = r6.m2353Y(c8919b.f38898b + 4);
            this.f38901e = c8919b.f38899c;
        }

        /* synthetic */ C8920c(C8917c c8917c, C8919b c8919b, C8918a c8918a) {
            this(c8919b);
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f38901e == 0) {
                return -1;
            }
            C8917c.this.f38888e.seek(this.f38900d);
            int read = C8917c.this.f38888e.read();
            this.f38900d = C8917c.this.m2353Y(this.f38900d + 1);
            this.f38901e--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            C8917c.m2364C(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f38901e;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C8917c.this.m2357Q(this.f38900d, bArr, i, i4);
            this.f38900d = C8917c.this.m2353Y(this.f38900d + i4);
            this.f38901e -= i4;
            return i4;
        }
    }

    /* renamed from: com.google.firebase.crashlytics.d.g.c$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/c$d.class */
    public interface AbstractC8921d {
        /* renamed from: a */
        void mo2331a(InputStream inputStream, int i);
    }

    public C8917c(File file) {
        if (!file.exists()) {
            m2340z(file);
        }
        this.f38888e = m2363D(file);
        m2361I();
    }

    /* renamed from: C */
    public static <T> T m2364C(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: D */
    private static RandomAccessFile m2363D(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: E */
    private C8919b m2362E(int i) {
        if (i == 0) {
            return C8919b.f38897a;
        }
        this.f38888e.seek(i);
        return new C8919b(i, this.f38888e.readInt());
    }

    /* renamed from: I */
    private void m2361I() {
        this.f38888e.seek(0L);
        this.f38888e.readFully(this.f38893j);
        int m2360L = m2360L(this.f38893j, 0);
        this.f38889f = m2360L;
        if (m2360L <= this.f38888e.length()) {
            this.f38890g = m2360L(this.f38893j, 4);
            int m2360L2 = m2360L(this.f38893j, 8);
            int m2360L3 = m2360L(this.f38893j, 12);
            this.f38891h = m2362E(m2360L2);
            this.f38892i = m2362E(m2360L3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f38889f + ", Actual length: " + this.f38888e.length());
    }

    /* renamed from: L */
    private static int m2360L(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: N */
    private int m2359N() {
        return this.f38889f - m2354W();
    }

    /* renamed from: Q */
    public void m2357Q(int i, byte[] bArr, int i2, int i3) {
        int m2353Y = m2353Y(i);
        int i4 = this.f38889f;
        if (m2353Y + i3 <= i4) {
            this.f38888e.seek(m2353Y);
            this.f38888e.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - m2353Y;
        this.f38888e.seek(m2353Y);
        this.f38888e.readFully(bArr, i2, i5);
        this.f38888e.seek(16L);
        this.f38888e.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: R */
    private void m2356R(int i, byte[] bArr, int i2, int i3) {
        int m2353Y = m2353Y(i);
        int i4 = this.f38889f;
        if (m2353Y + i3 <= i4) {
            this.f38888e.seek(m2353Y);
            this.f38888e.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - m2353Y;
        this.f38888e.seek(m2353Y);
        this.f38888e.write(bArr, i2, i5);
        this.f38888e.seek(16L);
        this.f38888e.write(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: U */
    private void m2355U(int i) {
        this.f38888e.setLength(i);
        this.f38888e.getChannel().force(true);
    }

    /* renamed from: Y */
    public int m2353Y(int i) {
        int i2 = this.f38889f;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: Z */
    private void m2352Z(int i, int i2, int i3, int i4) {
        m2349d0(this.f38893j, i, i2, i3, i4);
        this.f38888e.seek(0L);
        this.f38888e.write(this.f38893j);
    }

    /* renamed from: a0 */
    private static void m2350a0(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: d0 */
    private static void m2349d0(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m2350a0(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: u */
    private void m2342u(int i) {
        int i2;
        int i3;
        int i4 = i + 4;
        int m2359N = m2359N();
        if (m2359N >= i4) {
            return;
        }
        int i5 = this.f38889f;
        do {
            i2 = m2359N + i5;
            i3 = i5 << 1;
            m2359N = i2;
            i5 = i3;
        } while (i2 < i4);
        m2355U(i3);
        C8919b c8919b = this.f38892i;
        int m2353Y = m2353Y(c8919b.f38898b + 4 + c8919b.f38899c);
        if (m2353Y < this.f38891h.f38898b) {
            FileChannel channel = this.f38888e.getChannel();
            channel.position(this.f38889f);
            long j = m2353Y - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i6 = this.f38892i.f38898b;
        int i7 = this.f38891h.f38898b;
        if (i6 < i7) {
            int i8 = (this.f38889f + i6) - 16;
            m2352Z(i3, this.f38890g, i7, i8);
            this.f38892i = new C8919b(i8, this.f38892i.f38899c);
        } else {
            m2352Z(i3, this.f38890g, i7, i6);
        }
        this.f38889f = i3;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: z */
    private static void m2340z(File file) {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile m2363D = m2363D(file2);
        try {
            m2363D.setLength(4096L);
            m2363D.seek(0L);
            byte[] bArr = new byte[16];
            m2349d0(bArr, 4096, 0, 0, 0);
            m2363D.write(bArr);
            m2363D.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            m2363D.close();
            throw th;
        }
    }

    /* renamed from: A */
    public boolean m2365A() {
        boolean z;
        synchronized (this) {
            z = this.f38890g == 0;
        }
        return z;
    }

    /* renamed from: P */
    public void m2358P() {
        synchronized (this) {
            if (m2365A()) {
                throw new NoSuchElementException();
            }
            if (this.f38890g == 1) {
                m2343q();
            } else {
                C8919b c8919b = this.f38891h;
                int m2353Y = m2353Y(c8919b.f38898b + 4 + c8919b.f38899c);
                m2357Q(m2353Y, this.f38893j, 0, 4);
                int m2360L = m2360L(this.f38893j, 0);
                m2352Z(this.f38889f, this.f38890g - 1, m2353Y, this.f38892i.f38898b);
                this.f38890g--;
                this.f38891h = new C8919b(m2353Y, m2360L);
            }
        }
    }

    /* renamed from: W */
    public int m2354W() {
        if (this.f38890g == 0) {
            return 16;
        }
        C8919b c8919b = this.f38892i;
        int i = c8919b.f38898b;
        int i2 = this.f38891h.f38898b;
        return i >= i2 ? (i - i2) + 4 + c8919b.f38899c + 16 : (((i + 4) + c8919b.f38899c) + this.f38889f) - i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f38888e.close();
        }
    }

    /* renamed from: k */
    public void m2345k(byte[] bArr) {
        m2344p(bArr, 0, bArr.length);
    }

    /* renamed from: p */
    public void m2344p(byte[] bArr, int i, int i2) {
        int i3;
        synchronized (this) {
            m2364C(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            m2342u(i2);
            boolean m2365A = m2365A();
            if (m2365A) {
                i3 = 16;
            } else {
                C8919b c8919b = this.f38892i;
                i3 = m2353Y(c8919b.f38898b + 4 + c8919b.f38899c);
            }
            C8919b c8919b2 = new C8919b(i3, i2);
            m2350a0(this.f38893j, 0, i2);
            m2356R(c8919b2.f38898b, this.f38893j, 0, 4);
            m2356R(c8919b2.f38898b + 4, bArr, i, i2);
            m2352Z(this.f38889f, this.f38890g + 1, m2365A ? c8919b2.f38898b : this.f38891h.f38898b, c8919b2.f38898b);
            this.f38892i = c8919b2;
            this.f38890g++;
            if (m2365A) {
                this.f38891h = c8919b2;
            }
        }
    }

    /* renamed from: q */
    public void m2343q() {
        synchronized (this) {
            m2352Z(4096, 0, 0, 0);
            this.f38890g = 0;
            C8919b c8919b = C8919b.f38897a;
            this.f38891h = c8919b;
            this.f38892i = c8919b;
            if (this.f38889f > 4096) {
                m2355U(4096);
            }
            this.f38889f = 4096;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C8917c.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f38889f);
        sb.append(", size=");
        sb.append(this.f38890g);
        sb.append(", first=");
        sb.append(this.f38891h);
        sb.append(", last=");
        sb.append(this.f38892i);
        sb.append(", element lengths=[");
        try {
            m2341y(new C8918a(sb));
        } catch (IOException e) {
            f38887d.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    /* renamed from: y */
    public void m2341y(AbstractC8921d abstractC8921d) {
        synchronized (this) {
            int i = this.f38891h.f38898b;
            for (int i2 = 0; i2 < this.f38890g; i2++) {
                C8919b m2362E = m2362E(i);
                abstractC8921d.mo2331a(new C8920c(this, m2362E, null), m2362E.f38899c);
                i = m2353Y(m2362E.f38898b + 4 + m2362E.f38899c);
            }
        }
    }
}

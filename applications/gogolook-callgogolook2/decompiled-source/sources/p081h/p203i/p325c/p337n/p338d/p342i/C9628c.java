package p081h.p203i.p325c.p337n.p338d.p342i;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: h.i.c.n.d.i.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/c.class */
public class C9628c implements Closeable {

    /* renamed from: g */
    public static final Logger f21931g = Logger.getLogger(C9628c.class.getName());

    /* renamed from: a */
    public final RandomAccessFile f21932a;

    /* renamed from: b */
    public int f21933b;

    /* renamed from: c */
    public int f21934c;

    /* renamed from: d */
    public C9630b f21935d;

    /* renamed from: e */
    public C9630b f21936e;

    /* renamed from: f */
    public final byte[] f21937f = new byte[16];

    /* renamed from: h.i.c.n.d.i.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/c$a.class */
    public class C9629a implements AbstractC9632d {

        /* renamed from: a */
        public boolean f21938a = true;

        /* renamed from: b */
        public final /* synthetic */ StringBuilder f21939b;

        public C9629a(C9628c cVar, StringBuilder sb) {
            this.f21939b = sb;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.C9628c.AbstractC9632d
        /* renamed from: a */
        public void mo14637a(InputStream inputStream, int i) throws IOException {
            if (this.f21938a) {
                this.f21938a = false;
            } else {
                this.f21939b.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            this.f21939b.append(i);
        }
    }

    /* renamed from: h.i.c.n.d.i.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/c$b.class */
    public static class C9630b {

        /* renamed from: c */
        public static final C9630b f21940c = new C9630b(0, 0);

        /* renamed from: a */
        public final int f21941a;

        /* renamed from: b */
        public final int f21942b;

        public C9630b(int i, int i2) {
            this.f21941a = i;
            this.f21942b = i2;
        }

        public String toString() {
            return C9630b.class.getSimpleName() + "[position = " + this.f21941a + ", length = " + this.f21942b + "]";
        }
    }

    /* renamed from: h.i.c.n.d.i.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/c$c.class */
    public final class C9631c extends InputStream {

        /* renamed from: a */
        public int f21943a;

        /* renamed from: b */
        public int f21944b;

        public C9631c(C9630b bVar) {
            this.f21943a = C9628c.this.m14648d(bVar.f21941a + 4);
            this.f21944b = bVar.f21942b;
        }

        public /* synthetic */ C9631c(C9628c cVar, C9630b bVar, C9629a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f21944b == 0) {
                return -1;
            }
            C9628c.this.f21932a.seek(this.f21943a);
            int read = C9628c.this.f21932a.read();
            this.f21943a = C9628c.this.m14648d(this.f21943a + 1);
            this.f21944b--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            C9628c.m14652b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f21944b;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C9628c.this.m14667a(this.f21943a, bArr, i, i4);
            this.f21943a = C9628c.this.m14648d(this.f21943a + i4);
            this.f21944b -= i4;
            return i4;
        }
    }

    /* renamed from: h.i.c.n.d.i.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/c$d.class */
    public interface AbstractC9632d {
        /* renamed from: a */
        void mo14637a(InputStream inputStream, int i) throws IOException;
    }

    public C9628c(File file) throws IOException {
        if (!file.exists()) {
            m14662a(file);
        }
        this.f21932a = m14653b(file);
        m14651c();
    }

    /* renamed from: a */
    public static int m14659a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m14662a(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile b = m14653b(file2);
        try {
            b.setLength(4096L);
            b.seek(0L);
            byte[] bArr = new byte[16];
            m14657a(bArr, 4096, 0, 0, 0);
            b.write(bArr);
            b.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            b.close();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m14658a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: a */
    public static void m14657a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m14658a(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: b */
    public static RandomAccessFile m14653b(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: b */
    public static <T> T m14652b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public void m14670a() throws IOException {
        synchronized (this) {
            m14668a(4096, 0, 0, 0);
            this.f21934c = 0;
            this.f21935d = C9630b.f21940c;
            this.f21936e = C9630b.f21940c;
            if (this.f21933b > 4096) {
                m14650c(4096);
            }
            this.f21933b = 4096;
        }
    }

    /* renamed from: a */
    public final void m14669a(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int d = m14649d();
        if (d < i4) {
            int i5 = this.f21933b;
            do {
                i2 = d + i5;
                i3 = i5 << 1;
                d = i2;
                i5 = i3;
            } while (i2 < i4);
            m14650c(i3);
            C9630b bVar = this.f21936e;
            int d2 = m14648d(bVar.f21941a + 4 + bVar.f21942b);
            if (d2 < this.f21935d.f21941a) {
                FileChannel channel = this.f21932a.getChannel();
                channel.position(this.f21933b);
                long j = d2 - 4;
                if (channel.transferTo(16L, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            int i6 = this.f21936e.f21941a;
            int i7 = this.f21935d.f21941a;
            if (i6 < i7) {
                int i8 = (this.f21933b + i6) - 16;
                m14668a(i3, this.f21934c, i7, i8);
                this.f21936e = new C9630b(i8, this.f21936e.f21942b);
            } else {
                m14668a(i3, this.f21934c, i7, i6);
            }
            this.f21933b = i3;
        }
    }

    /* renamed from: a */
    public final void m14668a(int i, int i2, int i3, int i4) throws IOException {
        m14657a(this.f21937f, i, i2, i3, i4);
        this.f21932a.seek(0L);
        this.f21932a.write(this.f21937f);
    }

    /* renamed from: a */
    public final void m14667a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m14648d(i);
        int i4 = this.f21933b;
        if (d + i3 <= i4) {
            this.f21932a.seek(d);
            this.f21932a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f21932a.seek(d);
        this.f21932a.readFully(bArr, i2, i5);
        this.f21932a.seek(16L);
        this.f21932a.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: a */
    public void m14666a(AbstractC9632d dVar) throws IOException {
        synchronized (this) {
            int i = this.f21935d.f21941a;
            for (int i2 = 0; i2 < this.f21934c; i2++) {
                C9630b b = m14655b(i);
                dVar.mo14637a(new C9631c(this, b, null), b.f21942b);
                i = m14648d(b.f21941a + 4 + b.f21942b);
            }
        }
    }

    /* renamed from: a */
    public void m14660a(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public void add(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            m14652b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            m14669a(i2);
            boolean b = m14656b();
            C9630b bVar = new C9630b(b ? 16 : m14648d(this.f21936e.f21941a + 4 + this.f21936e.f21942b), i2);
            m14658a(this.f21937f, 0, i2);
            m14654b(bVar.f21941a, this.f21937f, 0, 4);
            m14654b(bVar.f21941a + 4, bArr, i, i2);
            m14668a(this.f21933b, this.f21934c + 1, b ? bVar.f21941a : this.f21935d.f21941a, bVar.f21941a);
            this.f21936e = bVar;
            this.f21934c++;
            if (b) {
                this.f21935d = this.f21936e;
            }
        }
    }

    /* renamed from: b */
    public final C9630b m14655b(int i) throws IOException {
        if (i == 0) {
            return C9630b.f21940c;
        }
        this.f21932a.seek(i);
        return new C9630b(i, this.f21932a.readInt());
    }

    /* renamed from: b */
    public final void m14654b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m14648d(i);
        int i4 = this.f21933b;
        if (d + i3 <= i4) {
            this.f21932a.seek(d);
            this.f21932a.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f21932a.seek(d);
        this.f21932a.write(bArr, i2, i5);
        this.f21932a.seek(16L);
        this.f21932a.write(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: b */
    public boolean m14656b() {
        boolean z;
        synchronized (this) {
            z = this.f21934c == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final void m14651c() throws IOException {
        this.f21932a.seek(0L);
        this.f21932a.readFully(this.f21937f);
        this.f21933b = m14659a(this.f21937f, 0);
        if (this.f21933b <= this.f21932a.length()) {
            this.f21934c = m14659a(this.f21937f, 4);
            int a = m14659a(this.f21937f, 8);
            int a2 = m14659a(this.f21937f, 12);
            this.f21935d = m14655b(a);
            this.f21936e = m14655b(a2);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f21933b + ", Actual length: " + this.f21932a.length());
    }

    /* renamed from: c */
    public final void m14650c(int i) throws IOException {
        this.f21932a.setLength(i);
        this.f21932a.getChannel().force(true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.f21932a.close();
        }
    }

    /* renamed from: d */
    public final int m14649d() {
        return this.f21933b - m14646f();
    }

    /* renamed from: d */
    public final int m14648d(int i) {
        int i2 = this.f21933b;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: e */
    public void m14647e() throws IOException {
        synchronized (this) {
            if (m14656b()) {
                throw new NoSuchElementException();
            } else if (this.f21934c == 1) {
                m14670a();
            } else {
                int d = m14648d(this.f21935d.f21941a + 4 + this.f21935d.f21942b);
                m14667a(d, this.f21937f, 0, 4);
                int a = m14659a(this.f21937f, 0);
                m14668a(this.f21933b, this.f21934c - 1, d, this.f21936e.f21941a);
                this.f21934c--;
                this.f21935d = new C9630b(d, a);
            }
        }
    }

    /* renamed from: f */
    public int m14646f() {
        if (this.f21934c == 0) {
            return 16;
        }
        C9630b bVar = this.f21936e;
        int i = bVar.f21941a;
        int i2 = this.f21935d.f21941a;
        return i >= i2 ? (i - i2) + 4 + bVar.f21942b + 16 : (((i + 4) + bVar.f21942b) + this.f21933b) - i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C9628c.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f21933b);
        sb.append(", size=");
        sb.append(this.f21934c);
        sb.append(", first=");
        sb.append(this.f21935d);
        sb.append(", last=");
        sb.append(this.f21936e);
        sb.append(", element lengths=[");
        try {
            m14666a(new C9629a(this, sb));
        } catch (IOException e) {
            f21931g.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}

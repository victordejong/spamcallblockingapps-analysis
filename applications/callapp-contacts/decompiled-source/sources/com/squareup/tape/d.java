package com.squareup.tape;

import android.support.v4.media.session.PlaybackStateCompat;
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
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/d.class */
public class d {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35009c = Logger.getLogger(d.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f35010d = new byte[4096];

    /* renamed from: a  reason: collision with root package name */
    final RandomAccessFile f35011a;

    /* renamed from: b  reason: collision with root package name */
    int f35012b;
    private int e;
    private a f;
    private a g;
    private final byte[] h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final a f35016a = new a(0, 0);

        /* renamed from: b  reason: collision with root package name */
        final int f35017b;

        /* renamed from: c  reason: collision with root package name */
        final int f35018c;

        a(int i, int i2) {
            this.f35017b = i;
            this.f35018c = i2;
        }

        public final String toString() {
            return getClass().getSimpleName() + "[position = " + this.f35017b + ", length = " + this.f35018c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$b.class */
    public final class b extends InputStream {

        /* renamed from: b  reason: collision with root package name */
        private int f35020b;

        /* renamed from: c  reason: collision with root package name */
        private int f35021c;

        private b(a aVar) {
            this.f35020b = d.this.b(aVar.f35017b + 4);
            this.f35021c = aVar.f35018c;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            if (this.f35021c == 0) {
                return -1;
            }
            d.this.f35011a.seek(this.f35020b);
            int read = d.this.f35011a.read();
            this.f35020b = d.this.b(this.f35020b + 1);
            this.f35021c--;
            return read;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            d.b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f35021c;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            d.this.b(this.f35020b, bArr, i, i4);
            this.f35020b = d.this.b(this.f35020b + i4);
            this.f35021c -= i4;
            return i4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/d$c.class */
    public interface c {
        void a(int i) throws IOException;
    }

    /* JADX WARN: Finally extract failed */
    public d(File file) throws IOException {
        this.h = new byte[16];
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile a2 = a(file2);
            try {
                a2.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                a2.seek(0L);
                byte[] bArr = new byte[16];
                a(bArr, 4096, 0, 0, 0);
                a2.write(bArr);
                a2.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                a2.close();
                throw th;
            }
        }
        this.f35011a = a(file);
        d();
    }

    d(RandomAccessFile randomAccessFile) throws IOException {
        this.h = new byte[16];
        this.f35011a = randomAccessFile;
        d();
    }

    private a a(int i) throws IOException {
        if (i == 0) {
            return a.f35016a;
        }
        b(i, this.h, 0, 4);
        return new a(i, b(this.h, 0));
    }

    private static RandomAccessFile a(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private void a(int i, int i2) throws IOException {
        while (i2 > 0) {
            byte[] bArr = f35010d;
            int min = Math.min(i2, bArr.length);
            a(i, bArr, 0, min);
            i2 -= min;
            i += min;
        }
    }

    private void a(int i, int i2, int i3, int i4) throws IOException {
        a(this.h, i, i2, i3, i4);
        this.f35011a.seek(0L);
        this.f35011a.write(this.h);
    }

    private void a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b2 = b(i);
        int i4 = this.f35012b;
        if (b2 + i3 <= i4) {
            this.f35011a.seek(b2);
            this.f35011a.write(bArr, 0, i3);
            return;
        }
        int i5 = i4 - b2;
        this.f35011a.seek(b2);
        this.f35011a.write(bArr, 0, i5);
        this.f35011a.seek(16L);
        this.f35011a.write(bArr, i5 + 0, i3 - i5);
    }

    private void a(c cVar) throws IOException {
        synchronized (this) {
            int i = this.f.f35017b;
            for (int i2 = 0; i2 < this.e; i2++) {
                a a2 = a(i);
                new b(a2);
                cVar.a(a2.f35018c);
                i = b(a2.f35017b + 4 + a2.f35018c);
            }
        }
    }

    private static void a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            a(bArr, i, iArr[i2]);
            i += 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(int i) {
        int i2 = this.f35012b;
        return i < i2 ? i : (i + 16) - i2;
    }

    private static int b(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b2 = b(i);
        int i4 = this.f35012b;
        if (b2 + i3 <= i4) {
            this.f35011a.seek(b2);
            this.f35011a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - b2;
        this.f35011a.seek(b2);
        this.f35011a.readFully(bArr, i2, i5);
        this.f35011a.seek(16L);
        this.f35011a.readFully(bArr, i2 + i5, i3 - i5);
    }

    private void c(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int usedBytes = this.f35012b - usedBytes();
        if (usedBytes < i4) {
            int i5 = this.f35012b;
            do {
                i2 = usedBytes + i5;
                i3 = i5 << 1;
                usedBytes = i2;
                i5 = i3;
            } while (i2 < i4);
            d(i3);
            int b2 = b(this.g.f35017b + 4 + this.g.f35018c);
            if (b2 <= this.f.f35017b) {
                FileChannel channel = this.f35011a.getChannel();
                channel.position(this.f35012b);
                int i6 = b2 - 16;
                long j = i6;
                if (channel.transferTo(16L, j, channel) == j) {
                    a(16, i6);
                } else {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.g.f35017b < this.f.f35017b) {
                int i7 = (this.f35012b + this.g.f35017b) - 16;
                a(i3, this.e, this.f.f35017b, i7);
                this.g = new a(i7, this.g.f35018c);
            } else {
                a(i3, this.e, this.f.f35017b, this.g.f35017b);
            }
            this.f35012b = i3;
        }
    }

    private void d() throws IOException {
        this.f35011a.seek(0L);
        this.f35011a.readFully(this.h);
        int b2 = b(this.h, 0);
        this.f35012b = b2;
        if (b2 > this.f35011a.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f35012b + ", Actual length: " + this.f35011a.length());
        } else if (this.f35012b != 0) {
            this.e = b(this.h, 4);
            int b3 = b(this.h, 8);
            int b4 = b(this.h, 12);
            this.f = a(b3);
            this.g = a(b4);
        } else {
            throw new IOException("File is corrupt; length stored in header is 0.");
        }
    }

    private void d(int i) throws IOException {
        this.f35011a.setLength(i);
        this.f35011a.getChannel().force(true);
    }

    private boolean e() {
        boolean z;
        synchronized (this) {
            z = this.e == 0;
        }
        return z;
    }

    private void f() throws IOException {
        synchronized (this) {
            this.f35011a.seek(0L);
            this.f35011a.write(f35010d);
            a(4096, 0, 0, 0);
            this.e = 0;
            this.f = a.f35016a;
            this.g = a.f35016a;
            if (this.f35012b > 4096) {
                d(4096);
            }
            this.f35012b = 4096;
        }
    }

    private int usedBytes() {
        if (this.e == 0) {
            return 16;
        }
        return this.g.f35017b >= this.f.f35017b ? (this.g.f35017b - this.f.f35017b) + 4 + this.g.f35018c + 16 : (((this.g.f35017b + 4) + this.g.f35018c) + this.f35012b) - this.f.f35017b;
    }

    public final void a(byte[] bArr, int i) throws IOException {
        synchronized (this) {
            b(bArr, "buffer");
            if ((i | 0) < 0 || i > bArr.length - 0) {
                throw new IndexOutOfBoundsException();
            }
            c(i);
            boolean e = e();
            a aVar = new a(e ? 16 : b(this.g.f35017b + 4 + this.g.f35018c), i);
            a(this.h, 0, i);
            a(aVar.f35017b, this.h, 0, 4);
            a(aVar.f35017b + 4, bArr, 0, i);
            a(this.f35012b, this.e + 1, e ? aVar.f35017b : this.f.f35017b, aVar.f35017b);
            this.g = aVar;
            this.e++;
            if (e) {
                this.f = aVar;
            }
        }
    }

    public final byte[] a() throws IOException {
        synchronized (this) {
            if (e()) {
                return null;
            }
            int i = this.f.f35018c;
            byte[] bArr = new byte[i];
            b(this.f.f35017b + 4, bArr, 0, i);
            return bArr;
        }
    }

    public final int b() {
        int i;
        synchronized (this) {
            i = this.e;
        }
        return i;
    }

    public final void c() throws IOException {
        synchronized (this) {
            if (e()) {
                throw new NoSuchElementException();
            } else if (this.e == 1) {
                f();
            } else {
                int i = this.f.f35018c + 4;
                a(this.f.f35017b, i);
                int b2 = b(this.f.f35017b + i);
                b(b2, this.h, 0, 4);
                int b3 = b(this.h, 0);
                a(this.f35012b, this.e - 1, b2, this.g.f35017b);
                this.e--;
                this.f = new a(b2, b3);
            }
        }
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f35012b);
        sb.append(", size=");
        sb.append(this.e);
        sb.append(", first=");
        sb.append(this.f);
        sb.append(", last=");
        sb.append(this.g);
        sb.append(", element lengths=[");
        try {
            a(new c() { // from class: com.squareup.tape.d.1

                /* renamed from: a  reason: collision with root package name */
                boolean f35013a = true;

                @Override // com.squareup.tape.d.c
                public final void a(int i) throws IOException {
                    if (this.f35013a) {
                        this.f35013a = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i);
                }
            });
        } catch (IOException e) {
            f35009c.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}

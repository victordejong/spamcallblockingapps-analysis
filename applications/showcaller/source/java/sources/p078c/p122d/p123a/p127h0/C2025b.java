package p078c.p122d.p123a.p127h0;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import p078c.p122d.p123a.p128i0.C2031c;
/* renamed from: c.d.a.h0.b */
/* loaded from: classes2-dex2jar.jar:c/d/a/h0/b.class */
public class C2025b implements AbstractC2024a {

    /* renamed from: a */
    private final BufferedOutputStream f7143a;

    /* renamed from: b */
    private final FileDescriptor f7144b;

    /* renamed from: c */
    private final RandomAccessFile f7145c;

    /* renamed from: c.d.a.h0.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/h0/b$a.class */
    public static class C2026a implements C2031c.AbstractC2035d {
        @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2035d
        /* renamed from: a */
        public AbstractC2024a mo28255a(File file) {
            return new C2025b(file);
        }

        @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2035d
        /* renamed from: b */
        public boolean mo28254b() {
            return true;
        }
    }

    C2025b(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f7145c = randomAccessFile;
        this.f7144b = randomAccessFile.getFD();
        this.f7143a = new BufferedOutputStream(new FileOutputStream(randomAccessFile.getFD()));
    }

    @Override // p078c.p122d.p123a.p127h0.AbstractC2024a
    /* renamed from: a */
    public void mo28278a(long j) {
        this.f7145c.setLength(j);
    }

    @Override // p078c.p122d.p123a.p127h0.AbstractC2024a
    /* renamed from: b */
    public void mo28277b() {
        this.f7143a.flush();
        this.f7144b.sync();
    }

    @Override // p078c.p122d.p123a.p127h0.AbstractC2024a
    /* renamed from: c */
    public void mo28276c(long j) {
        this.f7145c.seek(j);
    }

    @Override // p078c.p122d.p123a.p127h0.AbstractC2024a
    public void close() {
        this.f7143a.close();
        this.f7145c.close();
    }

    @Override // p078c.p122d.p123a.p127h0.AbstractC2024a
    public void write(byte[] bArr, int i, int i2) {
        this.f7143a.write(bArr, i, i2);
    }
}

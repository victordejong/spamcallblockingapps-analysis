package p092e.p096e.p097a.p101g0;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: e.e.a.g0.b */
/* loaded from: classes2-dex2jar.jar:e/e/a/g0/b.class */
public class C3048b implements AbstractC3047a {

    /* renamed from: a */
    private final BufferedOutputStream f12673a;

    /* renamed from: b */
    private final FileDescriptor f12674b;

    /* renamed from: c */
    private final RandomAccessFile f12675c;

    /* renamed from: e.e.a.g0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/g0/b$a.class */
    public static class C3049a implements C3056c.AbstractC3061e {
        @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3061e
        /* renamed from: a */
        public AbstractC3047a mo416a(File file) {
            return new C3048b(file);
        }

        @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3061e
        /* renamed from: b */
        public boolean mo415b() {
            return true;
        }
    }

    C3048b(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f12675c = randomAccessFile;
        this.f12674b = randomAccessFile.getFD();
        this.f12673a = new BufferedOutputStream(new FileOutputStream(randomAccessFile.getFD()));
    }

    @Override // p092e.p096e.p097a.p101g0.AbstractC3047a
    /* renamed from: a */
    public void mo447a(long j) {
        this.f12675c.setLength(j);
    }

    @Override // p092e.p096e.p097a.p101g0.AbstractC3047a
    /* renamed from: b */
    public void mo446b() {
        this.f12673a.flush();
        this.f12674b.sync();
    }

    @Override // p092e.p096e.p097a.p101g0.AbstractC3047a
    /* renamed from: c */
    public void mo445c(long j) {
        this.f12675c.seek(j);
    }

    @Override // p092e.p096e.p097a.p101g0.AbstractC3047a
    public void close() {
        this.f12673a.close();
        this.f12675c.close();
    }

    @Override // p092e.p096e.p097a.p101g0.AbstractC3047a
    public void write(byte[] bArr, int i, int i2) {
        this.f12673a.write(bArr, i, i2);
    }
}

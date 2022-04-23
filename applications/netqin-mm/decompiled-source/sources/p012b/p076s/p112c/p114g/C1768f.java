package p012b.p076s.p112c.p114g;

import android.net.Uri;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.c.g.f */
/* loaded from: classes-dex2jar.jar:b/s/c/g/f.class */
public class C1768f extends AbstractC1681d {

    /* renamed from: e */
    public final FileDescriptor f7124e;

    /* renamed from: f */
    public final long f7125f;

    /* renamed from: g */
    public final long f7126g;

    /* renamed from: h */
    public final Object f7127h;

    /* renamed from: i */
    public Uri f7128i;

    /* renamed from: j */
    public InputStream f7129j;

    /* renamed from: k */
    public long f7130k;

    /* renamed from: l */
    public boolean f7131l;

    /* renamed from: m */
    public long f7132m;

    /* renamed from: b.s.c.g.f$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/f$a.class */
    public static final class C1769a implements AbstractC1684g.AbstractC1685a {

        /* renamed from: a */
        public final /* synthetic */ FileDescriptor f7133a;

        /* renamed from: b */
        public final /* synthetic */ long f7134b;

        /* renamed from: c */
        public final /* synthetic */ long f7135c;

        /* renamed from: d */
        public final /* synthetic */ Object f7136d;

        public C1769a(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
            this.f7133a = fileDescriptor;
            this.f7134b = j;
            this.f7135c = j2;
            this.f7136d = obj;
        }

        @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g.AbstractC1685a
        public AbstractC1684g createDataSource() {
            return new C1768f(this.f7133a, this.f7134b, this.f7135c, this.f7136d);
        }
    }

    public C1768f(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
        super(false);
        this.f7124e = fileDescriptor;
        this.f7125f = j;
        this.f7126g = j2;
        this.f7127h = obj;
    }

    /* renamed from: a */
    public static AbstractC1684g.AbstractC1685a m32143a(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
        return new C1769a(fileDescriptor, j, j2, obj);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) {
        this.f7128i = iVar.f6883a;
        m32391b(iVar);
        this.f7129j = new FileInputStream(this.f7124e);
        long j = iVar.f6888f;
        if (j != -1) {
            this.f7130k = j;
        } else {
            long j2 = this.f7126g;
            if (j2 != -1) {
                this.f7130k = j2 - iVar.f6887e;
            } else {
                this.f7130k = -1L;
            }
        }
        this.f7132m = this.f7125f + iVar.f6887e;
        this.f7131l = true;
        m32390c(iVar);
        return this.f7130k;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        this.f7128i = null;
        try {
            if (this.f7129j != null) {
                this.f7129j.close();
            }
            this.f7129j = null;
            if (this.f7131l) {
                this.f7131l = false;
                m32393a();
            }
        } catch (Throwable th) {
            this.f7129j = null;
            if (this.f7131l) {
                this.f7131l = false;
                m32393a();
            }
            throw th;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        Uri uri = this.f7128i;
        C0948h.m35442a(uri);
        return uri;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f7130k;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        synchronized (this.f7127h) {
            C1770g.m32140a(this.f7124e, this.f7132m);
            InputStream inputStream = this.f7129j;
            C0948h.m35442a(inputStream);
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                long j2 = read;
                this.f7132m += j2;
                long j3 = this.f7130k;
                if (j3 != -1) {
                    this.f7130k = j3 - j2;
                }
                m32392a(read);
                return read;
            } else if (this.f7130k == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        }
    }
}

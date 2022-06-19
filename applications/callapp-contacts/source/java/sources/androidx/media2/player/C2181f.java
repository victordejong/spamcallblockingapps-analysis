package androidx.media2.player;

import android.net.Uri;
import androidx.core.p036e.C0833d;
import androidx.media2.exoplayer.external.upstream.AbstractC1966d;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1971h;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: androidx.media2.player.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/f.class */
final class C2181f extends AbstractC1966d {

    /* renamed from: a */
    private final FileDescriptor f8587a;

    /* renamed from: b */
    private final long f8588b;

    /* renamed from: c */
    private final long f8589c;

    /* renamed from: d */
    private final Object f8590d;

    /* renamed from: e */
    private Uri f8591e;

    /* renamed from: f */
    private InputStream f8592f;

    /* renamed from: g */
    private long f8593g;

    /* renamed from: h */
    private boolean f8594h;

    /* renamed from: i */
    private long f8595i;

    C2181f(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
        super(false);
        this.f8587a = fileDescriptor;
        this.f8588b = j;
        this.f8589c = j2;
        this.f8590d = obj;
    }

    /* renamed from: a */
    public static AbstractC1968f.AbstractC1969a m41198a(final FileDescriptor fileDescriptor, final long j, final long j2, final Object obj) {
        return new AbstractC1968f.AbstractC1969a() { // from class: androidx.media2.player.f.1
            @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f.AbstractC1969a
            /* renamed from: a */
            public final AbstractC1968f mo41195a() {
                return new C2181f(fileDescriptor, j, j2, obj);
            }
        };
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8593g;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        synchronized (this.f8590d) {
            C2183g.m41194a(this.f8587a, this.f8595i);
            int read = ((InputStream) C0833d.m44410a(this.f8592f)).read(bArr, i, i2);
            if (read == -1) {
                if (this.f8593g != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            long j2 = read;
            this.f8595i += j2;
            long j3 = this.f8593g;
            if (j3 != -1) {
                this.f8593g = j3 - j2;
            }
            m41743a(read);
            return read;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) {
        this.f8591e = c1971h.f7952a;
        m41741d();
        this.f8592f = new FileInputStream(this.f8587a);
        if (c1971h.f7958g != -1) {
            this.f8593g = c1971h.f7958g;
        } else {
            long j = this.f8589c;
            if (j != -1) {
                this.f8593g = j - c1971h.f7957f;
            } else {
                this.f8593g = -1L;
            }
        }
        this.f8595i = this.f8588b + c1971h.f7957f;
        this.f8594h = true;
        m41742b(c1971h);
        return this.f8593g;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return (Uri) C0833d.m44410a(this.f8591e);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws IOException {
        this.f8591e = null;
        try {
            InputStream inputStream = this.f8592f;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f8592f = null;
            if (!this.f8594h) {
                return;
            }
            this.f8594h = false;
            m41740e();
        } catch (Throwable th) {
            this.f8592f = null;
            if (this.f8594h) {
                this.f8594h = false;
                m41740e();
            }
            throw th;
        }
    }
}

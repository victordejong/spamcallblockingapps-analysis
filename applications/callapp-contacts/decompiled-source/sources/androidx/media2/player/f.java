package androidx.media2.player;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.d;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/f.class */
final class f extends d {

    /* renamed from: a  reason: collision with root package name */
    private final FileDescriptor f4441a;

    /* renamed from: b  reason: collision with root package name */
    private final long f4442b;

    /* renamed from: c  reason: collision with root package name */
    private final long f4443c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f4444d;
    private Uri e;
    private InputStream f;
    private long g;
    private boolean h;
    private long i;

    f(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
        super(false);
        this.f4441a = fileDescriptor;
        this.f4442b = j;
        this.f4443c = j2;
        this.f4444d = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f.a a(final FileDescriptor fileDescriptor, final long j, final long j2, final Object obj) {
        return new f.a() { // from class: androidx.media2.player.f.1
            @Override // androidx.media2.exoplayer.external.upstream.f.a
            public final androidx.media2.exoplayer.external.upstream.f a() {
                return new f(fileDescriptor, j, j2, obj);
            }
        };
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.g;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        synchronized (this.f4444d) {
            g.a(this.f4441a, this.i);
            int read = ((InputStream) androidx.core.e.d.a(this.f)).read(bArr, i, i2);
            if (read != -1) {
                long j2 = read;
                this.i += j2;
                long j3 = this.g;
                if (j3 != -1) {
                    this.g = j3 - j2;
                }
                a(read);
                return read;
            } else if (this.g == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) {
        this.e = hVar.f4064a;
        d();
        this.f = new FileInputStream(this.f4441a);
        if (hVar.g != -1) {
            this.g = hVar.g;
        } else {
            long j = this.f4443c;
            if (j != -1) {
                this.g = j - hVar.f;
            } else {
                this.g = -1L;
            }
        }
        this.i = this.f4442b + hVar.f;
        this.h = true;
        b(hVar);
        return this.g;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return (Uri) androidx.core.e.d.a(this.e);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws IOException {
        this.e = null;
        try {
            InputStream inputStream = this.f;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f = null;
            if (this.h) {
                this.h = false;
                e();
            }
        } catch (Throwable th) {
            this.f = null;
            if (this.h) {
                this.h = false;
                e();
            }
            throw th;
        }
    }
}

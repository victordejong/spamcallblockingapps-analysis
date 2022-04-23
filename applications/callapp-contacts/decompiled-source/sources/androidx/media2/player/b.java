package androidx.media2.player;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.d;
import androidx.media2.exoplayer.external.upstream.h;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/b.class */
final class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private final androidx.media2.common.b f4345a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4346b;

    /* renamed from: c  reason: collision with root package name */
    private long f4347c;

    /* renamed from: d  reason: collision with root package name */
    private long f4348d;
    private boolean e;

    b(androidx.media2.common.b bVar) {
        super(false);
        this.f4345a = (androidx.media2.common.b) androidx.core.e.d.a(bVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f4348d;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            Math.min(j, i2);
        }
        int a2 = this.f4345a.a();
        if (a2 >= 0) {
            long j2 = a2;
            this.f4347c += j2;
            long j3 = this.f4348d;
            if (j3 != -1) {
                this.f4348d = j3 - j2;
            }
            a(a2);
            return a2;
        } else if (this.f4348d == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        this.f4346b = hVar.f4064a;
        this.f4347c = hVar.f;
        d();
        long b2 = this.f4345a.b();
        if (hVar.g != -1) {
            this.f4348d = hVar.g;
        } else if (b2 != -1) {
            this.f4348d = b2 - this.f4347c;
        } else {
            this.f4348d = -1L;
        }
        this.e = true;
        b(hVar);
        return this.f4348d;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4346b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() {
        this.f4346b = null;
        if (this.e) {
            this.e = false;
            e();
        }
    }
}

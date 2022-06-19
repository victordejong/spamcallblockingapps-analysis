package androidx.media2.player;

import android.net.Uri;
import androidx.core.p036e.C0833d;
import androidx.media2.common.AbstractC1355b;
import androidx.media2.exoplayer.external.upstream.AbstractC1966d;
import androidx.media2.exoplayer.external.upstream.C1971h;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: androidx.media2.player.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/b.class */
final class C2130b extends AbstractC1966d {

    /* renamed from: a */
    private final AbstractC1355b f8458a;

    /* renamed from: b */
    private Uri f8459b;

    /* renamed from: c */
    private long f8460c;

    /* renamed from: d */
    private long f8461d;

    /* renamed from: e */
    private boolean f8462e;

    C2130b(AbstractC1355b abstractC1355b) {
        super(false);
        this.f8458a = (AbstractC1355b) C0833d.m44410a(abstractC1355b);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f8461d;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            Math.min(j, i2);
        }
        int m43172a = this.f8458a.m43172a();
        if (m43172a < 0) {
            if (this.f8461d != -1) {
                throw new EOFException();
            }
            return -1;
        }
        long j2 = m43172a;
        this.f8460c += j2;
        long j3 = this.f8461d;
        if (j3 != -1) {
            this.f8461d = j3 - j2;
        }
        m41743a(m43172a);
        return m43172a;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        this.f8459b = c1971h.f7952a;
        this.f8460c = c1971h.f7957f;
        m41741d();
        long m43171b = this.f8458a.m43171b();
        if (c1971h.f7958g != -1) {
            this.f8461d = c1971h.f7958g;
        } else if (m43171b != -1) {
            this.f8461d = m43171b - this.f8460c;
        } else {
            this.f8461d = -1L;
        }
        this.f8462e = true;
        m41742b(c1971h);
        return this.f8461d;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f8459b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() {
        this.f8459b = null;
        if (this.f8462e) {
            this.f8462e = false;
            m41740e();
        }
    }
}

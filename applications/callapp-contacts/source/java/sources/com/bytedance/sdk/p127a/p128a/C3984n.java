package com.bytedance.sdk.p127a.p128a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.a.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/n.class */
public final class C3984n implements AbstractC3972e {

    /* renamed from: a */
    public final C3969c f14447a = new C3969c();

    /* renamed from: b */
    public final AbstractC3990s f14448b;

    /* renamed from: c */
    boolean f14449c;

    public C3984n(AbstractC3990s abstractC3990s) {
        Objects.requireNonNull(abstractC3990s, "source == null");
        this.f14448b = abstractC3990s;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final long mo37068a(byte b) throws IOException {
        return m37067a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.bytedance.sdk.a.a.c] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: a */
    public final long m37067a(byte b, long j, long j2) throws IOException {
        if (!this.f14449c) {
            if (j >= 0) {
                int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                ?? r11 = j;
                if (i >= 0) {
                    while (r11 < j2) {
                        long m37135a = this.f14447a.m37135a(b, r11, j2);
                        if (m37135a != -1) {
                            return m37135a;
                        }
                        long j3 = this.f14447a.f14419b;
                        if (j3 >= j2 || this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                            return -1L;
                        }
                        r11 = Math.max((long) r11, j3);
                    }
                    return -1L;
                }
            }
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final long mo36719a(C3969c c3969c, long j) throws IOException {
        if (c3969c != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            if (this.f14449c) {
                throw new IllegalStateException("closed");
            }
            if (this.f14447a.f14419b == 0 && this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            return this.f14447a.mo36719a(c3969c, Math.min(j, this.f14447a.f14419b));
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final C3991t mo36720a() {
        return this.f14448b.mo36720a();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final String mo37063a(Charset charset) throws IOException {
        if (charset != null) {
            this.f14447a.m37129a(this.f14448b);
            return this.f14447a.mo37063a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final void mo37066a(long j) throws IOException {
        if (m37061b(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final void mo37062a(byte[] bArr) throws IOException {
        try {
            mo37066a(bArr.length);
            this.f14447a.mo37062a(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (this.f14447a.f14419b <= 0) {
                    throw e;
                }
                C3969c c3969c = this.f14447a;
                int m37125a = c3969c.m37125a(bArr, i2, (int) c3969c.f14419b);
                if (m37125a == -1) {
                    throw new AssertionError();
                }
                i = i2 + m37125a;
            }
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final boolean mo37065a(long j, C3973f c3973f) throws IOException {
        return m37064a(j, c3973f, 0, c3973f.mo37026g());
    }

    /* renamed from: a */
    public final boolean m37064a(long j, C3973f c3973f, int i, int i2) throws IOException {
        if (!this.f14449c) {
            if (j < 0 || i < 0 || i2 < 0 || c3973f.mo37026g() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!m37061b(1 + j2) || this.f14447a.m37122b(j2) != c3973f.mo37037a(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    /* renamed from: b */
    public final boolean m37061b(long j) throws IOException {
        if (j >= 0) {
            if (this.f14449c) {
                throw new IllegalStateException("closed");
            }
            while (this.f14447a.f14419b < j) {
                if (this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: c */
    public final C3969c mo37060c() {
        return this.f14447a;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: c */
    public final C3973f mo37059c(long j) throws IOException {
        mo37066a(j);
        return this.f14447a.mo37059c(j);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f14449c) {
            return;
        }
        this.f14449c = true;
        this.f14448b.close();
        this.f14447a.m37106r();
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: e */
    public final String mo37057e(long j) throws IOException {
        if (j >= 0) {
            char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
            long m37067a = m37067a((byte) 10, 0L, c);
            if (m37067a != -1) {
                return this.f14447a.m37113f(m37067a);
            }
            if (c < Long.MAX_VALUE && m37061b(c) && this.f14447a.m37122b(c - 1) == 13 && m37061b(1 + c) && this.f14447a.m37122b((long) c) == 10) {
                return this.f14447a.m37113f((long) c);
            }
            C3969c c3969c = new C3969c();
            C3969c c3969c2 = this.f14447a;
            c3969c2.m37131a(c3969c, 0L, Math.min(32L, c3969c2.m37124b()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f14447a.m37124b(), j) + " content=" + c3969c.m37109n().mo37028e() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: e */
    public final boolean mo37058e() throws IOException {
        if (!this.f14449c) {
            return this.f14447a.mo37058e() && this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: f */
    public final InputStream mo37056f() {
        return new InputStream() { // from class: com.bytedance.sdk.a.a.n.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                if (!C3984n.this.f14449c) {
                    return (int) Math.min(C3984n.this.f14447a.f14419b, 2147483647L);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                C3984n.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (!C3984n.this.f14449c) {
                    if (C3984n.this.f14447a.f14419b != 0 || C3984n.this.f14448b.mo36719a(C3984n.this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                        return C3984n.this.f14447a.mo37054h() & 255;
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (!C3984n.this.f14449c) {
                    C3993u.m37014a(bArr.length, i, i2);
                    if (C3984n.this.f14447a.f14419b != 0 || C3984n.this.f14448b.mo36719a(C3984n.this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                        return C3984n.this.f14447a.m37125a(bArr, i, i2);
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            public String toString() {
                return C3984n.this + ".inputStream()";
            }
        };
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: g */
    public final byte[] mo37055g(long j) throws IOException {
        mo37066a(j);
        return this.f14447a.mo37055g(j);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: h */
    public final byte mo37054h() throws IOException {
        mo37066a(1L);
        return this.f14447a.mo37054h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: h */
    public final void mo37053h(long j) throws IOException {
        ?? r6 = j;
        if (!this.f14449c) {
            while (r6 > 0) {
                if (this.f14447a.f14419b == 0 && this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.f14447a.m37124b());
                this.f14447a.mo37053h(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: i */
    public final short mo37052i() throws IOException {
        mo37066a(2L);
        return this.f14447a.mo37052i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f14449c;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: j */
    public final int mo37051j() throws IOException {
        mo37066a(4L);
        return this.f14447a.mo37051j();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: k */
    public final short mo37050k() throws IOException {
        mo37066a(2L);
        return this.f14447a.mo37050k();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: l */
    public final int mo37049l() throws IOException {
        mo37066a(4L);
        return this.f14447a.mo37049l();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: m */
    public final long mo37048m() throws IOException {
        int i;
        byte m37122b;
        mo37066a(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!m37061b(i3)) {
                break;
            }
            m37122b = this.f14447a.m37122b(i);
            if ((m37122b < 48 || m37122b > 57) && ((m37122b < 97 || m37122b > 102) && (m37122b < 65 || m37122b > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(m37122b)));
        }
        return this.f14447a.mo37048m();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: p */
    public final String mo37047p() throws IOException {
        return mo37057e(Long.MAX_VALUE);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.f14447a.f14419b == 0 && this.f14448b.mo36719a(this.f14447a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f14447a.read(byteBuffer);
    }

    public final String toString() {
        return "buffer(" + this.f14448b + ")";
    }
}

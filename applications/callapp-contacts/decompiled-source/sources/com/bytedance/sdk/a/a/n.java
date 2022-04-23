package com.bytedance.sdk.a.a;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/n.class */
public final class n implements e {

    /* renamed from: a  reason: collision with root package name */
    public final c f7811a = new c();

    /* renamed from: b  reason: collision with root package name */
    public final s f7812b;

    /* renamed from: c  reason: collision with root package name */
    boolean f7813c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(s sVar) {
        Objects.requireNonNull(sVar, "source == null");
        this.f7812b = sVar;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final long a(byte b2) throws IOException {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public final long a(byte b2, long j, long j2) throws IOException {
        if (this.f7813c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        } else {
            while (j < j2) {
                long a2 = this.f7811a.a(b2, j, j2);
                if (a2 != -1) {
                    return a2;
                }
                long j3 = this.f7811a.f7785b;
                if (j3 >= j2 || this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1L;
                }
                j = Math.max(j, j3);
            }
            return -1L;
        }
    }

    @Override // com.bytedance.sdk.a.a.s
    public final long a(c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.f7813c) {
            throw new IllegalStateException("closed");
        } else if (this.f7811a.f7785b == 0 && this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        } else {
            return this.f7811a.a(cVar, Math.min(j, this.f7811a.f7785b));
        }
    }

    @Override // com.bytedance.sdk.a.a.s
    public final t a() {
        return this.f7812b.a();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String a(Charset charset) throws IOException {
        if (charset != null) {
            this.f7811a.a(this.f7812b);
            return this.f7811a.a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final void a(byte[] bArr) throws IOException {
        try {
            a(bArr.length);
            this.f7811a.a(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.f7811a.f7785b > 0) {
                c cVar = this.f7811a;
                int a2 = cVar.a(bArr, i, (int) cVar.f7785b);
                if (a2 != -1) {
                    i += a2;
                } else {
                    throw new AssertionError();
                }
            }
            throw e;
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final boolean a(long j, f fVar) throws IOException {
        return a(j, fVar, 0, fVar.g());
    }

    public final boolean a(long j, f fVar, int i, int i2) throws IOException {
        if (this.f7813c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || i < 0 || i2 < 0 || fVar.g() - i < i2) {
            return false;
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!(b(1 + j2) && this.f7811a.b(j2) == fVar.a(i + i3))) {
                    return false;
                }
            }
            return true;
        }
    }

    public final boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (!this.f7813c) {
            while (this.f7811a.f7785b < j) {
                if (this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return false;
                }
            }
            return true;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final c c() {
        return this.f7811a;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final f c(long j) throws IOException {
        a(j);
        return this.f7811a.c(j);
    }

    @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f7813c) {
            this.f7813c = true;
            this.f7812b.close();
            this.f7811a.r();
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String e(long j) throws IOException {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return this.f7811a.f(a2);
            }
            if (j2 < Long.MAX_VALUE && b(j2) && this.f7811a.b(j2 - 1) == 13 && b(1 + j2) && this.f7811a.b(j2) == 10) {
                return this.f7811a.f(j2);
            }
            c cVar = new c();
            c cVar2 = this.f7811a;
            cVar2.a(cVar, 0L, Math.min(32L, cVar2.b()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f7811a.b(), j) + " content=" + cVar.n().e() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.a.a.e
    public final boolean e() throws IOException {
        if (!this.f7813c) {
            return this.f7811a.e() && this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final InputStream f() {
        return new InputStream() { // from class: com.bytedance.sdk.a.a.n.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                if (!n.this.f7813c) {
                    return (int) Math.min(n.this.f7811a.f7785b, 2147483647L);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                n.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (n.this.f7813c) {
                    throw new IOException("closed");
                } else if (n.this.f7811a.f7785b == 0 && n.this.f7812b.a(n.this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                } else {
                    return n.this.f7811a.h() & 255;
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (!n.this.f7813c) {
                    u.a(bArr.length, i, i2);
                    if (n.this.f7811a.f7785b == 0 && n.this.f7812b.a(n.this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                        return -1;
                    }
                    return n.this.f7811a.a(bArr, i, i2);
                }
                throw new IOException("closed");
            }

            public String toString() {
                return n.this + ".inputStream()";
            }
        };
    }

    @Override // com.bytedance.sdk.a.a.e
    public final byte[] g(long j) throws IOException {
        a(j);
        return this.f7811a.g(j);
    }

    @Override // com.bytedance.sdk.a.a.e
    public final byte h() throws IOException {
        a(1L);
        return this.f7811a.h();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final void h(long j) throws IOException {
        if (!this.f7813c) {
            while (j > 0) {
                if (this.f7811a.f7785b == 0 && this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f7811a.b());
                this.f7811a.h(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final short i() throws IOException {
        a(2L);
        return this.f7811a.i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f7813c;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final int j() throws IOException {
        a(4L);
        return this.f7811a.j();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final short k() throws IOException {
        a(2L);
        return this.f7811a.k();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final int l() throws IOException {
        a(4L);
        return this.f7811a.l();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final long m() throws IOException {
        byte b2;
        a(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!b(i2)) {
                break;
            }
            b2 = this.f7811a.b(i);
            if ((b2 < 48 || b2 > 57) && ((b2 < 97 || b2 > 102) && (b2 < 65 || b2 > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(b2)));
        }
        return this.f7811a.m();
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String p() throws IOException {
        return e(Long.MAX_VALUE);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.f7811a.f7785b == 0 && this.f7812b.a(this.f7811a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f7811a.read(byteBuffer);
    }

    public final String toString() {
        return "buffer(" + this.f7812b + ")";
    }
}

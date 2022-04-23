package com.uservoice.uservoicesdk.j;

import a.a.b.b;
import com.b.a.p;
import com.b.a.u;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/j/c.class */
public final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private u f4701a;

    public c(u uVar) {
        this.f4701a = uVar;
    }

    @Override // a.a.b.b
    public final String a() {
        return this.f4701a.f3345b;
    }

    @Override // a.a.b.b
    public final String a(String str) {
        return this.f4701a.a(str);
    }

    @Override // a.a.b.b
    public final void a(String str, String str2) {
        p a2 = this.f4701a.c.a().a(str, str2).a();
        u.a aVar = new u.a();
        aVar.d = a2.a();
        this.f4701a = aVar.a(this.f4701a.a()).a(this.f4701a.f3345b, this.f4701a.d).a();
    }

    @Override // a.a.b.b
    public final String b() {
        return this.f4701a.f3344a;
    }

    @Override // a.a.b.b
    public final InputStream c() {
        new ByteArrayOutputStream((int) this.f4701a.d.b());
        final b.c cVar = new b.c();
        this.f4701a.d.a(cVar);
        return new InputStream() { // from class: b.c.1
            @Override // java.io.InputStream
            public final int available() {
                return (int) Math.min(cVar.f318b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.InputStream
            public final int read() {
                return cVar.f318b > 0 ? cVar.e() & 255 : -1;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) {
                return cVar.a(bArr, i, i2);
            }

            public final String toString() {
                return cVar + ".inputStream()";
            }
        };
    }

    @Override // a.a.b.b
    public final String d() {
        String str = null;
        if (this.f4701a.d != null) {
            str = null;
            if (this.f4701a.d.a() != null) {
                str = this.f4701a.d.a().toString();
            }
        }
        return str;
    }

    @Override // a.a.b.b
    public final Object e() {
        return this.f4701a;
    }
}

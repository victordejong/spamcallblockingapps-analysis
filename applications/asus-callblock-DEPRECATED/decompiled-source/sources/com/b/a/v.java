package com.b.a;

import b.d;
import com.b.a.a.h;
/* loaded from: classes-dex2jar.jar:com/b/a/v.class */
public abstract class v {
    public static v a(final r rVar, final byte[] bArr) {
        final int length = bArr.length;
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        h.a(bArr.length, length);
        return new v() { // from class: com.b.a.v.1
            final /* synthetic */ int d = 0;

            @Override // com.b.a.v
            public final r a() {
                return r.this;
            }

            @Override // com.b.a.v
            public final void a(d dVar) {
                dVar.c(bArr, this.d, length);
            }

            @Override // com.b.a.v
            public final long b() {
                return length;
            }
        };
    }

    public abstract r a();

    public abstract void a(d dVar);

    public long b() {
        return -1L;
    }
}

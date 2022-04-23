package com.bytedance.sdk.a.a;

import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/k.class */
public final class k implements s {

    /* renamed from: a  reason: collision with root package name */
    private final e f7798a;

    /* renamed from: b  reason: collision with root package name */
    private final Inflater f7799b;

    /* renamed from: c  reason: collision with root package name */
    private int f7800c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7801d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater != null) {
            this.f7798a = eVar;
            this.f7799b = inflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    private void c() throws IOException {
        int i = this.f7800c;
        if (i != 0) {
            int remaining = i - this.f7799b.getRemaining();
            this.f7800c -= remaining;
            this.f7798a.h(remaining);
        }
    }

    @Override // com.bytedance.sdk.a.a.s
    public final long a(c cVar, long j) throws IOException {
        boolean b2;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.f7801d) {
            throw new IllegalStateException("closed");
        } else if (i == 0) {
            return 0L;
        } else {
            do {
                b2 = b();
                try {
                    o e = cVar.e(1);
                    int inflate = this.f7799b.inflate(e.f7815a, e.f7817c, (int) Math.min(j, PropertyFlags.UNSIGNED - e.f7817c));
                    if (inflate > 0) {
                        e.f7817c += inflate;
                        long j2 = inflate;
                        cVar.f7785b += j2;
                        return j2;
                    }
                    if (!this.f7799b.finished() && !this.f7799b.needsDictionary()) {
                    }
                    c();
                    if (e.f7816b != e.f7817c) {
                        return -1L;
                    }
                    cVar.f7784a = e.b();
                    p.a(e);
                    return -1L;
                } catch (DataFormatException e2) {
                    throw new IOException(e2);
                }
            } while (!b2);
            throw new EOFException("source exhausted prematurely");
        }
    }

    @Override // com.bytedance.sdk.a.a.s
    public final t a() {
        return this.f7798a.a();
    }

    public final boolean b() throws IOException {
        if (!this.f7799b.needsInput()) {
            return false;
        }
        c();
        if (this.f7799b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.f7798a.e()) {
            return true;
        } else {
            o oVar = this.f7798a.c().f7784a;
            this.f7800c = oVar.f7817c - oVar.f7816b;
            this.f7799b.setInput(oVar.f7815a, oVar.f7816b, this.f7800c);
            return false;
        }
    }

    @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f7801d) {
            this.f7799b.end();
            this.f7801d = true;
            this.f7798a.close();
        }
    }
}

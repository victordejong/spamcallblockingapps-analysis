package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.u */
/* loaded from: classes-dex2jar.jar:com/facebook/u.class */
public class C2203u extends OutputStream implements AbstractC2206w {

    /* renamed from: a */
    private final Map<C2102k, C2207x> f6447a = new HashMap();

    /* renamed from: b */
    private final Handler f6448b;

    /* renamed from: c */
    private C2102k f6449c;

    /* renamed from: d */
    private C2207x f6450d;

    /* renamed from: e */
    private int f6451e;

    public C2203u(Handler handler) {
        this.f6448b = handler;
    }

    /* renamed from: a */
    public int m14952a() {
        return this.f6451e;
    }

    /* renamed from: a */
    public void m14951a(long j) {
        if (this.f6450d == null) {
            this.f6450d = new C2207x(this.f6448b, this.f6449c);
            this.f6447a.put(this.f6449c, this.f6450d);
        }
        this.f6450d.m14941b(j);
        this.f6451e = (int) (this.f6451e + j);
    }

    @Override // com.facebook.AbstractC2206w
    /* renamed from: a */
    public void mo14944a(C2102k c2102k) {
        this.f6449c = c2102k;
        this.f6450d = c2102k != null ? this.f6447a.get(c2102k) : null;
    }

    /* renamed from: b */
    public Map<C2102k, C2207x> m14950b() {
        return this.f6447a;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m14951a(1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        m14951a(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        m14951a(i2);
    }
}

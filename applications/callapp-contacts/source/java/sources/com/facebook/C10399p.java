package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.p */
/* loaded from: classes3-dex2jar.jar:com/facebook/p.class */
public final class C10399p extends OutputStream implements AbstractC10405r {

    /* renamed from: a */
    final Map<GraphRequest, C10433s> f34039a = new HashMap();

    /* renamed from: b */
    int f34040b;

    /* renamed from: c */
    private final Handler f34041c;

    /* renamed from: d */
    private GraphRequest f34042d;

    /* renamed from: e */
    private C10433s f34043e;

    public C10399p(Handler handler) {
        this.f34041c = handler;
    }

    /* renamed from: a */
    public final void m22867a(long j) {
        if (this.f34043e == null) {
            C10433s c10433s = new C10433s(this.f34041c, this.f34042d);
            this.f34043e = c10433s;
            this.f34039a.put(this.f34042d, c10433s);
        }
        this.f34043e.m22796a(j);
        this.f34040b = (int) (this.f34040b + j);
    }

    @Override // com.facebook.AbstractC10405r
    /* renamed from: a */
    public final void mo22858a(GraphRequest graphRequest) {
        this.f34042d = graphRequest;
        this.f34043e = graphRequest != null ? this.f34039a.get(graphRequest) : null;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        m22867a(1L);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        m22867a(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        m22867a(i2);
    }
}

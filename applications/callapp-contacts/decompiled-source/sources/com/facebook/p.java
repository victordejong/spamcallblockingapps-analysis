package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/p.class */
public final class p extends OutputStream implements r {

    /* renamed from: a  reason: collision with root package name */
    final Map<GraphRequest, s> f20099a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    int f20100b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f20101c;

    /* renamed from: d  reason: collision with root package name */
    private GraphRequest f20102d;
    private s e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Handler handler) {
        this.f20101c = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        if (this.e == null) {
            s sVar = new s(this.f20101c, this.f20102d);
            this.e = sVar;
            this.f20099a.put(this.f20102d, sVar);
        }
        this.e.a(j);
        this.f20100b = (int) (this.f20100b + j);
    }

    @Override // com.facebook.r
    public final void a(GraphRequest graphRequest) {
        this.f20102d = graphRequest;
        this.e = graphRequest != null ? this.f20099a.get(graphRequest) : null;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        a(1L);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        a(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        a(i2);
    }
}

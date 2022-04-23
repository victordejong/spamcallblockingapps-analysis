package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ov2.class */
final class ov2 extends PushbackInputStream {

    /* renamed from: b */
    final /* synthetic */ qv2 f7908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ov2(qv2 qv2Var, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f7908b = qv2Var;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            sv2.m5565b(this.f7908b.c);
            super.close();
        }
    }
}

package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;
/* renamed from: com.google.android.gms.internal.ads.hm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hm.class */
final class C6557hm extends PushbackInputStream {

    /* renamed from: d */
    final /* synthetic */ C6595im f23971d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6557hm(C6595im c6595im, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f23971d = c6595im;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            C6669km.m13857f(this.f23971d.f24349c);
            super.close();
        }
    }
}

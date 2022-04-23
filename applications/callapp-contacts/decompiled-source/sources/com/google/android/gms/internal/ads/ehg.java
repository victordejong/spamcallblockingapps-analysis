package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehg.class */
final class ehg extends PushbackInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ehb f27839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ehg(ehb ehbVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f27839a = ehbVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            egz.a(this.f27839a.f27827a);
            super.close();
        }
    }
}

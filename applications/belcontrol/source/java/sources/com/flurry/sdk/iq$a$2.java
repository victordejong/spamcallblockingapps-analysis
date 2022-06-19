package com.flurry.sdk;

import com.flurry.sdk.C0420iq;
import java.io.DataInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iq$a$2.class */
public final class iq$a$2 extends DataInputStream {

    /* renamed from: a */
    public final /* synthetic */ C0420iq.a f3252a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iq$a$2(C0420iq.a aVar, InputStream inputStream) {
        super(inputStream);
        this.f3252a = aVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

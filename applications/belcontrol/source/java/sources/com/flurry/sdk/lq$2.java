package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lq$2.class */
public final class lq$2 extends DataInputStream {

    /* renamed from: a */
    public final /* synthetic */ lq f3564a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lq$2(lq lqVar, InputStream inputStream) {
        super(inputStream);
        this.f3564a = lqVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

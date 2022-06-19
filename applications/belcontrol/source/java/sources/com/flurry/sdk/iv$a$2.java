package com.flurry.sdk;

import com.flurry.sdk.iv;
import java.io.DataInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iv$a$2.class */
public final class iv$a$2 extends DataInputStream {

    /* renamed from: a */
    public final /* synthetic */ iv.a f3262a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iv$a$2(iv.a aVar, InputStream inputStream) {
        super(inputStream);
        this.f3262a = aVar;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

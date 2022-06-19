package com.flurry.sdk;

import com.flurry.sdk.iv;
import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iv$a$1.class */
public final class iv$a$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ iv.a f3261a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iv$a$1(iv.a aVar, OutputStream outputStream) {
        super(outputStream);
        this.f3261a = aVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

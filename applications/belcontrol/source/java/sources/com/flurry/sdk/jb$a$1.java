package com.flurry.sdk;

import com.flurry.sdk.C0431jb;
import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jb$a$1.class */
public final class jb$a$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ C0431jb.a f3320a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb$a$1(C0431jb.a aVar, OutputStream outputStream) {
        super(outputStream);
        this.f3320a = aVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

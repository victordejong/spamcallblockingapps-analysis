package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ln$1.class */
public final class ln$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ ln f3561a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ln$1(ln lnVar, OutputStream outputStream) {
        super(outputStream);
        this.f3561a = lnVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

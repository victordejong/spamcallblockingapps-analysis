package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lq$1.class */
public final class lq$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ lq f3563a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lq$1(lq lqVar, OutputStream outputStream) {
        super(outputStream);
        this.f3563a = lqVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

package com.flurry.sdk;

import com.flurry.sdk.C0420iq;
import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iq$a$1.class */
public final class iq$a$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ C0420iq.a f3251a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iq$a$1(C0420iq.a aVar, OutputStream outputStream) {
        super(outputStream);
        this.f3251a = aVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

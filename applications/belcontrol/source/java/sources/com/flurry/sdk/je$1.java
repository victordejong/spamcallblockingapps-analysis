package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/je$1.class */
public final class je$1 extends DataOutputStream {

    /* renamed from: a */
    public final /* synthetic */ je f3334a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je$1(je jeVar, OutputStream outputStream) {
        super(outputStream);
        this.f3334a = jeVar;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}

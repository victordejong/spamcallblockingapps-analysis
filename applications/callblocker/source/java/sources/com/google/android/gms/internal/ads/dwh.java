package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwh.class */
final class dwh extends PushbackInputStream {

    /* renamed from: a */
    private final /* synthetic */ dwc f15880a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dwh(dwc dwcVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f15880a = dwcVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f15880a.f15868a.m8451a();
            super.close();
        }
    }
}

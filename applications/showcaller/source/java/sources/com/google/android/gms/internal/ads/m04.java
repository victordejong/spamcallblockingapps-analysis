package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m04.class */
public final class m04 extends mi3 implements Closeable {

    /* renamed from: l */
    private static final ti3 f26375l = ti3.m10651b(m04.class);

    public m04(ni3 ni3Var, l04 l04Var) {
        m13181g(ni3Var, ni3Var.mo10642b(), l04Var);
    }

    @Override // com.google.android.gms.internal.ads.mi3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.mi3
    public final String toString() {
        String obj = this.f26619g.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}

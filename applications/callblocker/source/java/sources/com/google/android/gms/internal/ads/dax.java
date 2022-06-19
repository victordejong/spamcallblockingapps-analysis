package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dax.class */
final class dax extends dau {
    @Override // com.google.android.gms.internal.ads.dau
    /* renamed from: a */
    public final void mo10252a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // com.google.android.gms.internal.ads.dau
    /* renamed from: a */
    public final void mo10251a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}

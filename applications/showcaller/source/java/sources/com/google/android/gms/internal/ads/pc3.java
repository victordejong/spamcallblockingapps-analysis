package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pc3.class */
final class pc3 extends jc3 {
    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: a */
    public final void mo12311a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }

    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: b */
    public final void mo12310b(Throwable th) {
        th.printStackTrace();
    }

    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: c */
    public final void mo12309c(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }
}

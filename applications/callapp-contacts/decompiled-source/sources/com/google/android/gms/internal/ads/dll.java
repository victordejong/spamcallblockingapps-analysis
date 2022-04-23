package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dll.class */
final class dll extends dle {
    @Override // com.google.android.gms.internal.ads.dle
    public final void a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // com.google.android.gms.internal.ads.dle
    public final void a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}

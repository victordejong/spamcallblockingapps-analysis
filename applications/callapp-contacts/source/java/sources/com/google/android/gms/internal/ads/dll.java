package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dll.class */
final class dll extends dle {
    @Override // com.google.android.gms.internal.ads.dle
    /* renamed from: a */
    public final void mo16507a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // com.google.android.gms.internal.ads.dle
    /* renamed from: a */
    public final void mo16506a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}

package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dav.class */
final class dav extends dau {

    /* renamed from: a */
    private final dat f13914a = new dat();

    @Override // com.google.android.gms.internal.ads.dau
    /* renamed from: a */
    public final void mo10252a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> m10253a = this.f13914a.m10253a(th, false);
        if (m10253a == null) {
            return;
        }
        synchronized (m10253a) {
            for (Throwable th2 : m10253a) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dau
    /* renamed from: a */
    public final void mo10251a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.f13914a.m10253a(th, true).add(th2);
    }
}

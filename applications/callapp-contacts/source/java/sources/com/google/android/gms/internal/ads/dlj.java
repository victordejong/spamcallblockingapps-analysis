package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlj.class */
final class dlj extends dle {

    /* renamed from: a */
    private final dli f47181a = new dli();

    @Override // com.google.android.gms.internal.ads.dle
    /* renamed from: a */
    public final void mo16507a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> m16509a = this.f47181a.m16509a(th, false);
        if (m16509a == null) {
            return;
        }
        synchronized (m16509a) {
            for (Throwable th2 : m16509a) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dle
    /* renamed from: a */
    public final void mo16506a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f47181a.m16509a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}

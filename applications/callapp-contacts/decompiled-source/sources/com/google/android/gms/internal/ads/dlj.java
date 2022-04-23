package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlj.class */
final class dlj extends dle {

    /* renamed from: a  reason: collision with root package name */
    private final dli f26923a = new dli();

    @Override // com.google.android.gms.internal.ads.dle
    public final void a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> a2 = this.f26923a.a(th, false);
        if (a2 != null) {
            synchronized (a2) {
                for (Throwable th2 : a2) {
                    printWriter.print("Suppressed: ");
                    th2.printStackTrace(printWriter);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dle
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f26923a.a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}

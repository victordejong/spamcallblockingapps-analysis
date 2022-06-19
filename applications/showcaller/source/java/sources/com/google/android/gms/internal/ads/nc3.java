package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nc3.class */
final class nc3 extends jc3 {

    /* renamed from: a */
    private final lc3 f27079a = new lc3();

    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: a */
    public final void mo12311a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f27079a.m13584a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }

    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: b */
    public final void mo12310b(Throwable th) {
        th.printStackTrace();
        List<Throwable> m13584a = this.f27079a.m13584a(th, false);
        if (m13584a == null) {
            return;
        }
        synchronized (m13584a) {
            for (Throwable th2 : m13584a) {
                System.err.print("Suppressed: ");
                th2.printStackTrace();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jc3
    /* renamed from: c */
    public final void mo12309c(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> m13584a = this.f27079a.m13584a(th, false);
        if (m13584a == null) {
            return;
        }
        synchronized (m13584a) {
            for (Throwable th2 : m13584a) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }
}

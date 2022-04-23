package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eb.class */
public final class C1717eb {

    /* renamed from: c */
    public static final boolean f6387c = C1718ec.f6391b;

    /* renamed from: a */
    private final List<C1749ga> f6388a = new ArrayList();

    /* renamed from: b */
    private boolean f6389b = false;

    /* renamed from: a */
    public final void m7662a(String str, long j) {
        synchronized (this) {
            if (!this.f6389b) {
                this.f6388a.add(new C1749ga(str, j, SystemClock.elapsedRealtime()));
            } else {
                throw new IllegalStateException("Marker added to finished log");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7661b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1717eb.m7661b(java.lang.String):void");
    }

    protected final void finalize() {
        if (!this.f6389b) {
            m7661b("Request on the loose");
            C1718ec.m7658c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}

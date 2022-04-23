package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/a.class */
public abstract class a {
    private final boolean b(d dVar) {
        return dVar.b() && i() <= j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PendingIntent a(d dVar) {
        if (dVar.a() == 0) {
            if (l() != null) {
                return l();
            }
            if (b(dVar)) {
                return n();
            }
            return null;
        } else if (dVar.a() != 1) {
            return null;
        } else {
            if (k() != null) {
                return k();
            }
            if (b(dVar)) {
                return m();
            }
            return null;
        }
    }

    public abstract String a();

    public abstract int b();

    public abstract int c();

    public abstract int d();

    public abstract Integer e();

    public abstract int f();

    public abstract long g();

    public abstract long h();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long j();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract PendingIntent k();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract PendingIntent l();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract PendingIntent m();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract PendingIntent n();
}

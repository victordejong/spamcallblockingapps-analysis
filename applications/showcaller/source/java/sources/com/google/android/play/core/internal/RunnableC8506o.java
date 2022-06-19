package com.google.android.play.core.internal;

import android.util.Log;
import com.google.android.play.core.splitinstall.AbstractC8557d;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/o.class */
final class RunnableC8506o implements Runnable {

    /* renamed from: d */
    final /* synthetic */ List f38061d;

    /* renamed from: e */
    final /* synthetic */ AbstractC8557d f38062e;

    /* renamed from: f */
    final /* synthetic */ C8508p f38063f;

    public RunnableC8506o(C8508p c8508p, List list, AbstractC8557d abstractC8557d) {
        this.f38063f = c8508p;
        this.f38061d = list;
        this.f38062e = abstractC8557d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8512r c8512r;
        try {
            c8512r = this.f38063f.f38066c;
            if (c8512r.m3476c(this.f38061d)) {
                C8508p.m3485c(this.f38063f, this.f38062e);
            } else {
                C8508p.m3484d(this.f38063f, this.f38061d, this.f38062e);
            }
        } catch (Exception e) {
            Log.e("SplitCompat", "Error checking verified files.", e);
            this.f38062e.mo3333c(-11);
        }
    }
}

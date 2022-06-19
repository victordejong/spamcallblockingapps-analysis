package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/w.class */
final class RunnableC14200w implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52173a;

    /* renamed from: b */
    final /* synthetic */ C14201x f52174b;

    public RunnableC14200w(C14201x c14201x, AbstractC14185h abstractC14185h) {
        this.f52174b = c14201x;
        this.f52173a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f52174b.f52175a) {
            if (this.f52174b.f52176b != null) {
                this.f52174b.f52176b.onFailure((Exception) C12045o.m19162a(this.f52173a.mo11474e()));
            }
        }
    }
}

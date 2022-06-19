package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/v.class */
final class RunnableC7982v implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7966g f35982d;

    /* renamed from: e */
    final /* synthetic */ C7983w f35983e;

    public RunnableC7982v(C7983w c7983w, AbstractC7966g abstractC7966g) {
        this.f35983e = c7983w;
        this.f35982d = abstractC7966g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC7960d abstractC7960d;
        AbstractC7960d abstractC7960d2;
        obj = this.f35983e.f35985b;
        synchronized (obj) {
            abstractC7960d = this.f35983e.f35986c;
            if (abstractC7960d != null) {
                abstractC7960d2 = this.f35983e.f35986c;
                abstractC7960d2.mo5788a((Exception) C6155o.m17018j(this.f35982d.mo5815l()));
            }
        }
    }
}

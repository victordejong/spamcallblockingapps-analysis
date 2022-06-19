package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.common.util.C6230h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.appset.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/j.class */
public final class RunnableC7248j implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7249k f34226d;

    public /* synthetic */ RunnableC7248j(C7249k c7249k, C7247i c7247i) {
        this.f34226d = c7249k;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        long m7841b = this.f34226d.m7841b();
        if (m7841b == -1 || C6230h.m16804d().mo16807a() <= m7841b) {
            return;
        }
        context = this.f34226d.f34228b;
        C7249k.m7837f(context);
    }
}

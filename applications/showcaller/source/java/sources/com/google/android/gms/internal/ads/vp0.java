package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.RunnableC5632i;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vp0.class */
public final class vp0 {

    /* renamed from: a */
    private final zzcgz f31268a;

    /* renamed from: b */
    private final Context f31269b;

    /* renamed from: c */
    private final WeakReference<Context> f31270c;

    public /* synthetic */ vp0(tp0 tp0Var, up0 up0Var) {
        zzcgz zzcgzVar;
        Context context;
        WeakReference<Context> weakReference;
        zzcgzVar = tp0Var.f30103a;
        this.f31268a = zzcgzVar;
        context = tp0Var.f30104b;
        this.f31269b = context;
        weakReference = tp0Var.f30105c;
        this.f31270c = weakReference;
    }

    /* renamed from: a */
    public final Context m9920a() {
        return this.f31269b;
    }

    /* renamed from: b */
    public final WeakReference<Context> m9919b() {
        return this.f31270c;
    }

    /* renamed from: c */
    public final zzcgz m9918c() {
        return this.f31268a;
    }

    /* renamed from: d */
    public final String m9917d() {
        return C5667s.m18160d().m18092P(this.f31269b, this.f31268a.f33854d);
    }

    /* renamed from: e */
    public final C7016u m9916e() {
        return new C7016u(new RunnableC5632i(this.f31269b, this.f31268a));
    }
}

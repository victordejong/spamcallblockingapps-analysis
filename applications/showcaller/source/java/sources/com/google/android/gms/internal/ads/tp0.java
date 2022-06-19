package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tp0.class */
public final class tp0 {

    /* renamed from: a */
    private zzcgz f30103a;

    /* renamed from: b */
    private Context f30104b;

    /* renamed from: c */
    private WeakReference<Context> f30105c;

    /* renamed from: d */
    public final tp0 m10589d(zzcgz zzcgzVar) {
        this.f30103a = zzcgzVar;
        return this;
    }

    /* renamed from: e */
    public final tp0 m10588e(Context context) {
        this.f30105c = new WeakReference<>(context);
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        this.f30104b = context2;
        return this;
    }
}

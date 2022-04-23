package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.cvt;
import com.google.android.gms.internal.ads.cwa;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvm.class */
public final class cvm {

    /* renamed from: a  reason: collision with root package name */
    private final Context f26473a;

    /* renamed from: b  reason: collision with root package name */
    private final Looper f26474b;

    public cvm(Context context, Looper looper) {
        this.f26473a = context;
        this.f26474b = looper;
    }

    public final void a(String str) {
        new cvl(this.f26473a, this.f26474b, cwa.a().a(this.f26473a.getPackageName()).a(cwa.a.BLOCKED_IMPRESSION).a(cvt.a().a(str).a(cvt.a.BLOCKED_REASON_BACKGROUND)).f()).b();
    }
}

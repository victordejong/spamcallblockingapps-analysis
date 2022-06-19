package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.ctl;
import com.google.android.gms.internal.ads.cum;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.ads.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/m.class */
public final class CallableC2311m implements Callable<ctl> {

    /* renamed from: a */
    private final /* synthetic */ BinderC2310l f6666a;

    public CallableC2311m(BinderC2310l binderC2310l) {
        this.f6666a = binderC2310l;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ ctl call() {
        C3647yd c3647yd;
        Context context;
        c3647yd = this.f6666a.f6657a;
        String str = c3647yd.f17636a;
        context = this.f6666a.f6660d;
        return new ctl(cum.m10650a(str, context, false));
    }
}

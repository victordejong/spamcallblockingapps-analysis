package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdj.class */
public final class bdj implements Callable<bcy> {

    /* renamed from: a */
    private final C2299a f11014a;

    /* renamed from: b */
    private final adb f11015b;

    /* renamed from: c */
    private final Context f11016c;

    /* renamed from: d */
    private final Executor f11017d;

    /* renamed from: e */
    private final ctl f11018e;

    /* renamed from: f */
    private final C3647yd f11019f;

    public bdj(Context context, Executor executor, ctl ctlVar, C3647yd c3647yd, C2299a c2299a, adb adbVar) {
        this.f11016c = context;
        this.f11017d = executor;
        this.f11018e = ctlVar;
        this.f11019f = c3647yd;
        this.f11014a = c2299a;
        this.f11015b = adbVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Context m12077a(bdj bdjVar) {
        return bdjVar.f11016c;
    }

    /* renamed from: b */
    public static /* synthetic */ Executor m12076b(bdj bdjVar) {
        return bdjVar.f11017d;
    }

    /* renamed from: c */
    public static /* synthetic */ ctl m12075c(bdj bdjVar) {
        return bdjVar.f11018e;
    }

    /* renamed from: d */
    public static /* synthetic */ C3647yd m12074d(bdj bdjVar) {
        return bdjVar.f11019f;
    }

    /* renamed from: e */
    public static /* synthetic */ C2299a m12073e(bdj bdjVar) {
        return bdjVar.f11014a;
    }

    /* renamed from: f */
    public static /* synthetic */ adb m12072f(bdj bdjVar) {
        return bdjVar.f11015b;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ bcy call() {
        bcy bcyVar = new bcy(this);
        bcyVar.m12091a();
        return bcyVar;
    }
}

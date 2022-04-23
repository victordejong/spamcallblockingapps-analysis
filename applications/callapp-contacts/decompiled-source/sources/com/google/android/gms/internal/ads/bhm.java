package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhm.class */
public final class bhm implements Callable<bgy> {

    /* renamed from: a */
    private final zzb f24460a;

    /* renamed from: b */
    private final aeb f24461b;

    /* renamed from: c */
    private final Context f24462c;

    /* renamed from: d */
    private final bli f24463d;
    private final cty e;
    private final brs f;
    private final Executor g;
    private final die h;
    private final zzbar i;
    private final cus j;

    public bhm(Context context, Executor executor, die dieVar, zzbar zzbarVar, zzb zzbVar, aeb aebVar, brs brsVar, cus cusVar, bli bliVar, cty ctyVar) {
        this.f24462c = context;
        this.g = executor;
        this.h = dieVar;
        this.i = zzbarVar;
        this.f24460a = zzbVar;
        this.f24461b = aebVar;
        this.f = brsVar;
        this.j = cusVar;
        this.f24463d = bliVar;
        this.e = ctyVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ bgy call() throws Exception {
        bgy bgyVar = new bgy(this);
        bgyVar.a();
        return bgyVar;
    }
}

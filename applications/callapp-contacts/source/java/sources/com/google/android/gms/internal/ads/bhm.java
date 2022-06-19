package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhm.class */
public final class bhm implements Callable<bgy> {

    /* renamed from: a */
    private final zzb f43954a;

    /* renamed from: b */
    private final aeb f43955b;

    /* renamed from: c */
    private final Context f43956c;

    /* renamed from: d */
    private final bli f43957d;

    /* renamed from: e */
    private final cty f43958e;

    /* renamed from: f */
    private final brs f43959f;

    /* renamed from: g */
    private final Executor f43960g;

    /* renamed from: h */
    private final die f43961h;

    /* renamed from: i */
    private final zzbar f43962i;

    /* renamed from: j */
    private final cus f43963j;

    public bhm(Context context, Executor executor, die dieVar, zzbar zzbarVar, zzb zzbVar, aeb aebVar, brs brsVar, cus cusVar, bli bliVar, cty ctyVar) {
        this.f43956c = context;
        this.f43960g = executor;
        this.f43961h = dieVar;
        this.f43962i = zzbarVar;
        this.f43954a = zzbVar;
        this.f43955b = aebVar;
        this.f43959f = brsVar;
        this.f43963j = cusVar;
        this.f43957d = bliVar;
        this.f43958e = ctyVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ bgy call() throws Exception {
        bgy bgyVar = new bgy(this);
        bgyVar.m17871a();
        return bgyVar;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.z6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z6.class */
public final class C7208z6 {

    /* renamed from: a */
    private final Context f32816a;

    /* renamed from: b */
    private final AbstractC7097w6 f32817b;

    /* renamed from: c */
    private final AbstractC7210z8 f32818c;

    /* renamed from: d */
    private fn3 f32819d;

    /* renamed from: e */
    private final xk3 f32820e;

    /* renamed from: f */
    private AbstractC7095w4 f32821f;

    /* renamed from: g */
    private final on3 f32822g;

    /* renamed from: h */
    private final rz0 f32823h;

    /* renamed from: l */
    private boolean f32827l;

    /* renamed from: i */
    private final Looper f32824i = C7101wa.m9712P();

    /* renamed from: j */
    private final h83 f32825j = h83.f23825a;

    /* renamed from: k */
    private final C7134x6 f32826k = C7134x6.f31916e;

    /* renamed from: m */
    private final C7204z2 f32828m = new C7204z2(0.97f, 1.03f, 1000, 1.0E-7f, C7130x2.m9368b(20), C7130x2.m9368b(500), 0.999f, null);

    @Deprecated
    public C7208z6(Context context, AbstractC7097w6 abstractC7097w6) {
        qq3 qq3Var = new qq3();
        zm3 zm3Var = new zm3(context);
        zj3 zj3Var = new zj3(context, qq3Var);
        C6278a3 c6278a3 = new C6278a3();
        wn3 m9544d = wn3.m9544d(context);
        AbstractC7210z8 abstractC7210z8 = AbstractC7210z8.f32839a;
        rz0 rz0Var = new rz0(abstractC7210z8);
        this.f32816a = context;
        this.f32817b = abstractC7097w6;
        this.f32819d = zm3Var;
        this.f32820e = zj3Var;
        this.f32821f = c6278a3;
        this.f32822g = m9544d;
        this.f32823h = rz0Var;
        this.f32818c = abstractC7210z8;
    }

    /* renamed from: a */
    public static /* synthetic */ Context m8516a(C7208z6 c7208z6) {
        return c7208z6.f32816a;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC7097w6 m8515b(C7208z6 c7208z6) {
        return c7208z6.f32817b;
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC7210z8 m8514c(C7208z6 c7208z6) {
        return c7208z6.f32818c;
    }

    /* renamed from: d */
    public static /* synthetic */ fn3 m8513d(C7208z6 c7208z6) {
        return c7208z6.f32819d;
    }

    /* renamed from: e */
    public static /* synthetic */ xk3 m8512e(C7208z6 c7208z6) {
        return c7208z6.f32820e;
    }

    /* renamed from: f */
    public static /* synthetic */ AbstractC7095w4 m8511f(C7208z6 c7208z6) {
        return c7208z6.f32821f;
    }

    /* renamed from: g */
    public static /* synthetic */ on3 m8510g(C7208z6 c7208z6) {
        return c7208z6.f32822g;
    }

    /* renamed from: h */
    public static /* synthetic */ rz0 m8509h(C7208z6 c7208z6) {
        return c7208z6.f32823h;
    }

    /* renamed from: i */
    public static /* synthetic */ Looper m8508i(C7208z6 c7208z6) {
        return c7208z6.f32824i;
    }

    /* renamed from: j */
    public static /* synthetic */ h83 m8507j(C7208z6 c7208z6) {
        return c7208z6.f32825j;
    }

    /* renamed from: k */
    public static /* synthetic */ C7134x6 m8506k(C7208z6 c7208z6) {
        return c7208z6.f32826k;
    }

    /* renamed from: o */
    public static /* synthetic */ C7204z2 m8502o(C7208z6 c7208z6) {
        return c7208z6.f32828m;
    }

    @Deprecated
    /* renamed from: l */
    public final C7208z6 m8505l(fn3 fn3Var) {
        C7173y8.m8895d(!this.f32827l);
        this.f32819d = fn3Var;
        return this;
    }

    @Deprecated
    /* renamed from: m */
    public final C7208z6 m8504m(AbstractC7095w4 abstractC7095w4) {
        C7173y8.m8895d(!this.f32827l);
        this.f32821f = abstractC7095w4;
        return this;
    }

    @Deprecated
    /* renamed from: n */
    public final C6393d7 m8503n() {
        C7173y8.m8895d(!this.f32827l);
        this.f32827l = true;
        return new C6393d7(this);
    }
}

package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alb.class */
public final class alb extends anp {

    /* renamed from: a  reason: collision with root package name */
    final View f23518a;

    /* renamed from: b  reason: collision with root package name */
    final adt f23519b;

    /* renamed from: c  reason: collision with root package name */
    final int f23520c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f23521d;
    final boolean e;
    egh f;
    final akr g;
    private final coy n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alb(ans ansVar, View view, adt adtVar, coy coyVar, int i, boolean z, boolean z2, akr akrVar) {
        super(ansVar);
        this.f23518a = view;
        this.f23519b = adtVar;
        this.n = coyVar;
        this.f23520c = i;
        this.f23521d = z;
        this.e = z2;
        this.g = akrVar;
    }

    public final coy F_() {
        return cps.a(this.i.q);
    }

    public final boolean b() {
        adt adtVar = this.f23519b;
        return (adtVar == null || adtVar.B() == null || !this.f23519b.B().b()) ? false : true;
    }
}

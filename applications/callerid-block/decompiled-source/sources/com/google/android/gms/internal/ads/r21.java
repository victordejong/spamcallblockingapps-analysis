package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r21.class */
final /* synthetic */ class r21 implements Callable {

    /* renamed from: a */
    private final s21 f8306a;

    /* renamed from: b */
    private final rz1 f8307b;

    /* renamed from: c */
    private final rz1 f8308c;

    /* renamed from: d */
    private final ml1 f8309d;

    /* renamed from: e */
    private final al1 f8310e;

    /* renamed from: f */
    private final JSONObject f8311f;

    r21(s21 s21Var, rz1 rz1Var, rz1 rz1Var2, ml1 ml1Var, al1 al1Var, JSONObject jSONObject) {
        this.f8306a = s21Var;
        this.f8307b = rz1Var;
        this.f8308c = rz1Var2;
        this.f8309d = ml1Var;
        this.f8310e = al1Var;
        this.f8311f = jSONObject;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f8306a.c(this.f8307b, this.f8308c, this.f8309d, this.f8310e, this.f8311f);
    }
}

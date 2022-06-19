package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bee.class */
public final class bee {

    /* renamed from: a */
    private final adb f11059a;

    /* renamed from: b */
    private final Context f11060b;

    /* renamed from: c */
    private final chh f11061c;

    /* renamed from: d */
    private final ctl f11062d;

    /* renamed from: e */
    private final C3647yd f11063e;

    /* renamed from: f */
    private final C2299a f11064f;

    /* renamed from: g */
    private final dwi f11065g;

    /* renamed from: h */
    private final arz f11066h;

    /* renamed from: i */
    private final dvk f11067i;

    public bee(adb adbVar, Context context, chh chhVar, ctl ctlVar, C3647yd c3647yd, C2299a c2299a, dwi dwiVar, arz arzVar, avp avpVar) {
        this.f11059a = adbVar;
        this.f11060b = context;
        this.f11061c = chhVar;
        this.f11062d = ctlVar;
        this.f11063e = c3647yd;
        this.f11064f = c2299a;
        this.f11065g = dwiVar;
        this.f11066h = arzVar;
        this.f11067i = avpVar;
    }

    /* renamed from: a */
    public final act m12038a(dyd dydVar) {
        return m12037a(dydVar, false);
    }

    /* renamed from: a */
    public final act m12037a(dyd dydVar, boolean z) {
        return adb.m13597a(this.f11060b, aei.m13553a(dydVar), dydVar.f16090a, false, false, this.f11062d, this.f11063e, null, new bei(this), this.f11064f, this.f11065g, this.f11067i, z);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC2300b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmy.class */
public final class cmy extends AbstractC2300b<cnf> {

    /* renamed from: e */
    private final int f13381e;

    public cmy(Context context, Looper looper, AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b, int i) {
        super(context, looper, 116, abstractC2624a, abstractC2625b, null);
        this.f13381e = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface cneVar;
        if (iBinder == null) {
            cneVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
            cneVar = queryLocalInterface instanceof cnf ? (cnf) queryLocalInterface : new cne(iBinder);
        }
        return cneVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.gass.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    /* renamed from: c */
    public final cnf m11002c() {
        return (cnf) super.m14067v();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return this.f13381e;
    }
}

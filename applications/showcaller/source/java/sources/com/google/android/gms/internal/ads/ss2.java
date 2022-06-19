package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC5626c;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ss2.class */
public final class ss2 extends AbstractC5626c<vs2> {

    /* renamed from: F */
    private final int f29650F;

    public ss2(Context context, Looper looper, AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b, int i) {
        super(context, looper, 116, abstractC6114a, abstractC6115b, null);
        this.f29650F = i;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.gass.START";
    }

    /* renamed from: i0 */
    public final vs2 m10916i0() {
        return (vs2) super.m17132C();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return this.f29650F;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        vs2 vs2Var;
        if (iBinder == null) {
            vs2Var = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
            vs2Var = queryLocalInterface instanceof vs2 ? (vs2) queryLocalInterface : new vs2(iBinder);
        }
        return vs2Var;
    }
}

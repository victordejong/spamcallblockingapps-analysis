package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC5626c;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lc0.class */
public final class lc0 extends AbstractC5626c<rc0> {
    public lc0(Context context, Looper looper, AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b) {
        super(ld0.m13583a(context), looper, 8, abstractC6114a, abstractC6115b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.ads.service.START";
    }

    /* renamed from: i0 */
    public final rc0 m13586i0() {
        return (rc0) super.m17132C();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        rc0 rc0Var;
        if (iBinder == null) {
            rc0Var = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            rc0Var = queryLocalInterface instanceof rc0 ? (rc0) queryLocalInterface : new oc0(iBinder);
        }
        return rc0Var;
    }
}

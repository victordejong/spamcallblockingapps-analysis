package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.AbstractC5626c;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k30.class */
public final class k30 extends AbstractC5626c<q30> {
    public k30(Context context, Looper looper, AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b) {
        super(ld0.m13583a(context), looper, 166, abstractC6114a, abstractC6115b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    /* renamed from: i0 */
    public final q30 m13985i0() {
        return (q30) super.m17132C();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        q30 q30Var;
        if (iBinder == null) {
            q30Var = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
            q30Var = queryLocalInterface instanceof q30 ? (q30) queryLocalInterface : new q30(iBinder);
        }
        return q30Var;
    }
}

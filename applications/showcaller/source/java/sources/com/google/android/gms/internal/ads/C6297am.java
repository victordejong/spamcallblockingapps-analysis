package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.C5597b0;
import com.google.android.gms.ads.internal.AbstractC5626c;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.util.C6224b;
/* renamed from: com.google.android.gms.internal.ads.am */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/am.class */
public final class C6297am extends AbstractC5626c<C6371cm> {
    public C6297am(Context context, Looper looper, AbstractC6113d.AbstractC6114a abstractC6114a, AbstractC6113d.AbstractC6115b abstractC6115b) {
        super(ld0.m13583a(context), looper, 123, abstractC6114a, abstractC6115b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    /* renamed from: i0 */
    public final boolean m16557i0() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() && C6224b.m16829c(m17095m(), C5597b0.f18218a);
    }

    /* renamed from: j0 */
    public final C6371cm m16556j0() {
        return (C6371cm) super.m17132C();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        C6371cm c6371cm;
        if (iBinder == null) {
            c6371cm = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
            c6371cm = queryLocalInterface instanceof C6371cm ? (C6371cm) queryLocalInterface : new C6371cm(iBinder);
        }
        return c6371cm;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: v */
    public final Feature[] mo7844v() {
        return C5597b0.f18219b;
    }
}

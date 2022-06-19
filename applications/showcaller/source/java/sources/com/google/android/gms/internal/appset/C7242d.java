package com.google.android.gms.internal.appset;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.appset.C5873f;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.AbstractC6022e;
import com.google.android.gms.common.api.internal.AbstractC6040k;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
/* renamed from: com.google.android.gms.internal.appset.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/d.class */
public final class C7242d extends AbstractC6125f<C7245g> {
    public C7242d(Context context, Looper looper, C6121e c6121e, AbstractC6022e abstractC6022e, AbstractC6040k abstractC6040k) {
        super(context, looper, 300, c6121e, abstractC6022e, abstractC6040k);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.appset.internal.IAppSetService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.appset.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: H */
    protected final boolean mo7846H() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: R */
    public final boolean mo7845R() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return 212800000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        C7245g c7245g;
        if (iBinder == null) {
            c7245g = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appset.internal.IAppSetService");
            c7245g = queryLocalInterface instanceof C7245g ? (C7245g) queryLocalInterface : new C7245g(iBinder);
        }
        return c7245g;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: v */
    public final Feature[] mo7844v() {
        return C5873f.f18829b;
    }
}

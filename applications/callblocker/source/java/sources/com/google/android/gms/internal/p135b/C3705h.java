package com.google.android.gms.internal.p135b;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.C2398a;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.internal.AbstractC2642h;
import com.google.android.gms.common.internal.C2636d;
/* renamed from: com.google.android.gms.internal.b.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b/h.class */
public final class C3705h extends AbstractC2642h<AbstractC3707j> {

    /* renamed from: e */
    private final C2398a.C2399a f17770e;

    public C3705h(Context context, Looper looper, C2636d c2636d, C2398a.C2399a c2399a, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        super(context, looper, 68, c2636d, abstractC2493a, abstractC2494b);
        this.f17770e = new C2398a.C2399a.C2400a(c2399a == null ? C2398a.C2399a.f6872a : c2399a).m14599a(C3698a.m6538a()).m14600a();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c3706i;
        if (iBinder == null) {
            c3706i = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            c3706i = queryLocalInterface instanceof AbstractC3707j ? (AbstractC3707j) queryLocalInterface : new C3706i(iBinder);
        }
        return c3706i;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2642h, com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: s */
    protected final Bundle mo6529s() {
        return this.f17770e.m14604a();
    }
}

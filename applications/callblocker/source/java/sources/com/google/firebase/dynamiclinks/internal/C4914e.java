package com.google.firebase.dynamiclinks.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.internal.AbstractC2642h;
import com.google.android.gms.common.internal.C2636d;
/* renamed from: com.google.firebase.dynamiclinks.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/e.class */
public final class C4914e extends AbstractC2642h<AbstractC4921l> {
    public C4914e(Context context, Looper looper, C2636d c2636d, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        super(context, looper, 131, c2636d, abstractC2493a, abstractC2494b);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c4924o;
        if (iBinder == null) {
            c4924o = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
            c4924o = queryLocalInterface instanceof AbstractC4921l ? (AbstractC4921l) queryLocalInterface : new C4924o(iBinder);
        }
        return c4924o;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.firebase.dynamiclinks.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.firebase.dynamiclinks.internal.IDynamicLinksService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2642h, com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return 12451000;
    }
}

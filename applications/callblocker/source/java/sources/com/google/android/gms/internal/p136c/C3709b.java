package com.google.android.gms.internal.p136c;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.C2402b;
import com.google.android.gms.auth.api.C2404c;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.internal.AbstractC2642h;
import com.google.android.gms.common.internal.C2636d;
/* renamed from: com.google.android.gms.internal.c.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c/b.class */
public final class C3709b extends AbstractC2642h<AbstractC3710c> {

    /* renamed from: e */
    private final Bundle f17773e;

    public C3709b(Context context, Looper looper, C2636d c2636d, C2404c c2404c, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        super(context, looper, 16, c2636d, abstractC2493a, abstractC2494b);
        if (c2404c == null) {
            this.f17773e = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c3711d;
        if (iBinder == null) {
            c3711d = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            c3711d = queryLocalInterface instanceof AbstractC3710c ? (AbstractC3710c) queryLocalInterface : new C3711d(iBinder);
        }
        return c3711d;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2642h, com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: h */
    public final boolean mo6530h() {
        C2636d A = m14025A();
        return !TextUtils.isEmpty(A.m14052a()) && !A.m14051a(C2402b.f6879a).isEmpty();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: s */
    protected final Bundle mo6529s() {
        return this.f17773e;
    }
}

package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC2642h;
import com.google.android.gms.common.internal.C2636d;
import com.google.android.gms.internal.p135b.C3698a;
/* renamed from: com.google.android.gms.auth.api.signin.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/j.class */
public final class C2430j extends AbstractC2642h<AbstractC2442v> {

    /* renamed from: e */
    private final GoogleSignInOptions f6963e;

    public C2430j(Context context, Looper looper, C2636d c2636d, GoogleSignInOptions googleSignInOptions, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        super(context, looper, 91, c2636d, abstractC2493a, abstractC2494b);
        GoogleSignInOptions.C2408a c2408a = googleSignInOptions != null ? new GoogleSignInOptions.C2408a(googleSignInOptions) : new GoogleSignInOptions.C2408a();
        c2408a.m14558a(C3698a.m6538a());
        if (!c2636d.m14046e().isEmpty()) {
            for (Scope scope : c2636d.m14046e()) {
                c2408a.m14559a(scope, new Scope[0]);
            }
        }
        this.f6963e = c2408a.m14555d();
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c2441u;
        if (iBinder == null) {
            c2441u = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
            c2441u = queryLocalInterface instanceof AbstractC2442v ? (AbstractC2442v) queryLocalInterface : new C2441u(iBinder);
        }
        return c2441u;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected final String mo2034a() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected final String mo2032b() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    /* renamed from: c */
    public final GoogleSignInOptions m14509c() {
        return this.f6963e;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2642h, com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public final int mo2031d() {
        return 12451000;
    }
}

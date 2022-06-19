package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.internal.auth_api.C7272b;
/* renamed from: com.google.android.gms.auth.api.signin.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/g.class */
public final class C5919g extends AbstractC6125f<AbstractC5931s> {

    /* renamed from: I */
    private final GoogleSignInOptions f19049I;

    public C5919g(Context context, Looper looper, C6121e c6121e, GoogleSignInOptions googleSignInOptions, AbstractC5999d.AbstractC6000a abstractC6000a, AbstractC5999d.AbstractC6001b abstractC6001b) {
        super(context, looper, 91, c6121e, abstractC6000a, abstractC6001b);
        GoogleSignInOptions.C5900a c5900a = googleSignInOptions != null ? new GoogleSignInOptions.C5900a(googleSignInOptions) : new GoogleSignInOptions.C5900a();
        c5900a.m17624f(C7272b.m7821a());
        if (!c6121e.m17082d().isEmpty()) {
            for (Scope scope : c6121e.m17082d()) {
                c5900a.m17625e(scope, new Scope[0]);
            }
        }
        this.f19049I = c5900a.m17629a();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return C6094e.f19409a;
    }

    /* renamed from: l0 */
    public final GoogleSignInOptions m17587l0() {
        return this.f19049I;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    /* renamed from: s */
    public final /* synthetic */ IInterface mo5854s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof AbstractC5931s ? (AbstractC5931s) queryLocalInterface : new C5934v(iBinder);
    }
}

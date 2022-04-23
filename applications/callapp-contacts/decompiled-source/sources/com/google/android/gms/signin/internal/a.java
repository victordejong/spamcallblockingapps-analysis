package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.internal.base.c;
import com.google.android.gms.signin.e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/a.class */
public final class a extends f<f> implements e {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f29987a = true;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.common.internal.e f29988b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f29989c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f29990d;

    public a(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.e eVar, Bundle bundle, g.a aVar, g.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.f29988b = eVar;
        this.f29989c = bundle;
        this.f29990d = eVar.h;
    }

    @Override // com.google.android.gms.signin.e
    public final void a(e eVar) {
        o.a(eVar, "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.f29988b.f22881a;
            if (account == null) {
                account = new Account(d.DEFAULT_ACCOUNT, "com.google");
            }
            zat zatVar = new zat(account, ((Integer) o.a(this.f29990d)).intValue(), d.DEFAULT_ACCOUNT.equals(account.name) ? b.a(getContext()).a() : null);
            f fVar = (f) getService();
            zai zaiVar = new zai(1, zatVar);
            Parcel a2 = fVar.a();
            c.a(a2, zaiVar);
            c.a(a2, eVar);
            fVar.b(a2);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                eVar.a(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.signin.e
    public final void c() {
        connect(new d.C0457d());
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        f fVar;
        if (iBinder == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            fVar = queryLocalInterface instanceof f ? (f) queryLocalInterface : new f(iBinder);
        }
        return fVar;
    }

    @Override // com.google.android.gms.common.internal.d
    public final Bundle getGetServiceRequestExtraArgs() {
        if (!getContext().getPackageName().equals(this.f29988b.e)) {
            this.f29989c.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f29988b.e);
        }
        return this.f29989c;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return com.google.android.gms.common.d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean requiresSignIn() {
        return this.f29987a;
    }
}

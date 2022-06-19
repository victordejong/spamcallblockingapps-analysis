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
import com.google.android.gms.auth.api.signin.internal.C11742b;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.AbstractC12033f;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.internal.base.C13153c;
import com.google.android.gms.signin.AbstractC14153e;
/* renamed from: com.google.android.gms.signin.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/a.class */
public final class C14155a extends AbstractC12033f<C14160f> implements AbstractC14153e {

    /* renamed from: a */
    private final boolean f52102a = true;

    /* renamed from: b */
    private final C12031e f52103b;

    /* renamed from: c */
    private final Bundle f52104c;

    /* renamed from: d */
    private final Integer f52105d;

    public C14155a(Context context, Looper looper, boolean z, C12031e c12031e, Bundle bundle, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
        super(context, looper, 44, c12031e, abstractC11827a, abstractC11828b);
        this.f52103b = c12031e;
        this.f52104c = bundle;
        this.f52105d = c12031e.f39547h;
    }

    @Override // com.google.android.gms.signin.AbstractC14153e
    /* renamed from: a */
    public final void mo11511a(AbstractC14159e abstractC14159e) {
        C12045o.m19161a(abstractC14159e, "Expecting a valid ISignInCallbacks");
        try {
            Account account = this.f52103b.f39540a;
            if (account == null) {
                account = new Account(AbstractC12025d.DEFAULT_ACCOUNT, "com.google");
            }
            zat zatVar = new zat(account, ((Integer) C12045o.m19162a(this.f52105d)).intValue(), AbstractC12025d.DEFAULT_ACCOUNT.equals(account.name) ? C11742b.m19548a(getContext()).m19549a() : null);
            C14160f c14160f = (C14160f) getService();
            zai zaiVar = new zai(1, zatVar);
            Parcel m13603a = c14160f.m13603a();
            C13153c.m13597a(m13603a, zaiVar);
            C13153c.m13599a(m13603a, abstractC14159e);
            c14160f.m13601b(m13603a);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                abstractC14159e.mo11508a(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.signin.AbstractC14153e
    /* renamed from: c */
    public final void mo11510c() {
        connect(new AbstractC12025d.C12029d());
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        C14160f c14160f;
        if (iBinder == null) {
            c14160f = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            c14160f = queryLocalInterface instanceof C14160f ? (C14160f) queryLocalInterface : new C14160f(iBinder);
        }
        return c14160f;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final Bundle getGetServiceRequestExtraArgs() {
        if (!getContext().getPackageName().equals(this.f52103b.f39544e)) {
            this.f52104c.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f52103b.f39544e);
        }
        return this.f52104c;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean requiresSignIn() {
        return this.f52102a;
    }
}

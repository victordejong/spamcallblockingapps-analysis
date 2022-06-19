package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.signin.internal.C5914b;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.AbstractC6125f;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.zat;
import p078c.p084c.p085a.p086a.p095c.AbstractC1883f;
/* renamed from: com.google.android.gms.signin.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/a.class */
public class C7941a extends AbstractC6125f<C7946f> implements AbstractC1883f {

    /* renamed from: I */
    public static final /* synthetic */ int f35905I = 0;

    /* renamed from: J */
    private final boolean f35906J = true;

    /* renamed from: K */
    private final C6121e f35907K;

    /* renamed from: L */
    private final Bundle f35908L;

    /* renamed from: M */
    private final Integer f35909M;

    public C7941a(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, boolean z, @RecentlyNonNull C6121e c6121e, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC5999d.AbstractC6000a abstractC6000a, @RecentlyNonNull AbstractC5999d.AbstractC6001b abstractC6001b) {
        super(context, looper, 44, c6121e, abstractC6000a, abstractC6001b);
        this.f35907K = c6121e;
        this.f35908L = bundle;
        this.f35909M = c6121e.m17076j();
    }

    @RecentlyNonNull
    /* renamed from: l0 */
    public static Bundle m5857l0(@RecentlyNonNull C6121e c6121e) {
        c6121e.m17077i();
        Integer m17076j = c6121e.m17076j();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c6121e.m17085a());
        if (m17076j != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", m17076j.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNonNull
    /* renamed from: D */
    public final String mo5861D() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNonNull
    /* renamed from: E */
    protected final String mo5860E() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // p078c.p084c.p085a.p086a.p095c.AbstractC1883f
    /* renamed from: k */
    public final void mo5859k() {
        m17099h(new AbstractC6113d.C6117d());
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: l */
    public final int mo5858l() {
        return C6094e.f19409a;
    }

    @Override // p078c.p084c.p085a.p086a.p095c.AbstractC1883f
    /* renamed from: o */
    public final void mo5856o(AbstractC7945e abstractC7945e) {
        C6155o.m17017k(abstractC7945e, "Expecting a valid ISignInCallbacks");
        try {
            Account m17083c = this.f35907K.m17083c();
            ((C7946f) m17132C()).m5850a3(new zai(1, new zat(m17083c, ((Integer) C6155o.m17018j(this.f35909M)).intValue(), "<<default account>>".equals(m17083c.name) ? C5914b.m17599b(m17089x()).m17598c() : null)), abstractC7945e);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                abstractC7945e.mo5851K1(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d, com.google.android.gms.common.api.C5984a.AbstractC5993f
    /* renamed from: p */
    public final boolean mo5855p() {
        return this.f35906J;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNonNull
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ IInterface mo5854s(@RecentlyNonNull IBinder iBinder) {
        C7946f c7946f;
        if (iBinder == null) {
            c7946f = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            c7946f = queryLocalInterface instanceof C7946f ? (C7946f) queryLocalInterface : new C7946f(iBinder);
        }
        return c7946f;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d
    @RecentlyNonNull
    /* renamed from: z */
    protected final Bundle mo5853z() {
        if (!m17089x().getPackageName().equals(this.f35907K.m17080f())) {
            this.f35908L.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f35907K.m17080f());
        }
        return this.f35908L;
    }
}

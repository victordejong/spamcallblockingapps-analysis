package com.google.android.gms.p127b.p128a;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.C2423c;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.common.internal.AbstractC2642h;
import com.google.android.gms.common.internal.C2636d;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2667t;
import com.google.android.gms.p127b.AbstractC2463d;
import com.google.android.gms.p127b.C2447a;
/* renamed from: com.google.android.gms.b.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/a.class */
public class C2449a extends AbstractC2642h<AbstractC2454f> implements AbstractC2463d {

    /* renamed from: e */
    private final boolean f6981e;

    /* renamed from: f */
    private final C2636d f6982f;

    /* renamed from: g */
    private final Bundle f6983g;

    /* renamed from: h */
    private Integer f6984h;

    private C2449a(Context context, Looper looper, boolean z, C2636d c2636d, Bundle bundle, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        super(context, looper, 44, c2636d, abstractC2493a, abstractC2494b);
        this.f6981e = true;
        this.f6982f = c2636d;
        this.f6983g = bundle;
        this.f6984h = c2636d.m14042i();
    }

    public C2449a(Context context, Looper looper, boolean z, C2636d c2636d, C2447a c2447a, AbstractC2492d.AbstractC2493a abstractC2493a, AbstractC2492d.AbstractC2494b abstractC2494b) {
        this(context, looper, true, c2636d, m14486a(c2636d), abstractC2493a, abstractC2494b);
    }

    /* renamed from: a */
    public static Bundle m14486a(C2636d c2636d) {
        C2447a m14043h = c2636d.m14043h();
        Integer m14042i = c2636d.m14042i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c2636d.m14049b());
        if (m14042i != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", m14042i.intValue());
        }
        if (m14043h != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", m14043h.m14495a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", m14043h.m14494b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", m14043h.m14493c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", m14043h.m14492d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", m14043h.m14491e());
            bundle.putString("com.google.android.gms.signin.internal.logSessionId", m14043h.m14490f());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", m14043h.m14489g());
            if (m14043h.m14488h() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", m14043h.m14488h().longValue());
            }
            if (m14043h.m14487i() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", m14043h.m14487i().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected /* synthetic */ IInterface mo2033a(IBinder iBinder) {
        IInterface c2456h;
        if (iBinder == null) {
            c2456h = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            c2456h = queryLocalInterface instanceof AbstractC2454f ? (AbstractC2454f) queryLocalInterface : new C2456h(iBinder);
        }
        return c2456h;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: a */
    protected String mo2034a() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.p127b.AbstractC2463d
    /* renamed from: a */
    public final void mo14478a(AbstractC2452d abstractC2452d) {
        C2662s.m13980a(abstractC2452d, "Expecting a valid ISignInCallbacks");
        try {
            Account m14048c = this.f6982f.m14048c();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(m14048c.name)) {
                googleSignInAccount = C2423c.m14530a(m14071p()).m14531a();
            }
            ((AbstractC2454f) m14067v()).mo14481a(new C2458j(new C2667t(m14048c, this.f6984h.intValue(), googleSignInAccount)), abstractC2452d);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                abstractC2452d.mo14384a(new C2460l(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: b */
    protected String mo2032b() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.p127b.AbstractC2463d
    /* renamed from: c */
    public final void mo14477c() {
        m14101a(new AbstractC2623c.C2627d());
    }

    @Override // com.google.android.gms.common.internal.AbstractC2642h, com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: d */
    public int mo2031d() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c, com.google.android.gms.common.api.C2471a.AbstractC2483f
    /* renamed from: h */
    public boolean mo6530h() {
        return this.f6981e;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c
    /* renamed from: s */
    protected Bundle mo6529s() {
        if (!m14071p().getPackageName().equals(this.f6982f.m14045f())) {
            this.f6983g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f6982f.m14045f());
        }
        return this.f6983g;
    }
}

package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.internal.BinderC7943c;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;
import p078c.p084c.p085a.p086a.p095c.AbstractC1883f;
import p078c.p084c.p085a.p086a.p095c.C1878a;
import p078c.p084c.p085a.p086a.p095c.C1882e;
/* renamed from: com.google.android.gms.common.api.internal.s0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s0.class */
public final class BinderC6062s0 extends BinderC7943c implements AbstractC5999d.AbstractC6000a, AbstractC5999d.AbstractC6001b {

    /* renamed from: d */
    private static final C5984a.AbstractC5985a<? extends AbstractC1883f, C1878a> f19350d = C1882e.f6787c;

    /* renamed from: e */
    private final Context f19351e;

    /* renamed from: f */
    private final Handler f19352f;

    /* renamed from: g */
    private final C5984a.AbstractC5985a<? extends AbstractC1883f, C1878a> f19353g;

    /* renamed from: h */
    private final Set<Scope> f19354h;

    /* renamed from: i */
    private final C6121e f19355i;

    /* renamed from: j */
    private AbstractC1883f f19356j;

    /* renamed from: k */
    private AbstractC6060r0 f19357k;

    public BinderC6062s0(Context context, Handler handler, C6121e c6121e) {
        C5984a.AbstractC5985a<? extends AbstractC1883f, C1878a> abstractC5985a = f19350d;
        this.f19351e = context;
        this.f19352f = handler;
        this.f19355i = (C6121e) C6155o.m17017k(c6121e, "ClientSettings must not be null");
        this.f19354h = c6121e.m17079g();
        this.f19353g = abstractC5985a;
    }

    /* renamed from: V4 */
    public static /* synthetic */ void m17272V4(BinderC6062s0 binderC6062s0, zak zakVar) {
        ConnectionResult m5848k0 = zakVar.m5848k0();
        ConnectionResult connectionResult = m5848k0;
        if (m5848k0.m17502o0()) {
            zav zavVar = (zav) C6155o.m17018j(zakVar.m5847l0());
            connectionResult = zavVar.m16897l0();
            if (connectionResult.m17502o0()) {
                binderC6062s0.f19357k.mo17285b(zavVar.m16898k0(), binderC6062s0.f19354h);
                binderC6062s0.f19356j.mo17320a();
            }
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(valueOf.length() + 48);
            sb.append("Sign-in succeeded with resolve account failure: ");
            sb.append(valueOf);
            Log.wtf("SignInCoordinator", sb.toString(), new Exception());
        }
        binderC6062s0.f19357k.mo17284c(connectionResult);
        binderC6062s0.f19356j.mo17320a();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6040k
    /* renamed from: D0 */
    public final void mo17274D0(ConnectionResult connectionResult) {
        this.f19357k.mo17284c(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6022e
    /* renamed from: J0 */
    public final void mo17273J0(Bundle bundle) {
        this.f19356j.mo5856o(this);
    }

    @Override // com.google.android.gms.signin.internal.AbstractC7945e
    /* renamed from: K1 */
    public final void mo5851K1(zak zakVar) {
        this.f19352f.post(new RunnableC6058q0(this, zakVar));
    }

    /* renamed from: a3 */
    public final void m17271a3(AbstractC6060r0 abstractC6060r0) {
        AbstractC1883f abstractC1883f = this.f19356j;
        if (abstractC1883f != null) {
            abstractC1883f.mo17320a();
        }
        this.f19355i.m17075k(Integer.valueOf(System.identityHashCode(this)));
        C5984a.AbstractC5985a<? extends AbstractC1883f, C1878a> abstractC5985a = this.f19353g;
        Context context = this.f19351e;
        Looper looper = this.f19352f.getLooper();
        C6121e c6121e = this.f19355i;
        this.f19356j = abstractC5985a.mo17480a(context, looper, c6121e, c6121e.m17077i(), this, this);
        this.f19357k = abstractC6060r0;
        Set<Scope> set = this.f19354h;
        if (set == null || set.isEmpty()) {
            this.f19352f.post(new RunnableC6055p0(this));
        } else {
            this.f19356j.mo5859k();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6022e
    /* renamed from: c0 */
    public final void mo17270c0(int i) {
        this.f19356j.mo17320a();
    }

    /* renamed from: y4 */
    public final void m17269y4() {
        AbstractC1883f abstractC1883f = this.f19356j;
        if (abstractC1883f != null) {
            abstractC1883f.mo17320a();
        }
    }
}

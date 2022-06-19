package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.AbstractC14153e;
import com.google.android.gms.signin.C14149a;
import com.google.android.gms.signin.C14152d;
import com.google.android.gms.signin.internal.BinderC14157c;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.bc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bc.class */
public final class BinderC11862bc extends BinderC14157c implements AbstractC11826g.AbstractC11827a, AbstractC11826g.AbstractC11828b {

    /* renamed from: a */
    private static final C11808a.AbstractC11809a<? extends AbstractC14153e, C14149a> f39273a = C14152d.f52096c;

    /* renamed from: b */
    private final Context f39274b;

    /* renamed from: c */
    private final Handler f39275c;

    /* renamed from: d */
    private final C11808a.AbstractC11809a<? extends AbstractC14153e, C14149a> f39276d;

    /* renamed from: e */
    private final Set<Scope> f39277e;

    /* renamed from: f */
    private final C12031e f39278f;

    /* renamed from: g */
    private AbstractC14153e f39279g;

    /* renamed from: h */
    private AbstractC11861bb f39280h;

    public BinderC11862bc(Context context, Handler handler, C12031e c12031e) {
        C11808a.AbstractC11809a<? extends AbstractC14153e, C14149a> abstractC11809a = f39273a;
        this.f39274b = context;
        this.f39275c = handler;
        this.f39278f = (C12031e) C12045o.m19161a(c12031e, "ClientSettings must not be null");
        this.f39277e = c12031e.f39541b;
        this.f39276d = abstractC11809a;
    }

    /* renamed from: a */
    public static /* synthetic */ void m19392a(BinderC11862bc binderC11862bc, zak zakVar) {
        ConnectionResult zaa = zakVar.zaa();
        ConnectionResult connectionResult = zaa;
        if (zaa.isSuccess()) {
            zav zavVar = (zav) C12045o.m19162a(zakVar.zab());
            connectionResult = zavVar.zab();
            if (connectionResult.isSuccess()) {
                binderC11862bc.f39280h.mo19396a(zavVar.zaa(), binderC11862bc.f39277e);
                binderC11862bc.f39279g.disconnect();
            }
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("Sign-in succeeded with resolve account failure: ");
            sb.append(valueOf);
            Log.wtf("SignInCoordinator", sb.toString(), new Exception());
        }
        binderC11862bc.f39280h.mo19395b(connectionResult);
        binderC11862bc.f39279g.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11895e
    /* renamed from: a */
    public final void mo19358a() {
        this.f39279g.mo11511a(this);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11895e
    /* renamed from: a */
    public final void mo19357a(int i) {
        this.f39279g.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11904l
    /* renamed from: a */
    public final void mo19318a(ConnectionResult connectionResult) {
        this.f39280h.mo19395b(connectionResult);
    }

    /* renamed from: a */
    public final void m19394a(AbstractC11861bb abstractC11861bb) {
        AbstractC14153e abstractC14153e = this.f39279g;
        if (abstractC14153e != null) {
            abstractC14153e.disconnect();
        }
        this.f39278f.f39547h = Integer.valueOf(System.identityHashCode(this));
        C11808a.AbstractC11809a<? extends AbstractC14153e, C14149a> abstractC11809a = this.f39276d;
        Context context = this.f39274b;
        Looper looper = this.f39275c.getLooper();
        C12031e c12031e = this.f39278f;
        this.f39279g = abstractC11809a.mo11341a(context, looper, c12031e, (C12031e) c12031e.f39546g, (AbstractC11826g.AbstractC11827a) this, (AbstractC11826g.AbstractC11828b) this);
        this.f39280h = abstractC11861bb;
        Set<Scope> set = this.f39277e;
        if (set == null || set.isEmpty()) {
            this.f39275c.post(new RunnableC11858az(this));
        } else {
            this.f39279g.mo11510c();
        }
    }

    @Override // com.google.android.gms.signin.internal.BinderC14157c, com.google.android.gms.signin.internal.AbstractC14159e
    /* renamed from: a */
    public final void mo11508a(zak zakVar) {
        this.f39275c.post(new RunnableC11860ba(this, zakVar));
    }

    /* renamed from: b */
    public final void m19391b() {
        AbstractC14153e abstractC14153e = this.f39279g;
        if (abstractC14153e != null) {
            abstractC14153e.disconnect();
        }
    }
}

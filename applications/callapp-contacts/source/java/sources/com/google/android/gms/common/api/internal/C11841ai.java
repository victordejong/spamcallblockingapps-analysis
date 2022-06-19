package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.AbstractC12036i;
import com.google.android.gms.common.internal.C12045o;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.ai */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ai.class */
public final class C11841ai implements AbstractC11861bb, AbstractC12025d.AbstractC12028c {

    /* renamed from: a */
    final C11808a.AbstractC11817f f39236a;

    /* renamed from: b */
    final C11859b<?> f39237b;

    /* renamed from: d */
    final /* synthetic */ C11896f f39239d;

    /* renamed from: e */
    private AbstractC12036i f39240e = null;

    /* renamed from: f */
    private Set<Scope> f39241f = null;

    /* renamed from: c */
    boolean f39238c = false;

    public C11841ai(C11896f c11896f, C11808a.AbstractC11817f abstractC11817f, C11859b<?> c11859b) {
        this.f39239d = c11896f;
        this.f39236a = abstractC11817f;
        this.f39237b = c11859b;
    }

    /* renamed from: a */
    public final void m19406a() {
        AbstractC12036i abstractC12036i;
        if (!this.f39238c || (abstractC12036i = this.f39240e) == null) {
            return;
        }
        this.f39236a.getRemoteService(abstractC12036i, this.f39241f);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12028c
    /* renamed from: a */
    public final void mo19188a(ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f39239d.f39351g;
        handler.post(new RunnableC11840ah(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11861bb
    /* renamed from: a */
    public final void mo19396a(AbstractC12036i abstractC12036i, Set<Scope> set) {
        if (abstractC12036i == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            mo19395b(new ConnectionResult(4));
            return;
        }
        this.f39240e = abstractC12036i;
        this.f39241f = set;
        m19406a();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11861bb
    /* renamed from: b */
    public final void mo19395b(ConnectionResult connectionResult) {
        Map map;
        Handler handler;
        map = this.f39239d.f39361s;
        C11838af c11838af = (C11838af) map.get(this.f39237b);
        if (c11838af != null) {
            handler = c11838af.f39227i.f39351g;
            C12045o.m19163a(handler);
            C11808a.AbstractC11817f abstractC11817f = c11838af.f39219a;
            String name = abstractC11817f.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(valueOf).length());
            sb.append("onSignInFailed for ");
            sb.append(name);
            sb.append(" with ");
            sb.append(valueOf);
            abstractC11817f.disconnect(sb.toString());
            c11838af.m19429a(connectionResult, (Exception) null);
        }
    }
}

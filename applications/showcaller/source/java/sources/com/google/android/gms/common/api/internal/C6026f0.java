package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.AbstractC6134i;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f0.class */
public final class C6026f0 implements AbstractC6113d.AbstractC6116c, AbstractC6060r0 {

    /* renamed from: a */
    private final C5984a.AbstractC5993f f19279a;

    /* renamed from: b */
    private final C6012b<?> f19280b;

    /* renamed from: c */
    private AbstractC6134i f19281c = null;

    /* renamed from: d */
    private Set<Scope> f19282d = null;

    /* renamed from: e */
    private boolean f19283e = false;

    /* renamed from: f */
    final /* synthetic */ C6025f f19284f;

    public C6026f0(C6025f c6025f, C5984a.AbstractC5993f abstractC5993f, C6012b<?> c6012b) {
        this.f19284f = c6025f;
        this.f19279a = abstractC5993f;
        this.f19280b = c6012b;
    }

    /* renamed from: h */
    public final void m17339h() {
        AbstractC6134i abstractC6134i;
        if (!this.f19283e || (abstractC6134i = this.f19281c) == null) {
            return;
        }
        this.f19279a.mo17318d(abstractC6134i, this.f19282d);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6116c
    /* renamed from: a */
    public final void mo17087a(ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f19284f.f19277w;
        handler.post(new RunnableC6023e0(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6060r0
    /* renamed from: b */
    public final void mo17285b(AbstractC6134i abstractC6134i, Set<Scope> set) {
        if (abstractC6134i == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            mo17284c(new ConnectionResult(4));
            return;
        }
        this.f19281c = abstractC6134i;
        this.f19282d = set;
        m17339h();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6060r0
    /* renamed from: c */
    public final void mo17284c(ConnectionResult connectionResult) {
        Map map;
        map = this.f19284f.f19273s;
        C6017c0 c6017c0 = (C6017c0) map.get(this.f19280b);
        if (c6017c0 != null) {
            c6017c0.m17400o(connectionResult);
        }
    }
}

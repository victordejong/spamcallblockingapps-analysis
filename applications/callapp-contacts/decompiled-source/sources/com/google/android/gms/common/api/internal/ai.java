package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.o;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ai.class */
public final class ai implements bb, d.c {

    /* renamed from: a  reason: collision with root package name */
    final a.f f22642a;

    /* renamed from: b  reason: collision with root package name */
    final b<?> f22643b;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ f f22645d;
    private i e = null;
    private Set<Scope> f = null;

    /* renamed from: c  reason: collision with root package name */
    boolean f22644c = false;

    public ai(f fVar, a.f fVar2, b<?> bVar) {
        this.f22645d = fVar;
        this.f22642a = fVar2;
        this.f22643b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        i iVar;
        if (this.f22644c && (iVar = this.e) != null) {
            this.f22642a.getRemoteService(iVar, this.f);
        }
    }

    @Override // com.google.android.gms.common.internal.d.c
    public final void a(ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f22645d.g;
        handler.post(new ah(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.bb
    public final void a(i iVar, Set<Scope> set) {
        if (iVar == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            b(new ConnectionResult(4));
            return;
        }
        this.e = iVar;
        this.f = set;
        a();
    }

    @Override // com.google.android.gms.common.api.internal.bb
    public final void b(ConnectionResult connectionResult) {
        Map map;
        Handler handler;
        map = this.f22645d.s;
        af afVar = (af) map.get(this.f22643b);
        if (afVar != null) {
            handler = afVar.i.g;
            o.a(handler);
            a.f fVar = afVar.f22634a;
            String name = fVar.getClass().getName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(valueOf).length());
            sb.append("onSignInFailed for ");
            sb.append(name);
            sb.append(" with ");
            sb.append(valueOf);
            fVar.disconnect(sb.toString());
            afVar.a(connectionResult, (Exception) null);
        }
    }
}

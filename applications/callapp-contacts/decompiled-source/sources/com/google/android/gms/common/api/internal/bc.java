package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.signin.d;
import com.google.android.gms.signin.e;
import com.google.android.gms.signin.internal.c;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bc.class */
public final class bc extends c implements g.a, g.b {

    /* renamed from: a  reason: collision with root package name */
    private static final a.AbstractC0453a<? extends e, com.google.android.gms.signin.a> f22676a = d.f29985c;

    /* renamed from: b  reason: collision with root package name */
    private final Context f22677b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f22678c;

    /* renamed from: d  reason: collision with root package name */
    private final a.AbstractC0453a<? extends e, com.google.android.gms.signin.a> f22679d;
    private final Set<Scope> e;
    private final com.google.android.gms.common.internal.e f;
    private e g;
    private bb h;

    public bc(Context context, Handler handler, com.google.android.gms.common.internal.e eVar) {
        a.AbstractC0453a<? extends e, com.google.android.gms.signin.a> aVar = f22676a;
        this.f22677b = context;
        this.f22678c = handler;
        this.f = (com.google.android.gms.common.internal.e) o.a(eVar, "ClientSettings must not be null");
        this.e = eVar.f22882b;
        this.f22679d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bc bcVar, zak zakVar) {
        ConnectionResult zaa = zakVar.zaa();
        ConnectionResult connectionResult = zaa;
        if (zaa.isSuccess()) {
            zav zavVar = (zav) o.a(zakVar.zab());
            connectionResult = zavVar.zab();
            if (!connectionResult.isSuccess()) {
                String valueOf = String.valueOf(connectionResult);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
            } else {
                bcVar.h.a(zavVar.zaa(), bcVar.e);
                bcVar.g.disconnect();
            }
        }
        bcVar.h.b(connectionResult);
        bcVar.g.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.e
    public final void a() {
        this.g.a(this);
    }

    @Override // com.google.android.gms.common.api.internal.e
    public final void a(int i) {
        this.g.disconnect();
    }

    @Override // com.google.android.gms.common.api.internal.l
    public final void a(ConnectionResult connectionResult) {
        this.h.b(connectionResult);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.common.api.a$f, com.google.android.gms.signin.e] */
    public final void a(bb bbVar) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.disconnect();
        }
        this.f.h = Integer.valueOf(System.identityHashCode(this));
        a.AbstractC0453a<? extends e, com.google.android.gms.signin.a> aVar = this.f22679d;
        Context context = this.f22677b;
        Looper looper = this.f22678c.getLooper();
        com.google.android.gms.common.internal.e eVar2 = this.f;
        this.g = aVar.a(context, looper, eVar2, (com.google.android.gms.common.internal.e) eVar2.g, (g.a) this, (g.b) this);
        this.h = bbVar;
        Set<Scope> set = this.e;
        if (set == null || set.isEmpty()) {
            this.f22678c.post(new az(this));
        } else {
            this.g.c();
        }
    }

    @Override // com.google.android.gms.signin.internal.c, com.google.android.gms.signin.internal.e
    public final void a(zak zakVar) {
        this.f22678c.post(new ba(this, zakVar));
    }

    public final void b() {
        e eVar = this.g;
        if (eVar != null) {
            eVar.disconnect();
        }
    }
}

package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.b.b;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/w.class */
public final class w extends bv {

    /* renamed from: b  reason: collision with root package name */
    final b<b<?>> f22771b = new b<>();
    private final f f;

    w(h hVar, f fVar, com.google.android.gms.common.b bVar) {
        super(hVar, bVar);
        this.f = fVar;
        this.f22627a.a("ConnectionlessLifecycleHelper", this);
    }

    public static void a(Activity activity, f fVar, b<?> bVar) {
        h hVar;
        g gVar = new g(activity);
        if (gVar.f22738a instanceof FragmentActivity) {
            hVar = cd.a((FragmentActivity) gVar.f22738a);
        } else if (gVar.f22738a instanceof Activity) {
            hVar = zzb.a((Activity) gVar.f22738a);
        } else {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        }
        w wVar = (w) hVar.a("ConnectionlessLifecycleHelper", w.class);
        w wVar2 = wVar;
        if (wVar == null) {
            wVar2 = new w(hVar, fVar, com.google.android.gms.common.b.a());
        }
        o.a(bVar, "ApiKey cannot be null");
        wVar2.f22771b.add(bVar);
        fVar.a(wVar2);
    }

    private final void f() {
        if (!this.f22771b.isEmpty()) {
            this.f.a(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.bv
    protected final void a(ConnectionResult connectionResult, int i) {
        this.f.b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.bv, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b() {
        super.b();
        f();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void c() {
        super.c();
        f();
    }

    @Override // com.google.android.gms.common.api.internal.bv, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void d() {
        super.d();
        f fVar = this.f;
        synchronized (f.f22735b) {
            if (fVar.e == this) {
                fVar.e = null;
                fVar.f.clear();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.bv
    protected final void e() {
        this.f.b();
    }
}

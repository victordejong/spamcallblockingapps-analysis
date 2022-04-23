package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.api.internal.p;
import com.google.android.gms.common.api.internal.q;
import com.google.android.gms.common.api.internal.s;
import com.google.android.gms.common.api.internal.t;
import com.google.android.gms.internal.location.aj;
import com.google.android.gms.internal.location.k;
import com.google.android.gms.internal.location.o;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.internal.location.zzbc;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/b.class */
public final class b extends f<a.d.c> {
    public b(Activity activity) {
        super(activity, e.f29326a, a.d.f, (q) new com.google.android.gms.common.api.internal.a());
    }

    public b(Context context) {
        super(context, e.f29326a, a.d.f, new com.google.android.gms.common.api.internal.a());
    }

    public final h<Location> a() {
        s.a a2 = s.a();
        a2.f22764a = new p(this) { // from class: com.google.android.gms.location.av

            /* renamed from: a  reason: collision with root package name */
            private final b f29321a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29321a = this;
            }

            @Override // com.google.android.gms.common.api.internal.p
            public final void a(Object obj, Object obj2) {
                this.f29321a.a((com.google.android.gms.internal.location.p) obj, (i) obj2);
            }
        };
        return a(a2.a().b());
    }

    public final h<Void> a(d dVar) {
        return t.a(a(j.a(dVar, d.class.getSimpleName())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(com.google.android.gms.internal.location.p pVar, i iVar) throws RemoteException {
        Location location;
        String f = f();
        if (com.google.android.gms.common.util.b.a(pVar.getAvailableFeatures(), au.f29319c)) {
            o oVar = pVar.f28909a;
            ((aj) oVar.f28905a).f28897a.checkConnected();
            location = ((aj) oVar.f28905a).a().a(f);
        } else {
            o oVar2 = pVar.f28909a;
            ((aj) oVar2.f28905a).f28897a.checkConnected();
            location = ((aj) oVar2.f28905a).a().b();
        }
        iVar.a((i) location);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void a(final m mVar, final d dVar, final k kVar, zzba zzbaVar, com.google.android.gms.common.api.internal.i iVar, com.google.android.gms.internal.location.p pVar, i iVar2) throws RemoteException {
        k kVar2;
        j jVar = new j(iVar2, new k(this, mVar, dVar, kVar) { // from class: com.google.android.gms.location.aw

            /* renamed from: a  reason: collision with root package name */
            private final b f29322a;

            /* renamed from: b  reason: collision with root package name */
            private final m f29323b;

            /* renamed from: c  reason: collision with root package name */
            private final d f29324c;

            /* renamed from: d  reason: collision with root package name */
            private final k f29325d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29322a = this;
                this.f29323b = mVar;
                this.f29324c = dVar;
                this.f29325d = kVar;
            }

            @Override // com.google.android.gms.location.k
            public final void a() {
                b bVar = this.f29322a;
                m mVar2 = this.f29323b;
                d dVar2 = this.f29324c;
                k kVar3 = this.f29325d;
                mVar2.f29339c = false;
                bVar.a(dVar2);
                if (kVar3 != null) {
                    kVar3.a();
                }
            }
        });
        zzbaVar.zzc(f());
        synchronized (pVar.f28909a) {
            o oVar = pVar.f28909a;
            ((aj) oVar.f28905a).f28897a.checkConnected();
            Object obj = iVar.f22740b;
            if (obj == null) {
                kVar2 = null;
            } else {
                synchronized (oVar.e) {
                    k kVar3 = oVar.e.get(obj);
                    kVar2 = kVar3;
                    if (kVar3 == null) {
                        kVar2 = new k(iVar);
                    }
                    oVar.e.put(obj, kVar2);
                }
            }
            if (kVar2 != null) {
                ((aj) oVar.f28905a).a().a(new zzbc(1, zzbaVar, null, null, kVar2, jVar));
            }
        }
    }
}

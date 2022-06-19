package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.internal.AbstractC11909p;
import com.google.android.gms.common.api.internal.AbstractC11910q;
import com.google.android.gms.common.api.internal.AbstractC11912s;
import com.google.android.gms.common.api.internal.C11832a;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.api.internal.C11902j;
import com.google.android.gms.common.api.internal.C11914t;
import com.google.android.gms.common.util.C12098b;
import com.google.android.gms.internal.location.BinderC13336k;
import com.google.android.gms.internal.location.C13322aj;
import com.google.android.gms.internal.location.C13340o;
import com.google.android.gms.internal.location.C13341p;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.internal.location.zzbc;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.location.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/b.class */
public final class C13752b extends AbstractC11823f<C11808a.AbstractC11812d.C11815c> {
    public C13752b(Activity activity) {
        super(activity, C13755e.f51095a, C11808a.AbstractC11812d.f39178f, (AbstractC11910q) new C11832a());
    }

    public C13752b(Context context) {
        super(context, C13755e.f51095a, C11808a.AbstractC11812d.f39178f, new C11832a());
    }

    /* renamed from: a */
    public final AbstractC14185h<Location> m12277a() {
        AbstractC11912s.C11913a m19316a = AbstractC11912s.m19316a();
        m19316a.f39401a = new AbstractC11909p(this) { // from class: com.google.android.gms.location.av

            /* renamed from: a */
            private final C13752b f51090a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51090a = this;
            }

            @Override // com.google.android.gms.common.api.internal.AbstractC11909p
            /* renamed from: a */
            public final void mo12270a(Object obj, Object obj2) {
                this.f51090a.m12276a((C13341p) obj, (C14186i) obj2);
            }
        };
        return m19454a(m19316a.m19314a().m19313b());
    }

    /* renamed from: a */
    public final AbstractC14185h<Void> m12275a(AbstractC13754d abstractC13754d) {
        return C11914t.m19312a(m19457a(C11902j.m19321a(abstractC13754d, AbstractC13754d.class.getSimpleName())));
    }

    /* renamed from: a */
    public final /* synthetic */ void m12276a(C13341p c13341p, C14186i c14186i) throws RemoteException {
        Location location;
        String f = m19450f();
        if (C12098b.m19048a(c13341p.getAvailableFeatures(), C13749au.f51086c)) {
            C13340o c13340o = c13341p.f50571a;
            ((C13322aj) c13340o.f50565a).f50557a.checkConnected();
            location = ((C13322aj) c13340o.f50565a).m13334a().mo13331a(f);
        } else {
            C13340o c13340o2 = c13341p.f50571a;
            ((C13322aj) c13340o2.f50565a).f50557a.checkConnected();
            location = ((C13322aj) c13340o2.f50565a).m13334a().mo13329b();
        }
        c14186i.m11471a((C14186i) location);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final /* synthetic */ void m12274a(AbstractC13763m abstractC13763m, AbstractC13754d abstractC13754d, AbstractC13761k abstractC13761k, zzba zzbaVar, C11899i c11899i, C13341p c13341p, C14186i c14186i) throws RemoteException {
        BinderC13336k binderC13336k;
        BinderC13760j binderC13760j = new BinderC13760j(c14186i, new AbstractC13761k(this, abstractC13763m, abstractC13754d, abstractC13761k) { // from class: com.google.android.gms.location.aw

            /* renamed from: a */
            private final C13752b f51091a;

            /* renamed from: b */
            private final AbstractC13763m f51092b;

            /* renamed from: c */
            private final AbstractC13754d f51093c;

            /* renamed from: d */
            private final AbstractC13761k f51094d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51091a = this;
                this.f51092b = abstractC13763m;
                this.f51093c = abstractC13754d;
                this.f51094d = abstractC13761k;
            }

            @Override // com.google.android.gms.location.AbstractC13761k
            /* renamed from: a */
            public final void mo12269a() {
                C13752b c13752b = this.f51091a;
                AbstractC13763m abstractC13763m2 = this.f51092b;
                AbstractC13754d abstractC13754d2 = this.f51093c;
                AbstractC13761k abstractC13761k2 = this.f51094d;
                abstractC13763m2.f51112c = false;
                c13752b.m12275a(abstractC13754d2);
                if (abstractC13761k2 != null) {
                    abstractC13761k2.mo12269a();
                }
            }
        });
        zzbaVar.zzc(m19450f());
        synchronized (c13341p.f50571a) {
            C13340o c13340o = c13341p.f50571a;
            ((C13322aj) c13340o.f50565a).f50557a.checkConnected();
            Object obj = c11899i.f39366b;
            if (obj == null) {
                binderC13336k = null;
            } else {
                synchronized (c13340o.f50569e) {
                    BinderC13336k binderC13336k2 = c13340o.f50569e.get(obj);
                    binderC13336k = binderC13336k2;
                    if (binderC13336k2 == null) {
                        binderC13336k = new BinderC13336k(c11899i);
                    }
                    c13340o.f50569e.put(obj, binderC13336k);
                }
            }
            if (binderC13336k != null) {
                ((C13322aj) c13340o.f50565a).m13334a().mo13333a(new zzbc(1, zzbaVar, null, null, binderC13336k, binderC13760j));
            }
        }
    }
}

package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AbstractC5869b;
import com.google.android.gms.appset.C5870c;
import com.google.android.gms.appset.C5873f;
import com.google.android.gms.appset.zza;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.AbstractC6046m;
import com.google.android.gms.common.api.internal.AbstractC6056q;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
/* renamed from: com.google.android.gms.internal.appset.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/o.class */
public final class C7253o extends AbstractC5996c<C5984a.AbstractC5988d.C5991c> implements AbstractC5869b {

    /* renamed from: k */
    private static final C5984a.C5994g<C7242d> f34234k;

    /* renamed from: l */
    private static final C5984a.AbstractC5985a<C7242d, C5984a.AbstractC5988d.C5991c> f34235l;

    /* renamed from: m */
    private static final C5984a<C5984a.AbstractC5988d.C5991c> f34236m;

    /* renamed from: n */
    private final Context f34237n;

    /* renamed from: o */
    private final C6086c f34238o;

    static {
        C5984a.C5994g<C7242d> c5994g = new C5984a.C5994g<>();
        f34234k = c5994g;
        C7251m c7251m = new C7251m();
        f34235l = c7251m;
        f34236m = new C5984a<>("AppSet.API", c7251m, c5994g);
    }

    public C7253o(Context context, C6086c c6086c) {
        super(context, f34236m, C5984a.AbstractC5988d.f19182b, AbstractC5996c.C5997a.f19193a);
        this.f34237n = context;
        this.f34238o = c6086c;
    }

    @Override // com.google.android.gms.appset.AbstractC5869b
    /* renamed from: a */
    public final AbstractC7966g<C5870c> mo7831a() {
        return this.f34238o.mo17219h(this.f34237n, 212800000) == 0 ? m17473g(AbstractC6056q.m17296a().m17289d(C5873f.f18828a).m17291b(new AbstractC6046m() { // from class: com.google.android.gms.internal.appset.l
            @Override // com.google.android.gms.common.api.internal.AbstractC6046m
            /* renamed from: a */
            public final void mo7834a(Object obj, Object obj2) {
                ((C7245g) ((C7242d) obj).m17132C()).m7842J0(new zza(null, null), new BinderC7252n(C7253o.this, (C7968h) obj2));
            }
        }).m17290c(false).m17288e(27601).m17292a()) : C7970j.m5799d(new ApiException(new Status(17)));
    }
}

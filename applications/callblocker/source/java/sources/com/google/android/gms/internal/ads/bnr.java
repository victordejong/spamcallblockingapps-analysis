package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnr.class */
public final class bnr implements bmy<akk, AbstractC3333mn, bof> {

    /* renamed from: a */
    private final Context f11624a;

    /* renamed from: b */
    private final alh f11625b;

    /* renamed from: c */
    private View f11626c;

    public bnr(Context context, alh alhVar) {
        this.f11624a = context;
        this.f11625b = alhVar;
    }

    /* renamed from: a */
    public static final /* synthetic */ eba m11752a(bmx bmxVar) {
        try {
            return ((AbstractC3333mn) bmxVar.f11571b).mo7440c();
        } catch (RemoteException e) {
            throw new zzdhk(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: a */
    public final void mo11709a(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        try {
            bmxVar.f11571b.mo7452a(cgrVar.f12971Q);
            bmxVar.f11571b.mo7450a(cgrVar.f12965K, cgrVar.f12997s.toString(), chdVar.f13034a.f13017a.f13040d, BinderC2734b.m13794a(this.f11624a), new bns(this, bmxVar), bmxVar.f11572c, chdVar.f13034a.f13017a.f13041e);
        } catch (RemoteException e) {
            throw new zzdhk(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bmy
    /* renamed from: b */
    public final /* synthetic */ akk mo11708b(chd chdVar, cgr cgrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        akj mo12971a = this.f11625b.mo12971a(new amy(chdVar, cgrVar, bmxVar.f11570a), new ako(this.f11626c, null, new ami(bmxVar) { // from class: com.google.android.gms.internal.ads.bnq

            /* renamed from: a */
            private final bmx f11623a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11623a = bmxVar;
            }

            @Override // com.google.android.gms.internal.ads.ami
            /* renamed from: a */
            public final eba mo11694a() {
                return bnr.m11752a(this.f11623a);
            }
        }, cgrVar.f12996r.get(0)));
        mo12971a.mo13021j().m12420a(this.f11626c);
        bmxVar.f11572c.m11742a((AbstractC3286ku) mo12971a.mo12938g());
        return mo12971a.mo13023h();
    }
}

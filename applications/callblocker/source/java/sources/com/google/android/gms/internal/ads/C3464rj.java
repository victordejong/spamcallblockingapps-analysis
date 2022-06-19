package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.C2282d;
import com.google.android.gms.ads.reward.AbstractC2393c;
import com.google.android.gms.ads.reward.AbstractC2394d;
/* renamed from: com.google.android.gms.internal.ads.rj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rj.class */
public final class C3464rj implements AbstractC2393c {

    /* renamed from: a */
    private final AbstractC3452qy f17306a;

    /* renamed from: b */
    private final Context f17307b;

    /* renamed from: c */
    private final Object f17308c = new Object();

    /* renamed from: d */
    private final BinderC3463ri f17309d = new BinderC3463ri(null);

    public C3464rj(Context context, AbstractC3452qy abstractC3452qy) {
        this.f17306a = abstractC3452qy == null ? new ecf() : abstractC3452qy;
        this.f17307b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final void m7249a(String str, ebi ebiVar) {
        synchronized (this.f17308c) {
            if (this.f17306a == null) {
                return;
            }
            try {
                this.f17306a.mo7283a(dyb.m8195a(this.f17307b, ebiVar, str));
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2393c
    /* renamed from: a */
    public final void mo7251a(AbstractC2394d abstractC2394d) {
        synchronized (this.f17308c) {
            this.f17309d.m7259a(abstractC2394d);
            if (this.f17306a != null) {
                try {
                    this.f17306a.mo7284a(this.f17309d);
                } catch (RemoteException e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2393c
    /* renamed from: a */
    public final void mo7250a(String str, C2282d c2282d) {
        m7249a(str, c2282d.m14842a());
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2393c
    /* renamed from: a */
    public final boolean mo7252a() {
        boolean z;
        synchronized (this.f17308c) {
            if (this.f17306a == null) {
                z = false;
            } else {
                try {
                    z = this.f17306a.mo7280b();
                } catch (RemoteException e) {
                    C3645yb.m6744e("#007 Could not call remote method.", e);
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.reward.AbstractC2393c
    /* renamed from: b */
    public final void mo7248b() {
        synchronized (this.f17308c) {
            if (this.f17306a == null) {
                return;
            }
            try {
                this.f17306a.mo7288a();
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AbstractC5598c;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.admanager.AbstractC5594a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r40.class */
public final class r40<AdT> extends AbstractC5594a {

    /* renamed from: a */
    private final Context f28762a;

    /* renamed from: b */
    private final C7154xq f28763b = C7154xq.f32156a;

    /* renamed from: c */
    private final AbstractC7008ts f28764c;

    /* renamed from: d */
    private final String f28765d;

    /* renamed from: e */
    private final p70 f28766e;

    /* renamed from: f */
    private AbstractC5621i f28767f;

    public r40(Context context, String str) {
        p70 p70Var = new p70();
        this.f28766e = p70Var;
        this.f28762a = context;
        this.f28765d = str;
        this.f28764c = C7118wr.m9484b().m10190j(context, new zzbdl(), str, p70Var);
    }

    @Override // com.google.android.gms.ads.p265x.AbstractC5859a
    /* renamed from: b */
    public final void mo11727b(AbstractC5621i abstractC5621i) {
        try {
            this.f28767f = abstractC5621i;
            AbstractC7008ts abstractC7008ts = this.f28764c;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9647S1(new BinderC7229zr(abstractC5621i));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.p265x.AbstractC5859a
    /* renamed from: c */
    public final void mo11726c(boolean z) {
        try {
            AbstractC7008ts abstractC7008ts = this.f28764c;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9624s0(z);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.p265x.AbstractC5859a
    /* renamed from: d */
    public final void mo11725d(Activity activity) {
        if (activity == null) {
            ei0.m15464f("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            AbstractC7008ts abstractC7008ts = this.f28764c;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9645W3(BinderC6255b.m16744m2(activity));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    public final void m11724e(C6862pu c6862pu, AbstractC5598c<AdT> abstractC5598c) {
        try {
            if (this.f28764c == null) {
                return;
            }
            this.f28766e.m12359F6(c6862pu.m12139l());
            this.f28764c.mo9648O5(this.f28763b.m9085a(this.f28762a, c6862pu), new BinderC6895qq(abstractC5598c, this));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            abstractC5598c.mo18297a(new C5756j(0, "Internal Error.", "com.google.android.gms.ads", null, null));
        }
    }
}

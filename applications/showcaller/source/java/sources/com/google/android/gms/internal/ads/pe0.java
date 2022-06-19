package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.AbstractC5840o;
import com.google.android.gms.ads.p267z.AbstractC5865b;
import com.google.android.gms.ads.p267z.AbstractC5866c;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pe0.class */
public final class pe0 extends AbstractC5865b {

    /* renamed from: a */
    private final String f27945a;

    /* renamed from: b */
    private final fe0 f27946b;

    /* renamed from: c */
    private final Context f27947c;

    /* renamed from: d */
    private final we0 f27948d = new we0();

    /* renamed from: e */
    private AbstractC5621i f27949e;

    public pe0(Context context, String str) {
        this.f27947c = context.getApplicationContext();
        this.f27945a = str;
        this.f27946b = C7118wr.m9484b().m10187m(context, str, new p70());
    }

    @Override // com.google.android.gms.ads.p267z.AbstractC5865b
    /* renamed from: b */
    public final void mo12305b(AbstractC5621i abstractC5621i) {
        this.f27949e = abstractC5621i;
        this.f27948d.m9610E6(abstractC5621i);
    }

    @Override // com.google.android.gms.ads.p267z.AbstractC5865b
    /* renamed from: c */
    public final void mo12304c(Activity activity, AbstractC5840o abstractC5840o) {
        this.f27948d.m9609F6(abstractC5840o);
        if (activity == null) {
            ei0.m15464f("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            fe0 fe0Var = this.f27946b;
            if (fe0Var == null) {
                return;
            }
            fe0Var.mo10003f5(this.f27948d);
            this.f27946b.mo10005U(BinderC6255b.m16744m2(activity));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: d */
    public final void m12303d(C6862pu c6862pu, AbstractC5866c abstractC5866c) {
        try {
            fe0 fe0Var = this.f27946b;
            if (fe0Var == null) {
                return;
            }
            fe0Var.mo10008L3(C7154xq.f32156a.m9085a(this.f27947c, c6862pu), new te0(abstractC5866c, this));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}

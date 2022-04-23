package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzbib;
/* renamed from: c.d.b.d.g.a.da */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/da.class */
public final class RunnableC3464da implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f12640a;

    /* renamed from: b */
    public final /* synthetic */ zzawl f12641b;

    /* renamed from: c */
    public final /* synthetic */ int f12642c;

    /* renamed from: d */
    public final /* synthetic */ zzbib f12643d;

    public RunnableC3464da(zzbib zzbibVar, View view, zzawl zzawlVar, int i) {
        this.f12643d = zzbibVar;
        this.f12640a = view;
        this.f12641b = zzawlVar;
        this.f12642c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12643d.m15496a(this.f12640a, this.f12641b, this.f12642c - 1);
    }
}

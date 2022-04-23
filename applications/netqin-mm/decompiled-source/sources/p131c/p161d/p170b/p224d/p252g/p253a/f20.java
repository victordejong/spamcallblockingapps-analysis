package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.f20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f20.class */
public final class f20 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f12870a;

    /* renamed from: b */
    public final /* synthetic */ View f12871b;

    /* renamed from: c */
    public final /* synthetic */ Activity f12872c;

    public f20(zzdy zzdyVar, Context context, View view, Activity activity) {
        this.f12870a = context;
        this.f12871b = view;
        this.f12872c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.mo13023a(this.f12870a, this.f12871b, this.f12872c);
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(2020, -1L, e);
        }
    }
}

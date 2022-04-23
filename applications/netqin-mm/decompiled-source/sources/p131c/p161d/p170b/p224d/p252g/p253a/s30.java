package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdy;
/* renamed from: c.d.b.d.g.a.s30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s30.class */
public final class s30 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f15065a;

    /* renamed from: b */
    public final /* synthetic */ String f15066b;

    /* renamed from: c */
    public final /* synthetic */ View f15067c;

    /* renamed from: d */
    public final /* synthetic */ Activity f15068d;

    public s30(zzdy zzdyVar, Context context, String str, View view, Activity activity) {
        this.f15065a = context;
        this.f15066b = str;
        this.f15067c = view;
        this.f15068d = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdtc zzdtcVar;
        zzdp zzdpVar;
        try {
            zzdpVar = zzdy.f27950y;
            zzdpVar.mo13021a(this.f15065a, this.f15066b, this.f15067c, this.f15068d);
        } catch (Exception e) {
            zzdtcVar = zzdy.f27945A;
            zzdtcVar.m13221a(2021, -1L, e);
        }
    }
}

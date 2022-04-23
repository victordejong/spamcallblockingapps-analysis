package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.AbstractC2102cc;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.b8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b8.class */
final class RunnableC2230b8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10003b;

    /* renamed from: c */
    final /* synthetic */ String f10004c;

    /* renamed from: d */
    final /* synthetic */ zzp f10005d;

    /* renamed from: e */
    final /* synthetic */ AbstractC2102cc f10006e;

    /* renamed from: f */
    final /* synthetic */ k8 f10007f;

    RunnableC2230b8(k8 k8Var, String str, String str2, zzp zzpVar, AbstractC2102cc ccVar) {
        this.f10007f = k8Var;
        this.f10003b = str;
        this.f10004c = str2;
        this.f10005d = zzpVar;
        this.f10006e = ccVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList;
        try {
            try {
                AbstractC2251f3 A = k8.A(this.f10007f);
                if (A == null) {
                    arrayList2 = arrayList;
                    ((m5) this.f10007f).a.t().m().m3874c("Failed to get conditional properties; not connected to service", this.f10003b, this.f10004c);
                    arrayList3 = arrayList;
                } else {
                    C1581h.m8347h(this.f10005d);
                    ArrayList Y = u9.Y(A.m3914Z0(this.f10003b, this.f10004c, this.f10005d));
                    arrayList2 = Y;
                    k8.B(this.f10007f);
                    arrayList3 = Y;
                }
            } catch (RemoteException e) {
                arrayList2 = arrayList3;
                ((m5) this.f10007f).a.t().m().m3873d("Failed to get conditional properties; remote exception", this.f10003b, this.f10004c, e);
            }
        } finally {
            ((m5) this.f10007f).a.G().X(this.f10006e, arrayList2);
        }
    }
}

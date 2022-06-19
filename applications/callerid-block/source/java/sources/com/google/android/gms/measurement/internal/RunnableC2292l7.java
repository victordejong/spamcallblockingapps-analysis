package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.AbstractC2102cc;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.l7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l7.class */
final class RunnableC2292l7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10275b;

    /* renamed from: c */
    final /* synthetic */ String f10276c;

    /* renamed from: d */
    final /* synthetic */ zzp f10277d;

    /* renamed from: e */
    final /* synthetic */ boolean f10278e;

    /* renamed from: f */
    final /* synthetic */ AbstractC2102cc f10279f;

    /* renamed from: g */
    final /* synthetic */ k8 f10280g;

    RunnableC2292l7(k8 k8Var, String str, String str2, zzp zzpVar, boolean z, AbstractC2102cc abstractC2102cc) {
        this.f10280g = k8Var;
        this.f10275b = str;
        this.f10276c = str2;
        this.f10277d = zzpVar;
        this.f10278e = z;
        this.f10279f = abstractC2102cc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        try {
            try {
                AbstractC2251f3 A = k8.A(this.f10280g);
                if (A == null) {
                    ((m5) this.f10280g).a.t().m().m3874c("Failed to get user properties; not connected to service", this.f10275b, this.f10276c);
                    ((m5) this.f10280g).a.G().W(this.f10279f, bundle2);
                    return;
                }
                C1581h.m8347h(this.f10277d);
                List<zzkl> m3913Z4 = A.m3913Z4(this.f10275b, this.f10276c, this.f10278e, this.f10277d);
                bundle = new Bundle();
                if (m3913Z4 != null) {
                    for (zzkl zzklVar : m3913Z4) {
                        String str = zzklVar.f;
                        if (str != null) {
                            bundle.putString(zzklVar.c, str);
                        } else {
                            Long l = zzklVar.e;
                            if (l != null) {
                                bundle.putLong(zzklVar.c, l.longValue());
                            } else {
                                Double d = zzklVar.h;
                                if (d != null) {
                                    bundle.putDouble(zzklVar.c, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    k8.B(this.f10280g);
                    ((m5) this.f10280g).a.G().W(this.f10279f, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    ((m5) this.f10280g).a.t().m().m3874c("Failed to get user properties; remote exception", this.f10275b, e);
                    ((m5) this.f10280g).a.G().W(this.f10279f, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                ((m5) this.f10280g).a.G().W(this.f10279f, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            ((m5) this.f10280g).a.G().W(this.f10279f, bundle2);
            throw th;
        }
    }
}

package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC2102cc;
/* renamed from: com.google.android.gms.measurement.internal.u7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u7.class */
final class RunnableC2349u7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzas f10429b;

    /* renamed from: c */
    final /* synthetic */ String f10430c;

    /* renamed from: d */
    final /* synthetic */ AbstractC2102cc f10431d;

    /* renamed from: e */
    final /* synthetic */ k8 f10432e;

    RunnableC2349u7(k8 k8Var, zzas zzasVar, String str, AbstractC2102cc ccVar) {
        this.f10432e = k8Var;
        this.f10429b = zzasVar;
        this.f10430c = str;
        this.f10431d = ccVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r9 = null;
        byte[] bArr = null;
        byte[] bArr2 = null;
        try {
            try {
                AbstractC2251f3 A = k8.A(this.f10432e);
                if (A == null) {
                    bArr = null;
                    ((m5) this.f10432e).a.t().m().m3876a("Discarding data. Failed to send event to service to bundle");
                } else {
                    byte[] s6 = A.m3905s6(this.f10429b, this.f10430c);
                    bArr = s6;
                    k8.B(this.f10432e);
                    bArr2 = s6;
                }
            } catch (RemoteException e) {
                bArr = bArr2;
                ((m5) this.f10432e).a.t().m().m3875b("Failed to send event to the service to bundle", e);
            }
        } finally {
            ((m5) this.f10432e).a.G().U(this.f10431d, bArr);
        }
    }
}

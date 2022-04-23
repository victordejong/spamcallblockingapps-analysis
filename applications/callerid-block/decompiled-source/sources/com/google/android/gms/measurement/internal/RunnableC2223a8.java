package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C1581h;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.a8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a8.class */
final class RunnableC2223a8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f9980b;

    /* renamed from: c */
    final /* synthetic */ String f9981c;

    /* renamed from: d */
    final /* synthetic */ String f9982d;

    /* renamed from: e */
    final /* synthetic */ zzp f9983e;

    /* renamed from: f */
    final /* synthetic */ k8 f9984f;

    RunnableC2223a8(k8 k8Var, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar) {
        this.f9984f = k8Var;
        this.f9980b = atomicReference;
        this.f9981c = str2;
        this.f9982d = str3;
        this.f9983e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC2251f3 A;
        AtomicReference atomicReference2;
        List<zzaa> j5;
        synchronized (this.f9980b) {
            try {
                try {
                    A = k8.A(this.f9984f);
                } catch (RemoteException e) {
                    ((m5) this.f9984f).a.t().m().m3873d("(legacy) Failed to get conditional properties; remote exception", null, this.f9981c, e);
                    this.f9980b.set(Collections.emptyList());
                    atomicReference = this.f9980b;
                }
                if (A == null) {
                    ((m5) this.f9984f).a.t().m().m3873d("(legacy) Failed to get conditional properties; not connected to service", null, this.f9981c, this.f9982d);
                    this.f9980b.set(Collections.emptyList());
                    this.f9980b.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    C1581h.m8347h(this.f9983e);
                    atomicReference2 = this.f9980b;
                    j5 = A.m3914Z0(this.f9981c, this.f9982d, this.f9983e);
                } else {
                    atomicReference2 = this.f9980b;
                    j5 = A.m3909j5(null, this.f9981c, this.f9982d);
                }
                atomicReference2.set(j5);
                k8.B(this.f9984f);
                atomicReference = this.f9980b;
                atomicReference.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C1581h;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.c8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c8.class */
final class RunnableC2236c8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10103b;

    /* renamed from: c */
    final /* synthetic */ String f10104c;

    /* renamed from: d */
    final /* synthetic */ String f10105d;

    /* renamed from: e */
    final /* synthetic */ zzp f10106e;

    /* renamed from: f */
    final /* synthetic */ boolean f10107f;

    /* renamed from: g */
    final /* synthetic */ k8 f10108g;

    RunnableC2236c8(k8 k8Var, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.f10108g = k8Var;
        this.f10103b = atomicReference;
        this.f10104c = str2;
        this.f10105d = str3;
        this.f10106e = zzpVar;
        this.f10107f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC2251f3 A;
        AtomicReference atomicReference2;
        List<zzkl> m3912b6;
        synchronized (this.f10103b) {
            try {
                try {
                    A = k8.A(this.f10108g);
                } catch (RemoteException e) {
                    ((m5) this.f10108g).a.t().m().m3873d("(legacy) Failed to get user properties; remote exception", null, this.f10104c, e);
                    this.f10103b.set(Collections.emptyList());
                    atomicReference = this.f10103b;
                }
                if (A == null) {
                    ((m5) this.f10108g).a.t().m().m3873d("(legacy) Failed to get user properties; not connected to service", null, this.f10104c, this.f10105d);
                    this.f10103b.set(Collections.emptyList());
                    this.f10103b.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    C1581h.m8347h(this.f10106e);
                    atomicReference2 = this.f10103b;
                    m3912b6 = A.m3913Z4(this.f10104c, this.f10105d, this.f10107f, this.f10106e);
                } else {
                    atomicReference2 = this.f10103b;
                    m3912b6 = A.m3912b6(null, this.f10104c, this.f10105d, this.f10107f);
                }
                atomicReference2.set(m3912b6);
                k8.B(this.f10108g);
                atomicReference = this.f10103b;
                atomicReference.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

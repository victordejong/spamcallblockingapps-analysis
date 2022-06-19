package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ia */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ia.class */
public final class RunnableC14069ia implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51857a;

    /* renamed from: b */
    final /* synthetic */ String f51858b;

    /* renamed from: c */
    final /* synthetic */ String f51859c;

    /* renamed from: d */
    final /* synthetic */ zzp f51860d;

    /* renamed from: e */
    final /* synthetic */ C14079ik f51861e;

    public RunnableC14069ia(C14079ik c14079ik, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar) {
        this.f51861e = c14079ik;
        this.f51857a = atomicReference;
        this.f51858b = str2;
        this.f51859c = str3;
        this.f51860d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC13938df abstractC13938df;
        synchronized (this.f51857a) {
            try {
                abstractC13938df = this.f51861e.f51890b;
            } catch (RemoteException e) {
                this.f51861e.f51637t.mo11661c().f51395c.m12089a("(legacy) Failed to get conditional properties; remote exception", null, this.f51858b, e);
                this.f51857a.set(Collections.emptyList());
                atomicReference = this.f51857a;
            }
            if (abstractC13938df == null) {
                this.f51861e.f51637t.mo11661c().f51395c.m12089a("(legacy) Failed to get conditional properties; not connected to service", null, this.f51858b, this.f51859c);
                this.f51857a.set(Collections.emptyList());
                this.f51857a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C12045o.m19162a(this.f51860d);
                this.f51857a.set(abstractC13938df.mo11895a(this.f51858b, this.f51859c, this.f51860d));
            } else {
                this.f51857a.set(abstractC13938df.mo11894a((String) null, this.f51858b, this.f51859c));
            }
            this.f51861e.m11736i();
            atomicReference = this.f51857a;
            atomicReference.notify();
        }
    }
}

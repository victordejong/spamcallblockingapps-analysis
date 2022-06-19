package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ic */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ic.class */
public final class RunnableC14071ic implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51867a;

    /* renamed from: b */
    final /* synthetic */ String f51868b;

    /* renamed from: c */
    final /* synthetic */ String f51869c;

    /* renamed from: d */
    final /* synthetic */ zzp f51870d;

    /* renamed from: e */
    final /* synthetic */ boolean f51871e;

    /* renamed from: f */
    final /* synthetic */ C14079ik f51872f;

    public RunnableC14071ic(C14079ik c14079ik, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.f51872f = c14079ik;
        this.f51867a = atomicReference;
        this.f51868b = str2;
        this.f51869c = str3;
        this.f51870d = zzpVar;
        this.f51871e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC13938df abstractC13938df;
        synchronized (this.f51867a) {
            try {
                abstractC13938df = this.f51872f.f51890b;
            } catch (RemoteException e) {
                this.f51872f.f51637t.mo11661c().f51395c.m12089a("(legacy) Failed to get user properties; remote exception", null, this.f51868b, e);
                this.f51867a.set(Collections.emptyList());
                atomicReference = this.f51867a;
            }
            if (abstractC13938df == null) {
                this.f51872f.f51637t.mo11661c().f51395c.m12089a("(legacy) Failed to get user properties; not connected to service", null, this.f51868b, this.f51869c);
                this.f51867a.set(Collections.emptyList());
                this.f51867a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C12045o.m19162a(this.f51870d);
                this.f51867a.set(abstractC13938df.mo11892a(this.f51868b, this.f51869c, this.f51871e, this.f51870d));
            } else {
                this.f51867a.set(abstractC13938df.mo11893a((String) null, this.f51868b, this.f51869c, this.f51871e));
            }
            this.f51872f.m11736i();
            atomicReference = this.f51867a;
            atomicReference.notify();
        }
    }
}

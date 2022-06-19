package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13620jy;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ho */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ho.class */
public final class RunnableC14056ho implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51814a;

    /* renamed from: b */
    final /* synthetic */ zzp f51815b;

    /* renamed from: c */
    final /* synthetic */ C14079ik f51816c;

    public RunnableC14056ho(C14079ik c14079ik, AtomicReference atomicReference, zzp zzpVar) {
        this.f51816c = c14079ik;
        this.f51814a = atomicReference;
        this.f51815b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f51814a) {
            try {
                C13620jy.m12411b();
            } catch (RemoteException e) {
                this.f51816c.f51637t.mo11661c().f51395c.m12091a("Failed to get app instance id", e);
                atomicReference = this.f51814a;
            }
            if (this.f51816c.f51637t.f51529g.m12061d(null, C13935dc.f51333au) && !this.f51816c.f51637t.m11991b().m12036e().m11957c()) {
                this.f51816c.f51637t.mo11661c().f51400h.m12092a("Analytics storage consent denied; will not get app instance id");
                this.f51816c.f51637t.m11989f().m11862a((String) null);
                this.f51816c.f51637t.m11991b().f51460f.m12042a(null);
                this.f51814a.set(null);
                this.f51814a.notify();
                return;
            }
            AbstractC13938df abstractC13938df = this.f51816c.f51890b;
            if (abstractC13938df == null) {
                this.f51816c.f51637t.mo11661c().f51395c.m12092a("Failed to get app instance id");
                this.f51814a.notify();
                return;
            }
            C12045o.m19162a(this.f51815b);
            this.f51814a.set(abstractC13938df.mo11888c(this.f51815b));
            String str = (String) this.f51814a.get();
            if (str != null) {
                this.f51816c.f51637t.m11989f().m11862a(str);
                this.f51816c.f51637t.m11991b().f51460f.m12042a(str);
            }
            this.f51816c.m11736i();
            atomicReference = this.f51814a;
            atomicReference.notify();
        }
    }
}

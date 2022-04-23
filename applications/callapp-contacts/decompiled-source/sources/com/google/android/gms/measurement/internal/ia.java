package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ia.class */
public final class ia implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29814a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29815b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29816c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzp f29817d;
    final /* synthetic */ ik e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ia(ik ikVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar) {
        this.e = ikVar;
        this.f29814a = atomicReference;
        this.f29815b = str2;
        this.f29816c = str3;
        this.f29817d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        df dfVar;
        synchronized (this.f29814a) {
            try {
                dfVar = this.e.f29842b;
            } catch (RemoteException e) {
                this.e.t.c().f29506c.a("(legacy) Failed to get conditional properties; remote exception", null, this.f29815b, e);
                this.f29814a.set(Collections.emptyList());
                atomicReference = this.f29814a;
            }
            if (dfVar == null) {
                this.e.t.c().f29506c.a("(legacy) Failed to get conditional properties; not connected to service", null, this.f29815b, this.f29816c);
                this.f29814a.set(Collections.emptyList());
                this.f29814a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                o.a(this.f29817d);
                this.f29814a.set(dfVar.a(this.f29815b, this.f29816c, this.f29817d));
            } else {
                this.f29814a.set(dfVar.a((String) null, this.f29815b, this.f29816c));
            }
            this.e.i();
            atomicReference = this.f29814a;
            atomicReference.notify();
        }
    }
}

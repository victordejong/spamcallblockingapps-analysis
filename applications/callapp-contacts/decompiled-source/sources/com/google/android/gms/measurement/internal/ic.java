package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ic.class */
public final class ic implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29822a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29823b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29824c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzp f29825d;
    final /* synthetic */ boolean e;
    final /* synthetic */ ik f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ic(ik ikVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.f = ikVar;
        this.f29822a = atomicReference;
        this.f29823b = str2;
        this.f29824c = str3;
        this.f29825d = zzpVar;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        df dfVar;
        synchronized (this.f29822a) {
            try {
                dfVar = this.f.f29842b;
            } catch (RemoteException e) {
                this.f.t.c().f29506c.a("(legacy) Failed to get user properties; remote exception", null, this.f29823b, e);
                this.f29822a.set(Collections.emptyList());
                atomicReference = this.f29822a;
            }
            if (dfVar == null) {
                this.f.t.c().f29506c.a("(legacy) Failed to get user properties; not connected to service", null, this.f29823b, this.f29824c);
                this.f29822a.set(Collections.emptyList());
                this.f29822a.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                o.a(this.f29825d);
                this.f29822a.set(dfVar.a(this.f29823b, this.f29824c, this.e, this.f29825d));
            } else {
                this.f29822a.set(dfVar.a((String) null, this.f29823b, this.f29824c, this.e));
            }
            this.f.i();
            atomicReference = this.f29822a;
            atomicReference.notify();
        }
    }
}

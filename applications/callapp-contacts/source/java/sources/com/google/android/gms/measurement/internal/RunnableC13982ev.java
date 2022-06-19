package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.ev */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ev.class */
final class RunnableC13982ev implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzaa f51554a;

    /* renamed from: b */
    final /* synthetic */ BinderC13999fl f51555b;

    public RunnableC13982ev(BinderC13999fl binderC13999fl, zzaa zzaaVar) {
        this.f51555b = binderC13999fl;
        this.f51554a = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        C14110jo c14110jo3;
        c14110jo = this.f51555b.f51634a;
        c14110jo.m11648n();
        if (this.f51554a.zzc.zza() == null) {
            c14110jo3 = this.f51555b.f51634a;
            zzaa zzaaVar = this.f51554a;
            zzp m11662b = c14110jo3.m11662b((String) C12045o.m19162a(zzaaVar.zza));
            if (m11662b == null) {
                return;
            }
            c14110jo3.m11666b(zzaaVar, m11662b);
            return;
        }
        c14110jo2 = this.f51555b.f51634a;
        zzaa zzaaVar2 = this.f51554a;
        zzp m11662b2 = c14110jo2.m11662b((String) C12045o.m19162a(zzaaVar2.zza));
        if (m11662b2 == null) {
            return;
        }
        c14110jo2.m11678a(zzaaVar2, m11662b2);
    }
}

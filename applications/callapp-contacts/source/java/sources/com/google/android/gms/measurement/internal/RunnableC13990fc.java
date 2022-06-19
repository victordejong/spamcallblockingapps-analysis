package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.C13620jy;
/* renamed from: com.google.android.gms.measurement.internal.fc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fc.class */
final class RunnableC13990fc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51579a;

    /* renamed from: b */
    final /* synthetic */ BinderC13999fl f51580b;

    public RunnableC13990fc(BinderC13999fl binderC13999fl, zzp zzpVar) {
        this.f51580b = binderC13999fl;
        this.f51579a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51580b.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51580b.f51634a;
        zzp zzpVar = this.f51579a;
        C13620jy.m12411b();
        if (c14110jo2.m11670b().m12061d(null, C13935dc.f51335aw)) {
            c14110jo2.mo11658d().mo11884S_();
            c14110jo2.m11651i();
            C12045o.m19160a(zzpVar.zza);
            C13987f m11963a = C13987f.m11963a(zzpVar.zzv);
            C13987f m11673a = c14110jo2.m11673a(zzpVar.zza);
            c14110jo2.mo11661c().f51403k.m12090a("Setting consent, package, consent", zzpVar.zza, m11963a);
            c14110jo2.m11671a(zzpVar.zza, m11963a);
            if (!m11963a.m11966a(m11673a)) {
                return;
            }
            c14110jo2.m11674a(zzpVar);
        }
    }
}

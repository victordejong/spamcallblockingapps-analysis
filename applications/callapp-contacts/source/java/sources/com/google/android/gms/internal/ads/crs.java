package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crs.class */
public final class crs implements dbi<crj<AdT>> {

    /* renamed from: a */
    private final /* synthetic */ crr f46449a;

    public crs(crr crrVar) {
        this.f46449a = crrVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(Object obj) {
        crj<?> crjVar = (crj) obj;
        synchronized (this.f46449a) {
            this.f46449a.f46444e.mo17286a(crjVar);
            if (this.f46449a.f46442c != crw.f46454b) {
                this.f46449a.f46443d.mo17302a(this.f46449a.f46440a.mo17283b(), crjVar);
            }
            if (this.f46449a.f46442c == crw.f46453a) {
                crr crrVar = this.f46449a;
                crrVar.m17288c(crrVar.f46440a);
            }
            this.f46449a.f46442c = crw.f46453a;
            this.f46449a.f46441b.mo16881b((dag) crjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        synchronized (this.f46449a) {
            this.f46449a.f46441b.mo16882a(th);
        }
    }
}

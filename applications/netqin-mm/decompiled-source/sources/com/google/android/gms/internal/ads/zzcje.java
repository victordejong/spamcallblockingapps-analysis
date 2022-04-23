package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcje.class */
public final class zzcje implements zzaia {

    /* renamed from: a */
    public final zzbvh f26116a;

    /* renamed from: b */
    public final zzauv f26117b;

    /* renamed from: c */
    public final String f26118c;

    /* renamed from: d */
    public final String f26119d;

    public zzcje(zzbvh zzbvhVar, zzdnv zzdnvVar) {
        this.f26116a = zzbvhVar;
        this.f26117b = zzdnvVar.f27596l;
        this.f26118c = zzdnvVar.f27594j;
        this.f26119d = zzdnvVar.f27595k;
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: a */
    public final void mo14156a(zzauv zzauvVar) {
        int i;
        String str;
        zzauv zzauvVar2 = this.f26117b;
        if (zzauvVar2 != null) {
            zzauvVar = zzauvVar2;
        }
        if (zzauvVar != null) {
            str = zzauvVar.f24528a;
            i = zzauvVar.f24529b;
        } else {
            str = "";
            i = 1;
        }
        this.f26116a.m15023a(new zzatu(str, i), this.f26118c, this.f26119d);
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: o */
    public final void mo14155o() {
        this.f26116a.m15025Q();
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    /* renamed from: p */
    public final void mo14154p() {
        this.f26116a.m15024R();
    }
}

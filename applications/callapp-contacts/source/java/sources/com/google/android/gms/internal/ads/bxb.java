package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxb.class */
public final class bxb implements ayv {

    /* renamed from: a */
    final /* synthetic */ bwz f45003a;

    /* renamed from: b */
    private final /* synthetic */ cpk f45004b;

    /* renamed from: c */
    private final /* synthetic */ cov f45005c;

    /* renamed from: d */
    private final /* synthetic */ bsn f45006d;

    public bxb(bwz bwzVar, cpk cpkVar, cov covVar, bsn bsnVar) {
        this.f45003a = bwzVar;
        this.f45004b = cpkVar;
        this.f45005c = covVar;
        this.f45006d = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.ayv
    /* renamed from: a */
    public final void mo17590a() {
        this.f45003a.f44993a.execute(new Runnable(this, this.f45004b, this.f45005c, this.f45006d) { // from class: com.google.android.gms.internal.ads.bxe

            /* renamed from: a */
            private final bxb f45012a;

            /* renamed from: b */
            private final cpk f45013b;

            /* renamed from: c */
            private final cov f45014c;

            /* renamed from: d */
            private final bsn f45015d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45012a = this;
                this.f45013b = cpkVar;
                this.f45014c = covVar;
                this.f45015d = bsnVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bwz.m17591c(this.f45013b, this.f45014c, this.f45015d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ayv
    /* renamed from: b */
    public final void mo17589b() {
        String valueOf = String.valueOf(this.f45006d.f44639a);
        zzd.zzez(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxb.class */
final class bxb implements ayv {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bwz f25315a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cpk f25316b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ cov f25317c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ bsn f25318d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bxb(bwz bwzVar, cpk cpkVar, cov covVar, bsn bsnVar) {
        this.f25315a = bwzVar;
        this.f25316b = cpkVar;
        this.f25317c = covVar;
        this.f25318d = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.ayv
    public final void a() {
        Executor executor = this.f25315a.f25308a;
        final cpk cpkVar = this.f25316b;
        final cov covVar = this.f25317c;
        final bsn bsnVar = this.f25318d;
        executor.execute(new Runnable(this, cpkVar, covVar, bsnVar) { // from class: com.google.android.gms.internal.ads.bxe

            /* renamed from: a  reason: collision with root package name */
            private final bxb f25324a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25325b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25326c;

            /* renamed from: d  reason: collision with root package name */
            private final bsn f25327d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25324a = this;
                this.f25325b = cpkVar;
                this.f25326c = covVar;
                this.f25327d = bsnVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bwz.c(this.f25325b, this.f25326c, this.f25327d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ayv
    public final void b() {
        String valueOf = String.valueOf(this.f25318d.f25012a);
        zzd.zzez(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}

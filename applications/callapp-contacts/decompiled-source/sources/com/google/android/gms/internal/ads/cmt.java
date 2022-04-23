package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmt.class */
public final class cmt implements dbi<azi> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cmr f26088a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cal f26089b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ bai f26090c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cmt(cmr cmrVar, cal calVar, bai baiVar) {
        this.f26088a = cmrVar;
        this.f26089b = calVar;
        this.f26090c = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(azi aziVar) {
        azi aziVar2 = aziVar;
        synchronized (this.f26088a) {
            this.f26088a.e = null;
            if (((Boolean) ekb.e().a(aq.eN)).booleanValue()) {
                aziVar2.m.f23890a.a(this.f26088a.f26084b).a(this.f26088a.f26085c);
            }
            this.f26089b.a(aziVar2);
            if (((Boolean) ekb.e().a(aq.eN)).booleanValue()) {
                this.f26088a.f26083a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmw

                    /* renamed from: a  reason: collision with root package name */
                    private final cmt f26093a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26093a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f26093a.f26088a.f26084b.a();
                    }
                });
                this.f26088a.f26083a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmv

                    /* renamed from: a  reason: collision with root package name */
                    private final cmt f26092a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26092a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f26092a.f26088a.f26085c.a();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        final zzvh a2 = this.f26090c.b().a(th);
        synchronized (this.f26088a) {
            this.f26088a.e = null;
            this.f26090c.a().a(a2);
            if (((Boolean) ekb.e().a(aq.eN)).booleanValue()) {
                this.f26088a.f26083a.execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.cmy

                    /* renamed from: a  reason: collision with root package name */
                    private final cmt f26096a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzvh f26097b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26096a = this;
                        this.f26097b = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cmt cmtVar = this.f26096a;
                        cmtVar.f26088a.f26084b.a(this.f26097b);
                    }
                });
                this.f26088a.f26083a.execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.cmx

                    /* renamed from: a  reason: collision with root package name */
                    private final cmt f26094a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzvh f26095b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26094a = this;
                        this.f26095b = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cmt cmtVar = this.f26094a;
                        cmtVar.f26088a.f26085c.a(this.f26095b);
                    }
                });
            }
            cqb.a(a2.errorCode, th, "InterstitialAdLoader.onFailure");
            this.f26089b.a();
        }
    }
}

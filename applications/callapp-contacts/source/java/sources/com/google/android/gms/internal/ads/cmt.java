package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmt.class */
public final class cmt implements dbi<azi> {

    /* renamed from: a */
    final /* synthetic */ cmr f46100a;

    /* renamed from: b */
    private final /* synthetic */ cal f46101b;

    /* renamed from: c */
    private final /* synthetic */ bai f46102c;

    public cmt(cmr cmrVar, cal calVar, bai baiVar) {
        this.f46100a = cmrVar;
        this.f46101b = calVar;
        this.f46102c = baiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(azi aziVar) {
        azi aziVar2 = aziVar;
        synchronized (this.f46100a) {
            this.f46100a.f46095e = null;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42863eN)).booleanValue()) {
                aziVar2.f42491m.f43178a.m18384a(this.f46100a.f46092b).m18383a(this.f46100a.f46093c);
            }
            this.f46101b.mo17372a(aziVar2);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42863eN)).booleanValue()) {
                this.f46100a.f46091a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmw

                    /* renamed from: a */
                    private final cmt f46105a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46105a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f46105a.f46100a.f46092b.mo17408a();
                    }
                });
                this.f46100a.f46091a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cmv

                    /* renamed from: a */
                    private final cmt f46104a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46104a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f46104a.f46100a.f46093c.mo17408a();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        zzvh m18505a = this.f46102c.mo18273b().m18505a(th);
        synchronized (this.f46100a) {
            this.f46100a.f46095e = null;
            this.f46102c.mo18275a().mo17319a(m18505a);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42863eN)).booleanValue()) {
                this.f46100a.f46091a.execute(new Runnable(this, m18505a) { // from class: com.google.android.gms.internal.ads.cmy

                    /* renamed from: a */
                    private final cmt f46108a;

                    /* renamed from: b */
                    private final zzvh f46109b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46108a = this;
                        this.f46109b = m18505a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cmt cmtVar = this.f46108a;
                        cmtVar.f46100a.f46092b.mo17319a(this.f46109b);
                    }
                });
                this.f46100a.f46091a.execute(new Runnable(this, m18505a) { // from class: com.google.android.gms.internal.ads.cmx

                    /* renamed from: a */
                    private final cmt f46106a;

                    /* renamed from: b */
                    private final zzvh f46107b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46106a = this;
                        this.f46107b = m18505a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cmt cmtVar = this.f46106a;
                        cmtVar.f46100a.f46093c.mo17319a(this.f46107b);
                    }
                });
            }
            cqb.m17342a(m18505a.errorCode, th, "InterstitialAdLoader.onFailure");
            this.f46101b.mo17373a();
        }
    }
}

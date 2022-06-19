package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxp.class */
final class bxp implements asx {

    /* renamed from: a */
    private boolean f45039a = false;

    /* renamed from: b */
    private final /* synthetic */ bsn f45040b;

    /* renamed from: c */
    private final /* synthetic */ C13103zp f45041c;

    /* renamed from: d */
    private final /* synthetic */ bxj f45042d;

    public bxp(bxj bxjVar, bsn bsnVar, C13103zp c13103zp) {
        this.f45042d = bxjVar;
        this.f45040b = bsnVar;
        this.f45041c = c13103zp;
    }

    /* renamed from: b */
    private final void m17578b(zzvh zzvhVar) {
        cqj cqjVar = cqj.INTERNAL_ERROR;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42827de)).booleanValue()) {
            cqjVar = cqj.NO_FILL;
        }
        this.f45041c.setException(new zzctd(cqjVar, zzvhVar));
    }

    @Override // com.google.android.gms.internal.ads.asx
    /* renamed from: a */
    public final void mo17582a() {
        synchronized (this) {
            this.f45041c.set(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.asx
    /* renamed from: a */
    public final void mo17581a(int i) {
        if (this.f45039a) {
            return;
        }
        m17578b(new zzvh(i, bxj.m17586a(this.f45040b.f44639a, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.asx
    /* renamed from: a */
    public final void mo17580a(int i, String str) {
        synchronized (this) {
            if (this.f45039a) {
                return;
            }
            this.f45039a = true;
            String str2 = str;
            if (str == null) {
                str2 = bxj.m17586a(this.f45040b.f44639a, i);
            }
            m17578b(new zzvh(i, str2, AdError.UNDEFINED_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.asx
    /* renamed from: a */
    public final void mo17579a(zzvh zzvhVar) {
        synchronized (this) {
            this.f45039a = true;
            m17578b(zzvhVar);
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxp.class */
final class bxp implements asx {

    /* renamed from: a  reason: collision with root package name */
    private boolean f25351a = false;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ bsn f25352b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zp f25353c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ bxj f25354d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bxp(bxj bxjVar, bsn bsnVar, zp zpVar) {
        this.f25354d = bxjVar;
        this.f25352b = bsnVar;
        this.f25353c = zpVar;
    }

    private final void b(zzvh zzvhVar) {
        cqj cqjVar = cqj.INTERNAL_ERROR;
        if (((Boolean) ekb.e().a(aq.de)).booleanValue()) {
            cqjVar = cqj.NO_FILL;
        }
        this.f25353c.setException(new zzctd(cqjVar, zzvhVar));
    }

    @Override // com.google.android.gms.internal.ads.asx
    public final void a() {
        synchronized (this) {
            this.f25353c.set(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.asx
    public final void a(int i) {
        if (!this.f25351a) {
            b(new zzvh(i, bxj.a(this.f25352b.f25012a, i), AdError.UNDEFINED_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.asx
    public final void a(int i, String str) {
        synchronized (this) {
            if (!this.f25351a) {
                this.f25351a = true;
                String str2 = str;
                if (str == null) {
                    str2 = bxj.a(this.f25352b.f25012a, i);
                }
                b(new zzvh(i, str2, AdError.UNDEFINED_DOMAIN, null, null));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asx
    public final void a(zzvh zzvhVar) {
        synchronized (this) {
            this.f25351a = true;
            b(zzvhVar);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.overlay.zzl;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxr.class */
public class bxr extends AbstractBinderC12751mr {

    /* renamed from: a */
    private final arj f45048a;

    /* renamed from: b */
    private final asc f45049b;

    /* renamed from: c */
    private final asp f45050c;

    /* renamed from: d */
    private final ata f45051d;

    /* renamed from: e */
    private final avz f45052e;

    /* renamed from: f */
    private final atj f45053f;

    /* renamed from: g */
    private final ayz f45054g;

    /* renamed from: h */
    private final avr f45055h;

    /* renamed from: i */
    private final ars f45056i;

    public bxr(arj arjVar, asc ascVar, asp aspVar, ata ataVar, avz avzVar, atj atjVar, ayz ayzVar, avr avrVar, ars arsVar) {
        this.f45048a = arjVar;
        this.f45049b = ascVar;
        this.f45050c = aspVar;
        this.f45051d = ataVar;
        this.f45052e = avzVar;
        this.f45053f = atjVar;
        this.f45054g = ayzVar;
        this.f45055h = avrVar;
        this.f45056i = arsVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14435a() {
        this.f45048a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14434a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14433a(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14432a(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14431a(AbstractC12532eo abstractC12532eo, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14430a(AbstractC12758my abstractC12758my) {
    }

    /* renamed from: a */
    public void mo14429a(AbstractC12962ul abstractC12962ul) throws RemoteException {
    }

    /* renamed from: a */
    public void mo14428a(zzavy zzavyVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14427a(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14426a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14425a(String str, String str2) {
        this.f45052e.mo14636a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14424b() {
        this.f45053f.zza(zzl.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    @Deprecated
    /* renamed from: b */
    public final void mo14423b(int i) throws RemoteException {
        mo14422b(new zzvh(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14422b(zzvh zzvhVar) {
        this.f45056i.mo17682a(cqh.m17324a(cqj.MEDIATION_SHOW_ERROR, zzvhVar));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14421b(String str) {
        mo14422b(new zzvh(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: c */
    public final void mo14420c() {
        this.f45050c.m18426b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: d */
    public final void mo14419d() {
        this.f45053f.zzvz();
        this.f45055h.m18378b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: e */
    public final void mo14418e() {
        this.f45051d.mo17408a();
    }

    /* renamed from: f */
    public void mo14417f() {
        this.f45049b.m18434a();
        this.f45055h.m18379a();
    }

    /* renamed from: g */
    public void mo14416g() {
        this.f45054g.m18314b();
    }

    /* renamed from: h */
    public void mo14415h() {
        this.f45054g.m18313c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: i */
    public final void mo14414i() {
        this.f45054g.m18315a();
    }

    /* renamed from: j */
    public void mo14413j() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: k */
    public final void mo14412k() throws RemoteException {
        this.f45054g.m18312d();
    }
}

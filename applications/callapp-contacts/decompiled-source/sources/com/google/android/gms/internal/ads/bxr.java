package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.overlay.zzl;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxr.class */
public class bxr extends mr {

    /* renamed from: a  reason: collision with root package name */
    private final arj f25359a;

    /* renamed from: b  reason: collision with root package name */
    private final asc f25360b;

    /* renamed from: c  reason: collision with root package name */
    private final asp f25361c;

    /* renamed from: d  reason: collision with root package name */
    private final ata f25362d;
    private final avz e;
    private final atj f;
    private final ayz g;
    private final avr h;
    private final ars i;

    public bxr(arj arjVar, asc ascVar, asp aspVar, ata ataVar, avz avzVar, atj atjVar, ayz ayzVar, avr avrVar, ars arsVar) {
        this.f25359a = arjVar;
        this.f25360b = ascVar;
        this.f25361c = aspVar;
        this.f25362d = ataVar;
        this.e = avzVar;
        this.f = atjVar;
        this.g = ayzVar;
        this.h = avrVar;
        this.i = arsVar;
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a() {
        this.f25359a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(eo eoVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(my myVar) {
    }

    public void a(ul ulVar) throws RemoteException {
    }

    public void a(zzavy zzavyVar) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str, String str2) {
        this.e.a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b() {
        this.f.zza(zzl.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.ms
    @Deprecated
    public final void b(int i) throws RemoteException {
        b(new zzvh(i, "", AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(zzvh zzvhVar) {
        this.i.a(cqh.a(cqj.MEDIATION_SHOW_ERROR, zzvhVar));
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(String str) {
        b(new zzvh(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void c() {
        this.f25361c.b();
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void d() {
        this.f.zzvz();
        this.h.b();
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void e() {
        this.f25362d.a();
    }

    public void f() {
        this.f25360b.a();
        this.h.a();
    }

    public void g() {
        this.g.b();
    }

    public void h() {
        this.g.c();
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void i() {
        this.g.a();
    }

    public void j() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void k() throws RemoteException {
        this.g.d();
    }
}

package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvi.class */
public abstract class dvi implements dvy, dwc {

    /* renamed from: a  reason: collision with root package name */
    private final int f27246a;

    /* renamed from: b  reason: collision with root package name */
    private dwb f27247b;

    /* renamed from: c  reason: collision with root package name */
    private int f27248c;

    /* renamed from: d  reason: collision with root package name */
    private int f27249d;
    private ebc e;
    private long f;
    private boolean g = true;
    private boolean h;

    public dvi(int i) {
        this.f27246a = i;
    }

    @Override // com.google.android.gms.internal.ads.dvy, com.google.android.gms.internal.ads.dwc
    public final int a() {
        return this.f27246a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(dvw dvwVar, dxm dxmVar, boolean z) {
        int a2 = this.e.a(dvwVar, dxmVar, z);
        if (a2 == -4) {
            if (dxmVar.c()) {
                this.g = true;
                return this.h ? -4 : -3;
            }
            dxmVar.f27377d += this.f;
        } else if (a2 == -5) {
            zzht zzhtVar = dvwVar.f27281a;
            if (zzhtVar.zzaid != Long.MAX_VALUE) {
                dvwVar.f27281a = zzhtVar.zzds(zzhtVar.zzaid + this.f);
            }
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void a(int i) {
        this.f27248c = i;
    }

    @Override // com.google.android.gms.internal.ads.dvn
    public void a(int i, Object obj) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void a(long j) throws zzhe {
        this.h = false;
        this.g = false;
        a(j, false);
    }

    protected void a(long j, boolean z) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void a(dwb dwbVar, zzht[] zzhtVarArr, ebc ebcVar, long j, boolean z, long j2) throws zzhe {
        ecr.b(this.f27249d == 0);
        this.f27247b = dwbVar;
        this.f27249d = 1;
        a(z);
        a(zzhtVarArr, ebcVar, j2);
        a(j, z);
    }

    protected void a(boolean z) throws zzhe {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(zzht[] zzhtVarArr, long j) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void a(zzht[] zzhtVarArr, ebc ebcVar, long j) throws zzhe {
        ecr.b(!this.h);
        this.e = ebcVar;
        this.g = false;
        this.f = j;
        a(zzhtVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final dwc b() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(long j) {
        this.e.a(j - this.f);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public ecv c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final int d() {
        return this.f27249d;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void e() throws zzhe {
        boolean z = true;
        if (this.f27249d != 1) {
            z = false;
        }
        ecr.b(z);
        this.f27249d = 2;
        n();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final ebc f() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final boolean g() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void h() {
        this.h = true;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final boolean i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void j() throws IOException {
        this.e.b();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void k() throws zzhe {
        ecr.b(this.f27249d == 2);
        this.f27249d = 1;
        o();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    public final void l() {
        boolean z = true;
        if (this.f27249d != 1) {
            z = false;
        }
        ecr.b(z);
        this.f27249d = 0;
        this.e = null;
        this.h = false;
        p();
    }

    @Override // com.google.android.gms.internal.ads.dwc
    public int m() throws zzhe {
        return 0;
    }

    protected void n() throws zzhe {
    }

    protected void o() throws zzhe {
    }

    protected void p() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final dwb q() {
        return this.f27247b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int r() {
        return this.f27248c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean s() {
        return this.g ? this.h : this.e.a();
    }
}

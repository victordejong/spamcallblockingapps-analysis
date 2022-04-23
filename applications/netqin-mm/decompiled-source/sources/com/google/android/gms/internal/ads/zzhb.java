package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhb.class */
public abstract class zzhb implements zzhw, zzhx {

    /* renamed from: a */
    public final int f28247a;

    /* renamed from: b */
    public zzhz f28248b;

    /* renamed from: c */
    public int f28249c;

    /* renamed from: d */
    public int f28250d;

    /* renamed from: e */
    public zznm f28251e;

    /* renamed from: f */
    public long f28252f;

    /* renamed from: g */
    public boolean f28253g = true;

    /* renamed from: h */
    public boolean f28254h;

    public zzhb(int i) {
        this.f28247a = i;
    }

    /* renamed from: a */
    public final int m12065a(zzhq zzhqVar, zzjk zzjkVar, boolean z) {
        int a = this.f28251e.mo11762a(zzhqVar, zzjkVar, z);
        if (a == -4) {
            if (zzjkVar.m11912c()) {
                this.f28253g = true;
                return this.f28254h ? -4 : -3;
            }
            zzjkVar.f28410d += this.f28252f;
        } else if (a == -5) {
            zzho zzhoVar = zzhqVar.f28293a;
            long j = zzhoVar.f28285w;
            if (j != Long.MAX_VALUE) {
                zzhqVar.f28293a = zzhoVar.m12036a(j + this.f28252f);
            }
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: a */
    public final void mo12015a(int i) {
        this.f28249c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    /* renamed from: a */
    public void mo11601a(int i, Object obj) throws zzhd {
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: a */
    public final void mo12014a(long j) throws zzhd {
        this.f28254h = false;
        this.f28253g = false;
        mo11599a(j, false);
    }

    /* renamed from: a */
    public void mo11599a(long j, boolean z) throws zzhd {
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: a */
    public final void mo12013a(zzhz zzhzVar, zzho[] zzhoVarArr, zznm zznmVar, long j, boolean z, long j2) throws zzhd {
        zzoz.m11694b(this.f28250d == 0);
        this.f28248b = zzhzVar;
        this.f28250d = 1;
        mo11588a(z);
        mo12012a(zzhoVarArr, zznmVar, j2);
        mo11599a(j, z);
    }

    /* renamed from: a */
    public void mo11588a(boolean z) throws zzhd {
    }

    /* renamed from: a */
    public void mo11586a(zzho[] zzhoVarArr, long j) throws zzhd {
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: a */
    public final void mo12012a(zzho[] zzhoVarArr, zznm zznmVar, long j) throws zzhd {
        zzoz.m11694b(!this.f28254h);
        this.f28251e = zznmVar;
        this.f28253g = false;
        this.f28252f = j;
        mo11586a(zzhoVarArr, j);
    }

    /* renamed from: b */
    public final void m12064b(long j) {
        this.f28251e.mo11763a(j - this.f28252f);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: d */
    public final int mo12011d() {
        return this.f28250d;
    }

    @Override // com.google.android.gms.internal.ads.zzhw, com.google.android.gms.internal.ads.zzhx
    /* renamed from: e */
    public final int mo12010e() {
        return this.f28247a;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: f */
    public final void mo12009f() {
        boolean z = true;
        if (this.f28250d != 1) {
            z = false;
        }
        zzoz.m11694b(z);
        this.f28250d = 0;
        this.f28251e = null;
        this.f28254h = false;
        mo11576s();
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: g */
    public final boolean mo12008g() {
        return this.f28253g;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: h */
    public final void mo12007h() {
        this.f28254h = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: i */
    public final zzhw mo12006i() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: j */
    public zzpd mo11931j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: k */
    public final zznm mo12005k() {
        return this.f28251e;
    }

    @Override // com.google.android.gms.internal.ads.zzhw
    /* renamed from: l */
    public int mo11826l() throws zzhd {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: m */
    public final boolean mo12004m() {
        return this.f28254h;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    /* renamed from: n */
    public final void mo12003n() throws IOException {
        this.f28251e.mo11764a();
    }

    /* renamed from: p */
    public final int m12063p() {
        return this.f28249c;
    }

    /* renamed from: q */
    public void mo11578q() throws zzhd {
    }

    /* renamed from: r */
    public void mo11577r() throws zzhd {
    }

    /* renamed from: s */
    public void mo11576s() {
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void start() throws zzhd {
        boolean z = true;
        if (this.f28250d != 1) {
            z = false;
        }
        zzoz.m11694b(z);
        this.f28250d = 2;
        mo11578q();
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void stop() throws zzhd {
        zzoz.m11694b(this.f28250d == 2);
        this.f28250d = 1;
        mo11577r();
    }

    /* renamed from: t */
    public final zzhz m12062t() {
        return this.f28248b;
    }

    /* renamed from: u */
    public final boolean m12061u() {
        return this.f28253g ? this.f28254h : this.f28251e.mo11761b();
    }
}

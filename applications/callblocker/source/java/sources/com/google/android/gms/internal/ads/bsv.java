package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.p119b.C2266j;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsv.class */
public final class bsv extends dzj {

    /* renamed from: a */
    private final Context f12184a;

    /* renamed from: b */
    private final afh f12185b;

    /* renamed from: c */
    private final chj f12186c = new chj();

    /* renamed from: d */
    private final azi f12187d = new azi();

    /* renamed from: e */
    private dza f12188e;

    public bsv(afh afhVar, Context context, String str) {
        this.f12185b = afhVar;
        this.f12186c.m11336a(str);
        this.f12184a = context;
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final dzf mo7987a() {
        azg m12209a = this.f12187d.m12209a();
        this.f12186c.m11335a(m12209a.m12211f());
        this.f12186c.m11331b(m12209a.m12210g());
        chj chjVar = this.f12186c;
        if (chjVar.m11333b() == null) {
            chjVar.m11341a(dyd.m8193a());
        }
        return new bsy(this.f12184a, this.f12185b, this.f12186c, m12209a, this.f12188e);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7986a(C2266j c2266j) {
        this.f12186c.m11346a(c2266j);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7985a(C2835bl c2835bl) {
        this.f12186c.m11345a(c2835bl);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7984a(AbstractC2902cv abstractC2902cv) {
        this.f12187d.m12208a(abstractC2902cv);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7983a(AbstractC2950da abstractC2950da) {
        this.f12187d.m12207a(abstractC2950da);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7982a(AbstractC2999dj abstractC2999dj, dyd dydVar) {
        this.f12187d.m12206a(abstractC2999dj);
        this.f12186c.m11341a(dydVar);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7981a(AbstractC3007do abstractC3007do) {
        this.f12187d.m12205a(abstractC3007do);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7980a(dza dzaVar) {
        this.f12188e = dzaVar;
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7979a(eac eacVar) {
        this.f12186c.m11339a(eacVar);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7977a(C3171gn c3171gn) {
        this.f12186c.m11337a(c3171gn);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7976a(AbstractC3179gv abstractC3179gv) {
        this.f12187d.m12204a(abstractC3179gv);
    }

    @Override // com.google.android.gms.internal.ads.dzg
    /* renamed from: a */
    public final void mo7975a(String str, AbstractC2964dg abstractC2964dg, AbstractC2952db abstractC2952db) {
        this.f12187d.m12203a(str, abstractC2964dg, abstractC2952db);
    }
}

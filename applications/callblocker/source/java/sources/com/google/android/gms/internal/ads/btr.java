package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btr.class */
public final class btr implements btm<amh> {
    @GuardedBy("this")

    /* renamed from: a */
    private final chj f12240a;

    /* renamed from: b */
    private final afh f12241b;

    /* renamed from: c */
    private final Context f12242c;

    /* renamed from: d */
    private final btk f12243d;
    @GuardedBy("this")

    /* renamed from: e */
    private amt f12244e;

    public btr(afh afhVar, Context context, btk btkVar, chj chjVar) {
        this.f12241b = afhVar;
        this.f12242c = context;
        this.f12243d = btkVar;
        this.f12240a = chjVar;
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11396a() {
        return this.f12244e != null && this.f12244e.m12917a();
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11391a(dya dyaVar, String str, btl btlVar, bto<? super amh> btoVar) {
        boolean z = true;
        C2341q.m14744c();
        if (C3567ve.m6944o(this.f12242c) && dyaVar.f16085s == null) {
            C3556uu.m6749c("Failed to load the ad because app ID is missing.");
            this.f12241b.mo13374a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.btq

                /* renamed from: a */
                private final btr f12239a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12239a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f12239a.m11633c();
                }
            });
            z = false;
        } else if (str == null) {
            C3556uu.m6749c("Ad unit ID should not be null for NativeAdLoader.");
            this.f12241b.mo13374a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.btt

                /* renamed from: a */
                private final btr f12248a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12248a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f12248a.m11634b();
                }
            });
            z = false;
        } else {
            chp.m11299a(this.f12242c, dyaVar.f16072f);
            chh m11325e = this.f12240a.m11342a(dyaVar).m11347a(btlVar instanceof btn ? ((btn) btlVar).f12238a : 1).m11325e();
            axo mo12352a = this.f12241b.mo13351l().mo12351a(new apb.C2790a().m12840a(this.f12242c).m12836a(m11325e).m12841a()).mo12350a(new atf.C2797a().m12751a(this.f12243d.m11638c(), this.f12241b.mo13374a()).m12754a(this.f12243d.m11637d(), this.f12241b.mo13374a()).m12752a(this.f12243d.m11636e(), this.f12241b.mo13374a()).m12746a(this.f12243d.m11635f(), this.f12241b.mo13374a()).m12755a(this.f12243d.m11639b(), this.f12241b.mo13374a()).m12745a(m11325e.f13049m, this.f12241b.mo13374a()).m12758a()).mo12349a(this.f12243d.m11641a()).mo12352a();
            this.f12241b.mo13343p().m11295a(1);
            this.f12244e = new amt(this.f12241b.mo13369c(), this.f12241b.mo13371b(), mo12352a.mo12348a().m12891b());
            this.f12244e.m12914a(new bts(this, btoVar, mo12352a));
        }
        return z;
    }

    /* renamed from: b */
    public final /* synthetic */ void m11634b() {
        this.f12243d.m11637d().mo11258a(1);
    }

    /* renamed from: c */
    public final /* synthetic */ void m11633c() {
        this.f12243d.m11637d().mo11258a(8);
    }
}

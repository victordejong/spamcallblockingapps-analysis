package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y42.class */
public final class y42 implements q42<xy0> {

    /* renamed from: a */
    private final vj2 f32413a;

    /* renamed from: b */
    private final sp0 f32414b;

    /* renamed from: c */
    private final Context f32415c;

    /* renamed from: d */
    private final n42 f32416d;

    /* renamed from: e */
    private lz0 f32417e;

    public y42(sp0 sp0Var, Context context, n42 n42Var, vj2 vj2Var) {
        this.f32414b = sp0Var;
        this.f32415c = context;
        this.f32416d = n42Var;
        this.f32413a = vj2Var;
        vj2Var.m9971j(n42Var.m13008c());
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: a */
    public final boolean mo8958a(zzbdg zzbdgVar, String str, o42 o42Var, p42<? super xy0> p42Var) {
        C5667s.m18160d();
        if (C5679c2.m18064k(this.f32415c) && zzbdgVar.f33677v == null) {
            ei0.m15467c("Failed to load the ad because app ID is missing.");
            this.f32414b.mo10958h().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.t42

                /* renamed from: d */
                private final y42 f29808d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29808d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29808d.m8953f();
                }
            });
            return false;
        } else if (str == null) {
            ei0.m15467c("Ad unit ID should not be null for NativeAdLoader.");
            this.f32414b.mo10958h().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.u42

                /* renamed from: d */
                private final y42 f30525d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f30525d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30525d.m8954e();
                }
            });
            return false;
        } else {
            nk2.m12891b(this.f32415c, zzbdgVar.f33664i);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue() && zzbdgVar.f33664i) {
                this.f32414b.mo10966C().m13453c(true);
            }
            int i = ((r42) o42Var).f28768a;
            vj2 vj2Var = this.f32413a;
            vj2Var.m9989G(zzbdgVar);
            vj2Var.m9979b(i);
            xj2 m9969l = vj2Var.m9969l();
            if (m9969l.f32087n != null) {
                this.f32416d.m13008c().m16696v(m9969l.f32087n);
            }
            ed1 mo10945u = this.f32414b.mo10945u();
            h21 h21Var = new h21();
            h21Var.m14759e(this.f32415c);
            h21Var.m14758f(m9969l);
            mo10945u.mo10562k(h21Var.m14756h());
            n81 n81Var = new n81();
            n81Var.m12962w(this.f32416d.m13008c(), this.f32414b.mo10958h());
            mo10945u.mo10563j(n81Var.m12982c());
            mo10945u.mo10564f(this.f32416d.m13009b());
            mo10945u.mo10565e(new uw0(null));
            fd1 zza = mo10945u.zza();
            this.f32414b.mo10967B().m12223a(1);
            s03 s03Var = qi0.f28495a;
            kj3.m13879b(s03Var);
            ScheduledExecutorService mo10957i = this.f32414b.mo10957i();
            b01<ez0> mo10228a = zza.mo10228a();
            lz0 lz0Var = new lz0(s03Var, mo10957i, mo10228a.m16459d(mo10228a.m16460c()));
            this.f32417e = lz0Var;
            lz0Var.m13392a(new x42(this, p42Var, zza));
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.q42
    /* renamed from: b */
    public final boolean mo8957b() {
        lz0 lz0Var = this.f32417e;
        return lz0Var != null && lz0Var.m13390c();
    }

    /* renamed from: e */
    public final /* synthetic */ void m8954e() {
        this.f32416d.m13006e().mo9146O(sk2.m10997d(6, null, null));
    }

    /* renamed from: f */
    public final /* synthetic */ void m8953f() {
        this.f32416d.m13006e().mo9146O(sk2.m10997d(4, null, null));
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzdqk;
import com.google.android.gms.internal.ads.zzdqs;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.LinkedList;
import p131c.p161d.p170b.p224d.p252g.p253a.C4158vy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqs.class */
public final class zzdqs<AdT extends zzbqo> {

    /* renamed from: a */
    public final zzdpw f27754a;

    /* renamed from: b */
    public zzdqy f27755b;

    /* renamed from: c */
    public zzdzj<zzdqk<AdT>> f27756c;

    /* renamed from: d */
    public zzdzc<zzdqk<AdT>> f27757d;

    /* renamed from: f */
    public final zzdpz f27759f;

    /* renamed from: g */
    public final zzdqv<AdT> f27760g;

    /* renamed from: e */
    public int f27758e = zzdqi.f27742g;

    /* renamed from: i */
    public final zzdyr<zzdqk<AdT>> f27762i = new C4158vy(this);

    /* renamed from: h */
    public final LinkedList<zzdqy> f27761h = new LinkedList<>();

    public zzdqs(zzdpz zzdpzVar, zzdpw zzdpwVar, zzdqv<AdT> zzdqvVar) {
        this.f27759f = zzdpzVar;
        this.f27754a = zzdpwVar;
        this.f27760g = zzdqvVar;
        this.f27754a.m13321a(new zzdpv(this) { // from class: c.d.b.d.g.a.wy

            /* renamed from: a */
            public final zzdqs f15980a;

            {
                this.f15980a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdpv
            public final void execute() {
                this.f15980a.m13300b();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13305a(zzdqk zzdqkVar) throws Exception {
        zzdzc a;
        synchronized (this) {
            a = zzdyq.m12988a(new zzdqw(zzdqkVar, this.f27755b));
        }
        return a;
    }

    /* renamed from: a */
    public final void m13301a(zzdqy zzdqyVar) {
        this.f27761h.add(zzdqyVar);
    }

    /* renamed from: a */
    public final boolean m13306a() {
        zzdzc<zzdqk<AdT>> zzdzcVar = this.f27757d;
        return zzdzcVar == null || zzdzcVar.isDone();
    }

    /* renamed from: b */
    public final zzdzc<zzdqw<AdT>> m13298b(zzdqy zzdqyVar) {
        synchronized (this) {
            if (m13306a()) {
                return null;
            }
            this.f27758e = zzdqi.f27744i;
            if (!(this.f27755b.mo13290a() == null || zzdqyVar.mo13290a() == null || !this.f27755b.mo13290a().equals(zzdqyVar.mo13290a()))) {
                this.f27758e = zzdqi.f27743h;
                return zzdyq.m12992a(this.f27756c, new zzdya(this) { // from class: c.d.b.d.g.a.uy

                    /* renamed from: a */
                    public final zzdqs f15684a;

                    {
                        this.f15684a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdya
                    /* renamed from: d */
                    public final zzdzc mo13006d(Object obj) {
                        return this.f15684a.m13305a((zzdqk) obj);
                    }
                }, zzdqyVar.mo13289b());
            }
            return null;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13300b() {
        synchronized (this) {
            m13296c(this.f27755b);
        }
    }

    /* renamed from: c */
    public final void m13296c(zzdqy zzdqyVar) {
        while (m13306a()) {
            if (zzdqyVar != null || !this.f27761h.isEmpty()) {
                zzdqy zzdqyVar2 = zzdqyVar;
                if (zzdqyVar == null) {
                    zzdqyVar2 = this.f27761h.remove();
                }
                if (zzdqyVar2.mo13290a() == null || !this.f27759f.mo13315b(zzdqyVar2.mo13290a())) {
                    zzdqyVar = null;
                } else {
                    this.f27755b = zzdqyVar2.mo13288c();
                    this.f27756c = zzdzj.m12970h();
                    zzdzc<zzdqk<AdT>> a = this.f27760g.mo13292a(this.f27755b);
                    this.f27757d = a;
                    zzdyq.m12991a(a, this.f27762i, zzdqyVar2.mo13289b());
                    return;
                }
            } else {
                return;
            }
        }
        if (zzdqyVar != null) {
            this.f27761h.add(zzdqyVar);
        }
    }
}

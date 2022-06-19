package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.util.Pair;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a42.class */
public final class a42 implements u51, n41, b31, s31, AbstractC6673kq, y21, k51, AbstractC6323bb, o31, qa1 {

    /* renamed from: l */
    private final jo2 f19826l;

    /* renamed from: d */
    private final AtomicReference<AbstractC6526gs> f19818d = new AtomicReference<>();

    /* renamed from: e */
    private final AtomicReference<AbstractC6304at> f19819e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<AbstractC6379cu> f19820f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<AbstractC6638js> f19821g = new AtomicReference<>();

    /* renamed from: h */
    private final AtomicReference<AbstractC6602it> f19822h = new AtomicReference<>();

    /* renamed from: i */
    private final AtomicBoolean f19823i = new AtomicBoolean(true);

    /* renamed from: j */
    private final AtomicBoolean f19824j = new AtomicBoolean(false);

    /* renamed from: k */
    private final AtomicBoolean f19825k = new AtomicBoolean(false);

    /* renamed from: m */
    final BlockingQueue<Pair<String, String>> f19827m = new ArrayBlockingQueue(((Integer) C7192yr.m8714c().m14263c(C6679kw.f25749m6)).intValue());

    public a42(jo2 jo2Var) {
        this.f19826l = jo2Var;
    }

    @TargetApi(5)
    /* renamed from: J */
    private final void m16700J() {
        if (!this.f19824j.get() || !this.f19825k.get()) {
            return;
        }
        Iterator it = this.f19827m.iterator();
        while (it.hasNext()) {
            gg2.m14948a(this.f19819e, new fg2((Pair) it.next()) { // from class: com.google.android.gms.internal.ads.p32

                /* renamed from: a */
                private final Pair f27828a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27828a = pair;
                }

                @Override // com.google.android.gms.internal.ads.fg2
                /* renamed from: a */
                public final void mo8384a(Object obj) {
                    Pair pair2 = this.f27828a;
                    ((AbstractC6304at) obj).mo8701R5((String) pair2.first, (String) pair2.second);
                }
            });
        }
        this.f19827m.clear();
        this.f19823i.set(false);
    }

    /* renamed from: H */
    public final void m16702H(AbstractC6638js abstractC6638js) {
        this.f19821g.set(abstractC6638js);
    }

    /* renamed from: I */
    public final void m16701I(AbstractC6602it abstractC6602it) {
        this.f19822h.set(abstractC6602it);
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        gg2.m14948a(this.f19818d, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.s32

            /* renamed from: a */
            private final zzbcz f29373a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29373a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6526gs) obj).mo12204R(this.f29373a);
            }
        });
        gg2.m14948a(this.f19818d, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.t32

            /* renamed from: a */
            private final zzbcz f29805a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29805a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6526gs) obj).mo12205C(this.f29805a.f33653d);
            }
        });
        gg2.m14948a(this.f19821g, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.u32

            /* renamed from: a */
            private final zzbcz f30489a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30489a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6638js) obj).mo11827l2(this.f30489a);
            }
        });
        this.f19823i.set(false);
        this.f19827m.clear();
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: S */
    public final void mo10409S(rj2 rj2Var) {
        this.f19823i.set(true);
        this.f19825k.set(false);
    }

    /* renamed from: a */
    public final AbstractC6526gs m16699a() {
        AbstractC6526gs abstractC6526gs;
        synchronized (this) {
            abstractC6526gs = this.f19818d.get();
        }
        return abstractC6526gs;
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
            gg2.m14948a(this.f19818d, j32.f24770a);
        }
        gg2.m14948a(this.f19822h, k32.f25063a);
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        synchronized (this) {
            gg2.m14948a(this.f19818d, w32.f31448a);
            gg2.m14948a(this.f19821g, x32.f31901a);
            this.f19825k.set(true);
            m16700J();
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
        gg2.m14948a(this.f19818d, y32.f32406a);
        gg2.m14948a(this.f19822h, z32.f32804a);
        gg2.m14948a(this.f19822h, h32.f23798a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
        gg2.m14948a(this.f19818d, v32.f31065a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
    }

    @Override // com.google.android.gms.internal.ads.o31
    /* renamed from: l */
    public final void mo9239l(zzbcz zzbczVar) {
        gg2.m14948a(this.f19822h, new fg2(zzbczVar) { // from class: com.google.android.gms.internal.ads.o32

            /* renamed from: a */
            private final zzbcz f27408a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27408a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6602it) obj).mo8218S2(this.f27408a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6323bb
    @TargetApi(5)
    /* renamed from: m */
    public final void mo12207m(String str, String str2) {
        synchronized (this) {
            if (!this.f19823i.get()) {
                gg2.m14948a(this.f19819e, new fg2(str, str2) { // from class: com.google.android.gms.internal.ads.n32

                    /* renamed from: a */
                    private final String f26964a;

                    /* renamed from: b */
                    private final String f26965b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26964a = str;
                        this.f26965b = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.fg2
                    /* renamed from: a */
                    public final void mo8384a(Object obj) {
                        ((AbstractC6304at) obj).mo8701R5(this.f26964a, this.f26965b);
                    }
                });
                return;
            }
            if (!this.f19827m.offer(new Pair<>(str, str2))) {
                ei0.m15469a("The queue for app events is full, dropping the new event.");
                jo2 jo2Var = this.f19826l;
                if (jo2Var != null) {
                    io2 m14338a = io2.m14338a("dae_action");
                    m14338a.m14336c("dae_name", str);
                    m14338a.m14336c("dae_data", str2);
                    jo2Var.mo9502b(m14338a);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.k51
    /* renamed from: p */
    public final void mo9235p(zzbdn zzbdnVar) {
        gg2.m14948a(this.f19820f, new fg2(zzbdnVar) { // from class: com.google.android.gms.internal.ads.m32

            /* renamed from: a */
            private final zzbdn f26412a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26412a = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6379cu) obj).mo12813j5(this.f26412a);
            }
        });
    }

    /* renamed from: q */
    public final AbstractC6304at m16698q() {
        AbstractC6304at abstractC6304at;
        synchronized (this) {
            abstractC6304at = this.f19819e.get();
        }
        return abstractC6304at;
    }

    /* renamed from: r */
    public final void m16697r(AbstractC6526gs abstractC6526gs) {
        this.f19818d.set(abstractC6526gs);
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: u */
    public final void mo10408u(zzcbj zzcbjVar) {
    }

    /* renamed from: v */
    public final void m16696v(AbstractC6304at abstractC6304at) {
        this.f19819e.set(abstractC6304at);
        this.f19824j.set(true);
        m16700J();
    }

    /* renamed from: y */
    public final void m16695y(AbstractC6379cu abstractC6379cu) {
        this.f19820f.set(abstractC6379cu);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
            gg2.m14948a(this.f19818d, i32.f24128a);
        }
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        gg2.m14948a(this.f19818d, l32.f25925a);
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
        gg2.m14948a(this.f19818d, g32.f23232a);
        gg2.m14948a(this.f19822h, q32.f28307a);
    }
}

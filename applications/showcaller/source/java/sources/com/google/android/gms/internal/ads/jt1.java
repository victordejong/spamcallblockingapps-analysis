package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jt1.class */
public final class jt1 {

    /* renamed from: a */
    private final s03 f24974a;

    /* renamed from: b */
    private final rs1 f24975b;

    /* renamed from: c */
    private final vi3<bu1> f24976c;

    public jt1(s03 s03Var, rs1 rs1Var, vi3<bu1> vi3Var) {
        this.f24974a = s03Var;
        this.f24975b = rs1Var;
        this.f24976c = vi3Var;
    }

    /* renamed from: g */
    private final <RetT> r03<RetT> m14042g(zzcbj zzcbjVar, it1<InputStream> it1Var, it1<InputStream> it1Var2, uz2<InputStream, RetT> uz2Var) {
        String str = zzcbjVar.f33829g;
        C5667s.m18160d();
        return k03.m13997g(k03.m13995i(a03.m16718E(C5679c2.m18071f(str) ? k03.m14001c(new zzeap(1)) : k03.m13997g(it1Var.mo14282a(zzcbjVar), ExecutionException.class, at1.f20117a, this.f24974a)), uz2Var, this.f24974a), zzeap.class, new uz2(this, it1Var2, zzcbjVar, uz2Var) { // from class: com.google.android.gms.internal.ads.bt1

            /* renamed from: a */
            private final jt1 f20956a;

            /* renamed from: b */
            private final it1 f20957b;

            /* renamed from: c */
            private final zzcbj f20958c;

            /* renamed from: d */
            private final uz2 f20959d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20956a = this;
                this.f20957b = it1Var2;
                this.f20958c = zzcbjVar;
                this.f20959d = uz2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f20956a.m14043f(this.f20957b, this.f20958c, this.f20959d, (zzeap) obj);
            }
        }, this.f24974a);
    }

    /* renamed from: a */
    public final r03<zzcbj> m14048a(zzcbj zzcbjVar) {
        return m14042g(zzcbjVar, dt1.m15689b(this.f24975b), new it1(this) { // from class: com.google.android.gms.internal.ads.et1

            /* renamed from: a */
            private final jt1 f22532a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22532a = this;
            }

            @Override // com.google.android.gms.internal.ads.it1
            /* renamed from: a */
            public final r03 mo14282a(zzcbj zzcbjVar2) {
                return this.f22532a.m14044e(zzcbjVar2);
            }
        }, new uz2(zzcbjVar) { // from class: com.google.android.gms.internal.ads.ct1

            /* renamed from: a */
            private final zzcbj f21372a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21372a = zzcbjVar;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                zzcbj zzcbjVar2 = this.f21372a;
                zzcbjVar2.f33835m = new String(my2.m13059a((InputStream) obj), lu2.f26280c);
                return k03.m14003a(zzcbjVar2);
            }
        });
    }

    /* renamed from: b */
    public final r03<Void> m14047b(zzcbj zzcbjVar) {
        if (C6980t0.m10866e(zzcbjVar.f33835m)) {
            return k03.m14001c(new zzdym(2, "Pool key missing from removeUrl call."));
        }
        return m14042g(zzcbjVar, new it1(this) { // from class: com.google.android.gms.internal.ads.gt1

            /* renamed from: a */
            private final jt1 f23697a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23697a = this;
            }

            @Override // com.google.android.gms.internal.ads.it1
            /* renamed from: a */
            public final r03 mo14282a(zzcbj zzcbjVar2) {
                return this.f23697a.m14045d(zzcbjVar2);
            }
        }, new it1(this) { // from class: com.google.android.gms.internal.ads.ht1

            /* renamed from: a */
            private final jt1 f24037a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24037a = this;
            }

            @Override // com.google.android.gms.internal.ads.it1
            /* renamed from: a */
            public final r03 mo14282a(zzcbj zzcbjVar2) {
                return this.f24037a.m14046c(zzcbjVar2);
            }
        }, ft1.f23127a);
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m14046c(zzcbj zzcbjVar) {
        return this.f24976c.m9997b().m16203G6(C6458ey.f22614d.m12799e().booleanValue() ? zzcbjVar.f33833k : zzcbjVar.f33835m);
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m14045d(zzcbj zzcbjVar) {
        return this.f24975b.m11299c(C6458ey.f22614d.m12799e().booleanValue() ? zzcbjVar.f33833k : zzcbjVar.f33835m);
    }

    /* renamed from: e */
    public final /* synthetic */ r03 m14044e(zzcbj zzcbjVar) {
        return this.f24976c.m9997b().m16204F6(zzcbjVar, Binder.getCallingUid());
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m14043f(it1 it1Var, zzcbj zzcbjVar, uz2 uz2Var, zzeap zzeapVar) {
        return k03.m13995i(it1Var.mo14282a(zzcbjVar), uz2Var, this.f24974a);
    }
}

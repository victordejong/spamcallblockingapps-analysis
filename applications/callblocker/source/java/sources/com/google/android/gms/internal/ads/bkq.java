package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C2341q;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkq.class */
public final class bkq {

    /* renamed from: a */
    private final crs f11436a;

    /* renamed from: b */
    private final bkh f11437b;

    /* renamed from: c */
    private final dhn<bkz> f11438c;

    public bkq(crs crsVar, bkh bkhVar, dhn<bkz> dhnVar) {
        this.f11436a = crsVar;
        this.f11437b = bkhVar;
        this.f11438c = dhnVar;
    }

    /* renamed from: a */
    private final <RetT> crt<RetT> m11825a(C3423pw c3423pw, bkx<InputStream> bkxVar, bkx<InputStream> bkxVar2, cqt<InputStream, RetT> cqtVar) {
        String str = c3423pw.f17201d;
        C2341q.m14744c();
        return (crb) crg.m10780a(crb.m10789c(C3567ve.m6955e(str) ? crg.m10777a((Throwable) new zzclc(0)) : crg.m10780a(bkxVar.mo11819a(c3423pw), ExecutionException.class, bkp.f11435a, this.f11436a)).m10791a(cqtVar, this.f11436a), zzclc.class, new cqt(this, bkxVar2, c3423pw, cqtVar) { // from class: com.google.android.gms.internal.ads.bks

            /* renamed from: a */
            private final bkq f11440a;

            /* renamed from: b */
            private final bkx f11441b;

            /* renamed from: c */
            private final C3423pw f11442c;

            /* renamed from: d */
            private final cqt f11443d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11440a = this;
                this.f11441b = bkxVar2;
                this.f11442c = c3423pw;
                this.f11443d = cqtVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11440a.m11827a(this.f11441b, this.f11442c, this.f11443d, (zzclc) obj);
            }
        }, this.f11436a);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11827a(bkx bkxVar, C3423pw c3423pw, cqt cqtVar, zzclc zzclcVar) {
        return crg.m10782a(bkxVar.mo11819a(c3423pw), cqtVar, this.f11436a);
    }

    /* renamed from: a */
    public final crt<C3423pw> m11826a(C3423pw c3423pw) {
        cqt cqtVar = new cqt(c3423pw) { // from class: com.google.android.gms.internal.ads.bkr

            /* renamed from: a */
            private final C3423pw f11439a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11439a = c3423pw;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                C3423pw c3423pw2 = this.f11439a;
                c3423pw2.f17208k = new String(cqa.m10857a((InputStream) obj), coc.f13431a);
                return crg.m10778a(c3423pw2);
            }
        };
        bkh bkhVar = this.f11437b;
        bkhVar.getClass();
        return m11825a(c3423pw, bku.m11820a(bkhVar), new bkx(this) { // from class: com.google.android.gms.internal.ads.bkt

            /* renamed from: a */
            private final bkq f11444a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11444a = this;
            }

            @Override // com.google.android.gms.internal.ads.bkx
            /* renamed from: a */
            public final crt mo11819a(C3423pw c3423pw2) {
                return this.f11444a.m11821e(c3423pw2);
            }
        }, cqtVar);
    }

    /* renamed from: b */
    public final crt<Void> m11824b(C3423pw c3423pw) {
        crt<Void> m11825a;
        if (dis.m9385b(c3423pw.f17208k)) {
            m11825a = crg.m10777a((Throwable) new zzclp("Pool key missing from removeUrl call.", 1));
        } else {
            m11825a = m11825a(c3423pw, new bkx(this) { // from class: com.google.android.gms.internal.ads.bkv

                /* renamed from: a */
                private final bkq f11446a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11446a = this;
                }

                @Override // com.google.android.gms.internal.ads.bkx
                /* renamed from: a */
                public final crt mo11819a(C3423pw c3423pw2) {
                    return this.f11446a.m11822d(c3423pw2);
                }
            }, new bkx(this) { // from class: com.google.android.gms.internal.ads.bky

                /* renamed from: a */
                private final bkq f11448a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11448a = this;
                }

                @Override // com.google.android.gms.internal.ads.bkx
                /* renamed from: a */
                public final crt mo11819a(C3423pw c3423pw2) {
                    return this.f11448a.m11823c(c3423pw2);
                }
            }, bkw.f11447a);
        }
        return m11825a;
    }

    /* renamed from: c */
    public final /* synthetic */ crt m11823c(C3423pw c3423pw) {
        return this.f11438c.mo9430a().m11812a(c3423pw.f17208k);
    }

    /* renamed from: d */
    public final /* synthetic */ crt m11822d(C3423pw c3423pw) {
        return this.f11437b.m11833a(c3423pw.f17208k);
    }

    /* renamed from: e */
    public final /* synthetic */ crt m11821e(C3423pw c3423pw) {
        return this.f11438c.mo9430a().m11811b(c3423pw, Binder.getCallingUid());
    }
}

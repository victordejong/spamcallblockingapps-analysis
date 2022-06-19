package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C2341q;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bix.class */
public final class bix {

    /* renamed from: a */
    private final crs f11368a;

    /* renamed from: b */
    private final crs f11369b;

    /* renamed from: c */
    private final bkc f11370c;

    /* renamed from: d */
    private final dhn<bkz> f11371d;

    public bix(crs crsVar, crs crsVar2, bkc bkcVar, dhn<bkz> dhnVar) {
        this.f11368a = crsVar;
        this.f11369b = crsVar2;
        this.f11370c = bkcVar;
        this.f11371d = dhnVar;
    }

    /* renamed from: a */
    public final crt<InputStream> m11867a(C3423pw c3423pw) {
        String str = c3423pw.f17201d;
        C2341q.m14744c();
        return crg.m10780a(C3567ve.m6955e(str) ? crg.m10777a((Throwable) new zzclc(0)) : crg.m10780a(this.f11368a.mo10767a(new Callable(this, c3423pw) { // from class: com.google.android.gms.internal.ads.biw

            /* renamed from: a */
            private final bix f11366a;

            /* renamed from: b */
            private final C3423pw f11367b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11366a = this;
                this.f11367b = c3423pw;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11366a.m11865b(this.f11367b);
            }
        }), ExecutionException.class, biz.f11375a, this.f11369b), zzclc.class, new cqt(this, c3423pw, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.biy

            /* renamed from: a */
            private final bix f11372a;

            /* renamed from: b */
            private final C3423pw f11373b;

            /* renamed from: c */
            private final int f11374c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11372a = this;
                this.f11373b = c3423pw;
                this.f11374c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11372a.m11866a(this.f11373b, this.f11374c, (zzclc) obj);
            }
        }, this.f11369b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11866a(C3423pw c3423pw, int i, zzclc zzclcVar) {
        return this.f11371d.mo9430a().m11814a(c3423pw, i);
    }

    /* renamed from: b */
    public final /* synthetic */ InputStream m11865b(C3423pw c3423pw) {
        return this.f11370c.m11837a(c3423pw).get(((Integer) dyx.m8158e().m7876a(edi.f16497cx)).intValue(), TimeUnit.SECONDS);
    }
}

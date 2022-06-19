package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5673b0;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bm0.class */
public final class bm0 extends AbstractC5673b0 {

    /* renamed from: c */
    final kk0 f20524c;

    /* renamed from: d */
    final km0 f20525d;

    /* renamed from: e */
    private final String f20526e;

    /* renamed from: f */
    private final String[] f20527f;

    public bm0(kk0 kk0Var, km0 km0Var, String str, String[] strArr) {
        this.f20524c = kk0Var;
        this.f20525d = km0Var;
        this.f20526e = str;
        this.f20527f = strArr;
        C5667s.m18138z().m16019e(this);
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: a */
    public final void mo13197a() {
        try {
            this.f20525d.mo10624i(this.f20526e, this.f20527f);
            C5679c2.f18451a.post(new am0(this));
        } catch (Throwable th) {
            C5679c2.f18451a.post(new am0(this));
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: c */
    public final r03<?> mo16320c() {
        return (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25760o1)).booleanValue() || !(this.f20525d instanceof tm0)) ? super.mo16320c() : qi0.f28499e.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.zl0

            /* renamed from: a */
            private final bm0 f32975a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32975a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32975a.m16318e();
            }
        });
    }

    /* renamed from: d */
    public final String m16319d() {
        return this.f20526e;
    }

    /* renamed from: e */
    public final /* synthetic */ Boolean m16318e() {
        return Boolean.valueOf(this.f20525d.mo10623j(this.f20526e, this.f20527f, this));
    }
}

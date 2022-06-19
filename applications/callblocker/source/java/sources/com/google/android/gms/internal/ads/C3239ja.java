package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ja */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ja.class */
public final class C3239ja implements AbstractC3662ys<AbstractC3200hp> {

    /* renamed from: a */
    final /* synthetic */ C3232iu f16797a;

    public C3239ja(C3232iu c3232iu) {
        this.f16797a = c3232iu;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3662ys
    /* renamed from: a */
    public final /* synthetic */ void mo6728a(AbstractC3200hp abstractC3200hp) {
        C3650yg.f17646e.execute(new Runnable(this, abstractC3200hp) { // from class: com.google.android.gms.internal.ads.iz

            /* renamed from: a */
            private final C3239ja f16795a;

            /* renamed from: b */
            private final AbstractC3200hp f16796b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16795a = this;
                this.f16796b = abstractC3200hp;
            }

            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3599wj abstractC3599wj;
                C3239ja c3239ja = this.f16795a;
                AbstractC3200hp abstractC3200hp3 = this.f16796b;
                abstractC3599wj = c3239ja.f16797a.f16785b;
                abstractC3599wj.mo6881a(abstractC3200hp3);
                abstractC3200hp3.mo7782a();
            }
        });
    }
}

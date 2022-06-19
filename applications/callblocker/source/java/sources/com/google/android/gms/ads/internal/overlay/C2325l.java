package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.AbstractC3552uq;
import com.google.android.gms.internal.ads.C3567ve;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.overlay.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/l.class */
public final class C2325l extends AbstractC3552uq {

    /* renamed from: a */
    final /* synthetic */ BinderC2316c f6728a;

    /* JADX INFO: Access modifiers changed from: private */
    public C2325l(BinderC2316c binderC2316c) {
        this.f6728a = binderC2316c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3552uq
    /* renamed from: a */
    public final void mo6839a() {
        Bitmap m6842a = C2341q.m14725v().m6842a(Integer.valueOf(this.f6728a.f6691b.f6687o.f6644e));
        if (m6842a != null) {
            C3567ve.f17498a.post(new Runnable(this, C2341q.m14742e().mo6933a(this.f6728a.f6690a, m6842a, this.f6728a.f6691b.f6687o.f6642c, this.f6728a.f6691b.f6687o.f6643d)) { // from class: com.google.android.gms.ads.internal.overlay.k

                /* renamed from: a */
                private final C2325l f6726a;

                /* renamed from: b */
                private final Drawable f6727b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6726a = this;
                    this.f6727b = mo6933a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C2325l c2325l = this.f6726a;
                    c2325l.f6728a.f6690a.getWindow().setBackgroundDrawable(this.f6727b);
                }
            });
        }
    }
}

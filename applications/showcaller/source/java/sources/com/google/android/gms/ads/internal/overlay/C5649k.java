package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5673b0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5684e;
import com.google.android.gms.ads.internal.zzj;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.overlay.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/k.class */
public final class C5649k extends AbstractC5673b0 {

    /* renamed from: c */
    final /* synthetic */ BinderC5650l f18348c;

    public /* synthetic */ C5649k(BinderC5650l binderC5650l, C5647i c5647i) {
        this.f18348c = binderC5650l;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: a */
    public final void mo13197a() {
        Bitmap m17908a = C5667s.m18141w().m17908a(Integer.valueOf(this.f18348c.f18351f.f18329r.f18613i));
        if (m17908a != null) {
            C5684e m18158f = C5667s.m18158f();
            BinderC5650l binderC5650l = this.f18348c;
            Activity activity = binderC5650l.f18350e;
            zzj zzjVar = binderC5650l.f18351f.f18329r;
            C5679c2.f18451a.post(new Runnable(this, m18158f.mo18035d(activity, m17908a, zzjVar.f18611g, zzjVar.f18612h)) { // from class: com.google.android.gms.ads.internal.overlay.j

                /* renamed from: d */
                private final C5649k f18346d;

                /* renamed from: e */
                private final Drawable f18347e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f18346d = this;
                    this.f18347e = mo18035d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C5649k c5649k = this.f18346d;
                    c5649k.f18348c.f18350e.getWindow().setBackgroundDrawable(this.f18347e);
                }
            });
        }
    }
}

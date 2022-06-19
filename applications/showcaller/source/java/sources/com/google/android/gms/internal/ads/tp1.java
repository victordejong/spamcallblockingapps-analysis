package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tp1.class */
public final class tp1 implements f03<String> {

    /* renamed from: a */
    final /* synthetic */ vp1 f30106a;

    public tp1(vp1 vp1Var) {
        this.f30106a = vp1Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        long j;
        vi0 vi0Var;
        synchronized (this) {
            this.f30106a.f31273c = true;
            vp1 vp1Var = this.f30106a;
            long mo16806b = C5667s.m18153k().mo16806b();
            j = this.f30106a.f31274d;
            vp1Var.m9895u("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (mo16806b - j));
            vi0Var = this.f30106a.f31275e;
            vi0Var.m10014f(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(String str) {
        long j;
        Executor executor;
        String str2 = str;
        synchronized (this) {
            this.f30106a.f31273c = true;
            vp1 vp1Var = this.f30106a;
            long mo16806b = C5667s.m18153k().mo16806b();
            j = this.f30106a.f31274d;
            vp1Var.m9895u("com.google.android.gms.ads.MobileAds", true, "", (int) (mo16806b - j));
            executor = this.f30106a.f31279i;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.sp1

                /* renamed from: d */
                private final tp1 f29597d;

                /* renamed from: e */
                private final String f29598e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29597d = this;
                    this.f29598e = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    tp1 tp1Var = this.f29597d;
                    vp1.m9905k(tp1Var.f30106a, this.f29598e);
                }
            });
        }
    }
}

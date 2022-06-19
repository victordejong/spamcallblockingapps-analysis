package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bir.class */
public final class bir implements crh<String> {

    /* renamed from: a */
    final /* synthetic */ bij f11348a;

    public bir(bij bijVar) {
        this.f11348a = bijVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(@Nullable String str) {
        long j;
        Executor executor;
        String str2 = str;
        synchronized (this) {
            this.f11348a.f11320b = true;
            bij bijVar = this.f11348a;
            long mo13861b = C2341q.m14737j().mo13861b();
            j = this.f11348a.f11321c;
            bijVar.m11877a("com.google.android.gms.ads.MobileAds", true, "", (int) (mo13861b - j));
            executor = this.f11348a.f11326h;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.biu

                /* renamed from: a */
                private final bir f11356a;

                /* renamed from: b */
                private final String f11357b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11356a = this;
                    this.f11357b = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bir birVar = this.f11356a;
                    birVar.f11348a.m11878a(this.f11357b);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        long j;
        C3658yo c3658yo;
        synchronized (this) {
            this.f11348a.f11320b = true;
            bij bijVar = this.f11348a;
            long mo13861b = C2341q.m14737j().mo13861b();
            j = this.f11348a.f11321c;
            bijVar.m11877a("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (mo13861b - j));
            c3658yo = this.f11348a.f11322d;
            c3658yo.m6733a(new Exception());
        }
    }
}

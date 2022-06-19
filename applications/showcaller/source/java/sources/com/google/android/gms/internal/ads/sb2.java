package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sb2.class */
public final class sb2 implements wa2<tb2> {

    /* renamed from: a */
    private final Executor f29437a;

    /* renamed from: b */
    private final String f29438b;

    /* renamed from: c */
    private final PackageInfo f29439c;

    /* renamed from: d */
    private final gh0 f29440d;

    public sb2(gh0 gh0Var, Executor executor, String str, PackageInfo packageInfo, int i, byte[] bArr) {
        this.f29440d = gh0Var;
        this.f29437a = executor;
        this.f29438b = str;
        this.f29439c = packageInfo;
    }

    /* renamed from: a */
    public final /* synthetic */ r03 m11088a(Throwable th) {
        return k03.m14003a(new tb2(this.f29438b));
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<tb2> zza() {
        return k03.m13997g(k03.m13994j(k03.m14003a(this.f29438b), qb2.f28408a, this.f29437a), Throwable.class, new uz2(this) { // from class: com.google.android.gms.internal.ads.rb2

            /* renamed from: a */
            private final sb2 f28841a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28841a = this;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f28841a.m11088a((Throwable) obj);
            }
        }, this.f29437a);
    }
}

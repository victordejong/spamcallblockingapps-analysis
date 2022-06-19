package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b92.class */
public final class b92 implements wa2<c92> {

    /* renamed from: a */
    private final s03 f20316a;

    /* renamed from: b */
    private final Context f20317b;

    /* renamed from: c */
    private final Set<String> f20318c;

    public b92(s03 s03Var, Context context, Set<String> set) {
        this.f20316a = s03Var;
        this.f20317b = context;
        this.f20318c = set;
    }

    /* renamed from: a */
    public final /* synthetic */ c92 m16424a() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25810u3)).booleanValue()) {
            Set<String> set = this.f20318c;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                return new c92(C5667s.m18145s().mo12111a(this.f20317b));
            }
        }
        return new c92(null);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<c92> zza() {
        return this.f20316a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.a92

            /* renamed from: a */
            private final b92 f19858a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19858a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f19858a.m16424a();
            }
        });
    }
}

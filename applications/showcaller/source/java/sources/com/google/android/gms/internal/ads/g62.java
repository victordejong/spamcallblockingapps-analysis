package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g62.class */
public final class g62 implements wa2<va2<Bundle>> {

    /* renamed from: a */
    private final Executor f23254a;

    /* renamed from: b */
    private final ph0 f23255b;

    public g62(Executor executor, ph0 ph0Var) {
        this.f23254a = executor;
        this.f23255b = ph0Var;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<Bundle>> zza() {
        return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25541N1)).booleanValue() ? k03.m14003a(null) : k03.m13994j(this.f23255b.m12228r(), e62.f22038a, this.f23254a);
    }
}

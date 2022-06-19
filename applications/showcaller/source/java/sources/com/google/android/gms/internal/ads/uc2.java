package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uc2.class */
public final class uc2 implements wa2<vc2> {

    /* renamed from: a */
    final ScheduledExecutorService f30580a;

    /* renamed from: b */
    final Context f30581b;

    /* renamed from: c */
    final ob0 f30582c;

    public uc2(ob0 ob0Var, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.f30582c = ob0Var;
        this.f30580a = scheduledExecutorService;
        this.f30581b = context;
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<vc2> zza() {
        return k03.m13994j(k03.m13996h(k03.m14003a(new Bundle()), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25841y2)).longValue(), TimeUnit.MILLISECONDS, this.f30580a), tc2.f29941a, qi0.f28495a);
    }
}

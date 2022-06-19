package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.C2341q;
import java.io.InputStream;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwa.class */
public final class dwa {
    @GuardedBy("lock")

    /* renamed from: a */
    private dvv f15864a;
    @GuardedBy("lock")

    /* renamed from: b */
    private boolean f15865b;

    /* renamed from: c */
    private final Context f15866c;

    /* renamed from: d */
    private final Object f15867d = new Object();

    public dwa(Context context) {
        this.f15866c = context;
    }

    /* renamed from: a */
    public final void m8451a() {
        synchronized (this.f15867d) {
            if (this.f15864a == null) {
                return;
            }
            this.f15864a.m14083e();
            this.f15864a = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: a */
    public final Future<InputStream> m8450a(dvu dvuVar) {
        dwd dwdVar = new dwd(this);
        dwc dwcVar = new dwc(this, dvuVar, dwdVar);
        dwg dwgVar = new dwg(this, dwdVar);
        synchronized (this.f15867d) {
            this.f15864a = new dvv(this.f15866c, C2341q.m14730q().m6841a(), dwcVar, dwgVar);
            this.f15864a.m14072o();
        }
        return dwdVar;
    }
}

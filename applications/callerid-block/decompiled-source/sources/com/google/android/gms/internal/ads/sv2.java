package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.C1407r;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sv2.class */
public final class sv2 {
    @GuardedBy("lock")

    /* renamed from: a */
    private hv2 f8572a;
    @GuardedBy("lock")

    /* renamed from: b */
    private boolean f8573b;

    /* renamed from: c */
    private final Context f8574c;

    /* renamed from: d */
    private final Object f8575d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public sv2(Context context) {
        this.f8574c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m5565b(sv2 sv2Var) {
        synchronized (sv2Var.f8575d) {
            hv2 hv2Var = sv2Var.f8572a;
            if (hv2Var != null) {
                hv2Var.m8399e();
                sv2Var.f8572a = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Future<uv2> m5566a(zzts zztsVar) {
        lv2 lv2Var = new lv2(this);
        qv2 qv2Var = new qv2(this, zztsVar, lv2Var);
        rv2 rv2Var = new rv2(this, lv2Var);
        synchronized (this.f8575d) {
            hv2 hv2Var = new hv2(this.f8574c, C1407r.m8906r().m8824a(), qv2Var, rv2Var);
            this.f8572a = hv2Var;
            hv2Var.m8403a();
        }
        return lv2Var;
    }
}

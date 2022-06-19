package com.huawei.hms.framework.network.grs.p087g.p089k;

import android.os.SystemClock;
import com.huawei.hms.framework.network.grs.p087g.C2321d;
import java.util.concurrent.Future;
/* renamed from: com.huawei.hms.framework.network.grs.g.k.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/k/b.class */
public class C2329b {

    /* renamed from: a */
    private final Future<C2321d> f7478a;

    /* renamed from: b */
    private final long f7479b = SystemClock.elapsedRealtime();

    public C2329b(Future<C2321d> future) {
        this.f7478a = future;
    }

    /* renamed from: a */
    public Future<C2321d> m37879a() {
        return this.f7478a;
    }

    /* renamed from: b */
    public boolean m37878b() {
        return SystemClock.elapsedRealtime() - this.f7479b <= 300000;
    }
}

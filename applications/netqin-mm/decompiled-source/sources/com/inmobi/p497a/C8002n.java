package com.inmobi.p497a;

import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.core.utilities.p516b.C8405h;
/* renamed from: com.inmobi.a.n */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/n.class */
public class C8002n {

    /* renamed from: g */
    public static final String f31233g = "n";

    /* renamed from: h */
    public static C8002n f31234h;

    /* renamed from: i */
    public static final Object f31235i = new Object();

    /* renamed from: a */
    public long f31236a = 0;

    /* renamed from: b */
    public long f31237b = 0;

    /* renamed from: c */
    public long f31238c = 0;

    /* renamed from: d */
    public long f31239d = 0;

    /* renamed from: e */
    public long f31240e = 0;

    /* renamed from: f */
    public long f31241f = 0;

    /* renamed from: a */
    public static C8002n m6748a() {
        C8002n nVar = f31234h;
        C8002n nVar2 = nVar;
        if (nVar == null) {
            synchronized (f31235i) {
                C8002n nVar3 = f31234h;
                nVar2 = nVar3;
                if (nVar3 == null) {
                    nVar2 = new C8002n();
                    f31234h = nVar2;
                }
            }
        }
        return nVar2;
    }

    /* renamed from: b */
    public static C8405h m6746b() {
        if (!C8003o.m6743a().f31245a.f31250a.m6736b()) {
            return null;
        }
        return C8405h.m5655a();
    }

    /* renamed from: a */
    public final void m6747a(long j) {
        int a = C8398b.m5691a();
        if (a == 0) {
            this.f31238c += j;
        } else if (a == 1) {
            this.f31236a += j;
        }
    }

    /* renamed from: b */
    public final void m6745b(long j) {
        int a = C8398b.m5691a();
        if (a == 0) {
            this.f31239d += j;
        } else if (a == 1) {
            this.f31237b += j;
        }
    }

    /* renamed from: c */
    public final void m6744c(long j) {
        this.f31240e += j;
    }
}

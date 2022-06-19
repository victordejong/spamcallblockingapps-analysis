package com.google.android.gms.internal.ads;

import android.net.Uri;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpx.class */
public final class dpx implements dry {

    /* renamed from: a */
    private final Uri f15341a;

    /* renamed from: b */
    private final drp f15342b;

    /* renamed from: c */
    private final dqa f15343c;

    /* renamed from: d */
    private final dsb f15344d;

    /* renamed from: f */
    private volatile boolean f15346f;

    /* renamed from: h */
    private long f15348h;

    /* renamed from: j */
    private final /* synthetic */ dpt f15350j;

    /* renamed from: e */
    private final dnn f15345e = new dnn();

    /* renamed from: g */
    private boolean f15347g = true;

    /* renamed from: i */
    private long f15349i = -1;

    public dpx(dpt dptVar, Uri uri, drp drpVar, dqa dqaVar, dsb dsbVar) {
        this.f15350j = dptVar;
        this.f15341a = (Uri) drz.m8774a(uri);
        this.f15342b = (drp) drz.m8774a(drpVar);
        this.f15343c = (dqa) drz.m8774a(dqaVar);
        this.f15344d = dsbVar;
    }

    @Override // com.google.android.gms.internal.ads.dry
    /* renamed from: a */
    public final void mo8778a() {
        this.f15346f = true;
    }

    /* renamed from: a */
    public final void m8906a(long j, long j2) {
        this.f15345e.f14900a = j;
        this.f15348h = j2;
        this.f15347g = true;
    }

    @Override // com.google.android.gms.internal.ads.dry
    /* renamed from: b */
    public final boolean mo8777b() {
        return this.f15346f;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // com.google.android.gms.internal.ads.dry
    /* renamed from: c */
    public final void mo8776c() {
        Throwable th;
        dne dneVar;
        String str;
        long j;
        cnz cnzVar;
        Runnable runnable;
        int i = 0;
        while (i == 0 && !this.f15346f) {
            try {
                char c = this.f15345e.f14900a;
                drp drpVar = this.f15342b;
                Uri uri = this.f15341a;
                str = this.f15350j.f15314h;
                this.f15349i = drpVar.mo8811a(new drq(uri, c, -1L, str));
                if (this.f15349i != -1) {
                    this.f15349i += c;
                }
                dne dneVar2 = new dne(this.f15342b, c, this.f15349i);
                try {
                    dnh m8902a = this.f15343c.m8902a(dneVar2, this.f15342b.mo8812a());
                    if (this.f15347g) {
                        m8902a.mo8987a(c, this.f15348h);
                        this.f15347g = false;
                    }
                    while (i == 0) {
                        try {
                            if (this.f15346f) {
                                break;
                            }
                            this.f15344d.m8762c();
                            i = m8902a.mo8985a(dneVar2, this.f15345e);
                            try {
                                long mo9060b = dneVar2.mo9060b();
                                j = this.f15350j.f15315i;
                                if (mo9060b > j + c) {
                                    c = dneVar2.mo9060b();
                                    this.f15344d.m8763b();
                                    cnzVar = this.f15350j.f15321o;
                                    runnable = this.f15350j.f15320n;
                                    cnzVar.post(runnable);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dneVar = dneVar2;
                                if (i != 1 && dneVar != null) {
                                    this.f15345e.f14900a = dneVar.mo9060b();
                                }
                                dsn.m8705a(this.f15342b);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dneVar = dneVar2;
                        }
                    }
                    if (i == 1) {
                        i = 0;
                    } else {
                        this.f15345e.f14900a = dneVar2.mo9060b();
                    }
                    dsn.m8705a(this.f15342b);
                } catch (Throwable th4) {
                    th = th4;
                    dneVar = dneVar2;
                }
            } catch (Throwable th5) {
                th = th5;
                dneVar = null;
            }
        }
    }
}

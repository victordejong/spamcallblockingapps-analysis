package com.huawei.hms.availableupdate;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/k0$a.class */
public final class k0$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC2255g f7328a;

    /* renamed from: b */
    public final /* synthetic */ int f7329b;

    /* renamed from: c */
    public final /* synthetic */ C2256h f7330c;

    public k0$a(AbstractC2255g abstractC2255g, int i, C2256h c2256h) {
        this.f7328a = abstractC2255g;
        this.f7329b = i;
        this.f7330c = c2256h;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7328a.m38151a(this.f7329b, this.f7330c);
    }
}

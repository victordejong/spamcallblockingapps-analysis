package com.huawei.hms.availableupdate;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/d$b.class */
public class d$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC2255g f7312a;

    /* renamed from: b */
    public final /* synthetic */ C2256h f7313b;

    /* renamed from: c */
    public final /* synthetic */ d f7314c;

    public d$b(d dVar, AbstractC2255g abstractC2255g, C2256h c2256h) {
        this.f7314c = dVar;
        this.f7312a = abstractC2255g;
        this.f7313b = c2256h;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.a(this.f7314c).m38153a(d.a(this.f7312a), this.f7313b);
    }
}

package com.huawei.hms.availableupdate;

import com.huawei.hms.availableupdate.d;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/d$a$a.class */
public class d$a$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f7304a;

    /* renamed from: b */
    public final /* synthetic */ C2256h f7305b;

    /* renamed from: c */
    public final /* synthetic */ d.a f7306c;

    public d$a$a(d.a aVar, int i, C2256h c2256h) {
        this.f7306c = aVar;
        this.f7304a = i;
        this.f7305b = c2256h;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7306c.a.m38151a(this.f7304a, this.f7305b);
    }
}

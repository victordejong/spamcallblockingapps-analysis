package com.huawei.hms.availableupdate;

import com.huawei.hms.availableupdate.d;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/d$a$b.class */
public class d$a$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f7307a;

    /* renamed from: b */
    public final /* synthetic */ int f7308b;

    /* renamed from: c */
    public final /* synthetic */ int f7309c;

    /* renamed from: d */
    public final /* synthetic */ File f7310d;

    /* renamed from: e */
    public final /* synthetic */ d.a f7311e;

    public d$a$b(d.a aVar, int i, int i2, int i3, File file) {
        this.f7311e = aVar;
        this.f7307a = i;
        this.f7308b = i2;
        this.f7309c = i3;
        this.f7310d = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7311e.a.m38152a(this.f7307a, this.f7308b, this.f7309c, this.f7310d);
    }
}

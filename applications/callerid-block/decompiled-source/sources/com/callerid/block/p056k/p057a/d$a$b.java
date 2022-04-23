package com.callerid.block.p056k.p057a;

import com.callerid.block.p056k.p057a.AsyncTaskC1082d;
import java.io.File;
/* renamed from: com.callerid.block.k.a.d$a$b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/d$a$b.class */
class d$a$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AsyncTaskC1082d.a f4565b;

    d$a$b(AsyncTaskC1082d.a aVar) {
        this.f4565b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        str = this.f4565b.a.f4560a;
        new File(str).delete();
    }
}

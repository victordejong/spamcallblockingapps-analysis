package com.callerid.block.p055j;

import com.callerid.block.p055j.AsyncTaskC1078d;
import com.callerid.block.p056k.p057a.AbstractC1080b;
import com.callerid.block.util.C1227w;
import java.io.File;
/* renamed from: com.callerid.block.j.d$a$a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/j/d$a$a.class */
class d$a$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AsyncTaskC1078d.a f4557b;

    d$a$a(AsyncTaskC1078d.a aVar) {
        this.f4557b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        AbstractC1080b bVar;
        AbstractC1080b bVar2;
        String str2;
        String str3;
        try {
            AsyncTaskC1078d dVar = this.f4557b.a;
            str2 = dVar.f4548a;
            str3 = this.f4557b.a.f4549b;
            dVar.m10199l(str2, str3);
        } catch (Exception e) {
            e.printStackTrace();
            if (C1227w.f5084a) {
                C1227w.m9527a("checkupdate", "IOException: " + e.getMessage());
            }
            str = this.f4557b.a.f4548a;
            new File(str).delete();
            bVar = this.f4557b.a.f4551d;
            if (bVar != null) {
                bVar2 = this.f4557b.a.f4551d;
                bVar2.m10196a();
            }
        }
    }
}

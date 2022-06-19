package com.callerid.block.p056k.p057a;

import com.callerid.block.p056k.p057a.AsyncTaskC1082d;
import com.callerid.block.util.C1227w;
import com.phone.libphone.C2805k;
/* renamed from: com.callerid.block.k.a.d$a$a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/d$a$a.class */
class d$a$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AsyncTaskC1082d.a f4564b;

    d$a$a(AsyncTaskC1082d.a aVar) {
        this.f4564b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        try {
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "Util.path: " + C2805k.f11645a);
            }
            AsyncTaskC1082d asyncTaskC1082d = this.f4564b.a;
            str = asyncTaskC1082d.f4560a;
            asyncTaskC1082d.m10186g(str, C2805k.f11645a + "/");
        } catch (Exception e) {
            e.printStackTrace();
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "IOException: " + e.getMessage());
            }
            if (this.f4564b.a.f4561b == null) {
                return;
            }
            this.f4564b.a.f4561b.m10196a();
        }
    }
}

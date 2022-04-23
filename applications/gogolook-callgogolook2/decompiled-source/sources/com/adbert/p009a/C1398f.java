package com.adbert.p009a;

import android.content.Context;
import com.adbert.p009a.p010a.C1361b;
import com.adbert.p009a.p010a.C1367d;
import com.adbert.p009a.p010a.C1369e;
import com.adbert.p009a.p011b.C1377b;
/* renamed from: com.adbert.a.f */
/* loaded from: classes-dex2jar.jar:com/adbert/a/f.class */
public class C1398f {
    /* renamed from: a */
    public static String m37156a(C1377b bVar) {
        return (bVar.f407b == null ? bVar.f406a : bVar.f407b).toString();
    }

    /* renamed from: a */
    public static void m37161a(Context context, C1377b bVar) {
        m37155b(context, bVar, (Runnable) null);
    }

    /* renamed from: a */
    public static void m37160a(Context context, C1377b bVar, int i) {
        C1361b.m37272a().m37271a(context).m37259a(bVar.f429x, new C1369e(context).m37238a(bVar.f423r, bVar.f424s, bVar.f400B, bVar.f409d, i));
    }

    /* renamed from: a */
    public static void m37159a(Context context, C1377b bVar, final Runnable runnable) {
        C1361b.m37272a().m37271a(context).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.a.f.1
            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
            }
        }).m37259a(bVar.f422q, new C1369e(context).m37239a(bVar.f423r, bVar.f424s, bVar.f400B, bVar.f409d));
    }

    /* renamed from: a */
    public static void m37158a(Context context, C1377b bVar, String str) {
        C1361b.m37272a().m37271a(context).m37259a(bVar.f425t, new C1369e(context).m37236a(bVar.f423r, bVar.f424s, bVar.f400B, str, bVar.f409d, m37156a(bVar)));
    }

    /* renamed from: a */
    public static void m37157a(Context context, String str, C1377b bVar) {
        String str2 = "result=" + str;
        if (!bVar.f405G.isEmpty()) {
            C1361b.m37272a().m37271a(context).m37259a(bVar.f405G, str2);
        }
    }

    /* renamed from: b */
    public static void m37155b(Context context, C1377b bVar, final Runnable runnable) {
        if (!bVar.f426u.isEmpty()) {
            C1361b.m37272a().m37271a(context).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.a.f.2
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionFail(C1367d dVar) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }

                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionSuccess(C1367d dVar) {
                }
            }).m37259a(bVar.f426u, new C1369e(context).m37229c(bVar.f423r, bVar.f424s, bVar.f409d, m37156a(bVar), bVar.f400B));
        }
    }

    /* renamed from: b */
    public static void m37154b(Context context, C1377b bVar, String str) {
        C1361b.m37272a().m37271a(context).m37259a(bVar.f428w, new C1369e(context).m37231b(bVar.f423r, bVar.f424s, bVar.f400B, bVar.f409d, str));
    }

    /* renamed from: c */
    public static void m37153c(Context context, C1377b bVar, final Runnable runnable) {
        C1361b.m37272a().m37271a(context).m37262a(new C1361b.AbstractC1363a() { // from class: com.adbert.a.f.3
            /* renamed from: a */
            private void m37152a() {
                runnable.run();
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionFail(C1367d dVar) {
                m37152a();
            }

            @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
            public void onConnectionSuccess(C1367d dVar) {
                m37152a();
            }
        }).m37259a(bVar.f426u, new C1369e(context).m37229c(bVar.f423r, bVar.f424s, bVar.f409d, m37156a(bVar), bVar.f400B));
    }
}

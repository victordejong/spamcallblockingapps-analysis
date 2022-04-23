package com.adbert.p009a.p010a;

import android.content.Context;
/* renamed from: com.adbert.a.a.b */
/* loaded from: classes-dex2jar.jar:com/adbert/a/a/b.class */
public class C1361b {

    /* renamed from: a */
    public static C1361b f346a = new C1361b();

    /* renamed from: com.adbert.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/a/b$a.class */
    public interface AbstractC1363a {
        void onConnectionFail(C1367d dVar);

        void onConnectionSuccess(C1367d dVar);
    }

    /* renamed from: com.adbert.a.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/a/b$b.class */
    public interface AbstractC1364b extends AbstractC1363a {
        /* renamed from: a */
        void m37268a(C1367d dVar);

        /* renamed from: b */
        void m37267b(C1367d dVar);
    }

    /* renamed from: com.adbert.a.a.b$c */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/a/b$c.class */
    public interface AbstractC1365c {
        void onEnd(int i, String str);
    }

    /* renamed from: a */
    public static C1361b m37272a() {
        return f346a;
    }

    /* renamed from: a */
    public C1367d m37271a(Context context) {
        return new C1367d(context);
    }

    /* renamed from: a */
    public C1367d m37270a(Context context, String str, String str2) {
        return m37269a(context, str, str2, null);
    }

    /* renamed from: a */
    public C1367d m37269a(Context context, String str, String str2, final AbstractC1365c cVar) {
        C1367d dVar = new C1367d(context);
        if (cVar != null) {
            dVar.m37262a(new AbstractC1363a() { // from class: com.adbert.a.a.b.1
                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionFail(C1367d dVar2) {
                    cVar.onEnd(dVar2.m37254c(), dVar2.m37251d());
                }

                @Override // com.adbert.p009a.p010a.C1361b.AbstractC1363a
                public void onConnectionSuccess(C1367d dVar2) {
                    cVar.onEnd(dVar2.m37254c(), dVar2.m37251d());
                }
            });
        }
        dVar.m37259a(str, str2);
        return dVar;
    }
}

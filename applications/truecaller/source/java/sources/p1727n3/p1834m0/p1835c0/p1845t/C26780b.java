package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/b.class */
public class C26780b extends AbstractRunnableC26782d {

    /* renamed from: b */
    public final /* synthetic */ C26702l f74947b;

    /* renamed from: c */
    public final /* synthetic */ String f74948c;

    public C26780b(C26702l c26702l, String str) {
        this.f74947b = c26702l;
        this.f74948c = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1834m0.p1835c0.p1845t.AbstractRunnableC26782d
    /* renamed from: c */
    public void mo1335c() {
        WorkDatabase workDatabase = this.f74947b.f74725c;
        workDatabase.beginTransaction();
        try {
            Iterator it = ((ArrayList) ((C26767t) workDatabase.m42606f()).m1347j(this.f74948c)).iterator();
            while (it.hasNext()) {
                m1337a(this.f74947b, (String) it.next());
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            m1336b(this.f74947b);
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}

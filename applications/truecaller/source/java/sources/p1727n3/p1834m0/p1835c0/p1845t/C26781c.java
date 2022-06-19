package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/c.class */
public class C26781c extends AbstractRunnableC26782d {

    /* renamed from: b */
    public final /* synthetic */ C26702l f74949b;

    /* renamed from: c */
    public final /* synthetic */ String f74950c;

    /* renamed from: d */
    public final /* synthetic */ boolean f74951d;

    public C26781c(C26702l c26702l, String str, boolean z) {
        this.f74949b = c26702l;
        this.f74950c = str;
        this.f74951d = z;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1834m0.p1835c0.p1845t.AbstractRunnableC26782d
    /* renamed from: c */
    public void mo1335c() {
        WorkDatabase workDatabase = this.f74949b.f74725c;
        workDatabase.beginTransaction();
        try {
            Iterator it = ((ArrayList) ((C26767t) workDatabase.m42606f()).m1348i(this.f74950c)).iterator();
            while (it.hasNext()) {
                m1337a(this.f74949b, (String) it.next());
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (!this.f74951d) {
                return;
            }
            m1336b(this.f74949b);
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}

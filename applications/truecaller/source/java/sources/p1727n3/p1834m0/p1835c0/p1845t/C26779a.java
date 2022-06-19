package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;
import p1727n3.p1834m0.p1835c0.C26702l;
/* renamed from: n3.m0.c0.t.a */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/a.class */
public class C26779a extends AbstractRunnableC26782d {

    /* renamed from: b */
    public final /* synthetic */ C26702l f74945b;

    /* renamed from: c */
    public final /* synthetic */ UUID f74946c;

    public C26779a(C26702l c26702l, UUID uuid) {
        this.f74945b = c26702l;
        this.f74946c = uuid;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p1727n3.p1834m0.p1835c0.p1845t.AbstractRunnableC26782d
    /* renamed from: c */
    public void mo1335c() {
        WorkDatabase workDatabase = this.f74945b.f74725c;
        workDatabase.beginTransaction();
        try {
            m1337a(this.f74945b, this.f74946c.toString());
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            m1336b(this.f74945b);
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}

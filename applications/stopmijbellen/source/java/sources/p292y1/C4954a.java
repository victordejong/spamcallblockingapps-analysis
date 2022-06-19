package p292y1;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;
import p197p1.C4006j;
/* renamed from: y1.a */
/* loaded from: classes-dex2jar.jar:y1/a.class */
public class C4954a extends AbstractRunnableC4957d {

    /* renamed from: b */
    public final /* synthetic */ C4006j f15114b;

    /* renamed from: c */
    public final /* synthetic */ UUID f15115c;

    public C4954a(C4006j c4006j, UUID uuid) {
        this.f15114b = c4006j;
        this.f15115c = uuid;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p292y1.AbstractRunnableC4957d
    /* renamed from: c */
    public void mo179c() {
        WorkDatabase workDatabase = this.f15114b.f12584c;
        workDatabase.m3819c();
        try {
            m181a(this.f15114b, this.f15115c.toString());
            workDatabase.m3811k();
            workDatabase.m3815g();
            m180b(this.f15114b);
        } catch (Throwable th) {
            workDatabase.m3815g();
            throw th;
        }
    }
}

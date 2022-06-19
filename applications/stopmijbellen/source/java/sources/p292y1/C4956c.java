package p292y1;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import p197p1.C4006j;
import p282x1.C4835r;
/* renamed from: y1.c */
/* loaded from: classes-dex2jar.jar:y1/c.class */
public class C4956c extends AbstractRunnableC4957d {

    /* renamed from: b */
    public final /* synthetic */ C4006j f15118b;

    /* renamed from: c */
    public final /* synthetic */ String f15119c;

    /* renamed from: d */
    public final /* synthetic */ boolean f15120d;

    public C4956c(C4006j c4006j, String str, boolean z) {
        this.f15118b = c4006j;
        this.f15119c = str;
        this.f15120d = z;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p292y1.AbstractRunnableC4957d
    /* renamed from: c */
    public void mo179c() {
        WorkDatabase workDatabase = this.f15118b.f12584c;
        workDatabase.m3819c();
        try {
            Iterator it2 = ((ArrayList) ((C4835r) workDatabase.mo7475q()).m382g(this.f15119c)).iterator();
            while (it2.hasNext()) {
                m181a(this.f15118b, (String) it2.next());
            }
            workDatabase.m3811k();
            workDatabase.m3815g();
            if (!this.f15120d) {
                return;
            }
            m180b(this.f15118b);
        } catch (Throwable th) {
            workDatabase.m3815g();
            throw th;
        }
    }
}

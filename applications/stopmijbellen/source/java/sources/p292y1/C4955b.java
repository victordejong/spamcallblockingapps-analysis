package p292y1;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import p197p1.C4006j;
import p282x1.C4835r;
/* renamed from: y1.b */
/* loaded from: classes-dex2jar.jar:y1/b.class */
public class C4955b extends AbstractRunnableC4957d {

    /* renamed from: b */
    public final /* synthetic */ C4006j f15116b;

    /* renamed from: c */
    public final /* synthetic */ String f15117c;

    public C4955b(C4006j c4006j, String str) {
        this.f15116b = c4006j;
        this.f15117c = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p292y1.AbstractRunnableC4957d
    /* renamed from: c */
    public void mo179c() {
        WorkDatabase workDatabase = this.f15116b.f12584c;
        workDatabase.m3819c();
        try {
            Iterator it2 = ((ArrayList) ((C4835r) workDatabase.mo7475q()).m381h(this.f15117c)).iterator();
            while (it2.hasNext()) {
                m181a(this.f15116b, (String) it2.next());
            }
            workDatabase.m3811k();
            workDatabase.m3815g();
            m180b(this.f15116b);
        } catch (Throwable th) {
            workDatabase.m3815g();
            throw th;
        }
    }
}

package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1404j;
import androidx.work.impl.background.systemalarm.C1256e;
import androidx.work.impl.p015m.C1300d;
import androidx.work.impl.p018n.C1344p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
public class C1254c {

    /* renamed from: a */
    private static final String f5330a = AbstractC1404j.m30159f("ConstraintsCmdHandler");

    /* renamed from: b */
    private final Context f5331b;

    /* renamed from: c */
    private final int f5332c;

    /* renamed from: d */
    private final C1256e f5333d;

    /* renamed from: e */
    private final C1300d f5334e;

    public C1254c(Context context, int i, C1256e c1256e) {
        this.f5331b = context;
        this.f5332c = i;
        this.f5333d = c1256e;
        this.f5334e = new C1300d(context, c1256e.m30471f(), null);
    }

    /* renamed from: a */
    public void m30479a() {
        List<C1344p> mo30275h = this.f5333d.m30470g().m30388o().mo30527B().mo30275h();
        ConstraintProxy.m30501a(this.f5331b, mo30275h);
        this.f5334e.m30346d(mo30275h);
        ArrayList<C1344p> arrayList = new ArrayList(mo30275h.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (C1344p c1344p : mo30275h) {
            String str = c1344p.f5578c;
            if (currentTimeMillis >= c1344p.m30286a() && (!c1344p.m30285b() || this.f5334e.m30347c(str))) {
                arrayList.add(c1344p);
            }
        }
        for (C1344p c1344p2 : arrayList) {
            String str2 = c1344p2.f5578c;
            Intent m30493b = C1253b.m30493b(this.f5331b, str2);
            AbstractC1404j.m30161c().mo30158a(f5330a, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            C1256e c1256e = this.f5333d;
            c1256e.m30466k(new C1256e.RunnableC1258b(c1256e, m30493b, this.f5332c));
        }
        this.f5334e.m30345e();
    }
}

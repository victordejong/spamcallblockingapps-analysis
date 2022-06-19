package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1293l;
import androidx.work.impl.background.systemalarm.C1217e;
import androidx.work.impl.p052a.C1166d;
import androidx.work.impl.p055b.C1191p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
public class C1215c {

    /* renamed from: a */
    private static final String f4082a = AbstractC1293l.m17541a("ConstraintsCmdHandler");

    /* renamed from: b */
    private final Context f4083b;

    /* renamed from: c */
    private final int f4084c;

    /* renamed from: d */
    private final C1217e f4085d;

    /* renamed from: e */
    private final C1166d f4086e;

    public C1215c(Context context, int i, C1217e c1217e) {
        this.f4083b = context;
        this.f4084c = i;
        this.f4085d = c1217e;
        this.f4086e = new C1166d(this.f4083b, this.f4085d.m17733e(), null);
    }

    /* renamed from: a */
    public void m17745a() {
        List<C1191p> mo17792c = this.f4085d.m17734d().m17652c().mo17885o().mo17792c();
        ConstraintProxy.m17767a(this.f4083b, mo17792c);
        this.f4086e.m17830a(mo17792c);
        ArrayList<C1191p> arrayList = new ArrayList(mo17792c.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (C1191p c1191p : mo17792c) {
            String str = c1191p.f4013a;
            if (currentTimeMillis >= c1191p.m17804c() && (!c1191p.m17803d() || this.f4086e.m17829a(str))) {
                arrayList.add(c1191p);
            }
        }
        for (C1191p c1191p2 : arrayList) {
            String str2 = c1191p2.f4013a;
            Intent m17751b = C1214b.m17751b(this.f4083b, str2);
            AbstractC1293l.m17543a().mo17539b(f4082a, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            this.f4085d.m17738a(new C1217e.RunnableC1219a(this.f4085d, m17751b, this.f4084c));
        }
        this.f4086e.m17831a();
    }
}

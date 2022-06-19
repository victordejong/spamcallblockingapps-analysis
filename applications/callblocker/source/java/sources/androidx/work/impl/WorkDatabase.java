package androidx.work.impl;

import android.content.Context;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.p042i.p043a.p044a.C0746c;
import androidx.room.AbstractC1044i;
import androidx.room.C1043h;
import androidx.work.impl.C1239g;
import androidx.work.impl.p055b.AbstractC1169b;
import androidx.work.impl.p055b.AbstractC1173e;
import androidx.work.impl.p055b.AbstractC1177h;
import androidx.work.impl.p055b.AbstractC1182k;
import androidx.work.impl.p055b.AbstractC1186n;
import androidx.work.impl.p055b.AbstractC1194q;
import androidx.work.impl.p055b.AbstractC1206t;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase.class */
public abstract class WorkDatabase extends AbstractC1044i {

    /* renamed from: d */
    private static final long f3929d = TimeUnit.DAYS.toMillis(7);

    /* renamed from: a */
    public static WorkDatabase m17904a(final Context context, Executor executor, boolean z) {
        AbstractC1044i.C1045a m18303a;
        if (z) {
            m18303a = C1043h.m18304a(context, WorkDatabase.class).m18285a();
        } else {
            m18303a = C1043h.m18303a(context, WorkDatabase.class, C1248h.m17670a());
            m18303a.m18284a(new AbstractC0750c.AbstractC0754c() { // from class: androidx.work.impl.WorkDatabase.1
                @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0754c
                /* renamed from: a */
                public AbstractC0750c mo17900a(AbstractC0750c.C0752b c0752b) {
                    AbstractC0750c.C0752b.C0753a m19510a = AbstractC0750c.C0752b.m19510a(context);
                    m19510a.m19507a(c0752b.f2655b).m19508a(c0752b.f2656c).m19506a(true);
                    return new C0746c().mo17900a(m19510a.m19509a());
                }
            });
        }
        return (WorkDatabase) m18303a.m18282a(executor).m18283a(m17903l()).m18281a(C1239g.f4183a).m18281a(new C1239g.C1246a(context, 2, 3)).m18281a(C1239g.f4184b).m18281a(C1239g.f4185c).m18281a(new C1239g.C1246a(context, 5, 6)).m18281a(C1239g.f4186d).m18281a(C1239g.f4187e).m18281a(C1239g.f4188f).m18281a(new C1239g.C1247b(context)).m18281a(new C1239g.C1246a(context, 10, 11)).m18280b().m18279c();
    }

    /* renamed from: l */
    static AbstractC1044i.AbstractC1046b m17903l() {
        return new AbstractC1044i.AbstractC1046b() { // from class: androidx.work.impl.WorkDatabase.2
            @Override // androidx.room.AbstractC1044i.AbstractC1046b
            /* renamed from: b */
            public void mo17899b(AbstractC0749b abstractC0749b) {
                super.mo17899b(abstractC0749b);
                abstractC0749b.mo19525a();
                try {
                    abstractC0749b.mo19517c(WorkDatabase.m17902m());
                    abstractC0749b.mo19518c();
                } finally {
                    abstractC0749b.mo19520b();
                }
            }
        };
    }

    /* renamed from: m */
    static String m17902m() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + m17901n() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    /* renamed from: n */
    static long m17901n() {
        return System.currentTimeMillis() - f3929d;
    }

    /* renamed from: o */
    public abstract AbstractC1194q mo17885o();

    /* renamed from: p */
    public abstract AbstractC1169b mo17884p();

    /* renamed from: q */
    public abstract AbstractC1206t mo17883q();

    /* renamed from: r */
    public abstract AbstractC1177h mo17882r();

    /* renamed from: s */
    public abstract AbstractC1182k mo17881s();

    /* renamed from: t */
    public abstract AbstractC1186n mo17880t();

    /* renamed from: u */
    public abstract AbstractC1173e mo17879u();
}

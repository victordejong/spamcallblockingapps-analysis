package androidx.work.impl;

import android.content.Context;
import androidx.room.AbstractC2748h;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import androidx.sqlite.p082db.p083a.C2789c;
import androidx.work.impl.C3058h;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase.class */
public abstract class WorkDatabase extends AbstractC2748h {

    /* renamed from: i */
    private static final long f11157i = TimeUnit.DAYS.toMillis(1);

    /* renamed from: a */
    public static WorkDatabase m39491a(final Context context, Executor executor, boolean z) {
        AbstractC2748h.C2749a c2749a;
        if (z) {
            c2749a = new AbstractC2748h.C2749a(context, WorkDatabase.class, null);
            c2749a.f10429d = true;
        } else {
            String m39365a = C3067i.m39365a();
            if (m39365a.trim().length() == 0) {
                throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            }
            c2749a = new AbstractC2748h.C2749a(context, WorkDatabase.class, m39365a);
            c2749a.f10428c = new SupportSQLiteOpenHelper.AbstractC2782b() { // from class: androidx.work.impl.WorkDatabase.1
                @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2782b
                /* renamed from: a */
                public final SupportSQLiteOpenHelper mo39489a(SupportSQLiteOpenHelper.Configuration configuration) {
                    SupportSQLiteOpenHelper.Configuration.Builder builder = SupportSQLiteOpenHelper.Configuration.builder(context);
                    builder.name(configuration.name).callback(configuration.callback).noBackupDirectory(true);
                    return new C2789c().mo39489a(builder.build());
                }
            };
        }
        c2749a.f10427b = executor;
        AbstractC2748h.AbstractC2750b abstractC2750b = new AbstractC2748h.AbstractC2750b() { // from class: androidx.work.impl.WorkDatabase.2
            @Override // androidx.room.AbstractC2748h.AbstractC2750b
            /* renamed from: a */
            public final void mo39488a(AbstractC2792b abstractC2792b) {
                super.mo39488a(abstractC2792b);
                abstractC2792b.mo39901a();
                try {
                    abstractC2792b.mo39894c(WorkDatabase.m39490i());
                    abstractC2792b.mo39895c();
                } finally {
                    abstractC2792b.mo39897b();
                }
            }
        };
        if (c2749a.f10426a == null) {
            c2749a.f10426a = new ArrayList<>();
        }
        c2749a.f10426a.add(abstractC2750b);
        AbstractC2748h.C2749a m39954a = c2749a.m39954a(C3058h.f11339a).m39954a(new C3058h.C3065a(context, 2, 3)).m39954a(C3058h.f11340b).m39954a(C3058h.f11341c).m39954a(new C3058h.C3065a(context, 5, 6)).m39954a(C3058h.f11342d).m39954a(C3058h.f11343e).m39954a(C3058h.f11344f).m39954a(new C3058h.C3066b(context)).m39954a(new C3058h.C3065a(context, 10, 11));
        m39954a.f10430e = false;
        m39954a.f10431f = true;
        return (WorkDatabase) m39954a.m39955a();
    }

    /* renamed from: i */
    static String m39490i() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - f11157i) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    /* renamed from: j */
    public abstract WorkSpecDao mo39474j();

    /* renamed from: k */
    public abstract DependencyDao mo39473k();

    /* renamed from: l */
    public abstract WorkTagDao mo39472l();

    /* renamed from: m */
    public abstract SystemIdInfoDao mo39471m();

    /* renamed from: n */
    public abstract WorkNameDao mo39470n();

    /* renamed from: o */
    public abstract WorkProgressDao mo39469o();

    /* renamed from: p */
    public abstract PreferenceDao mo39468p();
}

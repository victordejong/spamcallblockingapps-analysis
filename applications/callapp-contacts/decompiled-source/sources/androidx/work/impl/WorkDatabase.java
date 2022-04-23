package androidx.work.impl;

import android.content.Context;
import androidx.room.h;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.a.c;
import androidx.sqlite.db.b;
import androidx.work.impl.h;
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
public abstract class WorkDatabase extends h {
    private static final long i = TimeUnit.DAYS.toMillis(1);

    public static WorkDatabase a(final Context context, Executor executor, boolean z) {
        h.a aVar;
        if (z) {
            aVar = new h.a(context, WorkDatabase.class, null);
            aVar.f5578d = true;
        } else {
            String a2 = i.a();
            if (a2.trim().length() != 0) {
                aVar = new h.a(context, WorkDatabase.class, a2);
                aVar.f5577c = new SupportSQLiteOpenHelper.b() { // from class: androidx.work.impl.WorkDatabase.1
                    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.b
                    public final SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
                        SupportSQLiteOpenHelper.Configuration.Builder builder = SupportSQLiteOpenHelper.Configuration.builder(context);
                        builder.name(configuration.name).callback(configuration.callback).noBackupDirectory(true);
                        return new c().a(builder.build());
                    }
                };
            } else {
                throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            }
        }
        aVar.f5576b = executor;
        h.b bVar = new h.b() { // from class: androidx.work.impl.WorkDatabase.2
            @Override // androidx.room.h.b
            public final void a(b bVar2) {
                super.a(bVar2);
                bVar2.a();
                try {
                    bVar2.c(WorkDatabase.i());
                    bVar2.c();
                } finally {
                    bVar2.b();
                }
            }
        };
        if (aVar.f5575a == null) {
            aVar.f5575a = new ArrayList<>();
        }
        aVar.f5575a.add(bVar);
        h.a a3 = aVar.a(h.f6108a).a(new h.a(context, 2, 3)).a(h.f6109b).a(h.f6110c).a(new h.a(context, 5, 6)).a(h.f6111d).a(h.e).a(h.f).a(new h.b(context)).a(new h.a(context, 10, 11));
        a3.e = false;
        a3.f = true;
        return (WorkDatabase) a3.a();
    }

    static String i() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - i) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract WorkSpecDao j();

    public abstract DependencyDao k();

    public abstract WorkTagDao l();

    public abstract SystemIdInfoDao m();

    public abstract WorkNameDao n();

    public abstract WorkProgressDao o();

    public abstract PreferenceDao p();
}

package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.sqlite.db.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/DependencyDao_Impl.class */
public final class DependencyDao_Impl implements DependencyDao {
    private final h __db;
    private final a<Dependency> __insertionAdapterOfDependency;

    public DependencyDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfDependency = new a<Dependency>(hVar) { // from class: androidx.work.impl.model.DependencyDao_Impl.1
            public void bind(e eVar, Dependency dependency) {
                if (dependency.workSpecId == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, dependency.workSpecId);
                }
                if (dependency.prerequisiteId == null) {
                    eVar.a(2);
                } else {
                    eVar.a(2, dependency.prerequisiteId);
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final List<String> getDependentWorkIds(String str) {
        k a2 = k.a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final List<String> getPrerequisites(String str) {
        k a2 = k.a("SELECT prerequisite_id FROM dependency WHERE work_spec_id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                arrayList.add(a3.getString(0));
            }
            return arrayList;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final boolean hasCompletedAllPrerequisites(String str) {
        boolean z = true;
        k a2 = k.a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        z = false;
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            if (a3.moveToFirst()) {
                if (a3.getInt(0) == 0) {
                    z = false;
                }
            }
            return z;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final boolean hasDependents(String str) {
        boolean z = true;
        k a2 = k.a("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        z = false;
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            if (a3.moveToFirst()) {
                if (a3.getInt(0) == 0) {
                    z = false;
                }
            }
            return z;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final void insertDependency(Dependency dependency) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfDependency.insert((a<Dependency>) dependency);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }
}

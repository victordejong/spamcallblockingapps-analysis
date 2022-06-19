package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.C2757k;
import androidx.room.p081b.C2721c;
import androidx.sqlite.p082db.AbstractC2795e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/DependencyDao_Impl.class */
public final class DependencyDao_Impl implements DependencyDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<Dependency> __insertionAdapterOfDependency;

    public DependencyDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfDependency = new AbstractC2714a<Dependency>(abstractC2748h) { // from class: androidx.work.impl.model.DependencyDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, Dependency dependency) {
                if (dependency.workSpecId == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, dependency.workSpecId);
                }
                if (dependency.prerequisiteId == null) {
                    abstractC2795e.mo39889a(2);
                } else {
                    abstractC2795e.mo39886a(2, dependency.prerequisiteId);
                }
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final List<String> getDependentWorkIds(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final List<String> getPrerequisites(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT prerequisite_id FROM dependency WHERE work_spec_id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(m39997a.getString(0));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.DependencyDao
    public final boolean hasCompletedAllPrerequisites(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        boolean z = false;
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            if (m39997a.moveToFirst()) {
                z = m39997a.getInt(0) != 0;
            }
            m39997a.close();
            m39945a.m39946a();
            return z;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.DependencyDao
    public final boolean hasDependents(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        boolean z = false;
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            if (m39997a.moveToFirst()) {
                z = m39997a.getInt(0) != 0;
            }
            m39997a.close();
            m39945a.m39946a();
            return z;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public final void insertDependency(Dependency dependency) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfDependency.insert((AbstractC2714a<Dependency>) dependency);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }
}

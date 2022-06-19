package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.C2757k;
import androidx.room.p081b.C2721c;
import androidx.sqlite.p082db.AbstractC2795e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkNameDao_Impl.class */
public final class WorkNameDao_Impl implements WorkNameDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<WorkName> __insertionAdapterOfWorkName;

    public WorkNameDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfWorkName = new AbstractC2714a<WorkName>(abstractC2748h) { // from class: androidx.work.impl.model.WorkNameDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, WorkName workName) {
                if (workName.name == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, workName.name);
                }
                if (workName.workSpecId == null) {
                    abstractC2795e.mo39889a(2);
                } else {
                    abstractC2795e.mo39886a(2, workName.workSpecId);
                }
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public final List<String> getNamesForWorkSpecId(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT name FROM workname WHERE work_spec_id=?", 1);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public final List<String> getWorkSpecIdsWithName(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT work_spec_id FROM workname WHERE name=?", 1);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public final void insert(WorkName workName) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfWorkName.insert((AbstractC2714a<WorkName>) workName);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }
}

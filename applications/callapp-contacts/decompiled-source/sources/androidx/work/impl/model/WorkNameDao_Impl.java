package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.sqlite.db.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkNameDao_Impl.class */
public final class WorkNameDao_Impl implements WorkNameDao {
    private final h __db;
    private final a<WorkName> __insertionAdapterOfWorkName;

    public WorkNameDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfWorkName = new a<WorkName>(hVar) { // from class: androidx.work.impl.model.WorkNameDao_Impl.1
            public void bind(e eVar, WorkName workName) {
                if (workName.name == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, workName.name);
                }
                if (workName.workSpecId == null) {
                    eVar.a(2);
                } else {
                    eVar.a(2, workName.workSpecId);
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public final List<String> getNamesForWorkSpecId(String str) {
        k a2 = k.a("SELECT name FROM workname WHERE work_spec_id=?", 1);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public final List<String> getWorkSpecIdsWithName(String str) {
        k a2 = k.a("SELECT work_spec_id FROM workname WHERE name=?", 1);
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

    @Override // androidx.work.impl.model.WorkNameDao
    public final void insert(WorkName workName) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkName.insert((a<WorkName>) workName);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }
}

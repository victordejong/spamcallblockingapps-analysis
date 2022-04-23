package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.room.o;
import androidx.sqlite.db.e;
import androidx.work.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkProgressDao_Impl.class */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    private final h __db;
    private final a<WorkProgress> __insertionAdapterOfWorkProgress;
    private final o __preparedStmtOfDelete;
    private final o __preparedStmtOfDeleteAll;

    public WorkProgressDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfWorkProgress = new a<WorkProgress>(hVar) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
            public void bind(e eVar, WorkProgress workProgress) {
                if (workProgress.mWorkSpecId == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, workProgress.mWorkSpecId);
                }
                byte[] a2 = d.a(workProgress.mProgress);
                if (a2 == null) {
                    eVar.a(2);
                } else {
                    eVar.a(2, a2);
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }
        };
        this.__preparedStmtOfDelete = new o(hVar) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.2
            @Override // androidx.room.o
            public String createQuery() {
                return "DELETE from WorkProgress where work_spec_id=?";
            }
        };
        this.__preparedStmtOfDeleteAll = new o(hVar) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.3
            @Override // androidx.room.o
            public String createQuery() {
                return "DELETE FROM WorkProgress";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void delete(String str) {
        this.__db.d();
        e acquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            acquire.a(1);
        } else {
            acquire.a(1, str);
        }
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void deleteAll() {
        this.__db.d();
        e acquire = this.__preparedStmtOfDeleteAll.acquire();
        this.__db.e();
        try {
            acquire.a();
            this.__db.g();
        } finally {
            this.__db.f();
            this.__preparedStmtOfDeleteAll.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final d getProgressForWorkSpecId(String str) {
        k a2 = k.a("SELECT progress FROM WorkProgress WHERE work_spec_id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            return a3.moveToFirst() ? d.a(a3.getBlob(0)) : null;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final List<d> getProgressForWorkSpecIds(List<String> list) {
        StringBuilder a2 = androidx.room.b.e.a();
        a2.append("SELECT progress FROM WorkProgress WHERE work_spec_id IN (");
        int size = list.size();
        androidx.room.b.e.a(a2, size);
        a2.append(")");
        k a3 = k.a(a2.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                a3.e[i] = 1;
            } else {
                a3.a(i, str);
            }
            i++;
        }
        this.__db.d();
        Cursor a4 = c.a(this.__db, a3, false);
        try {
            ArrayList arrayList = new ArrayList(a4.getCount());
            while (a4.moveToNext()) {
                arrayList.add(d.a(a4.getBlob(0)));
            }
            return arrayList;
        } finally {
            a4.close();
            a3.a();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void insert(WorkProgress workProgress) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkProgress.insert((a<WorkProgress>) workProgress);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }
}

package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.AbstractC2764o;
import androidx.room.C2757k;
import androidx.room.p081b.C2721c;
import androidx.room.p081b.C2723e;
import androidx.sqlite.p082db.AbstractC2795e;
import androidx.work.C2992d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkProgressDao_Impl.class */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<WorkProgress> __insertionAdapterOfWorkProgress;
    private final AbstractC2764o __preparedStmtOfDelete;
    private final AbstractC2764o __preparedStmtOfDeleteAll;

    public WorkProgressDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfWorkProgress = new AbstractC2714a<WorkProgress>(abstractC2748h) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, WorkProgress workProgress) {
                if (workProgress.mWorkSpecId == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, workProgress.mWorkSpecId);
                }
                byte[] m39513a = C2992d.m39513a(workProgress.mProgress);
                if (m39513a == null) {
                    abstractC2795e.mo39889a(2);
                } else {
                    abstractC2795e.mo39885a(2, m39513a);
                }
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }
        };
        this.__preparedStmtOfDelete = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.2
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "DELETE from WorkProgress where work_spec_id=?";
            }
        };
        this.__preparedStmtOfDeleteAll = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.3
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "DELETE FROM WorkProgress";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void delete(String str) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfDelete.acquire();
        if (str == null) {
            acquire.mo39889a(1);
        } else {
            acquire.mo39886a(1, str);
        }
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void deleteAll() {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfDeleteAll.acquire();
        this.__db.m39959e();
        try {
            acquire.mo39882a();
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
            this.__preparedStmtOfDeleteAll.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.WorkProgressDao
    public final C2992d getProgressForWorkSpecId(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT progress FROM WorkProgress WHERE work_spec_id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            C2992d m39509a = m39997a.moveToFirst() ? C2992d.m39509a(m39997a.getBlob(0)) : null;
            m39997a.close();
            m39945a.m39946a();
            return m39509a;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final List<C2992d> getProgressForWorkSpecIds(List<String> list) {
        StringBuilder m39994a = C2723e.m39994a();
        m39994a.append("SELECT progress FROM WorkProgress WHERE work_spec_id IN (");
        int size = list.size();
        C2723e.m39993a(m39994a, size);
        m39994a.append(")");
        C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                m39945a.f10456e[i] = 1;
            } else {
                m39945a.mo39886a(i, str);
            }
            i++;
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                arrayList.add(C2992d.m39509a(m39997a.getBlob(0)));
            }
            return arrayList;
        } finally {
            m39997a.close();
            m39945a.m39946a();
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public final void insert(WorkProgress workProgress) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfWorkProgress.insert((AbstractC2714a<WorkProgress>) workProgress);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }
}

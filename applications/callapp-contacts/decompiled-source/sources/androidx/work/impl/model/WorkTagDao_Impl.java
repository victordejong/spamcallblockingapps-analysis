package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.sqlite.db.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTagDao_Impl.class */
public final class WorkTagDao_Impl implements WorkTagDao {
    private final h __db;
    private final a<WorkTag> __insertionAdapterOfWorkTag;

    public WorkTagDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfWorkTag = new a<WorkTag>(hVar) { // from class: androidx.work.impl.model.WorkTagDao_Impl.1
            public void bind(e eVar, WorkTag workTag) {
                if (workTag.tag == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, workTag.tag);
                }
                if (workTag.workSpecId == null) {
                    eVar.a(2);
                } else {
                    eVar.a(2, workTag.workSpecId);
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public final List<String> getTagsForWorkSpecId(String str) {
        k a2 = k.a("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
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

    @Override // androidx.work.impl.model.WorkTagDao
    public final List<String> getWorkSpecIdsWithTag(String str) {
        k a2 = k.a("SELECT work_spec_id FROM worktag WHERE tag=?", 1);
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

    @Override // androidx.work.impl.model.WorkTagDao
    public final void insert(WorkTag workTag) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkTag.insert((a<WorkTag>) workTag);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }
}

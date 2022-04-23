package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.a;
import androidx.room.b.b;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.room.o;
import androidx.sqlite.db.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao_Impl.class */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final h __db;
    private final a<SystemIdInfo> __insertionAdapterOfSystemIdInfo;
    private final o __preparedStmtOfRemoveSystemIdInfo;

    public SystemIdInfoDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfSystemIdInfo = new a<SystemIdInfo>(hVar) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            public void bind(e eVar, SystemIdInfo systemIdInfo) {
                if (systemIdInfo.workSpecId == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, systemIdInfo.workSpecId);
                }
                eVar.a(2, systemIdInfo.systemId);
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new o(hVar) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // androidx.room.o
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final SystemIdInfo getSystemIdInfo(String str) {
        k a2 = k.a("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            return a3.moveToFirst() ? new SystemIdInfo(a3.getString(b.b(a3, "work_spec_id")), a3.getInt(b.b(a3, "system_id"))) : null;
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final List<String> getWorkSpecIds() {
        k a2 = k.a("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
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

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void insertSystemIdInfo(SystemIdInfo systemIdInfo) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfSystemIdInfo.insert((a<SystemIdInfo>) systemIdInfo);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void removeSystemIdInfo(String str) {
        this.__db.d();
        e acquire = this.__preparedStmtOfRemoveSystemIdInfo.acquire();
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
            this.__preparedStmtOfRemoveSystemIdInfo.release(acquire);
        }
    }
}

package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.AbstractC2764o;
import androidx.room.C2757k;
import androidx.room.p081b.C2720b;
import androidx.room.p081b.C2721c;
import androidx.sqlite.p082db.AbstractC2795e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao_Impl.class */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<SystemIdInfo> __insertionAdapterOfSystemIdInfo;
    private final AbstractC2764o __preparedStmtOfRemoveSystemIdInfo;

    public SystemIdInfoDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfSystemIdInfo = new AbstractC2714a<SystemIdInfo>(abstractC2748h) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, SystemIdInfo systemIdInfo) {
                if (systemIdInfo.workSpecId == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, systemIdInfo.workSpecId);
                }
                abstractC2795e.mo39887a(2, systemIdInfo.systemId);
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new AbstractC2764o(abstractC2748h) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final SystemIdInfo getSystemIdInfo(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            SystemIdInfo systemIdInfo = m39997a.moveToFirst() ? new SystemIdInfo(m39997a.getString(C2720b.m39998b(m39997a, "work_spec_id")), m39997a.getInt(C2720b.m39998b(m39997a, "system_id"))) : null;
            m39997a.close();
            m39945a.m39946a();
            return systemIdInfo;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final List<String> getWorkSpecIds() {
        C2757k m39945a = C2757k.m39945a("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
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

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void insertSystemIdInfo(SystemIdInfo systemIdInfo) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfSystemIdInfo.insert((AbstractC2714a<SystemIdInfo>) systemIdInfo);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public final void removeSystemIdInfo(String str) {
        this.__db.m39960d();
        AbstractC2795e acquire = this.__preparedStmtOfRemoveSystemIdInfo.acquire();
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
            this.__preparedStmtOfRemoveSystemIdInfo.release(acquire);
        }
    }
}

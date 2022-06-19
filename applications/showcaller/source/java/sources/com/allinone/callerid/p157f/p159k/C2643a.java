package com.allinone.callerid.p157f.p159k;

import com.allinone.callerid.bean.recorder.CustomRecord;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.sqlite.WhereBuilder;
/* renamed from: com.allinone.callerid.f.k.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/a.class */
public class C2643a {

    /* renamed from: a */
    private static C2643a f9131a;

    /* renamed from: b */
    private DbManager f9132b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.k.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/a$a.class */
    public class C2644a implements DbManager.DbUpgradeListener {
        C2644a() {
            C2643a.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(CustomRecord.class).findAll();
                    dbManager.dropTable(CustomRecord.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2643a() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("CustomRecordDb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2644a());
            this.f9132b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static C2643a m26973c() {
        if (f9131a == null) {
            f9131a = new C2643a();
        }
        return f9131a;
    }

    /* renamed from: a */
    public boolean m26975a(CustomRecord customRecord) {
        if (customRecord != null) {
            try {
                CustomRecord customRecord2 = (CustomRecord) this.f9132b.selector(CustomRecord.class).where("phone", "=", customRecord.getPhone()).findFirst();
                if (customRecord2 == null) {
                    this.f9132b.saveOrUpdate(customRecord);
                    return true;
                }
                customRecord2.setType(customRecord.getType());
                this.f9132b.saveOrUpdate(customRecord2);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    public void m26974b(String str) {
        try {
            WhereBuilder m229b = WhereBuilder.m229b();
            m229b.and("phone", "=", str);
            this.f9132b.delete(CustomRecord.class, m229b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public boolean m26972d(String str) {
        try {
            CustomRecord customRecord = (CustomRecord) this.f9132b.selector(CustomRecord.class).where("phone", "=", str).findFirst();
            if (customRecord == null) {
                return false;
            }
            return customRecord.getType() == 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: e */
    public List<CustomRecord> m26971e(int i) {
        try {
            return this.f9132b.selector(CustomRecord.class).where("type", "=", Integer.valueOf(i)).orderBy("id", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

package com.allinone.callerid.p157f;

import com.allinone.callerid.model.EZSearchContacts;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/f.class */
public class C2631f {

    /* renamed from: a */
    private static C2631f f9113a;

    /* renamed from: b */
    private DbManager f9114b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/f$a.class */
    public class C2632a implements DbManager.DbUpgradeListener {
        C2632a() {
            C2631f.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(EZSearchContacts.class).findAll();
                    dbManager.dropTable(EZSearchContacts.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2631f() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.callid.search");
            daoConfig.setDbVersion(12);
            daoConfig.setDbUpgradeListener(new C2632a());
            this.f9114b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2631f m27001b() {
        if (f9113a == null) {
            f9113a = new C2631f();
        }
        return f9113a;
    }

    /* renamed from: a */
    public void m27002a() {
        try {
            this.f9114b.delete(EZSearchContacts.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m27000c(EZSearchContacts eZSearchContacts) {
        try {
            this.f9114b.saveOrUpdate(eZSearchContacts);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public EZSearchContacts m26999d(String str) {
        try {
            return (EZSearchContacts) this.f9114b.selector(EZSearchContacts.class).where("old_tel_number", "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public void m26998e(EZSearchContacts eZSearchContacts, String... strArr) {
        try {
            this.f9114b.update(eZSearchContacts, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

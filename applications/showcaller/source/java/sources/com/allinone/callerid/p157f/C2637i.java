package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.SpamCall;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.i */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/i.class */
public class C2637i {

    /* renamed from: a */
    private static C2637i f9122a;

    /* renamed from: b */
    private DbManager f9123b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.i$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/i$a.class */
    public class C2638a implements DbManager.DbUpgradeListener {
        C2638a() {
            C2637i.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(SpamCall.class).findAll();
                    dbManager.dropTable(SpamCall.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2637i() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.searched.spamcall");
            daoConfig.setDbVersion(2);
            daoConfig.setDbUpgradeListener(new C2638a());
            this.f9123b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2637i m26989a() {
        if (f9122a == null) {
            f9122a = new C2637i();
        }
        return f9122a;
    }

    /* renamed from: b */
    public List<SpamCall> m26988b() {
        try {
            return this.f9123b.findAll(SpamCall.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m26987c(SpamCall spamCall) {
        try {
            this.f9123b.saveOrUpdate(spamCall);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

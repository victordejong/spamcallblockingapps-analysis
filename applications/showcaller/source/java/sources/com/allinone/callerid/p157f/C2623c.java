package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.CollectInfo;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/c.class */
public class C2623c {

    /* renamed from: a */
    private static C2623c f9102a;

    /* renamed from: b */
    private DbManager f9103b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/c$a.class */
    public class C2624a implements DbManager.DbUpgradeListener {
        C2624a() {
            C2623c.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(CollectInfo.class).findAll();
                    dbManager.dropTable(CollectInfo.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2623c() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("collectuserinfo");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2624a());
            this.f9103b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2623c m27019b() {
        if (f9102a == null) {
            f9102a = new C2623c();
        }
        return f9102a;
    }

    /* renamed from: a */
    public void m27020a() {
        try {
            this.f9103b.delete(CollectInfo.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m27018c(CollectInfo collectInfo) {
        try {
            this.f9103b.saveOrUpdate(collectInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public List<CollectInfo> m27017d() {
        try {
            return this.f9103b.findAll(CollectInfo.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

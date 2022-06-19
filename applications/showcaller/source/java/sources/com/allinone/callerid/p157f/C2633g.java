package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.ReportedContent;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/g.class */
public class C2633g {

    /* renamed from: a */
    private static C2633g f9116a;

    /* renamed from: b */
    private DbManager f9117b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.g$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/g$a.class */
    public class C2634a implements DbManager.DbUpgradeListener {
        C2634a() {
            C2633g.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(ReportedContent.class).findAll();
                    dbManager.dropTable(ReportedContent.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2633g() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.report.reportnumber");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2634a());
            this.f9117b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2633g m26997a() {
        if (f9116a == null) {
            f9116a = new C2633g();
        }
        return f9116a;
    }

    /* renamed from: b */
    public List<ReportedContent> m26996b() {
        try {
            return this.f9117b.findAll(ReportedContent.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m26995c(ReportedContent reportedContent) {
        try {
            this.f9117b.saveOrUpdate(reportedContent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

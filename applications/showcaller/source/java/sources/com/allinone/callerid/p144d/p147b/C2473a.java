package com.allinone.callerid.p144d.p147b;

import com.allinone.callerid.callscreen.bean.ActionInfo;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.d.b.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/a.class */
public class C2473a {

    /* renamed from: a */
    private static C2473a f8792a;

    /* renamed from: b */
    private DbManager f8793b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/a$a.class */
    public class C2474a implements DbManager.DbOpenListener {
        C2474a() {
            C2473a.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/a$b.class */
    public class C2475b implements DbManager.DbUpgradeListener {
        C2475b() {
            C2473a.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(ActionInfo.class).findAll();
                    dbManager.dropTable(ActionInfo.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2473a() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("callscreenaction");
            daoConfig.setDbVersion(1);
            daoConfig.setDbOpenListener(new C2474a());
            daoConfig.setDbUpgradeListener(new C2475b());
            this.f8793b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2473a m27279a() {
        if (f8792a == null) {
            f8792a = new C2473a();
        }
        return f8792a;
    }

    /* renamed from: b */
    public ActionInfo m27278b(String str) {
        try {
            return (ActionInfo) this.f8793b.selector(ActionInfo.class).where("data_id", "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m27277c(String str, boolean z, int i) {
        try {
            ActionInfo actionInfo = (ActionInfo) this.f8793b.selector(ActionInfo.class).where("data_id", "=", str).findFirst();
            if (actionInfo != null) {
                actionInfo.setLike(z);
                actionInfo.setLike_counts(i);
                this.f8793b.update(actionInfo, "isLike", "like_counts");
            } else {
                ActionInfo actionInfo2 = new ActionInfo();
                actionInfo2.setData_id(str);
                actionInfo2.setLike(z);
                actionInfo2.setLike_counts(i);
                this.f8793b.saveOrUpdate(actionInfo2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m27276d(String str, boolean z) {
        try {
            ActionInfo actionInfo = (ActionInfo) this.f8793b.selector(ActionInfo.class).where("data_id", "=", str).findFirst();
            if (actionInfo != null) {
                actionInfo.setReport(z);
                this.f8793b.update(actionInfo, "isReport");
            } else {
                ActionInfo actionInfo2 = new ActionInfo();
                actionInfo2.setData_id(str);
                actionInfo2.setReport(z);
                this.f8793b.saveOrUpdate(actionInfo2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

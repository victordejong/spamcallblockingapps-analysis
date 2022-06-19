package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.BlockCall;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/b.class */
public class C2621b {

    /* renamed from: a */
    private static C2621b f9099a;

    /* renamed from: b */
    private DbManager f9100b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/b$a.class */
    public class C2622a implements DbManager.DbUpgradeListener {
        C2622a() {
            C2621b.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(BlockCall.class).findAll();
                    dbManager.dropTable(BlockCall.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2621b() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.block.blockcall");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2622a());
            this.f9100b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2621b m27023a() {
        if (f9099a == null) {
            f9099a = new C2621b();
        }
        return f9099a;
    }

    /* renamed from: b */
    public List<BlockCall> m27022b() {
        try {
            return this.f9100b.findAll(BlockCall.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m27021c(BlockCall blockCall) {
        try {
            this.f9100b.saveOrUpdate(blockCall);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

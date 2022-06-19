package com.allinone.callerid.util;

import android.util.Log;
import com.allinone.callerid.bean.EZBlackList;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.util.k */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k.class */
public class C3788k {

    /* renamed from: a */
    private static C3788k f12039a;

    /* renamed from: com.allinone.callerid.util.k$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k$a.class */
    public class C3789a implements DbManager.TableCreateListener {
        C3789a() {
            C3788k.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
            Log.i("JAVA", "onTableCreated：" + tableEntity.getName());
        }
    }

    /* renamed from: com.allinone.callerid.util.k$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k$b.class */
    public class C3790b implements DbManager.DbUpgradeListener {
        C3790b() {
            C3788k.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(EZBlackList.class).findAll();
                    dbManager.dropTable(EZBlackList.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.k$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/k$c.class */
    public class C3791c implements DbManager.DbOpenListener {
        C3791c() {
            C3788k.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    /* renamed from: a */
    public static C3788k m24138a() {
        if (f12039a == null) {
            f12039a = new C3788k();
        }
        return f12039a;
    }

    /* renamed from: b */
    public DbManager m24137b() {
        try {
            return C9682x.getDb(new DbManager.DaoConfig().setDbName("blacklist").setDbVersion(6).setDbOpenListener(new C3791c()).setDbUpgradeListener(new C3790b()).setTableCreateListener(new C3789a()));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

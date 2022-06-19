package com.allinone.callerid.util;

import android.util.Log;
import com.allinone.callerid.bean.CustomBlock;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.util.l */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/l.class */
public class C3795l {

    /* renamed from: a */
    public static String f12043a = "block.db";

    /* renamed from: b */
    private static C3795l f12044b;

    /* renamed from: com.allinone.callerid.util.l$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/l$a.class */
    public class C3796a implements DbManager.TableCreateListener {
        C3796a() {
            C3795l.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
            Log.i("JAVA", "onTableCreated：" + tableEntity.getName());
        }
    }

    /* renamed from: com.allinone.callerid.util.l$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/l$b.class */
    public class C3797b implements DbManager.DbUpgradeListener {
        C3797b() {
            C3795l.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(CustomBlock.class).findAll();
                    dbManager.dropTable(CustomBlock.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.l$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/l$c.class */
    public class C3798c implements DbManager.DbOpenListener {
        C3798c() {
            C3795l.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    /* renamed from: a */
    public static C3795l m24112a() {
        if (f12044b == null) {
            f12044b = new C3795l();
        }
        return f12044b;
    }

    /* renamed from: b */
    public DbManager m24111b() {
        try {
            return C9682x.getDb(new DbManager.DaoConfig().setDbName(f12043a).setDbVersion(3).setDbOpenListener(new C3798c()).setDbUpgradeListener(new C3797b()).setTableCreateListener(new C3796a()));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

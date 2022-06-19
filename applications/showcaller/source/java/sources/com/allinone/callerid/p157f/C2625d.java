package com.allinone.callerid.p157f;

import android.util.Log;
import com.allinone.callerid.bean.CommentContent;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.f.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/d.class */
public class C2625d {

    /* renamed from: a */
    private static C2625d f9105a;

    /* renamed from: b */
    private DbManager f9106b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/d$a.class */
    public class C2626a implements DbManager.TableCreateListener {
        C2626a() {
            C2625d.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
            Log.i("JAVA", "onTableCreated：" + tableEntity.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/d$b.class */
    public class C2627b implements DbManager.DbUpgradeListener {
        C2627b() {
            C2625d.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(CommentContent.class).findAll();
                    dbManager.dropTable(CommentContent.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/d$c.class */
    public class C2628c implements DbManager.DbOpenListener {
        C2628c() {
            C2625d.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    private C2625d() {
        try {
            this.f9106b = C9682x.getDb(new DbManager.DaoConfig().setDbName("comment").setDbVersion(3).setDbOpenListener(new C2628c()).setDbUpgradeListener(new C2627b()).setTableCreateListener(new C2626a()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2625d m27016a() {
        if (f9105a == null) {
            f9105a = new C2625d();
        }
        return f9105a;
    }

    /* renamed from: b */
    public List<CommentContent> m27015b(String str) {
        try {
            return this.f9106b.selector(CommentContent.class).where("tel_number", "=", str).orderBy("id", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m27014c(CommentContent commentContent) {
        try {
            this.f9106b.saveOrUpdate(commentContent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

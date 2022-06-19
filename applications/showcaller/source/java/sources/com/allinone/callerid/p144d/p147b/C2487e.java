package com.allinone.callerid.p144d.p147b;

import android.util.Log;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.util.C3718c0;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.d.b.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/e.class */
public class C2487e {

    /* renamed from: a */
    private static C2487e f8810a;

    /* renamed from: b */
    DbManager.DaoConfig f8811b = new DbManager.DaoConfig().setDbName("showanimation.db").setDbVersion(3).setDbOpenListener(new C2490c()).setDbUpgradeListener(new C2489b()).setTableCreateListener(new C2488a());

    /* renamed from: c */
    public DbManager f8812c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/e$a.class */
    public class C2488a implements DbManager.TableCreateListener {
        C2488a() {
            C2487e.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
            Log.i("JAVA", "onTableCreated：" + tableEntity.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.e$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/e$b.class */
    public class C2489b implements DbManager.DbUpgradeListener {
        C2489b() {
            C2487e.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(HomeInfo.class).findAll();
                    dbManager.dropTable(HomeInfo.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    Log.e("wbb", "数据库更新失败");
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.e$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/e$c.class */
    public class C2490c implements DbManager.DbOpenListener {
        C2490c() {
            C2487e.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    /* renamed from: e */
    public static C2487e m27256e() {
        if (f8810a == null) {
            f8810a = new C2487e();
        }
        return f8810a;
    }

    /* renamed from: a */
    public void m27260a(HomeInfo homeInfo) {
        if (homeInfo != null) {
            try {
                DbManager db = C9682x.getDb(this.f8811b);
                this.f8812c = db;
                HomeInfo homeInfo2 = (HomeInfo) db.selector(HomeInfo.class).findFirst();
                if (homeInfo2 == null) {
                    homeInfo.setIsdefault(true);
                    this.f8812c.save(homeInfo);
                    return;
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "更新数据0");
                }
                homeInfo2.setIsselect(homeInfo.isIsselect());
                homeInfo2.setPath(homeInfo.getPath());
                homeInfo2.setPhone(homeInfo.getPhone());
                homeInfo2.setName(homeInfo.getName());
                homeInfo2.setIsdiy(homeInfo.isIsdiy());
                homeInfo2.setUseVideoAudioRing(homeInfo.isUseVideoAudioRing());
                this.f8812c.update(homeInfo2, "isselect", "path", "phone", ShortCut.NAME, "isdiy", "isUseVideoAudioRing");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    public boolean m27259b() {
        boolean z = false;
        try {
            DbManager db = C9682x.getDb(this.f8811b);
            this.f8812c = db;
            if (((HomeInfo) db.selector(HomeInfo.class).where("isdiy", "=", Boolean.TRUE).findFirst()) != null) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public void m27258c(String str) {
        if (str != null) {
            try {
                DbManager db = C9682x.getDb(this.f8811b);
                this.f8812c = db;
                db.delete(HomeInfo.class, WhereBuilder.m228b("path", "=", str));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    public void m27257d() {
        try {
            DbManager db = C9682x.getDb(this.f8811b);
            this.f8812c = db;
            db.delete(HomeInfo.class, WhereBuilder.m228b("isdiy", "=", Boolean.TRUE));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public HomeInfo m27255f() {
        try {
            DbManager db = C9682x.getDb(this.f8811b);
            this.f8812c = db;
            return (HomeInfo) db.selector(HomeInfo.class).where("isdefault", "=", Boolean.TRUE).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public HomeInfo m27254g() {
        try {
            DbManager db = C9682x.getDb(this.f8811b);
            this.f8812c = db;
            return (HomeInfo) db.selector(HomeInfo.class).where("isdiy", "=", Boolean.TRUE).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public boolean m27253h(HomeInfo homeInfo) {
        if (homeInfo != null) {
            try {
                DbManager db = C9682x.getDb(this.f8811b);
                this.f8812c = db;
                return ((HomeInfo) db.selector(HomeInfo.class).where("isdefault", "=", Boolean.TRUE).and(ShortCut.NAME, "=", homeInfo.getName()).findFirst()) != null;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }
}

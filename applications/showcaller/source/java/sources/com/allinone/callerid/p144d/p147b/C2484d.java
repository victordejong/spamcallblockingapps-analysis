package com.allinone.callerid.p144d.p147b;

import com.allinone.callerid.callscreen.bean.RewardedAdInfo;
import com.allinone.callerid.util.C3718c0;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.d.b.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/d.class */
public class C2484d {

    /* renamed from: a */
    private static C2484d f8806a;

    /* renamed from: b */
    public DbManager f8807b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/d$a.class */
    public class C2485a implements DbManager.TableCreateListener {
        C2485a() {
            C2484d.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/d$b.class */
    public class C2486b implements DbManager.DbOpenListener {
        C2486b() {
            C2484d.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    private C2484d() {
        try {
            this.f8807b = C9682x.getDb(new DbManager.DaoConfig().setDbName("rewardedad").setDbVersion(1).setDbOpenListener(new C2486b()).setTableCreateListener(new C2485a()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2484d m27262b() {
        if (f8806a == null) {
            f8806a = new C2484d();
        }
        return f8806a;
    }

    /* renamed from: a */
    public boolean m27263a(RewardedAdInfo rewardedAdInfo) {
        if (rewardedAdInfo != null) {
            try {
                if (((RewardedAdInfo) this.f8807b.selector(RewardedAdInfo.class).where("dataId", "=", rewardedAdInfo.getDataId()).findFirst()) != null) {
                    return false;
                }
                this.f8807b.save(rewardedAdInfo);
                if (!C3718c0.f11914a) {
                    return true;
                }
                C3718c0.m24436a("wbb", "添加解锁数据到数据库");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                if (!C3718c0.f11914a) {
                    return false;
                }
                C3718c0.m24436a("wbb", "Exception: " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean m27261c(String str) {
        try {
            return ((RewardedAdInfo) this.f8807b.selector(RewardedAdInfo.class).where("dataId", "=", str).findFirst()) != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

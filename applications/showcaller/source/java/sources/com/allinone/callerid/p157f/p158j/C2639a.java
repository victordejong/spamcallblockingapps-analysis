package com.allinone.callerid.p157f.p158j;

import com.allinone.callerid.bean.NoDisturbBean;
import com.allinone.callerid.bean.ShortCut;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.j.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/j/a.class */
public class C2639a {

    /* renamed from: a */
    private static C2639a f9125a;

    /* renamed from: b */
    private DbManager f9126b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/j/a$a.class */
    public class C2640a implements DbManager.DbUpgradeListener {
        C2640a() {
            C2639a.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
        }
    }

    private C2639a() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("DisturbWhiteDb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2640a());
            this.f9126b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2639a m26985b() {
        if (f9125a == null) {
            f9125a = new C2639a();
        }
        return f9125a;
    }

    /* renamed from: a */
    public boolean m26986a(String str) {
        try {
            NoDisturbBean noDisturbBean = (NoDisturbBean) this.f9126b.selector(NoDisturbBean.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (noDisturbBean == null) {
                return false;
            }
            this.f9126b.delete(noDisturbBean);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public boolean m26984c(String str) {
        try {
            return ((NoDisturbBean) this.f9126b.selector(NoDisturbBean.class).where(ShortCut.NUMBER, "=", str).findFirst()) != null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public List<NoDisturbBean> m26983d() {
        try {
            return this.f9126b.selector(NoDisturbBean.class).orderBy("time", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public boolean m26982e(NoDisturbBean noDisturbBean) {
        try {
            if (((NoDisturbBean) this.f9126b.selector(NoDisturbBean.class).where(ShortCut.NUMBER, "=", noDisturbBean.getNumber()).findFirst()) != null) {
                return false;
            }
            this.f9126b.saveOrUpdate(noDisturbBean);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

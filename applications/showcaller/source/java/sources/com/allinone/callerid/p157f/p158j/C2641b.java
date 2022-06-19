package com.allinone.callerid.p157f.p158j;

import com.allinone.callerid.bean.WeekInfo;
import com.allinone.callerid.util.C3718c0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.j.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/j/b.class */
public class C2641b {

    /* renamed from: a */
    private static C2641b f9128a;

    /* renamed from: b */
    private DbManager f9129b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.j.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/j/b$a.class */
    public class C2642a implements DbManager.DbUpgradeListener {
        C2642a() {
            C2641b.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
        }
    }

    private C2641b() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("WeekDb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2642a());
            this.f9129b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2641b m26981a() {
        if (f9128a == null) {
            f9128a = new C2641b();
        }
        return f9128a;
    }

    /* renamed from: b */
    public void m26980b() {
        try {
            List<WeekInfo> m26978d = m26978d();
            if (m26978d != null && m26978d.size() > 0) {
                return;
            }
            ArrayList<WeekInfo> arrayList = new ArrayList<>();
            int i = 0;
            while (i < 7) {
                WeekInfo weekInfo = new WeekInfo();
                i++;
                weekInfo.setWeekId(i);
                weekInfo.setSelect(true);
                arrayList.add(weekInfo);
            }
            WeekInfo weekInfo2 = new WeekInfo();
            weekInfo2.setSelect(true);
            weekInfo2.setWeekId(-1);
            arrayList.add(weekInfo2);
            m26977e(arrayList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public boolean m26979c() {
        try {
            int i = 7;
            int i2 = Calendar.getInstance().get(7) - 1;
            if (i2 != 0) {
                i = i2;
            }
            WeekInfo weekInfo = (WeekInfo) this.f9129b.selector(WeekInfo.class).where("weekId", "=", Integer.valueOf(i)).findFirst();
            if (weekInfo == null) {
                return false;
            }
            return weekInfo.isSelect();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public List<WeekInfo> m26978d() {
        try {
            return this.f9129b.selector(WeekInfo.class).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public boolean m26977e(ArrayList<WeekInfo> arrayList) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "保存数据集合: ");
        }
        try {
            this.f9129b.saveOrUpdate(arrayList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (!C3718c0.f11914a) {
                return false;
            }
            C3718c0.m24436a("wbb", "saveData_Exception: " + e.getMessage());
            return false;
        }
    }

    /* renamed from: f */
    public void m26976f(ArrayList<WeekInfo> arrayList) {
        try {
            this.f9129b.delete(WeekInfo.class);
            this.f9129b.save(arrayList);
        } catch (Exception e) {
            e.printStackTrace();
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("wbb", "saveData_Exception: " + e.getMessage());
        }
    }
}

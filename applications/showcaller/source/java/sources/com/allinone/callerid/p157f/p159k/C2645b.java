package com.allinone.callerid.p157f.p159k;

import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.bean.recorder.RecordCall;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.sqlite.SqlInfo;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.DbModel;
/* renamed from: com.allinone.callerid.f.k.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/b.class */
public class C2645b {

    /* renamed from: a */
    private static C2645b f9134a;

    /* renamed from: b */
    private DbManager f9135b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.k.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/b$a.class */
    public class C2646a implements DbManager.DbUpgradeListener {
        C2646a() {
            C2645b.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(RecordCall.class).findAll();
                    dbManager.dropTable(RecordCall.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2645b() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("NumberSearchDb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2646a());
            this.f9135b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static C2645b m26967d() {
        if (f9134a == null) {
            f9134a = new C2645b();
        }
        return f9134a;
    }

    /* renamed from: a */
    public void m26970a(RecordCall recordCall) {
        if (recordCall != null) {
            try {
                this.f9135b.save(recordCall);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    public boolean m26969b(long j) {
        if (j != 0) {
            try {
                WhereBuilder m229b = WhereBuilder.m229b();
                m229b.and("endtime", "<", Long.valueOf(j));
                this.f9135b.delete(RecordCall.class, m229b);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public void m26968c(String str) {
        try {
            this.f9135b.delete(RecordCall.class, WhereBuilder.m228b("filepath", "=", str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public int m26966e(String str) {
        if (str != null) {
            try {
                List findAll = this.f9135b.selector(RecordCall.class).where(ShortCut.NUMBER, "=", str).findAll();
                if (findAll == null) {
                    return 0;
                }
                return findAll.size();
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: f */
    public List<RecordCall> m26965f(String str) {
        try {
            return this.f9135b.selector(RecordCall.class).where(ShortCut.NUMBER, "=", str).orderBy("starttime", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public String m26964g(String str) {
        try {
            RecordCall recordCall = (RecordCall) this.f9135b.selector(RecordCall.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (recordCall == null) {
                return null;
            }
            return recordCall.getName();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public List<RecordCall> m26963h(int i) {
        try {
            return this.f9135b.selector(RecordCall.class).where("numbertype", "=", Integer.valueOf(i)).orderBy("starttime", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: i */
    public List<DbModel> m26962i() {
        try {
            return this.f9135b.findDbModelAll(new SqlInfo("select * from RrcordCall where numbertype = 101  group by number  order by name"));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: j */
    public List<RecordCall> m26961j(int i) {
        try {
            return this.f9135b.selector(RecordCall.class).where("numbertype", "=", 100).and("phonestatus", "=", Integer.valueOf(i)).orderBy("starttime", true).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: k */
    public void m26960k(String str, String str2) {
        new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(new Date());
        try {
            List<RecordCall> findAll = this.f9135b.selector(RecordCall.class).where("filepath", "=", str).findAll();
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            for (RecordCall recordCall : findAll) {
                recordCall.setRemark(str2);
                this.f9135b.saveOrUpdate(recordCall);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

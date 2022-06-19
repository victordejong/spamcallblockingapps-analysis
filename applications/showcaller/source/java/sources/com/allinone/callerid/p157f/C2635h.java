package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.SearchHis;
import com.allinone.callerid.bean.ShortCut;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/h.class */
public class C2635h {

    /* renamed from: a */
    private static C2635h f9119a;

    /* renamed from: b */
    private DbManager f9120b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.h$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/h$a.class */
    public class C2636a implements DbManager.DbUpgradeListener {
        C2636a() {
            C2635h.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(SearchHis.class).findAll();
                    dbManager.dropTable(SearchHis.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2635h() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("callid.search.history");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2636a());
            this.f9120b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2635h m26993b() {
        if (f9119a == null) {
            f9119a = new C2635h();
        }
        return f9119a;
    }

    /* renamed from: a */
    public void m26994a() {
        try {
            this.f9120b.delete(SearchHis.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public List<SearchHis> m26992c() {
        try {
            return this.f9120b.findAll(SearchHis.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public SearchHis m26991d(String str) {
        try {
            return (SearchHis) this.f9120b.selector(SearchHis.class).where(ShortCut.NUMBER, "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public void m26990e(SearchHis searchHis) {
        try {
            this.f9120b.saveOrUpdate(searchHis);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

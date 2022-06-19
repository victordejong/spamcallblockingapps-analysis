package com.allinone.callerid.p162i.p163a.p185o;

import com.allinone.callerid.bean.ParserIpBean;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.i.a.o.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/c.class */
public class C2921c {

    /* renamed from: a */
    private static C2921c f9694a;

    /* renamed from: b */
    private DbManager f9695b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.o.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/o/c$a.class */
    public class C2922a implements DbManager.DbUpgradeListener {
        C2922a() {
            C2921c.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(ParserIpBean.class).findAll();
                    dbManager.dropTable(ParserIpBean.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2921c() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("parseripdb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2922a());
            this.f9695b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C2921c m26411a() {
        if (f9694a == null) {
            f9694a = new C2921c();
        }
        return f9694a;
    }

    /* renamed from: b */
    public ParserIpBean m26410b() {
        ParserIpBean parserIpBean;
        try {
            List findAll = this.f9695b.findAll(ParserIpBean.class);
            parserIpBean = null;
            if (findAll != null) {
                parserIpBean = null;
                if (findAll.size() > 0) {
                    parserIpBean = (ParserIpBean) findAll.get(0);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            parserIpBean = null;
        }
        return parserIpBean;
    }

    /* renamed from: c */
    public void m26409c(ParserIpBean parserIpBean) {
        try {
            ParserIpBean m26410b = m26410b();
            if (m26410b == null) {
                this.f9695b.saveOrUpdate(parserIpBean);
            } else {
                m26410b.setTrue_ip(parserIpBean.getTrue_ip());
                m26410b.setCountry(parserIpBean.getCountry());
                m26410b.setCountry_full(parserIpBean.getCountry_full());
                m26410b.setState(parserIpBean.getState());
                m26410b.setState_full(parserIpBean.getState_full());
                m26410b.setCity(parserIpBean.getCity());
                this.f9695b.update(m26410b, "true_ip", "country", "country_full", "state", "state_full", "city");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

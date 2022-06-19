package com.allinone.callerid.p157f;

import android.content.Intent;
import com.allinone.callerid.bean.AdContent;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.p202gg.C3749a;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.f.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/a.class */
public class C2619a {

    /* renamed from: a */
    private static C2619a f9096a;

    /* renamed from: b */
    private DbManager f9097b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/a$a.class */
    public class C2620a implements DbManager.DbUpgradeListener {
        C2620a() {
            C2619a.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(AdContent.class).findAll();
                    dbManager.dropTable(AdContent.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2619a() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.callid.adcontent");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2620a());
            this.f9097b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static C2619a m27025c() {
        if (f9096a == null) {
            f9096a = new C2619a();
        }
        return f9096a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
        if ("bigfatwhiteguy@gmail.com".equals(com.allinone.callerid.util.C3767h1.m24288F()) != false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27027a() {
        /*
            r5 = this;
            r0 = 1
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            org.xutils.DbManager r0 = r0.f9097b     // Catch: java.lang.Exception -> L5b
            java.lang.Class<com.allinone.callerid.bean.AdContent> r1 = com.allinone.callerid.bean.AdContent.class
            org.xutils.db.Selector r0 = r0.selector(r1)     // Catch: java.lang.Exception -> L5b
            java.lang.String r1 = "adname"
            java.lang.String r2 = "="
            java.lang.String r3 = "firstname"
            org.xutils.db.Selector r0 = r0.where(r1, r2, r3)     // Catch: java.lang.Exception -> L5b
            java.lang.Object r0 = r0.findFirst()     // Catch: java.lang.Exception -> L5b
            com.allinone.callerid.bean.AdContent r0 = (com.allinone.callerid.bean.AdContent) r0     // Catch: java.lang.Exception -> L5b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L47
            r0 = r7
            r8 = r0
            r0 = r9
            boolean r0 = r0.isSelected()     // Catch: java.lang.Exception -> L5b
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L64
            r0 = r7
            r8 = r0
            r0 = r7
            r6 = r0
            java.lang.String r0 = "bigfatwhiteguy@gmail.com"
            java.lang.String r1 = com.allinone.callerid.util.C3767h1.m24288F()     // Catch: java.lang.Exception -> L5b
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L5b
            if (r0 == 0) goto L64
            goto L56
        L47:
            r0 = r7
            r8 = r0
            java.lang.String r0 = "bigfatwhiteguy@gmail.com"
            java.lang.String r1 = com.allinone.callerid.util.C3767h1.m24288F()     // Catch: java.lang.Exception -> L5b
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L5b
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L64
        L56:
            r0 = 0
            r6 = r0
            goto L64
        L5b:
            r9 = move-exception
            r0 = r9
            r0.printStackTrace()
            r0 = r8
            r6 = r0
        L64:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p157f.C2619a.m27027a():boolean");
    }

    /* renamed from: b */
    public void m27026b() {
        try {
            AdContent adContent = (AdContent) this.f9097b.selector(AdContent.class).where("adname", "=", "firstname").findFirst();
            if (adContent != null) {
                adContent.setSelected(false);
                this.f9097b.update(adContent, "isSelected");
            } else {
                AdContent adContent2 = new AdContent();
                adContent2.setAdname("firstname");
                adContent2.setSelected(false);
                this.f9097b.saveOrUpdate(adContent2);
            }
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(new Intent("com.allinone.callerid.CLOSE_AD"));
            C3749a.m24343a().f11963b = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m27024d() {
        try {
            AdContent adContent = (AdContent) this.f9097b.selector(AdContent.class).where("adname", "=", "firstname").findFirst();
            if (adContent != null) {
                adContent.setSelected(true);
                this.f9097b.update(adContent, "isSelected");
            } else {
                AdContent adContent2 = new AdContent();
                adContent2.setAdname("firstname");
                adContent2.setSelected(true);
                this.f9097b.saveOrUpdate(adContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

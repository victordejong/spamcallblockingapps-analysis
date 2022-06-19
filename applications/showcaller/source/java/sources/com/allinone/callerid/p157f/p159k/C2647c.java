package com.allinone.callerid.p157f.p159k;

import com.allinone.callerid.bean.recorder.AudioSourceInfo;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.k.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/c.class */
public class C2647c {

    /* renamed from: a */
    private static C2647c f9137a;

    /* renamed from: b */
    private DbManager f9138b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.k.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/k/c$a.class */
    public class C2648a implements DbManager.DbUpgradeListener {
        C2648a() {
            C2647c.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(AudioSourceInfo.class).findAll();
                    dbManager.dropTable(AudioSourceInfo.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2647c() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("RecorderConfigurationDb");
            daoConfig.setDbVersion(1);
            daoConfig.setDbUpgradeListener(new C2648a());
            this.f9138b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2647c m26958b() {
        if (f9137a == null) {
            f9137a = new C2647c();
        }
        return f9137a;
    }

    /* renamed from: a */
    public void m26959a(List<AudioSourceInfo> list) {
        if (list != null) {
            try {
                this.f9138b.saveBindingId(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public List<AudioSourceInfo> m26957c() {
        try {
            return this.f9138b.findAll(AudioSourceInfo.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public boolean m26956d(String str) {
        try {
            for (AudioSourceInfo audioSourceInfo : this.f9138b.selector(AudioSourceInfo.class).where("isselected", "=", Boolean.TRUE).findAll()) {
                audioSourceInfo.setIsselected(false);
                this.f9138b.saveOrUpdate(audioSourceInfo);
            }
            AudioSourceInfo audioSourceInfo2 = (AudioSourceInfo) this.f9138b.selector(AudioSourceInfo.class).where("showname", "=", str).findFirst();
            audioSourceInfo2.setIsselected(true);
            this.f9138b.saveOrUpdate(audioSourceInfo2);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

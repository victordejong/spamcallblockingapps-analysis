package com.allinone.callerid.p144d.p147b;

import android.util.Log;
import com.allinone.callerid.callscreen.bean.PersonaliseContact;
import com.allinone.callerid.util.C3718c0;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.d.b.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/c.class */
public class C2480c {

    /* renamed from: a */
    private static C2480c f8801a;

    /* renamed from: b */
    private DbManager f8802b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/c$a.class */
    public class C2481a implements DbManager.TableCreateListener {
        C2481a() {
            C2480c.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
            Log.i("JAVA", "onTableCreated：" + tableEntity.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/c$b.class */
    public class C2482b implements DbManager.DbUpgradeListener {
        C2482b() {
            C2480c.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(PersonaliseContact.class).findAll();
                    dbManager.dropTable(PersonaliseContact.class);
                    dbManager.save(findAll);
                    if (!C3718c0.f11914a) {
                        return;
                    }
                    C3718c0.m24436a("wbb", "数据库更新成功");
                } catch (Exception e) {
                    Log.e("test", "数据库更新失败");
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/c$c.class */
    public class C2483c implements DbManager.DbOpenListener {
        C2483c() {
            C2480c.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    private C2480c() {
        try {
            this.f8802b = C9682x.getDb(new DbManager.DaoConfig().setDbName("resourcedb.db").setDbVersion(2).setDbOpenListener(new C2483c()).setDbUpgradeListener(new C2482b()).setTableCreateListener(new C2481a()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static C2480c m27268d() {
        if (f8801a == null) {
            f8801a = new C2480c();
        }
        return f8801a;
    }

    /* renamed from: a */
    public void m27271a(PersonaliseContact personaliseContact) {
        try {
            PersonaliseContact personaliseContact2 = (PersonaliseContact) this.f8802b.selector(PersonaliseContact.class).where("contacts_id", "=", Integer.valueOf(personaliseContact.getContacts_id())).findFirst();
            if (personaliseContact2 != null) {
                personaliseContact2.setDataId(personaliseContact.getDataId());
                personaliseContact2.setPath(personaliseContact.getPath());
                personaliseContact2.setThemtname(personaliseContact.getThemtname());
                personaliseContact2.setIsdiy(personaliseContact.isIsdiy());
                personaliseContact2.setUseVideoAudioRing(personaliseContact.isUseVideoAudioRing());
                this.f8802b.update(personaliseContact2, "data_id", "path", "themtname", "isdiy", "isUseVideoAudioRing");
            } else {
                this.f8802b.save(personaliseContact);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public boolean m27270b() {
        boolean z = false;
        try {
            if (((PersonaliseContact) this.f8802b.selector(PersonaliseContact.class).where("isdiy", "=", Boolean.TRUE).findFirst()) != null) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public void m27269c(String str) {
        try {
            this.f8802b.delete(PersonaliseContact.class, WhereBuilder.m228b("path", "=", str).and("isdiy", "=", Boolean.TRUE));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public List<PersonaliseContact> m27267e() {
        try {
            return this.f8802b.selector(PersonaliseContact.class).where("isdiy", "=", Boolean.TRUE).findAll();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public PersonaliseContact m27266f(String str) {
        try {
            return (PersonaliseContact) this.f8802b.selector(PersonaliseContact.class).where("contacts_id", "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public PersonaliseContact m27265g(String str) {
        try {
            return (PersonaliseContact) this.f8802b.selector(PersonaliseContact.class).where("num", "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public boolean m27264h(String str) {
        boolean z = false;
        boolean z2 = false;
        try {
            PersonaliseContact personaliseContact = (PersonaliseContact) this.f8802b.selector(PersonaliseContact.class).where("data_id", "=", str).findFirst();
            if (personaliseContact != null) {
                z = true;
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("personaliseContact:");
                    sb.append(personaliseContact.toString());
                    z2 = true;
                    C3718c0.m24436a("callscreen", sb.toString());
                    z = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = z2;
        }
        return z;
    }
}

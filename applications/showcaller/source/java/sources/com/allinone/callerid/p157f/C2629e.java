package com.allinone.callerid.p157f;

import com.allinone.callerid.bean.NumberContent;
import com.allinone.callerid.bean.ShortCut;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
/* renamed from: com.allinone.callerid.f.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/e.class */
public class C2629e {

    /* renamed from: a */
    private static C2629e f9110a;

    /* renamed from: b */
    private DbManager f9111b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.f.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/f/e$a.class */
    public class C2630a implements DbManager.DbUpgradeListener {
        C2630a() {
            C2629e.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            if (i2 != i) {
                try {
                    List findAll = dbManager.selector(NumberContent.class).findAll();
                    dbManager.dropTable(NumberContent.class);
                    dbManager.save(findAll);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private C2629e() {
        try {
            DbManager.DaoConfig daoConfig = new DbManager.DaoConfig();
            daoConfig.setDbName("com.callid.number");
            daoConfig.setDbVersion(7);
            daoConfig.setDbUpgradeListener(new C2630a());
            this.f9111b = C9682x.getDb(daoConfig);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static C2629e m27010d() {
        if (f9110a == null) {
            f9110a = new C2629e();
        }
        return f9110a;
    }

    /* renamed from: a */
    public boolean m27013a(String str) {
        boolean z;
        try {
            NumberContent m27009e = m27009e(str);
            z = true;
            if (m27009e != null) {
                z = true;
                if (m27009e.is_reported()) {
                    z = true;
                    if (System.currentTimeMillis() < m27009e.getReported_time()) {
                        z = false;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m27012b(String str) {
        boolean z;
        try {
            NumberContent m27009e = m27010d().m27009e(str);
            z = true;
            if (m27009e != null) {
                z = System.currentTimeMillis() > m27009e.getSuggest_time();
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m27011c(String str) {
        boolean z;
        try {
            NumberContent m27009e = m27009e(str);
            z = true;
            if (m27009e != null) {
                z = true;
                if (m27009e.is_reported_wrong()) {
                    z = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public NumberContent m27009e(String str) {
        try {
            return (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public void m27008f(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent != null) {
                numberContent.setSuggest_time(System.currentTimeMillis() + 43200000);
                this.f9111b.update(numberContent, "suggest_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setSuggest_time(System.currentTimeMillis() + 43200000);
                this.f9111b.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public void m27007g(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent != null) {
                numberContent.setIs_reported(true);
                this.f9111b.update(numberContent, "is_reported");
                numberContent.setReported_time(System.currentTimeMillis() + 86400000);
                this.f9111b.update(numberContent, "reported_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setIs_reported(true);
                numberContent2.setReported_time(System.currentTimeMillis() + 86400000);
                this.f9111b.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public void m27006h(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent == null) {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setSubtype_mark_time(System.currentTimeMillis() + 86400000);
                this.f9111b.saveOrUpdate(numberContent2);
            } else {
                numberContent.setSubtype_mark_time(System.currentTimeMillis() + 86400000);
                this.f9111b.update(numberContent, "subtype_mark_time");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public void m27005i(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent != null) {
                numberContent.setIs_reported_wrong(true);
                this.f9111b.update(numberContent, "is_reported_wrong");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setIs_reported_wrong(true);
                this.f9111b.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public void m27004j(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent != null) {
                numberContent.setShow_submit_comment_time(System.currentTimeMillis());
                this.f9111b.update(numberContent, "show_submit_comment_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setShow_submit_comment_time(System.currentTimeMillis());
                this.f9111b.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    public void m27003k(String str) {
        try {
            NumberContent numberContent = (NumberContent) this.f9111b.selector(NumberContent.class).where(ShortCut.NUMBER, "=", str).findFirst();
            if (numberContent != null) {
                numberContent.setSubmit_commentst_time(System.currentTimeMillis());
                this.f9111b.update(numberContent, "submit_commentst_time");
            } else {
                NumberContent numberContent2 = new NumberContent();
                numberContent2.setNumber(str);
                numberContent2.setSubmit_commentst_time(System.currentTimeMillis());
                this.f9111b.saveOrUpdate(numberContent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

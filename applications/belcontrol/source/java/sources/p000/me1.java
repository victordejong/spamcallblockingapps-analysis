package p000;

import android.os.AsyncTask;
import com.kedlin.cca.core.sync.ServerSync;
import com.kedlin.cca.core.util.billing.Purchase;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import p000.k61;
import p000.m91;
import p000.na1;
import p000.r71;
import p000.v81;
/* renamed from: me1 */
/* loaded from: classes3-dex2jar.jar:me1.class */
public class me1 implements m91.AbstractC1469b {

    /* renamed from: a */
    public static na1 f7028a;

    /* renamed from: b */
    public static ArrayList<String> f7029b = new ArrayList<>();

    /* renamed from: c */
    public static String f7030c = me1.class.getSimpleName();

    /* renamed from: me1$a */
    /* loaded from: classes3-dex2jar.jar:me1$a.class */
    public class C1475a implements na1.AbstractC1495g {
        public C1475a(me1 me1Var) {
        }

        @Override // p000.na1.AbstractC1495g
        /* renamed from: a */
        public void mo1186a(oa1 oa1Var) {
            me1.f7028a.m1205g();
            if (oa1Var.m1124d()) {
                new AsyncTaskC1478d().execute(new Void[0]);
                return;
            }
            j91.m1505k(this, "Problem setting up In-app Billing: " + oa1Var);
            m91.m1281a(this, m91.EnumC1470c.RESTORE_PURCHASE_COMPLETE, null);
        }
    }

    /* renamed from: me1$b */
    /* loaded from: classes3-dex2jar.jar:me1$b.class */
    public class C1476b implements na1.AbstractC1495g {
        public C1476b(me1 me1Var) {
        }

        @Override // p000.na1.AbstractC1495g
        /* renamed from: a */
        public void mo1186a(oa1 oa1Var) {
            me1.f7028a.m1205g();
            if (oa1Var.m1124d()) {
                new AsyncTaskC1477c().execute(new Void[0]);
                return;
            }
            j91.m1505k(this, "Problem setting up In-app Billing: " + oa1Var);
        }
    }

    /* renamed from: me1$c */
    /* loaded from: classes3-dex2jar.jar:me1$c.class */
    public static class AsyncTaskC1477c extends AsyncTask<Void, Void, Void> {
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            String str;
            String str2;
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(r71.f7879f);
                arrayList.addAll(r71.f7878e);
                arrayList.addAll(r71.f7880g);
                arrayList.addAll(r71.f7882i);
                arrayList.addAll(r71.f7883j);
                pa1 m1195q = me1.f7028a.m1195q(true, arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    if (m1195q.m930f(str3)) {
                        Purchase m932d = m1195q.m932d(str3);
                        v81 v81Var = new v81();
                        v81Var.f8341f = m932d.m4348e();
                        v81Var.f8340d = m932d.m4351b();
                        v81Var.f8342g = da1.m2710f(m932d.m4350c().getBytes());
                        v81Var.f8343h = m932d.m4349d();
                        try {
                            k61.m1438x(new y61(v81Var));
                        } catch (k61.C1456a e) {
                            th = e;
                            str = me1.f7030c;
                            str2 = "API ERROR";
                            j91.m1504l(str, str2, th);
                        } catch (Throwable th) {
                            th = th;
                            str = me1.f7030c;
                            str2 = "Error";
                            j91.m1504l(str, str2, th);
                        }
                    }
                }
                return null;
            } catch (ma1 e2) {
                return null;
            }
        }
    }

    /* renamed from: me1$d */
    /* loaded from: classes3-dex2jar.jar:me1$d.class */
    public static class AsyncTaskC1478d extends AsyncTask<Void, Void, Void> {
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                pa1 m1195q = me1.f7028a.m1195q(true, me1.f7029b);
                Iterator it = me1.f7029b.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (m1195q.m930f(str) && (!r71.f7878e.contains(str) || !r71.EnumC1638a.f7909M0.m695a() || r71.EnumC1638a.f7913O0.m695a())) {
                        if (!r71.f7883j.contains(str) || !r71.EnumC1638a.f7909M0.m695a() || r71.EnumC1638a.f7913O0.m695a()) {
                            if (!r71.f7879f.contains(str) || !r71.EnumC1638a.f7911N0.m695a()) {
                                if (!"callcontrol.all.managed.pro_lifetime".equals(str) || !r71.EnumC1638a.f7909M0.m695a() || r71.EnumC1638a.f7913O0.m695a()) {
                                    if (!"callcontrol.all.managed.no_ads".equals(str) || r71.EnumC1638a.f7915P0.m695a()) {
                                        v81.m363E(m1195q.m932d(str));
                                        try {
                                            me1.m1258g();
                                        } catch (Throwable th) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (ma1 e) {
            } catch (Throwable th2) {
                m91.m1281a(this, m91.EnumC1470c.RESTORE_PURCHASE_COMPLETE, null);
                throw th2;
            }
            m91.m1281a(this, m91.EnumC1470c.RESTORE_PURCHASE_COMPLETE, null);
            return null;
        }
    }

    /* renamed from: d */
    public static void m1261d(Purchase purchase) {
        Boolean bool;
        r71.EnumC1638a enumC1638a;
        r71.EnumC1638a enumC1638a2;
        Boolean bool2;
        String str = "Restore success! Item: " + purchase.m4348e();
        if (r71.f7878e.contains(purchase.m4348e()) || r71.f7883j.contains(purchase.m4348e())) {
            r71.EnumC1638a enumC1638a3 = r71.EnumC1638a.f7909M0;
            bool2 = Boolean.TRUE;
            enumC1638a3.m685k(bool2);
            enumC1638a2 = r71.EnumC1638a.f7911N0;
        } else if (!r71.f7879f.contains(purchase.m4348e())) {
            if (!"callcontrol.all.managed.pro_lifetime".equals(purchase.m4348e())) {
                if (!"callcontrol.all.managed.no_ads".equals(purchase.m4348e())) {
                    return;
                }
                r71.EnumC1638a.f7915P0.m685k(Boolean.FALSE);
                return;
            }
            r71.EnumC1638a enumC1638a4 = r71.EnumC1638a.f7909M0;
            bool = Boolean.TRUE;
            enumC1638a4.m685k(bool);
            enumC1638a = r71.EnumC1638a.f7913O0;
            enumC1638a.m685k(bool);
        } else {
            enumC1638a2 = r71.EnumC1638a.f7911N0;
            bool2 = Boolean.TRUE;
        }
        enumC1638a2.m685k(bool2);
        enumC1638a = r71.EnumC1638a.f7913O0;
        bool = Boolean.FALSE;
        enumC1638a.m685k(bool);
    }

    /* renamed from: g */
    public static boolean m1258g() {
        boolean z;
        synchronized (me1.class) {
            try {
                List<v81> m360H = new v81().m360H();
                for (v81 v81Var : m360H) {
                    try {
                        v81.m362F(v81Var.f8340d, v81.EnumC1690a.SENDING);
                        k61.m1438x(new y61(v81Var));
                        v81.m362F(v81Var.f8340d, v81.EnumC1690a.SENT);
                    } catch (k61.C1456a e) {
                        j91.m1504l(f7030c, "API ERROR", e);
                        v81.m362F(v81Var.f8340d, v81.EnumC1690a.NEED_SEND);
                        throw e;
                    } catch (Throwable th) {
                        j91.m1504l(f7030c, "Error", th);
                        v81.m362F(v81Var.f8340d, v81.EnumC1690a.NEED_SEND);
                        throw th;
                    }
                }
                if (m360H.size() > 0) {
                    ServerSync.m4356l();
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z;
    }

    /* renamed from: e */
    public void m1260e() {
        m91.m1278d(this, EnumSet.of(m91.EnumC1470c.SERVER_SYNC_MAIN_DATA_COMPLETE), new Class[0]);
    }

    /* renamed from: f */
    public void m1259f() {
        na1 na1Var = new na1(fa1.m1839k(), r71.m699w());
        f7028a = na1Var;
        try {
            na1Var.m1190v(new C1476b(this));
        } catch (Throwable th) {
            j91.m1495u(th);
        }
    }

    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    public void mo648i(m91.EnumC1470c enumC1470c, Class<?> cls, Object obj) {
        m91.m1277e(this);
        f7029b.addAll(r71.f7879f);
        f7029b.addAll(r71.f7878e);
        f7029b.addAll(r71.f7880g);
        f7029b.addAll(r71.f7882i);
        f7029b.addAll(r71.f7883j);
        na1 na1Var = new na1(fa1.m1839k(), r71.m699w());
        f7028a = na1Var;
        try {
            na1Var.m1190v(new C1475a(this));
        } catch (Throwable th) {
            j91.m1495u(th);
        }
    }
}

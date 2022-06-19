package p193e.p194a.p1066n;

import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.p1068k2.C18364a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.n.l */
/* loaded from: classes5-dex2jar.jar:e/a/n/l.class */
public final class C18365l extends AbstractC21765k {

    /* renamed from: b */
    public final String f51856b = "BackupLogWorker";

    /* renamed from: c */
    public final a<AbstractC8438a> f51857c;

    /* renamed from: d */
    public final a<AbstractC19462a> f51858d;

    @Inject
    public C18365l(a<AbstractC8438a> aVar, a<AbstractC19462a> aVar2) {
        l.e(aVar, "accountSettings");
        l.e(aVar2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f51857c = aVar;
        this.f51858d = aVar2;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Object obj = this.f51857c.get();
        l.d(obj, "accountSettings.get()");
        AbstractC8438a abstractC8438a = (AbstractC8438a) obj;
        l.e(abstractC8438a, "settings");
        String string = abstractC8438a.getString("accountAutobackupLogInfo");
        ArrayList<Map> arrayList = null;
        if (string != null) {
            l.d(string, "settings.getString(Accou…_LOG_INFO) ?: return null");
            abstractC8438a.putString("accountAutobackupLogInfo", null);
            List<String> U = v.U(string, new String[]{";"}, false, 0, 6);
            arrayList = new ArrayList(C25225a.m4004J(U, 10));
            for (String str : U) {
                List<String> U2 = v.U(str, new String[]{","}, false, 0, 6);
                int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(U2, 10));
                int i = m3942Y1;
                if (m3942Y1 < 16) {
                    i = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(i);
                for (String str2 : U2) {
                    List U3 = v.U(str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6);
                    linkedHashMap.put((String) U3.get(0), (String) U3.get(1));
                }
                arrayList.add(linkedHashMap);
            }
        }
        if (arrayList == null) {
            ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
            return c0415a;
        }
        AbstractC19462a abstractC19462a = (AbstractC19462a) this.f51858d.get();
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (Map map : arrayList) {
            String str3 = (String) map.get("backup_action_key");
            if (str3 == null) {
                str3 = "";
            }
            arrayList2.add(new C18364a(str3, Boolean.parseBoolean((String) map.get("backup_file_exists_key")), Boolean.parseBoolean((String) map.get("account_state_valid"))));
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            abstractC19462a.mo13274b((AbstractC19549v) it.next());
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f51856b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        String string = ((AbstractC8438a) this.f51857c.get()).getString("accountAutobackupLogInfo");
        boolean z = false;
        if (string != null) {
            z = false;
            if (string.length() > 0) {
                z = true;
            }
        }
        return z;
    }
}

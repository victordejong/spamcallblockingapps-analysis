package com.huawei.hms.framework.network.grs.p087g;

import android.content.Context;
import com.huawei.hms.framework.common.ExceptionCode;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.NetworkUtil;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.HianalyticsHelper;
import com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack;
import com.huawei.hms.framework.network.grs.g.k.a;
import com.razorpay.AnalyticsConstants;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.g.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/e.class */
public class C2322e {

    /* renamed from: com.huawei.hms.framework.network.grs.g.e$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/e$a.class */
    public static final class RunnableC2323a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f7459a;

        /* renamed from: b */
        public final /* synthetic */ Context f7460b;

        /* renamed from: c */
        public final /* synthetic */ ArrayList f7461c;

        /* renamed from: d */
        public final /* synthetic */ JSONArray f7462d;

        public RunnableC2323a(long j, Context context, ArrayList arrayList, JSONArray jSONArray) {
            this.f7459a = j;
            this.f7460b = context;
            this.f7461c = arrayList;
            this.f7462d = jSONArray;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            a aVar = new a();
            aVar.put("total_time", this.f7459a);
            aVar.put(AnalyticsConstants.NETWORK_TYPE, NetworkUtil.netWork(this.f7460b));
            Iterator it = this.f7461c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                C2321d c2321d = (C2321d) it.next();
                if (c2321d.m37898o()) {
                    aVar.put(C2322e.m37891b(c2321d));
                    it.remove();
                    z = true;
                    break;
                }
            }
            if (!z && this.f7461c.size() > 0) {
                ArrayList arrayList = this.f7461c;
                C2321d c2321d2 = (C2321d) arrayList.get(arrayList.size() - 1);
                aVar.put(C2322e.m37891b(c2321d2));
                this.f7461c.remove(c2321d2);
            }
            if (this.f7461c.size() > 0) {
                Iterator it2 = this.f7461c.iterator();
                while (it2.hasNext()) {
                    this.f7462d.put(new JSONObject(C2322e.m37891b((C2321d) it2.next())));
                }
            }
            if (this.f7462d.length() > 0) {
                aVar.put("failed_info", this.f7462d.toString());
            }
            Logger.m38048d("HaReportHelper", "grssdk report data to aiops is: %s", new JSONObject(aVar.get()));
            HianalyticsHelper.getInstance().onEvent(aVar.get(), "grs_request");
        }
    }

    /* renamed from: a */
    public static void m37892a(ArrayList<C2321d> arrayList, long j, JSONArray jSONArray, Context context) {
        if (context == null || arrayList == null || arrayList.size() <= 0 || !HianalyticsHelper.getInstance().isEnableReportNoSeed(context)) {
            return;
        }
        HianalyticsHelper.getInstance().getReportExecutor().submit(new RunnableC2323a(j, context, arrayList, jSONArray));
    }

    /* renamed from: b */
    public static LinkedHashMap<String, String> m37891b(C2321d c2321d) {
        LinkedHashMapPack linkedHashMapPack = new LinkedHashMapPack();
        Exception m37912d = c2321d.m37912d();
        if (m37912d != null) {
            linkedHashMapPack.put("error_code", ExceptionCode.getErrorCodeFromException(m37912d));
            linkedHashMapPack.put("exception_name", m37912d.getClass().getSimpleName());
            linkedHashMapPack.put("message", StringUtils.anonymizeMessage(m37912d.getMessage()));
        } else {
            linkedHashMapPack.put("error_code", c2321d.m37922b());
            linkedHashMapPack.put("exception_name", c2321d.m37917c());
        }
        try {
            linkedHashMapPack.put("domain", new URL(c2321d.m37901l()).getHost());
        } catch (MalformedURLException e) {
            Logger.m38039w("HaReportHelper", "report host MalformedURLException", e);
        }
        linkedHashMapPack.put("req_start_time", c2321d.m37905h());
        linkedHashMapPack.put("req_end_time", c2321d.m37906g());
        linkedHashMapPack.put("req_total_time", c2321d.m37904i());
        return linkedHashMapPack.getAll();
    }
}

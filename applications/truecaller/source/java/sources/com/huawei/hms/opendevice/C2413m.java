package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.support.log.HMSLog;
import java.util.Map;
/* renamed from: com.huawei.hms.opendevice.m */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/m.class */
public final class C2413m extends Thread {

    /* renamed from: a */
    public final /* synthetic */ Context f7643a;

    /* renamed from: b */
    public final /* synthetic */ String f7644b;

    public C2413m(Context context, String str) {
        this.f7643a = context;
        this.f7644b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean m37417b;
        boolean m37413d;
        String m37414c;
        if (!AbstractC2418p.m37397b()) {
            HMSLog.m37198d("ReportAaidToken", "Not HW Phone.");
            return;
        }
        m37417b = C2414n.m37417b(this.f7643a);
        if (m37417b) {
            return;
        }
        String m37410a = C2417o.m37410a(this.f7643a);
        if (TextUtils.isEmpty(m37410a)) {
            HMSLog.m37192w("ReportAaidToken", "AAID is empty.");
            return;
        }
        m37413d = C2414n.m37413d(this.f7643a, m37410a, this.f7644b);
        if (!m37413d) {
            HMSLog.m37198d("ReportAaidToken", "This time need not report.");
            return;
        }
        String string = AGConnectServicesConfig.fromContext(this.f7643a).getString("region");
        if (TextUtils.isEmpty(string)) {
            HMSLog.m37193i("ReportAaidToken", "The data storage region is empty.");
            return;
        }
        String m37426a = AbstractC2408e.m37426a(this.f7643a, "com.huawei.hms.opendevicesdk", "ROOT", null, string);
        if (TextUtils.isEmpty(m37426a)) {
            return;
        }
        m37414c = C2414n.m37414c(this.f7643a, m37410a, this.f7644b);
        Context context = this.f7643a;
        C2414n.m37415b(this.f7643a, AbstractC2406d.m37430a(context, m37426a + "/rest/appdata/v1/aaid/report", m37414c, (Map<String, String>) null), m37410a, this.f7644b);
    }
}

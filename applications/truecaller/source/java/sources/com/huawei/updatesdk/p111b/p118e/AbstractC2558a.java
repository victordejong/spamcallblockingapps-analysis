package com.huawei.updatesdk.p111b.p118e;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p115b.C2546a;
import com.huawei.updatesdk.p111b.p121h.C2570b;
import com.huawei.updatesdk.p111b.p121h.C2574d;
import com.huawei.updatesdk.service.otaupdate.C2591f;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.e.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/e/a.class */
public abstract class AbstractC2558a {
    /* renamed from: a */
    private String m36630a(Context context, String str) {
        String str2;
        try {
            GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
            grsBaseInfo.setSerCountry(str);
            str2 = new GrsClient(context, grsBaseInfo).synGetGrsUrl(m36632a(), "ROOT");
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("UpdateSDK Get url from GRS_SDK error: ");
            m8728C.append(th.toString());
            C2511a.m36861c("AbstractTaskInit", m8728C.toString());
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            C2511a.m36862b("AbstractTaskInit", "UpdateSDK Get url is default url");
            return m36631a(context);
        }
        StringBuilder m8728C2 = C22128a.m8728C("UpdateSDK Get url from GRS_SDK Success!");
        m8728C2.append(m36624b(str2));
        C2511a.m36862b("AbstractTaskInit", m8728C2.toString());
        return str2;
    }

    /* renamed from: b */
    private String m36624b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.substring(0, str.indexOf(46));
        } catch (Exception e) {
            C2515a.m36847b("AbstractTaskInit", e.toString());
            return null;
        }
    }

    /* renamed from: b */
    private boolean m36625b(Context context, String str) {
        if (!C2570b.m36581d(context, str)) {
            return false;
        }
        if (Math.abs(System.currentTimeMillis() - C2546a.m36680d().m36684b(str)) >= DtbConstants.SIS_CHECKIN_INTERVAL) {
            return true;
        }
        C2591f.m36509e().m36515a(C2546a.m36680d().m36688a(str));
        C2511a.m36862b("AbstractTaskInit", "The time interval does not meet the query accountZone requirements.");
        return false;
    }

    /* renamed from: a */
    public abstract String m36632a();

    /* renamed from: a */
    public abstract String m36631a(Context context);

    /* renamed from: a */
    public void m36629a(String str) {
    }

    /* renamed from: a */
    public abstract void m36628a(List<String> list);

    /* renamed from: b */
    public abstract String m36627b();

    /* renamed from: b */
    public String m36626b(Context context) {
        String m36516a = C2591f.m36509e().m36516a();
        if (TextUtils.isEmpty(m36516a)) {
            C2511a.m36862b("AbstractTaskInit", "UpdateSDK accountZone is empty, so url is default");
            return m36631a(context);
        }
        return m36630a(context, m36516a);
    }

    /* renamed from: c */
    public abstract int m36623c();

    /* renamed from: c */
    public abstract boolean m36622c(Context context);

    /* renamed from: d */
    public void m36621d() {
        Context m36757a = C2530a.m36754c().m36757a();
        if (!m36625b(m36757a, m36627b())) {
            return;
        }
        String format = String.format(Locale.ROOT, "content://%s.commondata/item/1", m36627b());
        if (!C2574d.m36569a(m36757a, Uri.parse(format), m36627b())) {
            return;
        }
        AsyncTaskC2559d asyncTaskC2559d = new AsyncTaskC2559d(format, m36627b());
        asyncTaskC2559d.executeOnExecutor(Executors.newSingleThreadExecutor(), new Void[0]);
        try {
            asyncTaskC2559d.get(1000L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("init AccountZone error: ");
            m8728C.append(e.toString());
            C2511a.m36863a("AbstractTaskInit", m8728C.toString());
        }
    }
}

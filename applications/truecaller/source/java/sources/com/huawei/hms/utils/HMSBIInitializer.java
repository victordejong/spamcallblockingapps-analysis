package com.huawei.hms.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.hms.hatool.HmsHiAnalyticsUtils;
import com.huawei.hms.stats.C2453a;
import com.huawei.hms.stats.C2455c;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/HMSBIInitializer.class */
public class HMSBIInitializer {

    /* renamed from: d */
    public static final Object f7842d = new Object();

    /* renamed from: e */
    public static HMSBIInitializer f7843e;

    /* renamed from: f */
    public static HiAnalyticsInstance f7844f;

    /* renamed from: a */
    public final Context f7845a;

    /* renamed from: b */
    public AtomicBoolean f7846b = new AtomicBoolean(false);

    /* renamed from: c */
    public boolean f7847c = C2455c.m37224a();

    /* renamed from: com.huawei.hms.utils.HMSBIInitializer$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/HMSBIInitializer$b.class */
    public class AsyncTaskC2468b extends AsyncTask<String, Integer, Void> {
        public AsyncTaskC2468b() {
            HMSBIInitializer.this = r4;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            HMSBIInitializer.this.m37167a(strArr[0]);
            return null;
        }
    }

    public HMSBIInitializer(Context context) {
        this.f7845a = context;
    }

    public static HMSBIInitializer getInstance(Context context) {
        synchronized (f7842d) {
            if (f7843e == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    f7843e = new HMSBIInitializer(applicationContext);
                } else {
                    f7843e = new HMSBIInitializer(context);
                }
            }
        }
        return f7843e;
    }

    /* renamed from: a */
    public final void m37167a(String str) {
        HMSLog.m37193i("HMSBIInitializer", "Start to query GRS");
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setIssueCountry(str);
        new GrsClient(this.f7845a, grsBaseInfo).ayncGetGrsUrl("com.huawei.cloud.opensdkhianalytics", "ROOT", new a(this));
    }

    public HiAnalyticsInstance getAnalyticsInstance() {
        return f7844f;
    }

    public void initBI() {
        boolean initFlag = !this.f7847c ? HmsHiAnalyticsUtils.getInitFlag() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
        HMSLog.m37193i("HMSBIInitializer", "Builder->biInitFlag :" + initFlag);
        if (!initFlag && !C2453a.m37229c(this.f7845a) && this.f7846b.compareAndSet(false, true)) {
            String issueCountryCode = GrsApp.getInstance().getIssueCountryCode(this.f7845a);
            String str = issueCountryCode;
            if (!TextUtils.isEmpty(issueCountryCode)) {
                str = issueCountryCode.toUpperCase(Locale.ENGLISH);
            }
            if (!"UNKNOWN".equalsIgnoreCase(str) && !TextUtils.isEmpty(str)) {
                new AsyncTaskC2468b().execute(str);
                return;
            }
            HMSLog.m37195e("HMSBIInitializer", "Failed to get device issue country");
            this.f7846b.set(false);
        }
    }

    public boolean isInit() {
        return !this.f7847c ? HmsHiAnalyticsUtils.getInitFlag() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }
}

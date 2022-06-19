package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.C5304a;
import com.bytedance.sdk.openadsdk.preload.geckox.p210c.C5335b;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.p223i.C5385c;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.C5414a;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.C5415b;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5416a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5425i;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.statistic.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/e.class */
public class C5412e {
    /* renamed from: a */
    private static Integer m32377a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* renamed from: a */
    private static JSONObject m32379a(StatisticModel.PackageStatisticModel packageStatisticModel, Common common) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("region", common.region);
        jSONObject.put("err_code", packageStatisticModel.errCode);
        jSONObject.put("err_msg", packageStatisticModel.errMsg);
        jSONObject.put("sdk_version", common.sdkVersion);
        jSONObject.put("access_key", packageStatisticModel.accessKey);
        jSONObject.put("stats_type", packageStatisticModel.statsType);
        jSONObject.put("device_id", common.deviceId);
        jSONObject.put("patch_id", (long) (packageStatisticModel.patchId == null ? (char) 0 : packageStatisticModel.patchId.longValue()));
        jSONObject.put("group_name", packageStatisticModel.groupName);
        jSONObject.put("os", common.f18896os);
        jSONObject.put(ImpressionData.APP_VERSION, common.appVersion);
        jSONObject.put("device_model", common.deviceModel);
        jSONObject.put(AppsFlyerProperties.CHANNEL, packageStatisticModel.channel);
        jSONObject.put("id", (long) (packageStatisticModel.f18911id == null ? (char) 0 : packageStatisticModel.f18911id.longValue()));
        jSONObject.put("ac", common.f18895ac);
        jSONObject.put("download_retry_times", packageStatisticModel.downloadRetryTimes == null ? 0 : packageStatisticModel.downloadRetryTimes.intValue());
        jSONObject.put("download_url", packageStatisticModel.downloadUrl == null ? "" : packageStatisticModel.downloadUrl);
        jSONObject.put("download_duration", packageStatisticModel.downloadDuration);
        jSONObject.put("download_fail_records", packageStatisticModel.downloadFailRecords == null ? "" : packageStatisticModel.downloadFailRecords);
        jSONObject.put("log_id", packageStatisticModel.logId);
        jSONObject.put("active_check_duration", (long) (packageStatisticModel.activeCheckDuration == null ? (char) 0 : packageStatisticModel.activeCheckDuration.longValue()));
        jSONObject.put("apply_duration", (long) (packageStatisticModel.applyDuration == null ? (char) 0 : packageStatisticModel.applyDuration.longValue()));
        return jSONObject;
    }

    /* renamed from: a */
    public static void m32382a(C5320b c5320b, C5398b c5398b) {
        StatisticModel m32376b = m32376b(c5320b, c5398b);
        if (m32376b == null || m32376b.packages == null) {
            return;
        }
        AbstractC5397a m32569p = c5320b.m32569p();
        if (m32569p != null) {
            try {
                for (StatisticModel.PackageStatisticModel packageStatisticModel : m32376b.packages) {
                    m32569p.mo32403a("geckosdk_update_stats", m32379a(packageStatisticModel, m32376b.common));
                }
            } catch (Throwable th) {
                C5381b.m32430a("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
        if (!c5320b.m32582c()) {
            return;
        }
        String m32723a = C5335b.m32516a().m32515b().m32723a(m32376b);
        if (TextUtils.isEmpty(m32723a)) {
            return;
        }
        m32380a(c5320b, m32723a);
    }

    /* renamed from: a */
    public static void m32381a(C5320b c5320b, C5415b c5415b) {
        AbstractC5397a m32569p = c5320b.m32569p();
        if (m32569p != null) {
            try {
                m32569p.mo32403a("geckosdk_query_pkgs", m32375b(c5320b, c5415b));
            } catch (Throwable th) {
                C5381b.m32430a("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
    }

    /* renamed from: a */
    private static void m32380a(final C5320b c5320b, final String str) {
        final String str2 = "https://" + c5320b.m32576i() + "/gecko/server/packages/stats";
        c5320b.m32579f().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.e.1
            @Override // java.lang.Runnable
            public final void run() {
                C5385c mo32422a;
                for (int i = 0; i < 3; i++) {
                    try {
                        mo32422a = c5320b.m32577h().mo32422a(str2, str);
                    } catch (Exception e) {
                        C5381b.m32430a("gecko-debug-tag", "upload statistic:", e);
                    }
                    if (mo32422a.f18884c != 200) {
                        throw new NetworkErrorException("net work get failed, code: " + mo32422a.f18884c + ", url:" + str2);
                        break;
                    } else if (new JSONObject(mo32422a.f18883b).getInt("status") == 0) {
                        return;
                    }
                }
            }
        });
    }

    /* renamed from: a */
    private static void m32378a(C5414a c5414a, C5320b c5320b, C5398b c5398b, List<StatisticModel.PackageStatisticModel> list) {
        if (!c5414a.f18913B || !c5414a.f18914C) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 1;
            packageStatisticModel.accessKey = c5414a.f18918a;
            packageStatisticModel.groupName = c5414a.f18919b;
            packageStatisticModel.channel = c5414a.f18920c;
            packageStatisticModel.f18910ac = c5414a.f18933p;
            packageStatisticModel.f18911id = c5414a.f18935r;
            packageStatisticModel.downloadRetryTimes = m32377a(c5414a.f18940w);
            packageStatisticModel.downloadUrl = c5414a.f18939v;
            packageStatisticModel.downloadFailRecords = m32374b(c5414a.f18940w);
            if (c5414a.f18913B) {
                if (c5414a.f18914C) {
                    return;
                }
                packageStatisticModel.errCode = "450";
                packageStatisticModel.errMsg = c5414a.f18916E;
                return;
            }
            packageStatisticModel.errCode = "300";
            if (c5414a.f18940w == null || c5414a.f18940w.isEmpty()) {
                return;
            }
            packageStatisticModel.errMsg = c5414a.f18940w.get(0).reason;
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel2);
        packageStatisticModel2.statsType = 0;
        packageStatisticModel2.accessKey = c5414a.f18918a;
        packageStatisticModel2.groupName = c5414a.f18919b;
        packageStatisticModel2.channel = c5414a.f18920c;
        packageStatisticModel2.f18910ac = c5414a.f18933p;
        packageStatisticModel2.f18911id = c5414a.f18935r;
        packageStatisticModel2.downloadRetryTimes = m32377a(c5414a.f18940w);
        packageStatisticModel2.downloadUrl = c5414a.f18939v;
        packageStatisticModel2.downloadFailRecords = m32374b(c5414a.f18940w);
        packageStatisticModel2.downloadDuration = Long.valueOf(c5414a.f18942y - c5414a.f18941x);
        if (c5414a.f18915D) {
            StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel3);
            packageStatisticModel3.accessKey = c5414a.f18918a;
            packageStatisticModel3.groupName = c5414a.f18919b;
            packageStatisticModel3.statsType = 2;
            packageStatisticModel3.f18911id = c5414a.f18935r;
            packageStatisticModel3.channel = c5414a.f18920c;
            packageStatisticModel3.activeCheckDuration = Long.valueOf(c5414a.f18943z - c5414a.f18942y);
            packageStatisticModel3.applyDuration = Long.valueOf(c5414a.f18912A - c5414a.f18943z);
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel4);
        packageStatisticModel4.statsType = 3;
        packageStatisticModel4.accessKey = c5414a.f18918a;
        packageStatisticModel4.groupName = c5414a.f18919b;
        packageStatisticModel4.errCode = "500";
        packageStatisticModel4.f18911id = c5414a.f18935r;
        packageStatisticModel4.channel = c5414a.f18920c;
        packageStatisticModel4.errMsg = c5414a.f18917F;
    }

    /* renamed from: b */
    private static StatisticModel m32376b(C5320b c5320b, C5398b c5398b) {
        ArrayList<StatisticModel.PackageStatisticModel> arrayList = new ArrayList();
        for (C5414a c5414a : c5398b.m32402a()) {
            if (c5414a.f18921d != null || c5414a.f18923f != 0) {
                if (!c5414a.f18925h || !c5414a.f18926i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 101;
                    packageStatisticModel.accessKey = c5414a.f18918a;
                    packageStatisticModel.groupName = c5414a.f18919b;
                    packageStatisticModel.channel = c5414a.f18920c;
                    packageStatisticModel.f18910ac = c5414a.f18933p;
                    packageStatisticModel.patchId = c5414a.f18934q;
                    packageStatisticModel.f18911id = c5414a.f18935r;
                    packageStatisticModel.downloadRetryTimes = m32377a(c5414a.f18922e);
                    packageStatisticModel.downloadUrl = c5414a.f18921d;
                    packageStatisticModel.downloadFailRecords = m32374b(c5414a.f18922e);
                    if (!c5414a.f18925h) {
                        packageStatisticModel.errCode = "301";
                        if (c5414a.f18922e != null && !c5414a.f18922e.isEmpty()) {
                            packageStatisticModel.errMsg = c5414a.f18922e.get(0).reason;
                        }
                    } else if (!c5414a.f18926i) {
                        packageStatisticModel.errCode = "402";
                        packageStatisticModel.errMsg = c5414a.f18936s;
                    }
                    m32378a(c5414a, c5320b, c5398b, arrayList);
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel2);
                    packageStatisticModel2.statsType = 100;
                    packageStatisticModel2.groupName = c5414a.f18919b;
                    packageStatisticModel2.accessKey = c5414a.f18918a;
                    packageStatisticModel2.channel = c5414a.f18920c;
                    packageStatisticModel2.f18910ac = c5414a.f18933p;
                    packageStatisticModel2.f18911id = c5414a.f18935r;
                    packageStatisticModel2.patchId = c5414a.f18934q;
                    packageStatisticModel2.downloadRetryTimes = m32377a(c5414a.f18922e);
                    packageStatisticModel2.downloadUrl = c5414a.f18921d;
                    packageStatisticModel2.downloadFailRecords = m32374b(c5414a.f18922e);
                    packageStatisticModel2.downloadDuration = Long.valueOf(c5414a.f18924g - c5414a.f18923f);
                    if (!c5414a.f18927j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.statsType = 100;
                        packageStatisticModel3.channel = c5414a.f18920c;
                        packageStatisticModel3.errCode = "403";
                        packageStatisticModel3.errMsg = c5414a.f18937t;
                        packageStatisticModel3.f18910ac = c5414a.f18933p;
                        packageStatisticModel3.patchId = c5414a.f18934q;
                        packageStatisticModel3.f18911id = c5414a.f18935r;
                        packageStatisticModel3.downloadRetryTimes = m32377a(c5414a.f18922e);
                        packageStatisticModel3.downloadUrl = c5414a.f18921d;
                        packageStatisticModel3.downloadFailRecords = m32374b(c5414a.f18922e);
                    } else if (c5414a.f18928k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = c5414a.f18918a;
                        packageStatisticModel4.groupName = c5414a.f18919b;
                        packageStatisticModel4.statsType = 102;
                        packageStatisticModel4.patchId = c5414a.f18934q;
                        packageStatisticModel4.f18911id = c5414a.f18935r;
                        packageStatisticModel4.channel = c5414a.f18920c;
                        packageStatisticModel4.activeCheckDuration = Long.valueOf(c5414a.f18931n - c5414a.f18924g);
                        packageStatisticModel4.applyDuration = Long.valueOf(c5414a.f18932o - c5414a.f18931n);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel5);
                        packageStatisticModel5.accessKey = c5414a.f18918a;
                        packageStatisticModel5.groupName = c5414a.f18919b;
                        packageStatisticModel5.statsType = 103;
                        packageStatisticModel5.errCode = "501";
                        packageStatisticModel5.channel = c5414a.f18920c;
                        packageStatisticModel5.patchId = c5414a.f18934q;
                        packageStatisticModel5.f18911id = c5414a.f18935r;
                        packageStatisticModel5.errMsg = c5414a.f18938u;
                        m32378a(c5414a, c5320b, c5398b, arrayList);
                    }
                }
            }
            m32378a(c5414a, c5320b, c5398b, arrayList);
        }
        Context m32584a = c5320b.m32584a();
        arrayList.addAll(C5304a.m32613a(m32584a));
        if (arrayList.isEmpty()) {
            return null;
        }
        Common common = new Common(c5320b.m32575j(), c5320b.m32571n(), c5320b.m32568q(), C5416a.m32363b(m32584a), C5425i.m32346a(m32584a), c5320b.m32574k(), c5320b.m32573l());
        StatisticModel statisticModel = new StatisticModel();
        statisticModel.common = common;
        statisticModel.packages = arrayList;
        String uuid = UUID.randomUUID().toString();
        for (StatisticModel.PackageStatisticModel packageStatisticModel6 : arrayList) {
            packageStatisticModel6.logId = uuid;
        }
        return statisticModel;
    }

    /* renamed from: b */
    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> m32374b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    /* renamed from: b */
    private static JSONObject m32375b(C5320b c5320b, C5415b c5415b) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("device_id", c5320b.m32568q());
        jSONObject.put("os", 0);
        jSONObject.put(ImpressionData.APP_VERSION, c5320b.m32571n());
        jSONObject.put("api_version", "v3");
        jSONObject.put("aid", c5320b.m32575j());
        jSONObject.put("x_tt_logid", c5415b.f18948e);
        jSONObject.put("http_status", c5415b.f18950g);
        jSONObject.put("err_msg", c5415b.f18947d);
        if (TextUtils.isEmpty(c5415b.f18948e)) {
            jSONObject.put("deployments_info", c5415b.f18945b);
            jSONObject.put("local_info", c5415b.f18944a);
            jSONObject.put("custom_info", c5415b.f18946c);
        } else {
            jSONObject.put("deployments_info", "");
            jSONObject.put("local_info", "");
            jSONObject.put("custom_info", "");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        jSONObject.put("os_version", sb.toString());
        jSONObject.put("device_platform", Constants.ANDROID_PLATFORM);
        jSONObject.put("device_model", Build.MODEL);
        jSONObject.put("ac", c5415b.f18949f);
        return jSONObject;
    }
}

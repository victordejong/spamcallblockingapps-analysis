package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.preload.geckox.b;
import com.bytedance.sdk.openadsdk.preload.geckox.i.c;
import com.bytedance.sdk.openadsdk.preload.geckox.model.Common;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.i;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/e.class */
public class e {
    private static Integer a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static JSONObject a(StatisticModel.PackageStatisticModel packageStatisticModel, Common common) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("region", common.region);
        jSONObject.put("err_code", packageStatisticModel.errCode);
        jSONObject.put("err_msg", packageStatisticModel.errMsg);
        jSONObject.put("sdk_version", common.sdkVersion);
        jSONObject.put("access_key", packageStatisticModel.accessKey);
        jSONObject.put("stats_type", packageStatisticModel.statsType);
        jSONObject.put("device_id", common.deviceId);
        long j = 0;
        jSONObject.put("patch_id", packageStatisticModel.patchId == null ? 0L : packageStatisticModel.patchId.longValue());
        jSONObject.put("group_name", packageStatisticModel.groupName);
        jSONObject.put("os", common.os);
        jSONObject.put(ImpressionData.APP_VERSION, common.appVersion);
        jSONObject.put("device_model", common.deviceModel);
        jSONObject.put(AppsFlyerProperties.CHANNEL, packageStatisticModel.channel);
        jSONObject.put("id", packageStatisticModel.id == null ? 0L : packageStatisticModel.id.longValue());
        jSONObject.put("ac", common.ac);
        jSONObject.put("download_retry_times", packageStatisticModel.downloadRetryTimes == null ? 0 : packageStatisticModel.downloadRetryTimes.intValue());
        Object obj = "";
        jSONObject.put("download_url", packageStatisticModel.downloadUrl == null ? "" : packageStatisticModel.downloadUrl);
        jSONObject.put("download_duration", packageStatisticModel.downloadDuration);
        if (packageStatisticModel.downloadFailRecords != null) {
            obj = packageStatisticModel.downloadFailRecords;
        }
        jSONObject.put("download_fail_records", obj);
        jSONObject.put("log_id", packageStatisticModel.logId);
        jSONObject.put("active_check_duration", packageStatisticModel.activeCheckDuration == null ? 0L : packageStatisticModel.activeCheckDuration.longValue());
        if (packageStatisticModel.applyDuration != null) {
            j = packageStatisticModel.applyDuration.longValue();
        }
        jSONObject.put("apply_duration", j);
        return jSONObject;
    }

    public static void a(b bVar, b bVar2) {
        StatisticModel b2 = b(bVar, bVar2);
        if (!(b2 == null || b2.packages == null)) {
            a p = bVar.p();
            if (p != null) {
                try {
                    for (StatisticModel.PackageStatisticModel packageStatisticModel : b2.packages) {
                        p.a("geckosdk_update_stats", a(packageStatisticModel, b2.common));
                    }
                } catch (Throwable th) {
                    com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "UploadStatistic.upload:", th);
                }
            }
            if (bVar.c()) {
                String a2 = com.bytedance.sdk.openadsdk.preload.geckox.c.b.a().b().a(b2);
                if (!TextUtils.isEmpty(a2)) {
                    a(bVar, a2);
                }
            }
        }
    }

    public static void a(b bVar, com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.b bVar2) {
        a p = bVar.p();
        if (p != null) {
            try {
                p.a("geckosdk_query_pkgs", b(bVar, bVar2));
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
    }

    private static void a(final b bVar, final String str) {
        final String str2 = "https://" + bVar.i() + "/gecko/server/packages/stats";
        bVar.f().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.e.1
            @Override // java.lang.Runnable
            public final void run() {
                c a2;
                for (int i = 0; i < 3; i++) {
                    try {
                        a2 = b.this.h().a(str2, str);
                    } catch (Exception e) {
                        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-debug-tag", "upload statistic:", e);
                    }
                    if (a2.f10221c != 200) {
                        throw new NetworkErrorException("net work get failed, code: " + a2.f10221c + ", url:" + str2);
                        break;
                    } else if (new JSONObject(a2.f10220b).getInt("status") == 0) {
                        return;
                    }
                }
            }
        });
    }

    private static void a(a aVar, b bVar, b bVar2, List<StatisticModel.PackageStatisticModel> list) {
        if (!aVar.B || !aVar.C) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 1;
            packageStatisticModel.accessKey = aVar.f10244a;
            packageStatisticModel.groupName = aVar.f10245b;
            packageStatisticModel.channel = aVar.f10246c;
            packageStatisticModel.ac = aVar.p;
            packageStatisticModel.id = aVar.r;
            packageStatisticModel.downloadRetryTimes = a(aVar.w);
            packageStatisticModel.downloadUrl = aVar.v;
            packageStatisticModel.downloadFailRecords = b(aVar.w);
            if (!aVar.B) {
                packageStatisticModel.errCode = "300";
                if (aVar.w != null && !aVar.w.isEmpty()) {
                    packageStatisticModel.errMsg = aVar.w.get(0).reason;
                }
            } else if (!aVar.C) {
                packageStatisticModel.errCode = "450";
                packageStatisticModel.errMsg = aVar.E;
            }
        } else {
            StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel2);
            packageStatisticModel2.statsType = 0;
            packageStatisticModel2.accessKey = aVar.f10244a;
            packageStatisticModel2.groupName = aVar.f10245b;
            packageStatisticModel2.channel = aVar.f10246c;
            packageStatisticModel2.ac = aVar.p;
            packageStatisticModel2.id = aVar.r;
            packageStatisticModel2.downloadRetryTimes = a(aVar.w);
            packageStatisticModel2.downloadUrl = aVar.v;
            packageStatisticModel2.downloadFailRecords = b(aVar.w);
            packageStatisticModel2.downloadDuration = Long.valueOf(aVar.y - aVar.x);
            if (aVar.D) {
                StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                list.add(packageStatisticModel3);
                packageStatisticModel3.accessKey = aVar.f10244a;
                packageStatisticModel3.groupName = aVar.f10245b;
                packageStatisticModel3.statsType = 2;
                packageStatisticModel3.id = aVar.r;
                packageStatisticModel3.channel = aVar.f10246c;
                packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar.z - aVar.y);
                packageStatisticModel3.applyDuration = Long.valueOf(aVar.A - aVar.z);
                return;
            }
            StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel4);
            packageStatisticModel4.statsType = 3;
            packageStatisticModel4.accessKey = aVar.f10244a;
            packageStatisticModel4.groupName = aVar.f10245b;
            packageStatisticModel4.errCode = "500";
            packageStatisticModel4.id = aVar.r;
            packageStatisticModel4.channel = aVar.f10246c;
            packageStatisticModel4.errMsg = aVar.F;
        }
    }

    private static StatisticModel b(b bVar, b bVar2) {
        ArrayList<StatisticModel.PackageStatisticModel> arrayList = new ArrayList();
        for (a aVar : bVar2.a()) {
            if (aVar.f10247d != null || aVar.f != 0) {
                if (!aVar.h || !aVar.i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 101;
                    packageStatisticModel.accessKey = aVar.f10244a;
                    packageStatisticModel.groupName = aVar.f10245b;
                    packageStatisticModel.channel = aVar.f10246c;
                    packageStatisticModel.ac = aVar.p;
                    packageStatisticModel.patchId = aVar.q;
                    packageStatisticModel.id = aVar.r;
                    packageStatisticModel.downloadRetryTimes = a(aVar.e);
                    packageStatisticModel.downloadUrl = aVar.f10247d;
                    packageStatisticModel.downloadFailRecords = b(aVar.e);
                    if (!aVar.h) {
                        packageStatisticModel.errCode = "301";
                        if (aVar.e != null && !aVar.e.isEmpty()) {
                            packageStatisticModel.errMsg = aVar.e.get(0).reason;
                        }
                    } else if (!aVar.i) {
                        packageStatisticModel.errCode = "402";
                        packageStatisticModel.errMsg = aVar.s;
                    }
                    a(aVar, bVar, bVar2, arrayList);
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel2);
                    packageStatisticModel2.statsType = 100;
                    packageStatisticModel2.groupName = aVar.f10245b;
                    packageStatisticModel2.accessKey = aVar.f10244a;
                    packageStatisticModel2.channel = aVar.f10246c;
                    packageStatisticModel2.ac = aVar.p;
                    packageStatisticModel2.id = aVar.r;
                    packageStatisticModel2.patchId = aVar.q;
                    packageStatisticModel2.downloadRetryTimes = a(aVar.e);
                    packageStatisticModel2.downloadUrl = aVar.f10247d;
                    packageStatisticModel2.downloadFailRecords = b(aVar.e);
                    packageStatisticModel2.downloadDuration = Long.valueOf(aVar.g - aVar.f);
                    if (!aVar.j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.statsType = 100;
                        packageStatisticModel3.channel = aVar.f10246c;
                        packageStatisticModel3.errCode = "403";
                        packageStatisticModel3.errMsg = aVar.t;
                        packageStatisticModel3.ac = aVar.p;
                        packageStatisticModel3.patchId = aVar.q;
                        packageStatisticModel3.id = aVar.r;
                        packageStatisticModel3.downloadRetryTimes = a(aVar.e);
                        packageStatisticModel3.downloadUrl = aVar.f10247d;
                        packageStatisticModel3.downloadFailRecords = b(aVar.e);
                    } else if (aVar.k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = aVar.f10244a;
                        packageStatisticModel4.groupName = aVar.f10245b;
                        packageStatisticModel4.statsType = 102;
                        packageStatisticModel4.patchId = aVar.q;
                        packageStatisticModel4.id = aVar.r;
                        packageStatisticModel4.channel = aVar.f10246c;
                        packageStatisticModel4.activeCheckDuration = Long.valueOf(aVar.n - aVar.g);
                        packageStatisticModel4.applyDuration = Long.valueOf(aVar.o - aVar.n);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel5);
                        packageStatisticModel5.accessKey = aVar.f10244a;
                        packageStatisticModel5.groupName = aVar.f10245b;
                        packageStatisticModel5.statsType = 103;
                        packageStatisticModel5.errCode = "501";
                        packageStatisticModel5.channel = aVar.f10246c;
                        packageStatisticModel5.patchId = aVar.q;
                        packageStatisticModel5.id = aVar.r;
                        packageStatisticModel5.errMsg = aVar.u;
                        a(aVar, bVar, bVar2, arrayList);
                    }
                }
            }
            a(aVar, bVar, bVar2, arrayList);
        }
        Context a2 = bVar.a();
        arrayList.addAll(com.bytedance.sdk.openadsdk.preload.geckox.a.a.a(a2));
        if (arrayList.isEmpty()) {
            return null;
        }
        Common common = new Common(bVar.j(), bVar.n(), bVar.q(), com.bytedance.sdk.openadsdk.preload.geckox.utils.a.b(a2), i.a(a2), bVar.k(), bVar.l());
        StatisticModel statisticModel = new StatisticModel();
        statisticModel.common = common;
        statisticModel.packages = arrayList;
        String uuid = UUID.randomUUID().toString();
        for (StatisticModel.PackageStatisticModel packageStatisticModel6 : arrayList) {
            packageStatisticModel6.logId = uuid;
        }
        return statisticModel;
    }

    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    private static JSONObject b(b bVar, com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.b bVar2) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("device_id", bVar.q());
        jSONObject.put("os", 0);
        jSONObject.put(ImpressionData.APP_VERSION, bVar.n());
        jSONObject.put("api_version", "v3");
        jSONObject.put("aid", bVar.j());
        jSONObject.put("x_tt_logid", bVar2.e);
        jSONObject.put("http_status", bVar2.g);
        jSONObject.put("err_msg", bVar2.f10251d);
        if (TextUtils.isEmpty(bVar2.e)) {
            jSONObject.put("deployments_info", bVar2.f10249b);
            jSONObject.put("local_info", bVar2.f10248a);
            jSONObject.put("custom_info", bVar2.f10250c);
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
        jSONObject.put("ac", bVar2.f);
        return jSONObject;
    }
}

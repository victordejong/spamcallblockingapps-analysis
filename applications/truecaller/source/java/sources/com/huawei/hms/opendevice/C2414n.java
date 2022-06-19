package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.User;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.Util;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.opendevice.n */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/n.class */
public class C2414n {

    /* renamed from: com.huawei.hms.opendevice.n$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/n$a.class */
    public enum EnumC2415a {
        MOBILE("1"),
        PC("2"),
        TABLET("3"),
        TV("4"),
        SOUNDBOX("5"),
        GLASS("6"),
        WATCH("7"),
        VEHICLE("8"),
        OFFICE_DEVICE("9"),
        IOT_DEVICES("10"),
        HEALTHY("11"),
        ENTERTAINMENT("12"),
        TRANSPORT_DEVICES(DtbConstants.NETWORK_TYPE_LTE);
        

        /* renamed from: o */
        public String f7659o;

        EnumC2415a(String str) {
            this.f7659o = str;
        }

        /* renamed from: a */
        public String m37412a() {
            return this.f7659o;
        }
    }

    /* renamed from: com.huawei.hms.opendevice.n$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/n$b.class */
    public enum EnumC2416b {
        IOS("ios"),
        ANDROID(Constants.ANDROID_PLATFORM),
        HARMONY("harmony"),
        WINDOWS("windows"),
        EMBED("embed"),
        OTHERS("others");
        

        /* renamed from: h */
        public String f7667h;

        EnumC2416b(String str) {
            this.f7667h = str;
        }

        /* renamed from: a */
        public String m37411a() {
            return this.f7667h;
        }
    }

    /* renamed from: a */
    public static void m37420a(Context context, String str) {
        new C2413m(context, str).start();
    }

    /* renamed from: b */
    public static void m37415b(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            HMSLog.m37195e("ReportAaidToken", "Https response is empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("ret", 256);
            if (optInt != 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("Https response body's ret code: ");
                sb.append(optInt);
                sb.append(", error message: ");
                sb.append(jSONObject.optString(RemoteMessageConst.MessageBody.MSG));
                HMSLog.m37195e("ReportAaidToken", sb.toString());
                return;
            }
            boolean saveString = i.a(context).saveString("reportAaidAndToken", C2420r.m37388a(str3 + str2, "SHA-256"));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Report success ");
            sb2.append(saveString ? "and save success." : "but save failure.");
            HMSLog.m37198d("ReportAaidToken", sb2.toString());
        } catch (JSONException e) {
            HMSLog.m37195e("ReportAaidToken", "Has JSONException.");
        } catch (Exception e2) {
            HMSLog.m37195e("ReportAaidToken", "Exception occur.");
        }
    }

    /* renamed from: b */
    public static boolean m37417b(Context context) {
        int packageVersionCode = new PackageManagerHelper(context).getPackageVersionCode("com.huawei.android.pushagent");
        HMSLog.m37198d("ReportAaidToken", "NC version code: " + packageVersionCode);
        return (90101400 <= packageVersionCode && packageVersionCode < 100000000) || packageVersionCode >= 100001301;
    }

    /* renamed from: c */
    public static String m37414c(Context context, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AnalyticsConstants.TIMEZONE, TimeZone.getDefault().getID());
            jSONObject2.put(ImpressionData.COUNTRY, SystemUtils.getLocalCountry());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("agent_version", new PackageManagerHelper(context).getPackageVersionName("com.huawei.android.pushagent"));
            jSONObject3.put("hms_version", String.valueOf(Util.getHmsVersion(context)));
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("dev_type", EnumC2415a.MOBILE.m37412a());
            jSONObject4.put("dev_sub_type", AnalyticsConstants.PHONE);
            jSONObject4.put("os_type", EnumC2416b.ANDROID.m37411a());
            jSONObject4.put(User.DEVICE_META_OS_VERSION_NAME, String.valueOf(HwBuildEx.VERSION.EMUI_SDK_INT));
            jSONObject.put("id", UUID.randomUUID().toString());
            jSONObject.put("global", jSONObject2);
            jSONObject.put("push_agent", jSONObject3);
            jSONObject.put("hardware", jSONObject4);
            jSONObject.put("aaid", str);
            jSONObject.put(AnalyticsConstants.TOKEN, str2);
            jSONObject.put(HiAnalyticsConstant.BI_KEY_APP_ID, AGConnectServicesConfig.fromContext(context).getString("client/app_id"));
            jSONObject.put("region", AGConnectServicesConfig.fromContext(context).getString("region"));
            return jSONObject.toString();
        } catch (JSONException e) {
            HMSLog.m37195e("ReportAaidToken", "Catch JSONException.");
            return null;
        }
    }

    /* renamed from: d */
    public static boolean m37413d(Context context, String str, String str2) {
        i a = i.a(context);
        if (!a.containsKey("reportAaidAndToken")) {
            HMSLog.m37198d("ReportAaidToken", "It hasn't been reported, this time needs report.");
            return true;
        }
        String string = a.getString("reportAaidAndToken");
        if (TextUtils.isEmpty(string)) {
            HMSLog.m37195e("ReportAaidToken", "It has been reported, but sp file is empty, this time needs report.");
            return true;
        }
        return !string.equals(C2420r.m37388a(str2 + str, "SHA-256"));
    }
}

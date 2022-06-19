package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.internal.C0726ai;
import com.appsflyer.internal.C0803co;
import com.appsflyer.internal.C0821k;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/LinkGenerator.class */
public class LinkGenerator {
    public String AFInAppEventParameterName;
    private String AFInAppEventType;
    public String AFKeystoreWrapper;
    private String AFLogger$LogLevel;
    private String AFVersionDeclaration;
    private String AppsFlyer2dXConversionCallback;
    private String getLevel;
    private String init;
    private String onDeepLinkingNative;
    private String onInstallConversionFailureNative;
    private String valueOf;
    private String values;
    private Map<String, String> onAttributionFailureNative = new HashMap();
    private Map<String, String> onInstallConversionDataLoadedNative = new HashMap();

    public LinkGenerator(String str) {
        this.valueOf = str;
    }

    private static String AFInAppEventParameterName(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.valueOf(sb.toString(), e);
            return "";
        } catch (Throwable th) {
            AFLogger.valueOf(th);
            return "";
        }
    }

    private StringBuilder values() {
        StringBuilder sb = new StringBuilder();
        String str = this.AFInAppEventParameterName;
        if (str == null || !str.startsWith(Protocols.HTTP)) {
            sb.append(String.format(C0803co.valueOf, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
        } else {
            sb.append(this.AFInAppEventParameterName);
        }
        if (this.AFKeystoreWrapper != null) {
            sb.append('/');
            sb.append(this.AFKeystoreWrapper);
        }
        this.onInstallConversionDataLoadedNative.put("pid", this.valueOf);
        sb.append('?');
        sb.append("pid=");
        sb.append(AFInAppEventParameterName(this.valueOf, "media source"));
        String str2 = this.getLevel;
        if (str2 != null) {
            this.onInstallConversionDataLoadedNative.put("af_referrer_uid", str2);
            sb.append('&');
            sb.append("af_referrer_uid=");
            sb.append(AFInAppEventParameterName(this.getLevel, "referrerUID"));
        }
        String str3 = this.values;
        if (str3 != null) {
            this.onInstallConversionDataLoadedNative.put(AFInAppEventParameterName.AF_CHANNEL, str3);
            sb.append('&');
            sb.append("af_channel=");
            sb.append(AFInAppEventParameterName(this.values, AppsFlyerProperties.CHANNEL));
        }
        String str4 = this.AppsFlyer2dXConversionCallback;
        if (str4 != null) {
            this.onInstallConversionDataLoadedNative.put("af_referrer_customer_id", str4);
            sb.append('&');
            sb.append("af_referrer_customer_id=");
            sb.append(AFInAppEventParameterName(this.AppsFlyer2dXConversionCallback, "referrerCustomerId"));
        }
        String str5 = this.AFInAppEventType;
        if (str5 != null) {
            this.onInstallConversionDataLoadedNative.put(AbstractC2405c.f7629a, str5);
            sb.append('&');
            sb.append("c=");
            sb.append(AFInAppEventParameterName(this.AFInAppEventType, "campaign"));
        }
        String str6 = this.AFLogger$LogLevel;
        if (str6 != null) {
            this.onInstallConversionDataLoadedNative.put("af_referrer_name", str6);
            sb.append('&');
            sb.append("af_referrer_name=");
            sb.append(AFInAppEventParameterName(this.AFLogger$LogLevel, "referrerName"));
        }
        String str7 = this.AFVersionDeclaration;
        if (str7 != null) {
            this.onInstallConversionDataLoadedNative.put("af_referrer_image_url", str7);
            sb.append('&');
            sb.append("af_referrer_image_url=");
            sb.append(AFInAppEventParameterName(this.AFVersionDeclaration, "referrerImageURL"));
        }
        if (this.onDeepLinkingNative != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.onDeepLinkingNative);
            sb2.append(this.onDeepLinkingNative.endsWith(StringConstant.SLASH) ? "" : StringConstant.SLASH);
            String str8 = this.init;
            if (str8 != null) {
                sb2.append(str8);
            }
            this.onInstallConversionDataLoadedNative.put("af_dp", sb2.toString());
            sb.append('&');
            sb.append("af_dp=");
            sb.append(AFInAppEventParameterName(this.onDeepLinkingNative, "baseDeeplink"));
            if (this.init != null) {
                sb.append(this.onDeepLinkingNative.endsWith(StringConstant.SLASH) ? "" : "%2F");
                sb.append(AFInAppEventParameterName(this.init, "deeplinkPath"));
            }
        }
        for (String str9 : this.onAttributionFailureNative.keySet()) {
            String obj = sb.toString();
            StringBuilder m8696K = C22128a.m8696K(str9, ContainerUtils.KEY_VALUE_DELIMITER);
            m8696K.append(AFInAppEventParameterName(this.onAttributionFailureNative.get(str9), str9));
            if (!obj.contains(m8696K.toString())) {
                sb.append('&');
                sb.append(str9);
                sb.append('=');
                sb.append(AFInAppEventParameterName(this.onAttributionFailureNative.get(str9), str9));
            }
        }
        return sb;
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.onAttributionFailureNative.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.onAttributionFailureNative.putAll(map);
        }
        return this;
    }

    public String generateLink() {
        return values().toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask.ResponseListener responseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.onAttributionFailureNative.isEmpty()) {
            for (Map.Entry<String, String> entry : this.onAttributionFailureNative.entrySet()) {
                this.onInstallConversionDataLoadedNative.put(entry.getKey(), entry.getValue());
            }
        }
        values();
        String str = this.onInstallConversionFailureNative;
        Map<String, String> map = this.onInstallConversionDataLoadedNative;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.values("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, C0726ai.valueOf(), context);
        createOneLinkHttpTask.AFInAppEventParameterName = responseListener;
        createOneLinkHttpTask.AFKeystoreWrapper = str;
        if (C0821k.values == null) {
            C0821k.values = new C0821k();
        }
        C0821k.values.AFKeystoreWrapper().execute(createOneLinkHttpTask);
    }

    public String getBrandDomain() {
        return this.onInstallConversionFailureNative;
    }

    public String getCampaign() {
        return this.AFInAppEventType;
    }

    public String getChannel() {
        return this.values;
    }

    public String getMediaSource() {
        return this.valueOf;
    }

    public Map<String, String> getParameters() {
        return this.onAttributionFailureNative;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.onDeepLinkingNative = str;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if (r13.length() < 5) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.appsflyer.share.LinkGenerator setBaseURL(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            r11 = this;
            r0 = r12
            if (r0 == 0) goto L39
            r0 = r12
            int r0 = r0.length()
            if (r0 > 0) goto Le
            goto L39
        Le:
            r0 = r13
            if (r0 == 0) goto L1c
            r0 = r13
            r14 = r0
            r0 = r13
            int r0 = r0.length()
            r1 = 5
            if (r0 >= r1) goto L20
        L1c:
            java.lang.String r0 = "go.onelink.me"
            r14 = r0
        L20:
            r0 = r11
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r14
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r12
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.AFInAppEventParameterName = r1
            goto L6a
        L39:
            r0 = r11
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "%sapp.%s"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r7 = r6
            r8 = 0
            com.appsflyer.AppsFlyerLib r9 = com.appsflyer.AppsFlyerLib.getInstance()
            java.lang.String r9 = r9.getHostPrefix()
            r7[r8] = r9
            r7 = r6
            r8 = 1
            com.appsflyer.internal.ai r9 = com.appsflyer.internal.C0726ai.valueOf()
            java.lang.String r9 = r9.getHostName()
            r7[r8] = r9
            java.lang.String r5 = java.lang.String.format(r5, r6)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r14
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.AFInAppEventParameterName = r1
        L6a:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.share.LinkGenerator.setBaseURL(java.lang.String, java.lang.String, java.lang.String):com.appsflyer.share.LinkGenerator");
    }

    public LinkGenerator setBrandDomain(String str) {
        this.onInstallConversionFailureNative = str;
        return this;
    }

    public LinkGenerator setCampaign(String str) {
        this.AFInAppEventType = str;
        return this;
    }

    public LinkGenerator setChannel(String str) {
        this.values = str;
        return this;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.init = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.AppsFlyer2dXConversionCallback = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.AFVersionDeclaration = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.AFLogger$LogLevel = str;
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.getLevel = str;
        return this;
    }
}

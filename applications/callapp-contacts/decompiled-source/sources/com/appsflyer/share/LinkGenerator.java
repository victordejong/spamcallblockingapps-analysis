package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/LinkGenerator.class */
public class LinkGenerator {

    /* renamed from: ı  reason: contains not printable characters */
    private String f350;

    /* renamed from: Ɩ  reason: contains not printable characters */
    private String f351;

    /* renamed from: ǃ  reason: contains not printable characters */
    String f352;

    /* renamed from: ɨ  reason: contains not printable characters */
    private String f354;

    /* renamed from: ɩ  reason: contains not printable characters */
    private String f355;

    /* renamed from: ɪ  reason: contains not printable characters */
    private String f356;

    /* renamed from: ɹ  reason: contains not printable characters */
    private String f357;

    /* renamed from: Ι  reason: contains not printable characters */
    private String f358;

    /* renamed from: ι  reason: contains not printable characters */
    String f359;

    /* renamed from: І  reason: contains not printable characters */
    private String f360;

    /* renamed from: і  reason: contains not printable characters */
    private String f361;

    /* renamed from: Ӏ  reason: contains not printable characters */
    private String f362;

    /* renamed from: ӏ  reason: contains not printable characters */
    private Map<String, String> f363 = new HashMap();

    /* renamed from: ȷ  reason: contains not printable characters */
    private Map<String, String> f353 = new HashMap();

    public LinkGenerator(String str) {
        this.f355 = str;
    }

    /* renamed from: ı  reason: contains not printable characters */
    private StringBuilder m1042() {
        StringBuilder sb = new StringBuilder();
        String str = this.f359;
        if (str == null || !str.startsWith("http")) {
            sb.append(ServerConfigHandler.getUrl(Constants.f344));
        } else {
            sb.append(this.f359);
        }
        if (this.f352 != null) {
            sb.append('/');
            sb.append(this.f352);
        }
        this.f353.put(Constants.URL_MEDIA_SOURCE, this.f355);
        sb.append('?');
        sb.append("pid=");
        sb.append(m1043(this.f355, "media source"));
        String str2 = this.f361;
        if (str2 != null) {
            this.f353.put("af_referrer_uid", str2);
            sb.append('&');
            sb.append("af_referrer_uid=");
            sb.append(m1043(this.f361, "referrerUID"));
        }
        String str3 = this.f358;
        if (str3 != null) {
            this.f353.put("af_channel", str3);
            sb.append('&');
            sb.append("af_channel=");
            sb.append(m1043(this.f358, AppsFlyerProperties.CHANNEL));
        }
        String str4 = this.f360;
        if (str4 != null) {
            this.f353.put("af_referrer_customer_id", str4);
            sb.append('&');
            sb.append("af_referrer_customer_id=");
            sb.append(m1043(this.f360, "referrerCustomerId"));
        }
        String str5 = this.f350;
        if (str5 != null) {
            this.f353.put(Constants.URL_CAMPAIGN, str5);
            sb.append('&');
            sb.append("c=");
            sb.append(m1043(this.f350, "campaign"));
        }
        String str6 = this.f351;
        if (str6 != null) {
            this.f353.put("af_referrer_name", str6);
            sb.append('&');
            sb.append("af_referrer_name=");
            sb.append(m1043(this.f351, "referrerName"));
        }
        String str7 = this.f357;
        if (str7 != null) {
            this.f353.put("af_referrer_image_url", str7);
            sb.append('&');
            sb.append("af_referrer_image_url=");
            sb.append(m1043(this.f357, "referrerImageURL"));
        }
        if (this.f356 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f356);
            String str8 = "";
            sb2.append(this.f356.endsWith("/") ? "" : "/");
            String str9 = this.f362;
            if (str9 != null) {
                sb2.append(str9);
            }
            this.f353.put("af_dp", sb2.toString());
            sb.append('&');
            sb.append("af_dp=");
            sb.append(m1043(this.f356, "baseDeeplink"));
            if (this.f362 != null) {
                if (!this.f356.endsWith("/")) {
                    str8 = "%2F";
                }
                sb.append(str8);
                sb.append(m1043(this.f362, "deeplinkPath"));
            }
        }
        for (String str10 : this.f363.keySet()) {
            String obj = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str10);
            sb3.append("=");
            sb3.append(m1043(this.f363.get(str10), str10));
            if (!obj.contains(sb3.toString())) {
                sb.append('&');
                sb.append(str10);
                sb.append('=');
                sb.append(m1043(this.f363.get(str10), str10));
            }
        }
        return sb;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static String m1043(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.afErrorLog(sb.toString(), e);
            return "";
        } catch (Throwable th) {
            AFLogger.afErrorLog(th);
            return "";
        }
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.f363.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.f363.putAll(map);
        }
        return this;
    }

    public String generateLink() {
        return m1042().toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask.ResponseListener responseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.f363.isEmpty()) {
            for (Map.Entry<String, String> entry : this.f363.entrySet()) {
                this.f353.put(entry.getKey(), entry.getValue());
            }
        }
        m1042();
        String str = this.f354;
        Map<String, String> map = this.f353;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isTrackingStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(responseListener);
        createOneLinkHttpTask.setBrandDomain(str);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }

    public String getBrandDomain() {
        return this.f354;
    }

    public String getCampaign() {
        return this.f350;
    }

    public String getChannel() {
        return this.f358;
    }

    public String getMediaSource() {
        return this.f355;
    }

    public Map<String, String> getParameters() {
        return this.f363;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.f356 = str;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if (r9.length() < 5) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.appsflyer.share.LinkGenerator setBaseURL(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0039
            r0 = r8
            int r0 = r0.length()
            if (r0 > 0) goto L_0x000e
            goto L_0x0039
        L_0x000e:
            r0 = r9
            if (r0 == 0) goto L_0x001c
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length()
            r1 = 5
            if (r0 >= r1) goto L_0x0020
        L_0x001c:
            java.lang.String r0 = "go.onelink.me"
            r10 = r0
        L_0x0020:
            r0 = r7
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r10
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r8
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.f359 = r1
            goto L_0x0054
        L_0x0039:
            r0 = r7
            java.lang.String r1 = "https://%s/%s"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "%sapp.%s"
            java.lang.String r5 = com.appsflyer.ServerConfigHandler.getUrl(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r10
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.f359 = r1
        L_0x0054:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.share.LinkGenerator.setBaseURL(java.lang.String, java.lang.String, java.lang.String):com.appsflyer.share.LinkGenerator");
    }

    public LinkGenerator setBrandDomain(String str) {
        this.f354 = str;
        return this;
    }

    public LinkGenerator setCampaign(String str) {
        this.f350 = str;
        return this;
    }

    public LinkGenerator setChannel(String str) {
        this.f358 = str;
        return this;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.f362 = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.f360 = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.f357 = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.f351 = str;
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.f361 = str;
        return this;
    }
}

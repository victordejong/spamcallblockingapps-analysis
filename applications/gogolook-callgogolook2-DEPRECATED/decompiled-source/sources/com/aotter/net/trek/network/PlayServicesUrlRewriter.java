package com.aotter.net.trek.network;

import android.content.Context;
import com.aotter.net.volley.toolbox.HurlStack;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/PlayServicesUrlRewriter.class */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    public static final String UDID_TEMPLATE = "mp_tmpl_advertising_id";

    /* renamed from: a */
    public static final String f1557a = "ifa:";

    /* renamed from: b */
    public final String f1558b;

    /* renamed from: c */
    public final Context f1559c;

    public PlayServicesUrlRewriter(String str, Context context) {
        this.f1558b = str;
        this.f1559c = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0078  */
    @Override // com.aotter.net.volley.toolbox.HurlStack.UrlRewriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String rewriteUrl(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "mp_tmpl_advertising_id"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0014
            r0 = r6
            java.lang.String r1 = "mp_tmpl_do_not_track"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0014
            r0 = r6
            return r0
        L_0x0014:
            com.aotter.net.trek.common.GpsHelper$AdvertisingInfo r0 = new com.aotter.net.trek.common.GpsHelper$AdvertisingInfo
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.f1558b
            r3 = 0
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r5
            android.content.Context r0 = r0.f1559c
            boolean r0 = com.aotter.net.trek.common.GpsHelper.isPlayServicesAvailable(r0)
            if (r0 == 0) goto L_0x003d
            r0 = r5
            android.content.Context r0 = r0.f1559c
            com.aotter.net.trek.common.GpsHelper$AdvertisingInfo r0 = com.aotter.net.trek.common.GpsHelper.fetchAdvertisingInfoSync(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003d
            java.lang.String r0 = "ifa:"
            r7 = r0
            goto L_0x0042
        L_0x003d:
            r0 = r7
            r8 = r0
            java.lang.String r0 = ""
            r7 = r0
        L_0x0042:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.advertisingId
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "mp_tmpl_advertising_id"
            r2 = r9
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = android.net.Uri.encode(r2)
            java.lang.String r0 = r0.replace(r1, r2)
            r7 = r0
            r0 = r8
            boolean r0 = r0.limitAdTracking
            if (r0 == 0) goto L_0x0078
            java.lang.String r0 = "1"
            r6 = r0
            goto L_0x007b
        L_0x0078:
            java.lang.String r0 = "0"
            r6 = r0
        L_0x007b:
            r0 = r7
            java.lang.String r1 = "mp_tmpl_do_not_track"
            r2 = r6
            java.lang.String r0 = r0.replace(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.network.PlayServicesUrlRewriter.rewriteUrl(java.lang.String):java.lang.String");
    }
}

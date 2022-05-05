package com.flurry.sdk;

import android.location.Location;
import java.util.Map;
/* renamed from: com.flurry.sdk.hk */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hk.class */
public class C3206hk extends C3362jw {

    /* renamed from: a */
    public static final String f5330a = "hk";

    /* renamed from: a */
    public final String m32912a(String str, Map<String, String> map) {
        Location g;
        Location g2;
        String a = m32594a(str);
        while (a != null) {
            if (C3362jw.m32593a("timestamp_epoch_millis", a)) {
                String valueOf = String.valueOf(System.currentTimeMillis());
                C3356jq.m32615a(3, f5330a, "Replacing param timestamp_epoch_millis with: " + valueOf);
                str = str.replace(a, C3445la.m32455c(valueOf));
            } else if (C3362jw.m32593a("session_duration_millis", a)) {
                C3294ij.m32755a();
                String l = Long.toString(C3294ij.m32750f());
                C3356jq.m32615a(3, f5330a, "Replacing param session_duration_millis with: " + l);
                str = str.replace(a, C3445la.m32455c(l));
            } else if (C3362jw.m32593a("fg_timespent_millis", a)) {
                C3294ij.m32755a();
                String l2 = Long.toString(C3294ij.m32750f());
                C3356jq.m32615a(3, f5330a, "Replacing param fg_timespent_millis with: " + l2);
                str = str.replace(a, C3445la.m32455c(l2));
            } else {
                String str2 = "";
                if (C3362jw.m32593a("install_referrer", a)) {
                    String b = new C3183gr().m32919b();
                    String str3 = b;
                    if (b == null) {
                        str3 = "";
                    }
                    C3356jq.m32615a(3, f5330a, "Replacing param install_referrer with: " + str3);
                    str = str.replace(a, C3445la.m32455c(str3));
                } else if (C3362jw.m32593a("geo_latitude", a)) {
                    if (C3306ip.m32731a().m32718g() != null) {
                        int d = C3306ip.m32721d();
                        str2 = "" + C3445la.m32469a(g2.getLatitude(), d);
                    }
                    C3356jq.m32615a(3, f5330a, "Replacing param geo_latitude with: " + str2);
                    str = str.replace(a, C3445la.m32455c(str2));
                } else if (C3362jw.m32593a("geo_longitude", a)) {
                    if (C3306ip.m32731a().m32718g() != null) {
                        int d2 = C3306ip.m32721d();
                        str2 = "" + C3445la.m32469a(g.getLongitude(), d2);
                    }
                    C3356jq.m32615a(3, f5330a, "Replacing param geo_longitude with: " + str2);
                    str = str.replace(a, C3445la.m32455c(str2));
                } else if (C3362jw.m32593a("publisher_user_id", a)) {
                    String str4 = (String) C3437ku.m32494a().m32493a("UserId");
                    C3356jq.m32615a(3, f5330a, "Replacing param publisher_user_id with: " + str4);
                    str = str.replace(a, C3445la.m32455c(str4));
                } else if (C3362jw.m32593a("event_name", a)) {
                    if (map.containsKey("event_name")) {
                        C3356jq.m32615a(3, f5330a, "Replacing param event_name with: " + map.get("event_name"));
                        str = str.replace(a, C3445la.m32455c(map.get("event_name")));
                    } else {
                        C3356jq.m32615a(3, f5330a, "Replacing param event_name with empty string");
                        str = str.replace(a, "");
                    }
                } else if (!C3362jw.m32593a("event_time_millis", a)) {
                    C3356jq.m32615a(3, f5330a, "Unknown param: " + a);
                    str = str.replace(a, "");
                } else if (map.containsKey("event_time_millis")) {
                    C3356jq.m32615a(3, f5330a, "Replacing param event_time_millis with: " + map.get("event_time_millis"));
                    str = str.replace(a, C3445la.m32455c(map.get("event_time_millis")));
                } else {
                    C3356jq.m32615a(3, f5330a, "Replacing param event_time_millis with empty string");
                    str = str.replace(a, "");
                }
            }
            a = m32594a(str);
        }
        return str;
    }
}

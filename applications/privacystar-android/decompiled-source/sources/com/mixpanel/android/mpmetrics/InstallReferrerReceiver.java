package com.mixpanel.android.mpmetrics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mixpanel.android.util.MPLog;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InstallReferrerReceiver.class */
public class InstallReferrerReceiver extends BroadcastReceiver {
    private static final String LOGTAG = "MixpanelAPI.InstRfrRcvr";
    private final Pattern UTM_SOURCE_PATTERN = Pattern.compile("(^|&)utm_source=([^&#=]*)([#&]|$)");
    private final Pattern UTM_MEDIUM_PATTERN = Pattern.compile("(^|&)utm_medium=([^&#=]*)([#&]|$)");
    private final Pattern UTM_CAMPAIGN_PATTERN = Pattern.compile("(^|&)utm_campaign=([^&#=]*)([#&]|$)");
    private final Pattern UTM_CONTENT_PATTERN = Pattern.compile("(^|&)utm_content=([^&#=]*)([#&]|$)");
    private final Pattern UTM_TERM_PATTERN = Pattern.compile("(^|&)utm_term=([^&#=]*)([#&]|$)");

    private String find(Matcher matcher) {
        String group;
        if (!matcher.find() || (group = matcher.group(2)) == null) {
            return null;
        }
        try {
            return URLDecoder.decode(group, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            MPLog.m311e(LOGTAG, "Could not decode a parameter into UTF-8");
            return null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String string;
        Bundle extras = intent.getExtras();
        if (extras != null && (string = extras.getString("referrer")) != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("referrer", string);
            String find = find(this.UTM_SOURCE_PATTERN.matcher(string));
            if (find != null) {
                hashMap.put("utm_source", find);
            }
            String find2 = find(this.UTM_MEDIUM_PATTERN.matcher(string));
            if (find2 != null) {
                hashMap.put("utm_medium", find2);
            }
            String find3 = find(this.UTM_CAMPAIGN_PATTERN.matcher(string));
            if (find3 != null) {
                hashMap.put("utm_campaign", find3);
            }
            String find4 = find(this.UTM_CONTENT_PATTERN.matcher(string));
            if (find4 != null) {
                hashMap.put("utm_content", find4);
            }
            String find5 = find(this.UTM_TERM_PATTERN.matcher(string));
            if (find5 != null) {
                hashMap.put("utm_term", find5);
            }
            PersistentIdentity.writeReferrerPrefs(context, "com.mixpanel.android.mpmetrics.ReferralInfo", hashMap);
        }
    }
}

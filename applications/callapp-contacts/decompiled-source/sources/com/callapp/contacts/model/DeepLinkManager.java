package com.callapp.contacts.model;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.contacts.activity.callappplus.CallAppPlusActivity;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/DeepLinkManager.class */
public class DeepLinkManager {
    private static final String DEEP_LINK_PATH = "/deeplink";
    private static final String DEEP_LINK_SCHEME_CALLAPP_CALLBACK = "callapp-callback";
    private static final String PARAMETER_ACTIVITY_NAME = "activityName";
    private static final String SCHEME_OPEN_CALLAPP_PLUS = "open-callapp-plus";
    public static final String SCHEME_PRIVACY_POLICY = "privacypolicy";
    public static final String SCHEME_TERMS_OF_SERVICE = "termsosservice";
    private static final String TAG = "DeepLinkManager";

    public static Class getDeepLinkClass(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            String str2 = TAG;
            StringBuilder sb = new StringBuilder("Cannot convert ");
            sb.append(str);
            sb.append(" to class object: ");
            sb.append(e.getMessage());
            CLog.a(str2);
            return null;
        }
    }

    public static boolean handleDeepLink(Context context, Intent intent, Class cls) {
        Uri data = intent != null ? intent.getData() : null;
        if (data != null) {
            String scheme = data.getScheme();
            if (StringUtils.b((CharSequence) scheme) && DEEP_LINK_SCHEME_CALLAPP_CALLBACK.equalsIgnoreCase(scheme)) {
                String host = data.getHost();
                if (SCHEME_OPEN_CALLAPP_PLUS.equalsIgnoreCase(host)) {
                    Activities.b(context, new Intent(context, CallAppPlusActivity.class));
                    return true;
                } else if (SCHEME_PRIVACY_POLICY.equalsIgnoreCase(host)) {
                    Activities.b(context, Activities.a(2131887432, HttpUtils.getCallAppDomain()));
                } else if (SCHEME_TERMS_OF_SERVICE.equalsIgnoreCase(host)) {
                    Activities.b(context, Activities.a(2131887848, HttpUtils.getCallAppDomain()));
                }
            }
        }
        if (intent == null || intent.getData() == null || !DEEP_LINK_PATH.equalsIgnoreCase(intent.getData().getPath())) {
            CLog.a(TAG);
            return false;
        }
        String intentToActivityPath = intentToActivityPath(context, intent);
        if (StringUtils.a((CharSequence) intentToActivityPath)) {
            CLog.a(TAG);
            return false;
        }
        Class deepLinkClass = getDeepLinkClass(intentToActivityPath);
        if (deepLinkClass == null) {
            CLog.a(TAG);
            return false;
        } else if (!Activities.a(intent)) {
            return true;
        } else {
            Intent intent2 = new Intent(context, deepLinkClass);
            intent2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
            context.startActivity(intent2);
            return true;
        }
    }

    public static String intentToActivityPath(Context context, Intent intent) {
        if (intent == null || intent.getData() == null || intent.getData().getQueryParameterNames() == null) {
            return null;
        }
        String queryParameter = intent.getData().getQueryParameter(PARAMETER_ACTIVITY_NAME);
        if (!StringUtils.b((CharSequence) queryParameter)) {
            return null;
        }
        return context.getPackageName() + queryParameter;
    }
}

package com.integralads.avid.library.mopub.utils;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/utils/AvidCommand.class */
public class AvidCommand {
    public static String callAvidbridge(String str) {
        return "javascript: if(window.avidbridge!==undefined){avidbridge." + str + "}";
    }

    public static String formatJavaScript(String str) {
        return "javascript: " + str;
    }

    public static String publishReadyEventForDeferredAdSession() {
        return callAvidbridge("publishReadyEventForDeferredAdSession()");
    }

    public static String publishVideoEvent(String str) {
        return callAvidbridge("publishVideoEvent(" + JSONObject.quote(str) + ")");
    }

    public static String publishVideoEvent(String str, String str2) {
        return callAvidbridge("publishVideoEvent(" + JSONObject.quote(str) + "," + str2 + ")");
    }

    public static String setAppState(String str) {
        return callAvidbridge("setAppState(" + JSONObject.quote(str) + ")");
    }

    public static String setAvidAdSessionContext(String str) {
        return callAvidbridge("setAvidAdSessionContext(" + str + ")");
    }

    public static String setNativeViewState(String str) {
        return callAvidbridge("setNativeViewState(" + str + ")");
    }
}

package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.content.Context;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidJS */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidJS.class */
public class MraidJS {
    public static final String MRAID_JS = "mraid.js";
    public static final String TAG = "MraidJS";

    public static String buildMraidVariable(Context context) {
        String str = "window.MRAID_ENV = {\n\tversion: '2.0',\n\tsdk: 'MADP',\n\tsdkVersion: '7.0.2',\n\tappId: '" + C10832d.m10458s(context) + "',\n\tifa: '" + C10832d.m10495c(context) + "',\n\tlimitAdTracking:" + C10832d.m10491d(context) + ",\n\tcoppa: false\n\t};\t\n";
        C10831c.m10518c(TAG, "buildMraidVariable result = " + str);
        return str;
    }
}

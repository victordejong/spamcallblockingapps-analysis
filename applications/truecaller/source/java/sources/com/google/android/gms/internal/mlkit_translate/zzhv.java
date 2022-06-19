package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhv.class */
public final class zzhv {
    public static Map<String, String> zza(Context context, int i) {
        Resources resources;
        String str;
        String str2;
        String str3;
        HashMap hashMap = new HashMap();
        try {
            resources = context.getResources();
        } catch (IOException | XmlPullParserException e) {
        }
        if (resources == null) {
            return hashMap;
        }
        XmlResourceParser xml = resources.getXml(i);
        int eventType = xml.getEventType();
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (true) {
            String str7 = str6;
            if (eventType == 1) {
                break;
            }
            if (eventType == 2) {
                str3 = xml.getName();
                str2 = str5;
                str = str7;
            } else if (eventType == 3) {
                str2 = str5;
                str = str7;
                if (xml.getName().equals("entry")) {
                    if (str5 != null && str7 != null) {
                        hashMap.put(str5, str7);
                    }
                    str2 = null;
                    str = null;
                }
                str3 = null;
            } else {
                str3 = str4;
                str2 = str5;
                str = str7;
                if (eventType == 4) {
                    str3 = str4;
                    str2 = str5;
                    str = str7;
                    if (str4 != null) {
                        boolean z = true;
                        int hashCode = str4.hashCode();
                        if (hashCode != 106079) {
                            if (hashCode == 111972721 && str4.equals("value")) {
                                z = true;
                            }
                        } else if (str4.equals(AnalyticsConstants.KEY)) {
                            z = false;
                        }
                        if (!z) {
                            str2 = xml.getText();
                            str = str7;
                            str3 = str4;
                        } else if (!z) {
                            str3 = str4;
                            str2 = str5;
                            str = str7;
                        } else {
                            str = xml.getText();
                            str3 = str4;
                            str2 = str5;
                        }
                    }
                }
            }
            eventType = xml.next();
            str4 = str3;
            str5 = str2;
            str6 = str;
        }
        return hashMap;
    }
}

package com.google.android.gms.internal.firebase_remote_config;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfa.class */
public final class zzfa {
    public static Map<String, String> zza(Context context, int i) {
        Resources resources;
        String str;
        String str2;
        String str3;
        HashMap hashMap = new HashMap();
        try {
            resources = context.getResources();
        } catch (IOException | XmlPullParserException e) {
            Log.e("FirebaseRemoteConfig", "Encountered an error while parsing the defaults XML file.", e);
        }
        if (resources == null) {
            Log.e("FirebaseRemoteConfig", "Could not find the resources of the current context while trying to set defaults from an XML.");
            return hashMap;
        }
        XmlResourceParser xml = resources.getXml(i);
        if (xml == null) {
            Log.e("FirebaseRemoteConfig", "The XML referenced by the resourceId could not be found while trying to set defaults from an XML.");
            return hashMap;
        }
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
                    if (str5 == null || str7 == null) {
                        Log.w("FirebaseRemoteConfig", "An entry in the defaults XML has an invalid key and/or value tag.");
                    } else {
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
                        } else if (str4.equals("key")) {
                            z = false;
                        }
                        if (!z) {
                            str2 = xml.getText();
                            str = str7;
                            str3 = str4;
                        } else if (!z) {
                            Log.w("FirebaseRemoteConfig", "Encountered an unexpected tag while parsing the defaults XML.");
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

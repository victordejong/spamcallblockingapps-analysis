package com.asus.callguardhelper;

import android.util.Log;
import android.util.Xml;
import com.asus.updatesdk.BuildConfig;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/j.class */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2572a = j.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final String f2573b = null;
    private String c;

    public j(String str) {
        this.c = str;
    }

    private static String a(XmlPullParser xmlPullParser, String str) {
        xmlPullParser.require(2, f2573b, str);
        String str2 = BuildConfig.FLAVOR;
        if (xmlPullParser.next() == 4) {
            str2 = xmlPullParser.getText().replaceAll("&amp;", "&");
            xmlPullParser.nextTag();
        }
        xmlPullParser.require(3, f2573b, str);
        return str2;
    }

    private Map<String, String> a(InputStream inputStream) {
        HashMap hashMap;
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, "UTF-8");
            newPullParser.nextTag();
            newPullParser.require(2, f2573b, "settings");
            HashMap hashMap2 = null;
            while (true) {
                hashMap = hashMap2;
                if (newPullParser.next() == 3) {
                    break;
                } else if (newPullParser.getEventType() == 2) {
                    if (newPullParser.getName().equals("property")) {
                        newPullParser.require(2, f2573b, "property");
                        String attributeValue = newPullParser.getAttributeValue(0);
                        hashMap = new HashMap();
                        while (newPullParser.next() != 3 && attributeValue.equals(this.c)) {
                            if (newPullParser.getEventType() == 2) {
                                String name = newPullParser.getName();
                                if (name.equals("version")) {
                                    hashMap.put("version", a(newPullParser, name));
                                } else if (name.equals("status")) {
                                    hashMap.put("status", a(newPullParser, name));
                                } else if (name.equals("sync_interval_user_info")) {
                                    hashMap.put("sync_interval_user_info", a(newPullParser, name));
                                } else if (name.equals("sync_interval_analysis_number")) {
                                    hashMap.put("sync_interval_analysis_number", a(newPullParser, name));
                                } else if (name.equals("expiration_date_status")) {
                                    hashMap.put("expiration_date_status", a(newPullParser, name));
                                } else if (name.equals("expiration_date_caller_id")) {
                                    hashMap.put("expiration_date_caller_id", a(newPullParser, name));
                                } else if (name.equals("enable_user_info")) {
                                    hashMap.put("enable_user_info", a(newPullParser, name));
                                } else if (name.equals("enable_user_id")) {
                                    hashMap.put("enable_user_id", a(newPullParser, name));
                                } else if (name.equals("enable_analysis_number")) {
                                    hashMap.put("enable_analysis_number", a(newPullParser, name));
                                } else if (name.equals("stage_roll_out_from")) {
                                    hashMap.put("stage_roll_out_from", a(newPullParser, name));
                                } else if (name.equals("stage_roll_out_to")) {
                                    hashMap.put("stage_roll_out_to", a(newPullParser, name));
                                } else if (name.equals("online_query_limit")) {
                                    hashMap.put("online_query_limit", a(newPullParser, name));
                                } else {
                                    a(newPullParser);
                                }
                            }
                        }
                        if (hashMap.isEmpty()) {
                            hashMap = null;
                        }
                        hashMap2 = hashMap;
                        if (hashMap != null) {
                            break;
                        }
                    } else {
                        a(newPullParser);
                    }
                }
            }
            return hashMap;
        } finally {
            inputStream.close();
        }
    }

    private static void a(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    private Map<String, String> b(String str) {
        InputStream inputStream = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.connect();
            InputStream inputStream2 = httpURLConnection.getInputStream();
            inputStream = inputStream2;
            Map<String, String> a2 = a(inputStream2);
            if (inputStream2 != null) {
                inputStream2.close();
            }
            return a2;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public final Map<String, String> a(String str) {
        Map<String, String> map;
        try {
            map = b(str);
        } catch (Exception e) {
            Log.d(f2572a, "downloadSettingXml:::" + e.getMessage());
            map = null;
        }
        return map;
    }
}

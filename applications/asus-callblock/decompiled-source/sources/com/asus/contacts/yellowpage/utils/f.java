package com.asus.contacts.yellowpage.utils;

import android.util.Log;
import android.util.Xml;
import com.asus.updatesdk.BuildConfig;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2889a = f.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final String f2890b = null;
    private String c;

    public f(String str) {
        this.c = str;
    }

    private static String a(XmlPullParser xmlPullParser, String str) {
        xmlPullParser.require(2, f2890b, str);
        String str2 = BuildConfig.FLAVOR;
        if (xmlPullParser.next() == 4) {
            str2 = xmlPullParser.getText().replaceAll("&amp;", "&");
            xmlPullParser.nextTag();
        }
        xmlPullParser.require(3, f2890b, str);
        return str2;
    }

    private Map<String, String> a(InputStream inputStream) {
        HashMap hashMap;
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, "UTF-8");
            newPullParser.nextTag();
            newPullParser.require(2, f2890b, "settings");
            HashMap hashMap2 = null;
            while (true) {
                hashMap = hashMap2;
                if (newPullParser.next() == 3) {
                    break;
                } else if (newPullParser.getEventType() == 2) {
                    if (newPullParser.getName().equals("property")) {
                        newPullParser.require(2, f2890b, "property");
                        String attributeValue = newPullParser.getAttributeValue(0);
                        hashMap = new HashMap();
                        while (newPullParser.next() != 3 && attributeValue.equals(this.c)) {
                            if (newPullParser.getEventType() == 2) {
                                String name = newPullParser.getName();
                                if (name.equals("yp_version")) {
                                    hashMap.put("key_yellow_page_cdn_version", a(newPullParser, name));
                                } else if (name.equals("yp_status")) {
                                    hashMap.put("key_yellow_page_cdn_status", a(newPullParser, name));
                                } else if (name.equals("yp_expiration_date_status")) {
                                    hashMap.put("key_yellow_page_cdn_expiration_date_status", a(newPullParser, name));
                                } else if (name.equals("yp_expiration_date_businessinfo")) {
                                    hashMap.put("key_yellow_page_cdn_expiration_date_businessinfo", a(newPullParser, name));
                                } else if (name.equals("yp_promotion_status")) {
                                    hashMap.put("key_yellow_page_cdn_promotion_status", a(newPullParser, name));
                                } else if (name.equals("yp_promotion_daily_lunch")) {
                                    hashMap.put("key_yellow_page_cdn_promotion_daily_lunch", a(newPullParser, name));
                                } else if (name.equals("yp_promotion_daily_coffeebreak")) {
                                    hashMap.put("key_yellow_page_cdn_promotion_daily_coffeebreak", a(newPullParser, name));
                                } else if (name.equals("yp_promotion_entry")) {
                                    hashMap.put("key_yellow_page_cdn_promotion_entry", a(newPullParser, name));
                                } else if (name.equals("yp_promotion_valentines")) {
                                    hashMap.put("key_yellow_page_cdn_promotion_valentines", a(newPullParser, name));
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
            Log.e(f2889a, "downloadSettingXml:" + e.getMessage());
            e.printStackTrace();
            map = null;
        }
        return map;
    }
}

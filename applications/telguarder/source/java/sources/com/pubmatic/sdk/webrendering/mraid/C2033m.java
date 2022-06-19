package com.pubmatic.sdk.webrendering.mraid;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.telephony.TelephonyManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.ServerProtocol;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.m */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/m.class */
class C2033m {

    /* renamed from: a */
    private static final String[] f1144a = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ", "yyyy-MM-dd'T'HH:mmZ", "yyyy-MM-dd'T'HH:mmXXX"};

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fd, code lost:
        if (r0 > (r0 - r16)) goto L45;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.pubmatic.sdk.webrendering.mraid.POBViewRect m548a(int r9, int r10, int r11, int r12, boolean r13, com.pubmatic.sdk.webrendering.mraid.POBViewRect r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pubmatic.sdk.webrendering.mraid.C2033m.m548a(int, int, int, int, boolean, com.pubmatic.sdk.webrendering.mraid.POBViewRect, int, int):com.pubmatic.sdk.webrendering.mraid.POBViewRect");
    }

    /* renamed from: a */
    private static String m551a(int i) {
        if (i != 0 && i >= -31 && i <= 31) {
            return "" + i;
        }
        PMLog.error("PMMRAIDUtil", "invalid day of month " + i, new Object[0]);
        return null;
    }

    /* renamed from: a */
    public static String m544a(String str, String str2, Boolean bool, Boolean bool2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "3.0");
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, POBCommonConstants.SDK_NAME);
            jSONObject.put("sdkVersion", "1.8.2");
            if (str != null) {
                jSONObject.put("appId", str);
            }
            if (str2 != null) {
                jSONObject.put(POBConstants.KEY_IFA, str2);
            }
            if (bool != null) {
                jSONObject.put("limitAdTracking", bool);
            }
            if (bool2 != null) {
                jSONObject.put(POBCommonConstants.COPPA_PARAM, bool2);
            }
        } catch (JSONException e) {
            PMLog.error("PMMRAIDUtil", "JSON Exception, not able to generate MRAID environment.", new Object[0]);
        }
        return "<script> window.MRAID_ENV = " + jSONObject.toString() + "</script>";
    }

    /* renamed from: a */
    private static Date m545a(String str) {
        Date date;
        String[] strArr = f1144a;
        int length = strArr.length;
        Date date2 = null;
        int i = 0;
        while (true) {
            date = date2;
            if (i >= length) {
                break;
            }
            try {
                date = new SimpleDateFormat(strArr[i], Locale.US).parse(str);
                date2 = date;
            } catch (ParseException e) {
                PMLog.error("PMMRAIDUtil", "Not able to parse date. %s", e.getLocalizedMessage());
            }
            if (date != null) {
                break;
            }
            i++;
        }
        return date;
    }

    /* renamed from: a */
    public static Map<String, Object> m543a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        if (jSONObject.has("description")) {
            hashMap.put("title", jSONObject.getString("description"));
            if (!jSONObject.has("start") || jSONObject.getString("start") == null) {
                throw new IllegalArgumentException("Invalid start. start can't be null.");
            }
            Date m545a = m545a(jSONObject.getString("start"));
            if (m545a == null) {
                PMLog.error("PMMRAIDUtil", "Invalid start format. start must be(yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx)", new Object[0]);
                throw new IllegalArgumentException("Invalid start format. start must be(yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx)");
            }
            hashMap.put("beginTime", Long.valueOf(m545a.getTime()));
            if (!jSONObject.has("end") || jSONObject.getString("end") == null) {
                throw new IllegalArgumentException("Invalid end.end can't be null.");
            }
            Date m545a2 = m545a(jSONObject.getString("end"));
            if (m545a2 != null) {
                hashMap.put("endTime", Long.valueOf(m545a2.getTime()));
            } else {
                PMLog.error("PMMRAIDUtil", "Invalid end format. end must be(yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx)", new Object[0]);
            }
            if (jSONObject.has(FirebaseAnalytics.Param.LOCATION)) {
                hashMap.put("eventLocation", jSONObject.getString(FirebaseAnalytics.Param.LOCATION));
            }
            if (jSONObject.has("summary")) {
                hashMap.put("description", jSONObject.getString("summary"));
            }
            if (jSONObject.has("transparency")) {
                hashMap.put("availability", Integer.valueOf(jSONObject.getString("transparency").equals("transparent") ? 1 : 0));
            }
            if (jSONObject.has("recurrence")) {
                hashMap.put("rrule", m540b(jSONObject.getJSONObject("recurrence")));
            }
            return hashMap;
        }
        throw new IllegalArgumentException("Invalid description. Description can't be null.");
    }

    /* renamed from: a */
    public static JSONObject m550a(int i, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i2);
        } catch (JSONException e) {
            PMLog.error("PMMRAIDUtil", "JSON Exception, Not able to generate JSON for given width :" + i + " and height " + i2 + " !", new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m549a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, i3);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, i4);
            jSONObject.put("x", i);
            jSONObject.put("y", i2);
        } catch (JSONException e) {
            PMLog.error("PMMRAIDUtil", "JSON Exception, Not able to generate JSON for x:" + i + " ,y:" + i2 + " ,width:" + i3 + " ,height:" + i4 + " !", new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static boolean m547a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        boolean z = false;
        if (telephonyManager == null) {
            return false;
        }
        if (telephonyManager.getSimState() != 1) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m546a(Context context, Bitmap bitmap, String str) {
        Exception e;
        Uri uri;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("title", str);
                    contentValues.put("_display_name", str);
                    contentValues.put("mime_type", "image/jpeg");
                    contentValues.put("date_added", Long.valueOf(System.currentTimeMillis() / 1000));
                    contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
                    ContentResolver contentResolver = context.getContentResolver();
                    Uri insert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                    fileOutputStream = null;
                    uri = insert;
                    if (insert != null) {
                        fileOutputStream = contentResolver.openOutputStream(insert);
                        uri = insert;
                    }
                } else {
                    File file = new File(String.valueOf(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES)), str);
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        uri = Uri.fromFile(file);
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream2 = fileOutputStream;
                        FileOutputStream fileOutputStream4 = fileOutputStream2;
                        StringBuilder sb = new StringBuilder();
                        FileOutputStream fileOutputStream5 = fileOutputStream2;
                        sb.append("Not able to store image : ");
                        FileOutputStream fileOutputStream6 = fileOutputStream2;
                        sb.append(e.getLocalizedMessage());
                        FileOutputStream fileOutputStream7 = fileOutputStream2;
                        PMLog.debug("PMMRAIDUtil", sb.toString(), new Object[0]);
                        if (fileOutputStream2 == null) {
                            return false;
                        }
                        try {
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                            return false;
                        } catch (IOException e3) {
                            PMLog.debug("PMMRAIDUtil", "Unable to close the outputStream.", new Object[0]);
                            return false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream3 = fileOutputStream;
                        if (fileOutputStream3 != null) {
                            try {
                                fileOutputStream3.flush();
                                fileOutputStream3.close();
                            } catch (IOException e4) {
                                PMLog.debug("PMMRAIDUtil", "Unable to close the outputStream.", new Object[0]);
                            }
                        }
                        throw th;
                    }
                }
                if (fileOutputStream == null) {
                    PMLog.debug("PMMRAIDUtil", "Not able to store image.", new Object[0]);
                    if (fileOutputStream == null) {
                        return false;
                    }
                    try {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e5) {
                        PMLog.debug("PMMRAIDUtil", "Unable to close the outputStream.", new Object[0]);
                        return false;
                    }
                }
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                FileOutputStream fileOutputStream8 = fileOutputStream;
                fileOutputStream.flush();
                FileOutputStream fileOutputStream9 = fileOutputStream;
                fileOutputStream.close();
                FileOutputStream fileOutputStream10 = fileOutputStream;
                FileOutputStream fileOutputStream11 = fileOutputStream;
                StringBuilder sb2 = new StringBuilder();
                FileOutputStream fileOutputStream12 = fileOutputStream;
                sb2.append("Image stored at :");
                FileOutputStream fileOutputStream13 = fileOutputStream;
                sb2.append(uri);
                FileOutputStream fileOutputStream14 = fileOutputStream;
                PMLog.debug("PMMRAIDUtil", sb2.toString(), new Object[0]);
                FileOutputStream fileOutputStream15 = fileOutputStream;
                FileOutputStream fileOutputStream16 = fileOutputStream;
                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                FileOutputStream fileOutputStream17 = fileOutputStream;
                intent.setData(uri);
                FileOutputStream fileOutputStream18 = fileOutputStream;
                context.sendBroadcast(intent);
                if (fileOutputStream == null) {
                    return true;
                }
                try {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return true;
                } catch (IOException e6) {
                    PMLog.debug("PMMRAIDUtil", "Unable to close the outputStream.", new Object[0]);
                    return true;
                }
            } catch (Exception e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    private static String m542b(int i) {
        String str;
        switch (i) {
            case 0:
                str = "SU";
                break;
            case 1:
                str = "MO";
                break;
            case 2:
                str = "TU";
                break;
            case 3:
                str = "WE";
                break;
            case 4:
                str = "TH";
                break;
            case 5:
                str = "FR";
                break;
            case 6:
                str = "SA";
                break;
            default:
                PMLog.error("PMMRAIDUtil", "invalid day of week %s", Integer.valueOf(i));
                str = null;
                break;
        }
        return str;
    }

    /* renamed from: b */
    private static String m541b(String str) {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[63];
        String[] split = str.split(",");
        for (String str2 : split) {
            int parseInt = Integer.parseInt(str2);
            int i = parseInt + 31;
            if (!zArr[i]) {
                sb.append(m551a(parseInt));
                sb.append(",");
                zArr[i] = true;
            }
        }
        if (split.length == 0) {
            PMLog.error("PMMRAIDUtil", "must have at least 1 day of the month if specifying repeating weekly", new Object[0]);
            return null;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    /* renamed from: b */
    private static String m540b(JSONObject jSONObject) {
        String m541b;
        String str;
        StringBuilder sb = new StringBuilder();
        try {
            if (jSONObject.has("frequency")) {
                String string = jSONObject.getString("frequency");
                int parseInt = jSONObject.has("interval") ? Integer.parseInt(jSONObject.getString("interval")) : -1;
                if ("daily".equals(string)) {
                    sb.append("FREQ=DAILY;");
                    if (parseInt != -1) {
                        sb.append("INTERVAL=");
                        sb.append(parseInt);
                        sb.append(";");
                    }
                } else {
                    if ("weekly".equals(string)) {
                        sb.append("FREQ=WEEKLY;");
                        if (parseInt != -1) {
                            sb.append("INTERVAL=");
                            sb.append(parseInt);
                            sb.append(";");
                        }
                        if (jSONObject.has("daysInWeek")) {
                            m541b = m539c(jSONObject.getString("daysInWeek"));
                            if (m541b == null) {
                                throw new IllegalArgumentException("invalid ");
                            }
                            str = "BYDAY=";
                            sb.append(str);
                            sb.append(m541b);
                        }
                    } else if (!"monthly".equals(string)) {
                        throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
                    } else {
                        sb.append("FREQ=MONTHLY;");
                        if (parseInt != -1) {
                            sb.append("INTERVAL=");
                            sb.append(parseInt);
                            sb.append(";");
                        }
                        if (jSONObject.has("daysInMonth")) {
                            m541b = m541b(jSONObject.getString("daysInMonth"));
                            if (m541b == null) {
                                throw new IllegalArgumentException();
                            }
                            str = "BYMONTHDAY=";
                            sb.append(str);
                            sb.append(m541b);
                        }
                    }
                    sb.append(";");
                }
            }
            return sb.toString();
        } catch (JSONException e) {
            throw new IllegalArgumentException("frequency is only supported for daily, weekly, and monthly.");
        }
    }

    /* renamed from: c */
    private static String m539c(String str) {
        StringBuilder sb = new StringBuilder();
        boolean[] zArr = new boolean[7];
        String[] split = str.split(",");
        for (String str2 : split) {
            int parseInt = Integer.parseInt(str2);
            int i = parseInt;
            if (parseInt == 7) {
                i = 0;
            }
            if (!zArr[i]) {
                sb.append(m542b(i));
                sb.append(",");
                zArr[i] = true;
            }
        }
        if (split.length == 0) {
            PMLog.error("PMMRAIDUtil", "must have at least 1 day of the week if specifying repeating weekly", new Object[0]);
            return null;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}

package com.asus.updatesdk.cdn;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.asus.updatesdk.activity.ZenFamilyActivity;
import com.asus.updatesdk.utility.DeviceUtils;
import com.asus.updatesdk.utility.GeneralUtils;
import com.asus.updatesdk.utility.PreferenceUtils;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cdn/CdnUtils.class */
public class CdnUtils {
    public static final String ACTION_REQUEST_MASTER = "com.asus.zenuifamily.action.REQUEST_MASTER";
    public static final String ACTION_SEND_MASTER_DATA = "com.asus.zenuifamily.action.SEND_MASTER";
    public static final String DEFAULT_LANGUAGE = "en-rUS";
    public static final String KEY_IUD_JSON_FILE = "iud_json_file";
    public static final String KEY_IUD_VERSION = "iud_version";
    public static final String KEY_LANGUAGE_LOCALE = "language_local";
    public static final String KEY_MASTER_PACKAGE = "master_package";
    public static final String KEY_PASSED_IUD_JSON_FILE = "passed_iud_json_file";
    public static final String KEY_PASSED_IUD_VERSION = "passed_iud_ver";
    public static final String KEY_PASSED_LANGUAGE = "passed_lang";
    public static final String KEY_PASSED_MASTER = "passed_master";
    public static final String KEY_PASSED_PLAY_CHECK_TIME = "passed_play_time";
    public static final String KEY_PASSED_PLAY_JSON_FILE = "passed_play_json_file";
    public static final String KEY_PASSED_STRINGS_JSON_FILE = "passed_strings_json_file";
    public static final String KEY_PASSED_STRINGS_VERSION = "passed_strings_ver";
    public static final String KEY_PLAY_CHECK_TIME = "play_check_time";
    public static final String KEY_PLAY_JSON_FILE = "play_json_file";
    public static final String KEY_SLAVE_PACKAGE = "slave_package";
    public static final String KEY_STRINGS_JSON_FILE = "strings_json_file";
    public static final String KEY_STRINGS_VERSION = "strings_version";
    public static final String NODE_APK = "apk";
    public static final String NODE_APPS_ARRAY = "apps";
    public static final String NODE_APP_NAME = "app_name";
    public static final String NODE_ASUS_URL = "URL";
    public static final String NODE_BLACKLIST = "blacklist";
    public static final String NODE_CUSTOMIZED = "customized";
    public static final String NODE_DOWNLOAD = "download";
    public static final String NODE_FEPL = "FEPL";
    public static final String NODE_ICON_URL = "iconUrl";
    public static final String NODE_IMAGE_URL = "imageUrl";
    public static final String NODE_PACKAGE = "package_name";
    public static final String NODE_PAD_URL = "pad_URL";
    public static final String NODE_PHONE_URL = "phone_URL";
    public static final String NODE_PLAY_FEPL_URL = "play_fepl_url";
    public static final String NODE_PLAY_ICON_URL = "play_icon_url";
    public static final String NODE_RATING = "rating";
    public static final String NODE_SLOGAN = "slogan";
    public static final String NODE_SPONSOR = "sponsor";
    public static final String NODE_STATUS = "stage";
    public static final String NODE_STRING_PATH = "STRING_PATH";
    public static final String NODE_TOPIC = "topic";
    public static final String NODE_URGENT = "Urgent";
    public static final String NODE_UTA_URL = "UTA_URL";
    public static final String NODE_VERSION = "version_code";

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f3176a = SystemPropertiesReflection.getBoolean("debug.cdn_path", false);
    public static final Object LOCK = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f3177b = DeviceUtils.checkAsusDevice();

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:69:0x0104
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @android.annotation.TargetApi(19)
    private static java.lang.String a(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cdn.CdnUtils.a(java.lang.String):java.lang.String");
    }

    @TargetApi(19)
    private static JSONObject a(Context context, String str, String str2, String str3) {
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject(str2);
            JSONArray jSONArray = jSONObject3.getJSONArray("IUD");
            JSONArray jSONArray2 = jSONObject3.getJSONArray(NODE_FEPL);
            JSONObject jSONObject4 = new JSONObject(str3);
            JSONObject jSONObject5 = new JSONObject(str);
            JSONObject jSONObject6 = jSONObject3.getJSONObject("INFO");
            String string = f3176a ? "http://amaxcdntest.asus.com/ZenUI_IUD/" : jSONObject6.getString("Root");
            String string2 = f3177b ? jSONObject6.getString("FEPL_PATH") : jSONObject6.getString("UTA_FEPL_PATH");
            if (jSONArray == null || jSONArray.length() == 0) {
                jSONObject = null;
            } else {
                JSONObject jSONObject7 = jSONObject5.getJSONObject("zenui_apps");
                jSONObject2.put("cdn_version", jSONObject5.getString("cdn_version"));
                jSONObject2.put("INFO", jSONObject6);
                JSONArray jSONArray3 = new JSONArray();
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject8 = jSONObject3.getJSONArray(NODE_FEPL).getJSONObject(i);
                    String string3 = jSONObject8.getString(NODE_PACKAGE);
                    JSONObject optJSONObject = jSONObject7.optJSONObject(string3);
                    if (!"1".equals(jSONObject8.optString(NODE_SPONSOR))) {
                        if (optJSONObject == null) {
                            Log.w("CdnUtils", "There is no app: " + string3 + " data");
                        } else {
                            jSONObject8.put(NODE_PLAY_FEPL_URL, optJSONObject.getString(NODE_PLAY_FEPL_URL));
                            jSONObject8.put(NODE_BLACKLIST, optJSONObject.getString(NODE_BLACKLIST));
                            jSONObject8.put(NODE_APK, optJSONObject.getJSONArray(NODE_APK));
                        }
                    }
                    jSONObject8.put(NODE_IMAGE_URL, string + "/" + string2 + "/" + string3 + ".png");
                    jSONArray3.put(jSONObject8);
                }
                jSONObject2.put(NODE_FEPL, jSONArray3);
                JSONArray jSONArray4 = new JSONArray();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject9 = jSONArray.getJSONObject(i2);
                    String string4 = jSONObject9.getString(NODE_PACKAGE);
                    JSONObject jSONObject10 = jSONObject4.getJSONObject(string4);
                    JSONObject optJSONObject2 = jSONObject7.optJSONObject(string4);
                    if (optJSONObject2 == null) {
                        Log.w("CdnUtils", "There is no app: " + string4 + " data");
                    } else {
                        String str4 = string + "/Icon/" + string4 + ".png";
                        String string5 = jSONObject9.getString(f3177b ? "desc_id" : "UTA_desc_id");
                        jSONObject9.put(NODE_APP_NAME, jSONObject10.getString(NODE_APP_NAME));
                        jSONObject9.put(NODE_SLOGAN, jSONObject10.getString(string5));
                        jSONObject9.put(NODE_ICON_URL, str4);
                        jSONObject9.put(NODE_PLAY_ICON_URL, optJSONObject2.getString(NODE_PLAY_ICON_URL));
                        jSONObject9.put(NODE_DOWNLOAD, optJSONObject2.getString(NODE_DOWNLOAD));
                        jSONObject9.put(NODE_RATING, optJSONObject2.getString(NODE_RATING));
                        jSONObject9.put(NODE_BLACKLIST, optJSONObject2.getString(NODE_BLACKLIST));
                        jSONObject9.put(NODE_APK, optJSONObject2.getJSONArray(NODE_APK));
                        jSONArray4.put(jSONObject9);
                    }
                }
                jSONObject2.put(NODE_APPS_ARRAY, jSONArray4);
                PreferenceUtils.putBoolean(context, PreferenceUtils.KEY_MERGE_JSON_SUCCESS, true);
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            Log.e("CdnUtils", "merge JSON failed");
            Log.e("CdnUtils", e.toString());
            if (f3176a) {
                JSONObject jSONObject11 = new JSONObject();
                try {
                    jSONObject11.put("text", "CDN JSON file got exception : " + e.toString());
                    a(jSONObject11);
                } catch (JSONException e2) {
                    Log.e("CdnUtils", "payload jsonException");
                    jSONObject = null;
                }
            }
            PreferenceUtils.putBoolean(context, PreferenceUtils.KEY_MERGE_JSON_SUCCESS, false);
            if (context instanceof Activity) {
                GeneralUtils.openZenFamilyPage(context);
                ((Activity) context).finish();
            }
            jSONObject = null;
        }
        return jSONObject;
    }

    private static void a(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.asus.updatesdk.cdn.CdnUtils.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                synchronized (CdnUtils.LOCK) {
                    Log.v("CdnUtils", "Receive Master info");
                    PreferenceUtils.putLong(context2, PreferenceUtils.KEY_IUD_VERSION, intent.getLongExtra(CdnUtils.KEY_PASSED_IUD_VERSION, 0L));
                    PreferenceUtils.putLong(context2, PreferenceUtils.KEY_STRINGS_VERSION, intent.getLongExtra(CdnUtils.KEY_PASSED_STRINGS_VERSION, 0L));
                    PreferenceUtils.putString(context2, PreferenceUtils.KEY_IUD_JSON_FILE, intent.getStringExtra(CdnUtils.KEY_PASSED_IUD_JSON_FILE));
                    PreferenceUtils.putString(context2, PreferenceUtils.KEY_STRINGS_JSON_FILE, intent.getStringExtra(CdnUtils.KEY_PASSED_STRINGS_JSON_FILE));
                    PreferenceUtils.putString(context2, PreferenceUtils.KEY_PLAY_JSON_FILE, intent.getStringExtra(CdnUtils.KEY_PASSED_PLAY_JSON_FILE));
                    PreferenceUtils.putString(context2, PreferenceUtils.KEY_MASTER_PACKAGE, intent.getStringExtra(CdnUtils.KEY_PASSED_MASTER));
                    PreferenceUtils.putString(context2, PreferenceUtils.KEY_LANGUAGE_LOCALE, intent.getStringExtra(CdnUtils.KEY_PASSED_LANGUAGE));
                    PreferenceUtils.putLong(context2, PreferenceUtils.KEY_PLAY_CHECK_TIME, intent.getLongExtra(CdnUtils.KEY_PASSED_PLAY_CHECK_TIME, 0L));
                    CdnUtils.LOCK.notify();
                }
            }
        };
        synchronized (LOCK) {
            try {
                context.registerReceiver(broadcastReceiver, new IntentFilter(ACTION_SEND_MASTER_DATA));
                Intent intent = new Intent(ACTION_REQUEST_MASTER);
                intent.putExtra(KEY_SLAVE_PACKAGE, context.getPackageName());
                Log.v("CdnUtils", "Send query broadcast from " + context.getPackageName());
                context.sendBroadcast(intent);
                LOCK.wait(250L);
                context.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException | InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(org.json.JSONObject r4) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cdn.CdnUtils.a(org.json.JSONObject):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:82:0x0125
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @android.annotation.TargetApi(19)
    private static java.lang.String b(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cdn.CdnUtils.b(java.lang.String):java.lang.String");
    }

    public static JSONObject getJson(Context context) {
        JSONObject jSONObject;
        boolean z = false;
        ZenFamilyActivity zenFamilyActivity = null;
        if (context instanceof ZenFamilyActivity) {
            zenFamilyActivity = (ZenFamilyActivity) context;
        }
        if (PreferenceUtils.getString(context, PreferenceUtils.KEY_MASTER_PACKAGE, null) == null) {
            a(context);
        }
        boolean z2 = PreferenceUtils.getBoolean(context, PreferenceUtils.KEY_MERGE_JSON_SUCCESS, true);
        long j = PreferenceUtils.getLong(context, PreferenceUtils.KEY_IUD_VERSION, 0L);
        String string = PreferenceUtils.getString(context, PreferenceUtils.KEY_IUD_JSON_FILE, null);
        if (GeneralUtils.getCDNIudVersion() > j || string == null || !z2) {
            z = true;
            if (zenFamilyActivity != null) {
                zenFamilyActivity.getImageFetcher().clearCache();
            }
            Log.v("CdnUtils", "getIudJsonFromCdn");
            string = a(f3176a ? "http://amaxcdntest.asus.com/ZenUI_IUD/IUD.json" : "http://dlcdnamax.asus.com/Rel/App/ZenUI_IUD/IUD.json");
            PreferenceUtils.putString(context, PreferenceUtils.KEY_IUD_JSON_FILE, string);
            PreferenceUtils.putLong(context, PreferenceUtils.KEY_IUD_VERSION, GeneralUtils.getCDNIudVersion());
        }
        if (string == null || (zenFamilyActivity != null && GeneralUtils.isActivityDestroyed(zenFamilyActivity))) {
            jSONObject = null;
        } else {
            String string2 = PreferenceUtils.getString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, null);
            Locale locale = Locale.getDefault();
            String locale2 = new Locale(locale.getLanguage(), locale.getCountry()).toString();
            String string3 = PreferenceUtils.getString(context, PreferenceUtils.KEY_LANGUAGE_LOCALE, "en_US");
            if (GeneralUtils.getCDNStringsVersion() > PreferenceUtils.getLong(context, PreferenceUtils.KEY_STRINGS_VERSION, 0L) || !locale2.equals(string3) || string2 == null || !z2) {
                Log.v("CdnUtils", "getStringsJsonFromCdn");
                Locale locale3 = Locale.getDefault();
                String locale4 = new Locale(locale3.getLanguage(), locale3.getCountry()).toString();
                String str = f3176a ? "http://amaxcdntest.asus.com/ZenUI_IUD/res" : "http://dlcdnamax.asus.com/Rel/App/ZenUI_IUD/res";
                String a2 = a(str + "/" + locale4.replace("_", "-r") + "/strings.json");
                string2 = a2 == null ? a(str + "/en-rUS/strings.json") : a2;
                PreferenceUtils.putString(context, PreferenceUtils.KEY_LANGUAGE_LOCALE, locale2);
                PreferenceUtils.putString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, string2);
                PreferenceUtils.putLong(context, PreferenceUtils.KEY_STRINGS_VERSION, GeneralUtils.getCDNStringsVersion());
                z = true;
            }
            if (string2 == null || (zenFamilyActivity != null && GeneralUtils.isActivityDestroyed(zenFamilyActivity))) {
                jSONObject = null;
            } else {
                String string4 = PreferenceUtils.getString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, null);
                if (System.currentTimeMillis() > PreferenceUtils.getLong(context, PreferenceUtils.KEY_PLAY_CHECK_TIME, 0L) || string4 == null || !z2) {
                    z = true;
                    Log.v("CdnUtils", "getPlayJsonFromCdn");
                    string4 = b(f3176a ? "http://amaxcdntest.asus.com/ZenUI_IUD/play.json.gz" : "http://dlcdnamax.asus.com/Rel/SDK/IUD/play.json.gz");
                    long currentTimeMillis = System.currentTimeMillis();
                    PreferenceUtils.putString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, string4);
                    PreferenceUtils.putLong(context, PreferenceUtils.KEY_PLAY_CHECK_TIME, currentTimeMillis + 259200000);
                }
                if (string4 == null || (zenFamilyActivity != null && GeneralUtils.isActivityDestroyed(zenFamilyActivity))) {
                    jSONObject = null;
                } else {
                    if (z) {
                        PreferenceUtils.putString(context, PreferenceUtils.KEY_MASTER_PACKAGE, context.getPackageName());
                        Locale locale5 = Locale.getDefault();
                        String locale6 = new Locale(locale5.getLanguage(), locale5.getCountry()).toString();
                        Intent intent = new Intent("com.asus.zenuifamily.action.UPDATE");
                        intent.putExtra(KEY_IUD_VERSION, GeneralUtils.getCDNIudVersion());
                        intent.putExtra(KEY_STRINGS_VERSION, GeneralUtils.getCDNStringsVersion());
                        intent.putExtra(KEY_MASTER_PACKAGE, context.getPackageName());
                        intent.putExtra(KEY_LANGUAGE_LOCALE, locale6);
                        intent.putExtra(KEY_IUD_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_IUD_JSON_FILE, null));
                        intent.putExtra(KEY_STRINGS_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, null));
                        intent.putExtra(KEY_PLAY_JSON_FILE, PreferenceUtils.getString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, null));
                        intent.putExtra(KEY_PLAY_CHECK_TIME, PreferenceUtils.getLong(context, PreferenceUtils.KEY_PLAY_CHECK_TIME, 0L));
                        context.sendBroadcast(intent);
                    }
                    jSONObject = (zenFamilyActivity == null || !GeneralUtils.isActivityDestroyed(zenFamilyActivity)) ? a(context, string4, string, string2) : null;
                }
            }
        }
        return jSONObject;
    }

    public static JSONObject getJsonNoNetwork(Context context) {
        if (PreferenceUtils.getString(context, PreferenceUtils.KEY_MASTER_PACKAGE, null) == null) {
            a(context);
        }
        String string = PreferenceUtils.getString(context, PreferenceUtils.KEY_IUD_JSON_FILE, null);
        String string2 = PreferenceUtils.getString(context, PreferenceUtils.KEY_STRINGS_JSON_FILE, null);
        String string3 = PreferenceUtils.getString(context, PreferenceUtils.KEY_PLAY_JSON_FILE, null);
        JSONObject jSONObject = null;
        if (string != null) {
            jSONObject = null;
            if (string2 != null) {
                jSONObject = string3 == null ? null : a(context, string3, string, string2);
            }
        }
        return jSONObject;
    }
}

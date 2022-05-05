package com.android.contacts.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.net.sip.SipManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telecom.PhoneAccountHandle;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.WindowManagerGlobal;
import com.android.contacts.dialpad.d;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DeviceCheckerUtils;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/PhoneCapabilityTester.class */
public final class PhoneCapabilityTester {
    static final String EXTRA_ASUS_DIAL_USE_DUALSIM = "extra_asus_dial_use_dualsim";
    private static final String KEY_SIMONE_STATUS = "Sim1Status";
    private static final String KEY_SIMTWO_STATUS = "Sim2Status";
    private static final String QUALOCMM = "Qualcomm";
    private static final String QUALOCMM_RIL_VERSION = "gsm.version.ril-impl";
    private static boolean sIsInitialized;
    private static boolean sIsPhone;
    private static boolean sIsSipPhone;
    private static String TAG = "PhoneCapabilityTester";
    private static boolean IS_ASUS_DEVICE = false;
    private static final boolean IS_DEBUG = Build.TYPE.equals("userdebug");
    private static boolean IS_VERIZON_PAD = false;
    public static boolean IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE = false;
    private static boolean IS_SYSTEM_APP = false;

    public static boolean IsAsusDevice() {
        return IS_SYSTEM_APP && IS_ASUS_DEVICE;
    }

    public static boolean IsSystemApp() {
        boolean z;
        synchronized (PhoneCapabilityTester.class) {
            try {
                z = IS_SYSTEM_APP;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static void IsSystemAppChecking(Context context) {
        synchronized (PhoneCapabilityTester.class) {
            try {
                IS_SYSTEM_APP = SystemAppChecking(context);
                IS_ASUS_DEVICE = isInterfaceExist(context, "com.asus.asuscallerid");
                if (isVerizon() && isUsingTwoPanes(context)) {
                    IS_VERIZON_PAD = true;
                }
                Log.d(TAG, "Build.MANUFACTURER = " + Build.MANUFACTURER + " IS_SYSTEM_APP = " + IS_SYSTEM_APP + " IS_ASUS_DEVICE = " + IS_ASUS_DEVICE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean IsUnbundled() {
        boolean z;
        synchronized (PhoneCapabilityTester.class) {
            try {
                z = !IS_SYSTEM_APP;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private static boolean SystemAppChecking(Context context) {
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.asus.contacts", 0);
            if ((applicationInfo.flags & 1) != 0) {
                Log.v(TAG, applicationInfo.processName + " is a System APP.");
                z = true;
            } else {
                Log.v(TAG, applicationInfo.processName + " is NOT a System APP.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public static boolean checkApkExist(Context context, String str) {
        boolean z = false;
        if (str != null) {
            if (BuildConfig.FLAVOR.equals(str)) {
                z = false;
            } else {
                try {
                    context.getPackageManager().getApplicationInfo(str, 8192);
                    z = true;
                } catch (PackageManager.NameNotFoundException e) {
                    z = false;
                } catch (Exception e2) {
                    z = false;
                }
            }
        }
        return z;
    }

    public static boolean checkApkInstalled(Context context, String str) {
        boolean z = false;
        if (str != null) {
            if (BuildConfig.FLAVOR.equals(str)) {
                z = false;
            } else {
                try {
                    z = false;
                    if (context.getPackageManager().getPackageInfo(str, 64) != null) {
                        z = true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    z = false;
                } catch (Exception e2) {
                    z = false;
                }
            }
        }
        return z;
    }

    public static String convertDateString(String str) {
        String str2;
        boolean isSupportCalendarTimeFormat = isSupportCalendarTimeFormat();
        if (str.contains("AM")) {
            str2 = str;
            if (isSupportCalendarTimeFormat) {
                str2 = str.replace("AM", DateUtils.getAMPMString(0));
            }
        } else {
            str2 = str;
            if (str.contains("PM")) {
                String str3 = str;
                if (isSupportCalendarTimeFormat) {
                    str3 = str.replace("PM", DateUtils.getAMPMString(1));
                }
                str2 = str3.replace("00:", "12:");
            }
        }
        return str2;
    }

    public static long[] getCallIds(Context context, String str) {
        long[] jArr;
        String extractNetworkPortion;
        String extractPostDialPortion;
        if (str == null) {
            jArr = null;
        } else {
            String[] strArr = CompatUtils.isNCompatible() ? new String[]{"_id", "number", "post_dial_digits"} : new String[]{"_id", "number"};
            String str2 = str;
            if (str.indexOf("/") != -1) {
                str2 = PhoneNumberUtils.stripSeparators(str);
            }
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr, null, null, "date DESC");
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                try {
                    try {
                        if (query.moveToFirst()) {
                            String extractNetworkPortion2 = PhoneNumberUtils.extractNetworkPortion(str2);
                            String extractPostDialPortion2 = PhoneNumberUtils.extractPostDialPortion(str2);
                            do {
                                String string = query.getString(query.getColumnIndex("number"));
                                if (CompatUtils.isNCompatible()) {
                                    extractPostDialPortion = query.getString(query.getColumnIndex("post_dial_digits"));
                                    extractNetworkPortion = string;
                                } else {
                                    extractNetworkPortion = PhoneNumberUtils.extractNetworkPortion(string);
                                    extractPostDialPortion = PhoneNumberUtils.extractPostDialPortion(string);
                                }
                                if ((!TextUtils.isEmpty(extractPostDialPortion2) || !TextUtils.isEmpty(extractPostDialPortion)) ? PhoneNumberUtils.compare(extractNetworkPortion2, extractNetworkPortion) && TextUtils.equals(extractPostDialPortion2, extractPostDialPortion) : PhoneNumberUtils.compare(str2, string)) {
                                    arrayList.add(Long.valueOf(query.getLong(query.getColumnIndex("_id"))));
                                }
                            } while (query.moveToNext());
                            jArr = new long[arrayList.size()];
                            Iterator it = arrayList.iterator();
                            int i = 0;
                            while (it.hasNext()) {
                                jArr[i] = ((Long) it.next()).longValue();
                                i++;
                            }
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "getCallIds failed due to : " + e.toString());
                        jArr = null;
                        if (query != null) {
                            query.close();
                            jArr = null;
                        }
                    }
                } finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
            jArr = null;
            if (query != null) {
                query.close();
                jArr = null;
            }
        }
        return jArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        if (r6 != 2) goto L_0x003d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getCallLogSimIndexAsInt(android.content.Context r5, int r6) {
        /*
            r0 = 2
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003d
            r0 = r5
            android.content.SharedPreferences r0 = android.preference.PreferenceManager.getDefaultSharedPreferences(r0)
            r5 = r0
            r0 = r6
            r1 = r5
            java.lang.String r2 = "sim1_imsi"
            r3 = 0
            int r1 = r1.getInt(r2, r3)     // Catch: Exception -> 0x0042
            if (r0 == r1) goto L_0x001e
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L_0x0022
        L_0x001e:
            r0 = 1
            r8 = r0
        L_0x0020:
            r0 = r8
            return r0
        L_0x0022:
            r0 = r5
            java.lang.String r1 = "sim2_imsi"
            r2 = 0
            int r0 = r0.getInt(r1, r2)     // Catch: Exception -> 0x0042
            r9 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = r9
            if (r0 == r1) goto L_0x0020
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x0020
        L_0x003d:
            r0 = -1
            r8 = r0
            goto L_0x0020
        L_0x0042:
            r5 = move-exception
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.TAG
            r1 = r5
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.PhoneCapabilityTester.getCallLogSimIndexAsInt(android.content.Context, int):int");
    }

    public static String getCallLogSimIndexAsString(Context context, int i) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return (i == defaultSharedPreferences.getInt("sim1_imsi", 0) || i == 1) ? "1" : (i == defaultSharedPreferences.getInt("sim2_imsi", 0) || i == 2) ? "2" : "-1";
    }

    public static String getCallLogTime(Context context, long j) {
        String str;
        Date date = new Date(j);
        if (DateFormat.is24HourFormat(context)) {
            str = d.C0033d.b().format(date);
        } else {
            String format = d.C0033d.c().format(date);
            boolean isSupportCalendarTimeFormat = isSupportCalendarTimeFormat();
            Log.d(TAG, "isSupportCalendarTimeFormat " + isSupportCalendarTimeFormat);
            if (format.contains("AM")) {
                str = format;
                if (isSupportCalendarTimeFormat) {
                    str = format.replace("AM", DateUtils.getAMPMString(0));
                }
            } else {
                str = format;
                if (format.contains("PM")) {
                    String str2 = format;
                    if (isSupportCalendarTimeFormat) {
                        str2 = format.replace("PM", DateUtils.getAMPMString(1));
                    }
                    str = str2.replace("00:", "12:");
                }
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getPhoneNumber(android.app.Activity r7, long r8) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.PhoneCapabilityTester.getPhoneNumber(android.app.Activity, long):java.lang.String");
    }

    public static String getSimSlotName(Activity activity, int i) {
        return b.f(activity, i);
    }

    public static String getSipAddress(Context context, long j) {
        String str = null;
        str = null;
        Cursor query = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, null, "contact_id ='" + j + "'", null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    str = null;
                    do {
                        Cursor query2 = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "(mimetype='vnd.android.cursor.item/sip_address') AND (raw_contact_id =" + query.getString(query.getColumnIndex("_id")) + ")", null, null);
                        if (query2 != null) {
                            if (query2.moveToFirst()) {
                                do {
                                    str = str == null ? query2.getString(query2.getColumnIndex(CoverUtils.CoverData.COVER_URI)) : str + ";" + query2.getString(query2.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                                } while (query2.moveToNext());
                                query2.close();
                            } else {
                                query2.close();
                            }
                        }
                    } while (query.moveToNext());
                }
            } finally {
                query.close();
            }
        }
        return str;
    }

    public static boolean hasAsusIME(Context context) {
        boolean z = true;
        try {
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Cannot find Asus IME in device." + e.toString());
        }
        if (context.getPackageManager().getPackageInfo("com.asus.ime", 1) != null) {
            Log.d(TAG, "Found Asus IME in device!");
            return z;
        }
        z = false;
        return z;
    }

    public static boolean hasNavigationBar() {
        boolean z = false;
        try {
            z = WindowManagerGlobal.getWindowManagerService().hasNavigationBar();
        } catch (Exception e) {
            Log.e("PhoneCapabilityTester", e.toString());
        }
        return z;
    }

    public static boolean hasSimCardPhoneAccountHandle(Context context, int i) {
        return b.h(context, i - 1) != null;
    }

    private static void initialize(Context context) {
        boolean isVoiceCapable = new TelephonyManager(context).isVoiceCapable();
        sIsPhone = isVoiceCapable;
        sIsSipPhone = isVoiceCapable && SipManager.isVoipSupported(context);
        sIsInitialized = true;
    }

    public static boolean isATTSku() {
        return a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("att");
    }

    public static boolean isCMCCSku() {
        return a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("cmcc");
    }

    public static boolean isCNSku() {
        return a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("cn");
    }

    public static boolean isCUCCSku() {
        return a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("cucc");
    }

    public static boolean isCarMode(Context context) {
        return false;
    }

    public static boolean isDebug() {
        return IS_DEBUG;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isDialtactInForeground(android.content.Context r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0008
        L_0x0006:
            r0 = r6
            return r0
        L_0x0008:
            r0 = r5
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            r1 = 1
            java.util.List r0 = r0.getRunningTasks(r1)
            r5 = r0
            r0 = r5
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x0088
            r0 = r5
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            android.app.ActivityManager$RunningTaskInfo r0 = (android.app.ActivityManager.RunningTaskInfo) r0
            r5 = r0
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.IS_DEBUG
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "First task baseActivity: "
            r2.<init>(r3)
            r2 = r5
            android.content.ComponentName r2 = r2.baseActivity
            java.lang.String r2 = r2.getClassName()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
        L_0x004f:
            java.lang.String r0 = "com[.]android[.]contacts[.]activities[.][A-Z]+"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r1 = r5
            android.content.ComponentName r1 = r1.baseActivity
            java.lang.String r1 = r1.getClassName()
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.find()
            if (r0 == 0) goto L_0x0088
            r0 = 1
            r6 = r0
        L_0x0067:
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.IS_DEBUG
            if (r0 == 0) goto L_0x0085
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "isDialtactInForeground() ? "
            r2.<init>(r3)
            r2 = r6
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
        L_0x0085:
            goto L_0x0006
        L_0x0088:
            r0 = 0
            r6 = r0
            goto L_0x0067
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.PhoneCapabilityTester.isDialtactInForeground(android.content.Context):boolean");
    }

    public static boolean isEnableDialtactsWithTabName() {
        boolean z;
        Locale locale = Locale.getDefault();
        Locale locale2 = new Locale("es", "US");
        if (isATTSku()) {
            z = true;
            if (!locale.equals(Locale.US)) {
                if (locale.equals(locale2)) {
                    z = true;
                }
            }
            return z;
        }
        z = true;
        if (!isVerizon()) {
            z = false;
        }
        return z;
    }

    public static boolean isHavingOneHandControl(Context context) {
        return context.getResources().getBoolean(2130968588);
    }

    public static boolean isHighendDevice(Context context, long j) {
        boolean z = false;
        if (context != null) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            z = memoryInfo.totalMem > ((j * 1024) * 1024) * 1024;
            Log.d(TAG, "isHighendDevice for level " + j + " = " + z);
        }
        return z;
    }

    public static boolean isInOwnerMode(Context context) {
        UserHandle myUserHandle = Process.myUserHandle();
        UserManager userManager = (UserManager) context.getApplicationContext().getSystemService("user");
        return userManager != null ? 0 == userManager.getSerialNumberForUser(myUserHandle) : false;
    }

    public static boolean isIntentRegistered(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static boolean isInterfaceExist(Context context, String str) {
        boolean z = false;
        try {
            if (context.getPackageManager().resolveContentProvider(str, 0) != null) {
                z = true;
            }
        } catch (Exception e) {
            Log.d(TAG, "Fail to get app version, Exception: " + e.toString());
        }
        Log.d(TAG, "isInterfaceExist = " + z + ", authority:" + str);
        return z;
    }

    public static boolean isKDDISku() {
        return a.a("ro.carrier", BuildConfig.FLAVOR).toLowerCase().startsWith("kddi");
    }

    public static boolean isLocalEmergencyNumber(String str) {
        return str != null && (str.equals("112") || str.equals("110") || str.equals("119") || str.equals("911") || str.equals("120"));
    }

    public static boolean isNeedToStartForegroundService(Context context) {
        return false;
    }

    public static boolean isPhone(Context context) {
        if (!sIsInitialized) {
            initialize(context);
        }
        return sIsPhone;
    }

    public static boolean isRCSSupported() {
        return false;
    }

    public static boolean isRCSVerizon() {
        return isVerizon() && isRCSSupported();
    }

    public static boolean isReceiveUnbundleAdnInitDone() {
        return IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE;
    }

    public static void isReceiveUnbundleAdnInitDoneChecking() {
        boolean z = true;
        String a2 = a.a(QUALOCMM_RIL_VERSION);
        String str = a2;
        if (a2 == null) {
            str = BuildConfig.FLAVOR;
        }
        if (IS_ASUS_DEVICE) {
            IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE = SystemProperties.getInt("asuscontacts.adn.init.done", 0) == 1 || (str.startsWith(QUALOCMM) && CompatUtils.isNCompatible());
        } else {
            if (SystemProperties.getInt("asuscontacts.adn.init.done", 0) != 1) {
                z = false;
            }
            IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE = z;
        }
        Log.d(TAG, "IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE " + IS_RECEIVE_UNBUNDLE_ADN_INIT_DONE);
    }

    public static boolean isRestoreFileExist() {
        String file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString();
        String str = Environment.getExternalStorageDirectory().toString() + "/bluetooth";
        String str2 = Environment.getExternalStorageDirectory().toString() + "/ShareLink";
        int i = 0;
        boolean z = false;
        while (i < 4) {
            boolean isRestoreFileExist = isRestoreFileExist(new String[]{"sdcard/ASUS/Calllog/Backup/", file, str, str2}[i]);
            z = isRestoreFileExist;
            if (isRestoreFileExist) {
                break;
            }
            i++;
            z = isRestoreFileExist;
        }
        Log.d(TAG, "isRestoreFileExist = " + z);
        return z;
    }

    private static boolean isRestoreFileExist(String str) {
        File[] listFiles = new File(str).listFiles(new FilenameFilter() { // from class: com.android.contacts.util.PhoneCapabilityTester.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return new File(new StringBuilder().append(file).append("/").append(str2).toString()).isDirectory() ? true : str2.endsWith(".clbu");
            }
        });
        int length = listFiles != null ? listFiles.length : 0;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            z = listFiles[i].isDirectory() ? isRestoreFileExist(listFiles[i].toString()) : true;
            if (z) {
                break;
            }
        }
        return z;
    }

    public static boolean isSim1Sim2Activte(Activity activity) {
        return b.a(activity) ? isSimActive(activity.getApplicationContext(), 1) & isSimActive(activity.getApplicationContext(), 2) : false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0091, code lost:
        if (com.android.contacts.simcardmanage.b.c(r5, r6) != 5) goto L_0x0094;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSimActive(android.content.Context r5, int r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00ae
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x00a2
            java.lang.String r1 = "airplane_mode_on"
            r2 = 0
            int r0 = android.provider.Settings.System.getInt(r0, r1, r2)     // Catch: Exception -> 0x00a2
            if (r0 == 0) goto L_0x0020
            r0 = 1
            r9 = r0
        L_0x0019:
            r0 = r9
            if (r0 == 0) goto L_0x0026
        L_0x001e:
            r0 = r8
            return r0
        L_0x0020:
            r0 = 0
            r9 = r0
            goto L_0x0019
        L_0x0026:
            boolean r0 = IsAsusDevice()     // Catch: Exception -> 0x00a2
            if (r0 != 0) goto L_0x007b
            boolean r0 = IsUnbundled()     // Catch: Exception -> 0x00a2
            if (r0 != 0) goto L_0x007b
            r0 = r5
            r1 = r6
            boolean r0 = hasSimCardPhoneAccountHandle(r0, r1)     // Catch: Exception -> 0x00a2
            if (r0 == 0) goto L_0x0076
            r0 = r5
            r1 = r6
            boolean r0 = isSimEnabled(r0, r1)     // Catch: Exception -> 0x00a2
            if (r0 == 0) goto L_0x0076
            r0 = r5
            r1 = r6
            int r0 = com.android.contacts.simcardmanage.b.c(r0, r1)     // Catch: Exception -> 0x00a2
            r9 = r0
            r0 = r9
            r1 = 5
            if (r0 != r1) goto L_0x0076
            r0 = r7
            r8 = r0
        L_0x0051:
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "sim"
            r2.<init>(r3)
            r2 = r6
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " isActive = "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r8
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            goto L_0x001e
        L_0x0076:
            r0 = 0
            r8 = r0
            goto L_0x0051
        L_0x007b:
            boolean r0 = com.android.contacts.util.CompatUtils.isMarshmallowCompatible()     // Catch: Exception -> 0x00a2
            if (r0 == 0) goto L_0x0099
            r0 = r5
            r1 = r6
            boolean r0 = isSimEnabled(r0, r1)     // Catch: Exception -> 0x00a2
            if (r0 == 0) goto L_0x0094
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = r6
            int r0 = com.android.contacts.simcardmanage.b.c(r0, r1)     // Catch: Exception -> 0x00a2
            r1 = 5
            if (r0 == r1) goto L_0x0051
        L_0x0094:
            r0 = 0
            r8 = r0
            goto L_0x0051
        L_0x0099:
            r0 = r5
            r1 = r6
            boolean r0 = hasSimCardPhoneAccountHandle(r0, r1)     // Catch: Exception -> 0x00a2
            r8 = r0
            goto L_0x0051
        L_0x00a2:
            r5 = move-exception
            java.lang.String r0 = com.android.contacts.util.PhoneCapabilityTester.TAG
            r1 = r5
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.w(r0, r1)
        L_0x00ae:
            r0 = 0
            r8 = r0
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.PhoneCapabilityTester.isSimActive(android.content.Context, int):boolean");
    }

    public static boolean isSimEnabled(Context context, int i) {
        boolean z = false;
        if (b.a(context, i)) {
            switch (i) {
                case 1:
                    z = a.a("persist.asus.sim1.enabled", true);
                    break;
                case 2:
                    z = a.a("persist.asus.sim2.enabled", true);
                    break;
                default:
                    z = false;
                    break;
            }
        }
        return z;
    }

    public static boolean isSipPhone(Context context) {
        if (!sIsInitialized) {
            initialize(context);
        }
        return sIsSipPhone;
    }

    public static boolean isSmsIntentRegistered(Context context) {
        return isIntentRegistered(context, new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, BuildConfig.FLAVOR, null)));
    }

    public static boolean isSomeDevice(String str) {
        boolean z;
        DeviceCheckerUtils.DEVICE device = DeviceCheckerUtils.DEVICE.D_NULL;
        String str2 = Build.DEVICE;
        String str3 = Build.MODEL;
        Log.d(TAG, "device=" + Build.DEVICE + " model=" + Build.MODEL);
        DeviceCheckerUtils.DEVICE device2 = device;
        if (device == DeviceCheckerUtils.DEVICE.D_NULL) {
            device2 = device;
            if (DeviceCheckerUtils.matchKeyWords(str2, str)) {
                device2 = DeviceCheckerUtils.DEVICE.D_ZE550ML;
            }
        }
        Log.d(TAG, "DEVICE=" + device2 + String.format(" ManuFacturer=%s", Build.MANUFACTURER));
        Log.d(TAG, String.format("ManuFacturer=%s", Build.MANUFACTURER));
        if (device2 != DeviceCheckerUtils.DEVICE.D_NULL) {
            int length = DeviceCheckerUtils.sFactoryName.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (Build.MANUFACTURER.equalsIgnoreCase(DeviceCheckerUtils.sFactoryName[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private static boolean isSupportCalendarTimeFormat() {
        Locale locale = Locale.getDefault();
        return locale.equals(Locale.JAPAN) || locale.equals(Locale.TRADITIONAL_CHINESE) || locale.equals(Locale.SIMPLIFIED_CHINESE) || locale.equals(Locale.KOREA) || locale.equals(new Locale("ms", "MY")) || locale.equals(new Locale("tr", "TR"));
    }

    public static boolean isUsingTwoPanes(Context context) {
        return context != null ? context.getResources().getBoolean(2130968593) : false;
    }

    public static boolean isUsingTwoPanesInFavorites(Context context) {
        return context.getResources().getBoolean(2130968594);
    }

    public static boolean isVerizon() {
        boolean z = true;
        if (a.b("ro.asus.is_verizon_device") != 1) {
            z = false;
        }
        return z;
    }

    public static boolean isVerizonPad() {
        return IS_VERIZON_PAD;
    }

    public static Intent newDialNumberIntent(Context context, String str, String str2, int i) {
        Intent callIntent = i >= 0 ? CallUtil.getCallIntent(str2, (String) null, b.h(context, i)) : CallUtil.getCallIntent(str2, (String) null, (PhoneAccountHandle) null);
        if (str != null) {
            callIntent.putExtra("com.android.phone.AsusDialName", str);
        }
        callIntent.putExtra("com.android.phone.FromAsusDialer", true);
        callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, i);
        if (b.e(context, 1)) {
            callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 0);
        } else if (b.e(context, 2)) {
            callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 1);
        }
        return callIntent;
    }

    public static Intent newDialNumberIntent(Context context, String str, String str2, long j, String str3, boolean z, int i, int i2) {
        String str4 = str2;
        if (com.android.contacts.dialpad.b.e) {
            str4 = str2;
            if (!str2.startsWith("#31#")) {
                str4 = "#31#" + str2;
            }
            com.android.contacts.dialpad.b.e = !com.android.contacts.dialpad.b.e;
        }
        Intent callIntent = i2 >= 0 ? CallUtil.getCallIntent(str4, (String) null, b.h(context, i2)) : CallUtil.getCallIntent(str4, (String) null, (PhoneAccountHandle) null);
        if (str != null) {
            callIntent.putExtra("com.android.phone.AsusDialName", str);
        } else {
            callIntent.putExtra("com.android.phone.AsusDialName", BuildConfig.FLAVOR);
        }
        callIntent.putExtra("com.android.phone.AsusDialContactId", j);
        callIntent.putExtra("com.android.phone.AsusDialLabel", str3);
        callIntent.putExtra("com.android.phone.AsusDialPhoto", z);
        callIntent.putExtra("com.android.phone.AsusDialBirthday", i);
        callIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, i2);
        callIntent.putExtra("com.android.phone.FromAsusDialer", true);
        return callIntent;
    }

    public static Intent newVideoDialNumberIntent(Context context, String str, String str2, int i) {
        Intent videoCallIntent = i >= 0 ? CallUtil.getVideoCallIntent(str2, null, b.h(context, i)) : CallUtil.getVideoCallIntent(str2, null, null);
        if (str != null) {
            videoCallIntent.putExtra("com.android.phone.AsusDialName", str);
        }
        videoCallIntent.putExtra("com.android.phone.FromAsusDialer", true);
        videoCallIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, i);
        if (b.e(context, 1)) {
            videoCallIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 0);
        } else if (b.e(context, 2)) {
            videoCallIntent.putExtra(EXTRA_ASUS_DIAL_USE_DUALSIM, 1);
        }
        return videoCallIntent;
    }

    public static String privacyLogCheck(String str) {
        return BuildConfig.FLAVOR;
    }

    public static boolean supportAsusRecording(Context context) {
        boolean z = true;
        try {
            context.getPackageManager().getPackageInfo("com.asus.soundrecorder", 1);
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    public static boolean supportMultiSIMSettints(Context context) {
        return context.getPackageManager().resolveActivity(new Intent("com.android.phone.MULTI_SIM_SETTINGS", (Uri) null), 65536) != null;
    }
}

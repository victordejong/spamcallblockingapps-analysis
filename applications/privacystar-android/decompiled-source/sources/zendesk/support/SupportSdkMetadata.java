package zendesk.support;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.zendesk.logger.Logger;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkMetadata.class */
public class SupportSdkMetadata {
    private static final int BAD_VALUE = -1;
    private static final long BYTES_MULTIPLIER = 1024;
    private static final String DEVICE_INFO_API_VERSION = "device_api";
    private static final String DEVICE_INFO_BATTERY = "device_battery";
    private static final String DEVICE_INFO_DEVICE_NAME = "device_name";
    private static final String DEVICE_INFO_LOW_MEMORY = "device_low_memory";
    private static final String DEVICE_INFO_MANUFACTURER = "device_manufacturer";
    private static final String DEVICE_INFO_MODEL_TYPE = "device_model";
    private static final String DEVICE_INFO_OS_VERSION = "device_os";
    private static final String DEVICE_INFO_TOTAL_MEMORY = "device_total_memory";
    private static final String DEVICE_INFO_USED_MEMORY = "device_used_memory";
    private static final int EXPECTED_TOKEN_COUNT = 3;
    private static final String LOG_TAG = "SupportSdkMetadata";
    private final ActivityManager activityManager;
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SupportSdkMetadata(Context context) {
        this.context = context;
        this.activityManager = (ActivityManager) context.getSystemService(ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY);
    }

    private int getBatteryLevel() {
        Intent registerReceiver = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
        }
        return i;
    }

    private String getBytesInMb(long j) {
        return String.valueOf(j / 1048576);
    }

    private String getManufacturer() {
        return "unknown".equals(Build.MANUFACTURER) || StringUtils.isEmpty(Build.MANUFACTURER) ? "" : Build.MANUFACTURER;
    }

    private String getModel() {
        return (!("unknown".equals(Build.MODEL) || StringUtils.isEmpty(Build.MODEL)) || !("unknown".equals(Build.DEVICE) || StringUtils.isEmpty(Build.DEVICE))) ? Build.MODEL.equals(Build.DEVICE) ? Build.MODEL : String.format(Locale.US, "%s/%s", Build.MODEL, Build.DEVICE) : "";
    }

    private String getModelDeviceName() {
        return Build.DEVICE;
    }

    @TargetApi(16)
    private long getTotalMemory() {
        long j;
        if (Build.VERSION.SDK_INT >= 16) {
            Logger.m298d(LOG_TAG, "Using getTotalMemoryApi() to determine memory", new Object[0]);
            j = getTotalMemoryApi();
        } else {
            Logger.m298d(LOG_TAG, "Using getTotalMemoryCompat() to determine memory", new Object[0]);
            j = getTotalMemoryCompat();
        }
        return j;
    }

    @TargetApi(16)
    private long getTotalMemoryApi() {
        if (Build.VERSION.SDK_INT < 16) {
            Logger.m289w(LOG_TAG, "Sorry, this call is not available on your API level, please use getTotalMemory() instead", new Object[0]);
            return -1L;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:2|60|3|4|5|6|7|8|9|10|(3:67|11|(2:62|13))|38|65|39|(2:41|42)|47|48|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0141, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0143, code lost:
        com.zendesk.logger.Logger.m296e(zendesk.support.SupportSdkMetadata.LOG_TAG, "Error reading memory size from proc/meminfo", r9, new java.lang.Object[0]);
        r14 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0157, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0159, code lost:
        com.zendesk.logger.Logger.m296e(zendesk.support.SupportSdkMetadata.LOG_TAG, "Error reading tokens from the /proc/meminfo", r9, new java.lang.Object[0]);
        r14 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123 A[Catch: NumberFormatException -> 0x0141, NoSuchElementException -> 0x0157, TRY_LEAVE, TryCatch #9 {NumberFormatException -> 0x0141, NoSuchElementException -> 0x0157, blocks: (B:39:0x011a, B:41:0x0123), top: B:65:0x011a }] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getTotalMemoryCompat() {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.support.SupportSdkMetadata.getTotalMemoryCompat():long");
    }

    private long getUsedMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return getTotalMemory() - memoryInfo.availMem;
    }

    private int getVersionCode() {
        return Build.VERSION.SDK_INT;
    }

    private String getVersionName() {
        return Build.VERSION.RELEASE;
    }

    private boolean isLowMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.lowMemory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getDeviceInfoAsMapForMetaData() {
        HashMap hashMap = new HashMap();
        hashMap.put(DEVICE_INFO_OS_VERSION, getVersionName());
        hashMap.put(DEVICE_INFO_API_VERSION, String.valueOf(getVersionCode()));
        hashMap.put(DEVICE_INFO_MODEL_TYPE, getModel());
        hashMap.put(DEVICE_INFO_DEVICE_NAME, getModelDeviceName());
        hashMap.put(DEVICE_INFO_MANUFACTURER, getManufacturer());
        hashMap.put(DEVICE_INFO_TOTAL_MEMORY, getBytesInMb(getTotalMemory()));
        hashMap.put(DEVICE_INFO_USED_MEMORY, getBytesInMb(getUsedMemory()));
        hashMap.put(DEVICE_INFO_LOW_MEMORY, String.valueOf(isLowMemory()));
        hashMap.put(DEVICE_INFO_BATTERY, String.valueOf(getBatteryLevel()));
        return hashMap;
    }

    String getLocale() {
        return LocaleUtil.toLanguageTag(Locale.getDefault());
    }
}

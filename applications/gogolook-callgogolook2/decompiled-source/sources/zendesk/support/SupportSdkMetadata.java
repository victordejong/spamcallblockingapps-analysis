package zendesk.support;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkMetadata.class */
public class SupportSdkMetadata {
    public final ActivityManager activityManager;
    public final Context context;

    public SupportSdkMetadata(Context context) {
        this.context = context;
        this.activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
    }

    public final int getBatteryLevel() {
        Intent registerReceiver = this.context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra(IapPlanRealmObject.LEVEL, -1);
        }
        return i;
    }

    public final String getBytesInMb(long j) {
        return String.valueOf(j / PsExtractor.MAX_SEARCH_LENGTH);
    }

    public Map<String, String> getDeviceInfoAsMapForMetaData() {
        HashMap hashMap = new HashMap();
        hashMap.put("device_os", getVersionName());
        hashMap.put("device_api", String.valueOf(getVersionCode()));
        hashMap.put("device_model", getModel());
        hashMap.put("device_name", getModelDeviceName());
        hashMap.put("device_manufacturer", getManufacturer());
        hashMap.put("device_total_memory", getBytesInMb(getTotalMemory()));
        hashMap.put("device_used_memory", getBytesInMb(getUsedMemory()));
        hashMap.put("device_low_memory", String.valueOf(isLowMemory()));
        hashMap.put("device_battery", String.valueOf(getBatteryLevel()));
        return hashMap;
    }

    public final String getManufacturer() {
        return "unknown".equals(Build.MANUFACTURER) || C10862d.m10389c(Build.MANUFACTURER) ? "" : Build.MANUFACTURER;
    }

    public final String getModel() {
        return (!("unknown".equals(Build.MODEL) || C10862d.m10389c(Build.MODEL)) || !("unknown".equals(Build.DEVICE) || C10862d.m10389c(Build.DEVICE))) ? Build.MODEL.equals(Build.DEVICE) ? Build.MODEL : String.format(Locale.US, "%s/%s", Build.MODEL, Build.DEVICE) : "";
    }

    public final String getModelDeviceName() {
        return Build.DEVICE;
    }

    @TargetApi(16)
    public final long getTotalMemory() {
        long j;
        if (Build.VERSION.SDK_INT >= 16) {
            C10845a.m10422a("SupportSdkMetadata", "Using getTotalMemoryApi() to determine memory", new Object[0]);
            j = getTotalMemoryApi();
        } else {
            C10845a.m10422a("SupportSdkMetadata", "Using getTotalMemoryCompat() to determine memory", new Object[0]);
            j = getTotalMemoryCompat();
        }
        return j;
    }

    @TargetApi(16)
    public final long getTotalMemoryApi() {
        if (Build.VERSION.SDK_INT < 16) {
            C10845a.m10417d("SupportSdkMetadata", "Sorry, this call is not available on your API level, please use getTotalMemory() instead", new Object[0]);
            return -1L;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ff A[Catch: NumberFormatException -> 0x011b, NoSuchElementException -> 0x0130, TRY_LEAVE, TryCatch #8 {NumberFormatException -> 0x011b, NoSuchElementException -> 0x0130, blocks: (B:38:0x00f7, B:40:0x00ff), top: B:66:0x00f7 }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long getTotalMemoryCompat() {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.support.SupportSdkMetadata.getTotalMemoryCompat():long");
    }

    public final long getUsedMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return getTotalMemory() - memoryInfo.availMem;
    }

    public final int getVersionCode() {
        return Build.VERSION.SDK_INT;
    }

    public final String getVersionName() {
        return Build.VERSION.RELEASE;
    }

    public final boolean isLowMemory() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.lowMemory;
    }
}

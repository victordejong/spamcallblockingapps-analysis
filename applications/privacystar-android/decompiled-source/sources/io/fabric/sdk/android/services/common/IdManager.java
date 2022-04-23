package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/IdManager.class */
public class IdManager {
    private static final String BAD_ANDROID_ID = "9774d56d682e549c";
    public static final String COLLECT_DEVICE_IDENTIFIERS = "com.crashlytics.CollectDeviceIdentifiers";
    public static final String COLLECT_USER_IDENTIFIERS = "com.crashlytics.CollectUserIdentifiers";
    public static final String DEFAULT_VERSION_NAME = "0.0";
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    private static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    AdvertisingInfo advertisingInfo;
    AdvertisingInfoProvider advertisingInfoProvider;
    private final Context appContext;
    private final String appIdentifier;
    private final String appInstallIdentifier;
    private final boolean collectHardwareIds;
    private final boolean collectUserIds;
    boolean fetchedAdvertisingInfo;
    FirebaseInfo firebaseInfo;
    private final ReentrantLock installationIdLock = new ReentrantLock();
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private final Collection<Kit> kits;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    /* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType.class */
    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        
        public final int protobufIndex;

        DeviceIdentifierType(int i) {
            this.protobufIndex = i;
        }
    }

    public IdManager(Context context, String str, String str2, Collection<Kit> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        } else {
            this.appContext = context;
            this.appIdentifier = str;
            this.appInstallIdentifier = str2;
            this.kits = collection;
            this.installerPackageNameProvider = new InstallerPackageNameProvider();
            this.advertisingInfoProvider = new AdvertisingInfoProvider(context);
            this.firebaseInfo = new FirebaseInfo();
            this.collectHardwareIds = CommonUtils.getBooleanResourceValue(context, COLLECT_DEVICE_IDENTIFIERS, true);
            if (!this.collectHardwareIds) {
                Logger logger = Fabric.getLogger();
                logger.mo288d(Fabric.TAG, "Device ID collection disabled for " + context.getPackageName());
            }
            this.collectUserIds = CommonUtils.getBooleanResourceValue(context, COLLECT_USER_IDENTIFIERS, true);
            if (!this.collectUserIds) {
                Logger logger2 = Fabric.getLogger();
                logger2.mo288d(Fabric.TAG, "User information collection disabled for " + context.getPackageName());
            }
        }
    }

    private void checkAdvertisingIdRotation(SharedPreferences sharedPreferences) {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        if (advertisingInfo != null) {
            flushInstallationIdIfNecessary(sharedPreferences, advertisingInfo.advertisingId);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    private String createInstallationUUID(SharedPreferences sharedPreferences) {
        this.installationIdLock.lock();
        try {
            String string = sharedPreferences.getString(PREFKEY_INSTALLATION_UUID, null);
            String str = string;
            if (string == null) {
                str = formatId(UUID.randomUUID().toString());
                sharedPreferences.edit().putString(PREFKEY_INSTALLATION_UUID, str).commit();
            }
            return str;
        } finally {
            this.installationIdLock.unlock();
        }
    }

    private Boolean explicitCheckLimitAdTracking() {
        AdvertisingInfo advertisingInfo = getAdvertisingInfo();
        if (advertisingInfo != null) {
            return Boolean.valueOf(advertisingInfo.limitAdTrackingEnabled);
        }
        return null;
    }

    @SuppressLint({"CommitPrefEdits"})
    private void flushInstallationIdIfNecessary(SharedPreferences sharedPreferences, String str) {
        this.installationIdLock.lock();
        try {
            if (!TextUtils.isEmpty(str)) {
                String string = sharedPreferences.getString(PREFKEY_ADVERTISING_ID, null);
                if (TextUtils.isEmpty(string)) {
                    sharedPreferences.edit().putString(PREFKEY_ADVERTISING_ID, str).commit();
                } else if (!string.equals(str)) {
                    sharedPreferences.edit().remove(PREFKEY_INSTALLATION_UUID).putString(PREFKEY_ADVERTISING_ID, str).commit();
                }
            }
        } finally {
            this.installationIdLock.unlock();
        }
    }

    private String formatId(String str) {
        return str == null ? null : ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    private void putNonNullIdInto(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }

    private String removeForwardSlashesIn(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public boolean canCollectUserIds() {
        return this.collectUserIds;
    }

    @Deprecated
    public String createIdHeaderValue(String str, String str2) {
        return "";
    }

    @Deprecated
    public String getAdvertisingId() {
        return null;
    }

    AdvertisingInfo getAdvertisingInfo() {
        AdvertisingInfo advertisingInfo;
        synchronized (this) {
            if (!this.fetchedAdvertisingInfo) {
                this.advertisingInfo = this.advertisingInfoProvider.getAdvertisingInfo();
                this.fetchedAdvertisingInfo = true;
            }
            advertisingInfo = this.advertisingInfo;
        }
        return advertisingInfo;
    }

    @Deprecated
    public String getAndroidId() {
        return null;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getAppInstallIdentifier() {
        String str = this.appInstallIdentifier;
        String str2 = str;
        if (str == null) {
            SharedPreferences sharedPrefs = CommonUtils.getSharedPrefs(this.appContext);
            checkAdvertisingIdRotation(sharedPrefs);
            str2 = sharedPrefs.getString(PREFKEY_INSTALLATION_UUID, null);
            if (str2 == null) {
                str2 = createInstallationUUID(sharedPrefs);
            }
        }
        return str2;
    }

    @Deprecated
    public String getBluetoothMacAddress() {
        return null;
    }

    public Map<DeviceIdentifierType, String> getDeviceIdentifiers() {
        HashMap hashMap = new HashMap();
        for (Kit kit : this.kits) {
            if (kit instanceof DeviceIdentifierProvider) {
                for (Map.Entry<DeviceIdentifierType, String> entry : ((DeviceIdentifierProvider) kit).getDeviceIdentifiers().entrySet()) {
                    putNonNullIdInto(hashMap, entry.getKey(), entry.getValue());
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public String getInstallerPackageName() {
        return this.installerPackageNameProvider.getInstallerPackageName(this.appContext);
    }

    public String getModelName() {
        return String.format(Locale.US, "%s/%s", removeForwardSlashesIn(Build.MANUFACTURER), removeForwardSlashesIn(Build.MODEL));
    }

    public String getOsBuildVersionString() {
        return removeForwardSlashesIn(Build.VERSION.INCREMENTAL);
    }

    public String getOsDisplayVersionString() {
        return removeForwardSlashesIn(Build.VERSION.RELEASE);
    }

    public String getOsVersionString() {
        return getOsDisplayVersionString() + "/" + getOsBuildVersionString();
    }

    @Deprecated
    public String getSerialNumber() {
        return null;
    }

    @Deprecated
    public String getTelephonyId() {
        return null;
    }

    @Deprecated
    public String getWifiMacAddress() {
        return null;
    }

    public Boolean isLimitAdTrackingEnabled() {
        return shouldCollectHardwareIds() ? explicitCheckLimitAdTracking() : null;
    }

    protected boolean shouldCollectHardwareIds() {
        return this.collectHardwareIds && !this.firebaseInfo.isFirebaseCrashlyticsEnabled(this.appContext);
    }
}

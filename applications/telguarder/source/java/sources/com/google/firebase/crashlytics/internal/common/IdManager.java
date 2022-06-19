package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/IdManager.class */
public class IdManager implements InstallIdProvider {
    public static final String DEFAULT_VERSION_NAME = "0.0";
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    static final String PREFKEY_FIREBASE_IID = "firebase.installation.id";
    static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    static final String PREFKEY_LEGACY_INSTALLATION_UUID = "crashlytics.installation.id";
    private final Context appContext;
    private final String appIdentifier;
    private String crashlyticsInstallId;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    public IdManager(Context context, String str, FirebaseInstallationsApi firebaseInstallationsApi) {
        if (context != null) {
            if (str == null) {
                throw new IllegalArgumentException("appIdentifier must not be null");
            }
            this.appContext = context;
            this.appIdentifier = str;
            this.firebaseInstallationsApi = firebaseInstallationsApi;
            this.installerPackageNameProvider = new InstallerPackageNameProvider();
            return;
        }
        throw new IllegalArgumentException("appContext must not be null");
    }

    private String createAndStoreIid(String str, SharedPreferences sharedPreferences) {
        String formatId;
        synchronized (this) {
            formatId = formatId(UUID.randomUUID().toString());
            Logger logger = Logger.getLogger();
            logger.m1342v("Created new Crashlytics installation ID: " + formatId);
            sharedPreferences.edit().putString("crashlytics.installation.id", formatId).putString(PREFKEY_FIREBASE_IID, str).apply();
        }
        return formatId;
    }

    private static String formatId(String str) {
        return str == null ? null : ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    private void migrateLegacyId(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        synchronized (this) {
            Logger logger = Logger.getLogger();
            logger.m1342v("Migrating legacy Crashlytics installation ID: " + str);
            sharedPreferences.edit().putString("crashlytics.installation.id", str).putString(PREFKEY_FIREBASE_IID, str2).apply();
            sharedPreferences2.edit().remove("crashlytics.installation.id").remove(PREFKEY_ADVERTISING_ID).apply();
        }
    }

    private String removeForwardSlashesIn(String str) {
        return str.replaceAll(FORWARD_SLASH_REGEX, "");
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    @Override // com.google.firebase.crashlytics.internal.common.InstallIdProvider
    public String getCrashlyticsInstallId() {
        String str;
        synchronized (this) {
            String str2 = this.crashlyticsInstallId;
            if (str2 != null) {
                return str2;
            }
            Logger.getLogger().m1342v("Determining Crashlytics installation ID...");
            SharedPreferences sharedPrefs = CommonUtils.getSharedPrefs(this.appContext);
            Task<String> id = this.firebaseInstallationsApi.getId();
            String string = sharedPrefs.getString(PREFKEY_FIREBASE_IID, null);
            try {
                str = (String) Utils.awaitEvenIfOnMainThread(id);
            } catch (Exception e) {
                Logger.getLogger().m1339w("Failed to retrieve Firebase Installations ID.", e);
                str = string != null ? string : null;
            }
            if (string == null) {
                Logger.getLogger().m1342v("No cached Firebase Installations ID found.");
                SharedPreferences legacySharedPrefs = CommonUtils.getLegacySharedPrefs(this.appContext);
                String string2 = legacySharedPrefs.getString("crashlytics.installation.id", null);
                if (string2 == null) {
                    Logger.getLogger().m1342v("No legacy Crashlytics installation ID found, creating new ID.");
                    this.crashlyticsInstallId = createAndStoreIid(str, sharedPrefs);
                } else {
                    Logger.getLogger().m1342v("A legacy Crashlytics installation ID was found. Upgrading.");
                    this.crashlyticsInstallId = string2;
                    migrateLegacyId(string2, str, sharedPrefs, legacySharedPrefs);
                }
            } else if (string.equals(str)) {
                this.crashlyticsInstallId = sharedPrefs.getString("crashlytics.installation.id", null);
                Logger.getLogger().m1342v("Firebase Installations ID is unchanged from previous startup.");
                if (this.crashlyticsInstallId == null) {
                    Logger.getLogger().m1342v("Crashlytics installation ID was null, creating new ID.");
                    this.crashlyticsInstallId = createAndStoreIid(str, sharedPrefs);
                }
            } else {
                this.crashlyticsInstallId = createAndStoreIid(str, sharedPrefs);
            }
            Logger logger = Logger.getLogger();
            logger.m1342v("Crashlytics installation ID is " + this.crashlyticsInstallId);
            return this.crashlyticsInstallId;
        }
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
}

package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.installations.h;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/IdManager.class */
public class IdManager implements InstallIdProvider {
    public static final String DEFAULT_VERSION_NAME = "0.0";
    static final String PREFKEY_ADVERTISING_ID = "crashlytics.advertising.id";
    static final String PREFKEY_FIREBASE_IID = "firebase.installation.id";
    static final String PREFKEY_INSTALLATION_UUID = "crashlytics.installation.id";
    static final String PREFKEY_LEGACY_INSTALLATION_UUID = "crashlytics.installation.id";
    private final Context appContext;
    private final String appIdentifier;
    private String crashlyticsInstallId;
    private final h firebaseInstallationsApi;
    private final InstallerPackageNameProvider installerPackageNameProvider;
    private static final Pattern ID_PATTERN = Pattern.compile("[^\\p{Alnum}]");
    private static final String FORWARD_SLASH_REGEX = Pattern.quote("/");

    public IdManager(Context context, String str, h hVar) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str != null) {
            this.appContext = context;
            this.appIdentifier = str;
            this.firebaseInstallationsApi = hVar;
            this.installerPackageNameProvider = new InstallerPackageNameProvider();
        } else {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
    }

    private String createAndStoreIid(String str, SharedPreferences sharedPreferences) {
        String formatId;
        synchronized (this) {
            formatId = formatId(UUID.randomUUID().toString());
            Logger.getLogger().v("Created new Crashlytics installation ID: ".concat(String.valueOf(formatId)));
            sharedPreferences.edit().putString("crashlytics.installation.id", formatId).putString(PREFKEY_FIREBASE_IID, str).apply();
        }
        return formatId;
    }

    private static String formatId(String str) {
        if (str == null) {
            return null;
        }
        return ID_PATTERN.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    private void migrateLegacyId(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        synchronized (this) {
            Logger.getLogger().v("Migrating legacy Crashlytics installation ID: ".concat(String.valueOf(str)));
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
            Logger.getLogger().v("Determining Crashlytics installation ID...");
            SharedPreferences sharedPrefs = CommonUtils.getSharedPrefs(this.appContext);
            com.google.android.gms.tasks.h<String> b2 = this.firebaseInstallationsApi.b();
            String string = sharedPrefs.getString(PREFKEY_FIREBASE_IID, null);
            try {
                str = (String) Utils.awaitEvenIfOnMainThread(b2);
            } catch (Exception e) {
                Logger.getLogger().w("Failed to retrieve Firebase Installations ID.", e);
                str = string != null ? string : null;
            }
            if (string == null) {
                Logger.getLogger().v("No cached Firebase Installations ID found.");
                SharedPreferences legacySharedPrefs = CommonUtils.getLegacySharedPrefs(this.appContext);
                String string2 = legacySharedPrefs.getString("crashlytics.installation.id", null);
                if (string2 == null) {
                    Logger.getLogger().v("No legacy Crashlytics installation ID found, creating new ID.");
                    this.crashlyticsInstallId = createAndStoreIid(str, sharedPrefs);
                    Logger logger = Logger.getLogger();
                    logger.v("Crashlytics installation ID is " + this.crashlyticsInstallId);
                    return this.crashlyticsInstallId;
                }
                Logger.getLogger().v("A legacy Crashlytics installation ID was found. Upgrading.");
                this.crashlyticsInstallId = string2;
                migrateLegacyId(string2, str, sharedPrefs, legacySharedPrefs);
                Logger logger2 = Logger.getLogger();
                logger2.v("Crashlytics installation ID is " + this.crashlyticsInstallId);
                return this.crashlyticsInstallId;
            }
            if (string.equals(str)) {
                this.crashlyticsInstallId = sharedPrefs.getString("crashlytics.installation.id", null);
                Logger.getLogger().v("Firebase Installations ID is unchanged from previous startup.");
                if (this.crashlyticsInstallId == null) {
                    Logger.getLogger().v("Crashlytics installation ID was null, creating new ID.");
                }
                Logger logger22 = Logger.getLogger();
                logger22.v("Crashlytics installation ID is " + this.crashlyticsInstallId);
                return this.crashlyticsInstallId;
            }
            this.crashlyticsInstallId = createAndStoreIid(str, sharedPrefs);
            Logger logger222 = Logger.getLogger();
            logger222.v("Crashlytics installation ID is " + this.crashlyticsInstallId);
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

package zendesk.core;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import com.google.gson.Gson;
import java.io.File;
import java.util.Locale;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.Cache;
import zendesk.support.CreateRequest;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule.class */
public class ZendeskStorageModule {
    public static final String STORAGE_BELVEDERE_CACHE = "belvedere-data-v2" + File.separator + "user" + File.separator + "zendesk";

    public static SharedPreferences getSharedPrefs(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    @Singleton
    @Named("base_storage_additional_sdk")
    public static BaseStorage provideAdditionalSdkBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName("additional_sdk")), serializer);
    }

    @Singleton
    public static AuthenticationProvider provideAuthProvider(IdentityManager identityManager) {
        return new ZendeskAuthenticationProvider(identityManager);
    }

    @Singleton
    public static Cache provideCache(@Named("cache_dir") File file) {
        return new Cache(new File(file, storageName("response_cache")), 20971520L);
    }

    @Singleton
    public static CoreSettingsStorage provideCoreSettingsStorage(SettingsStorage settingsStorage) {
        return new ZendeskCoreSettingsStorage(settingsStorage);
    }

    @Singleton
    @Named("base_storage_identity")
    public static BaseStorage provideIdentityBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName(HlsPlaylistParser.KEYFORMAT_IDENTITY)), serializer);
    }

    @Singleton
    public static IdentityManager provideIdentityManager(IdentityStorage identityStorage) {
        return new ZendeskIdentityManager(identityStorage);
    }

    @Singleton
    public static IdentityStorage provideIdentityStorage(@Named("base_storage_identity") BaseStorage baseStorage) {
        return new ZendeskIdentityStorage(baseStorage);
    }

    @Singleton
    @Named("base_storage_legacy_identity")
    public static SharedPreferencesStorage provideLegacyIdentityBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, "zendesk-token"), serializer);
    }

    @Singleton
    public static LegacyIdentityMigrator provideLegacyIdentityStorage(@Named("base_storage_legacy_identity") SharedPreferencesStorage sharedPreferencesStorage, @Named("base_storage_legacy_push") SharedPreferencesStorage sharedPreferencesStorage2, IdentityStorage identityStorage, IdentityManager identityManager, PushDeviceIdStorage pushDeviceIdStorage) {
        return new LegacyIdentityMigrator(sharedPreferencesStorage, sharedPreferencesStorage2, identityStorage, identityManager, pushDeviceIdStorage);
    }

    @Singleton
    @Named("base_storage_legacy_push")
    public static SharedPreferencesStorage provideLegacyPushBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, "zendesk-push-token"), serializer);
    }

    @Singleton
    public static MemoryCache provideMemoryCache() {
        return new ZendeskLruMemoryCache();
    }

    @Singleton
    public static PushDeviceIdStorage providePushDeviceIdStorage(@Named("base_storage_additional_sdk") BaseStorage baseStorage) {
        return new ZendeskPushDeviceIdStorage(baseStorage);
    }

    @Singleton
    @Named("base_storage_sdk")
    public static BaseStorage provideSdkBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName(CreateRequest.METADATA_SDK_KEY)), serializer);
    }

    @Singleton
    public static Storage provideSdkStorage(SettingsStorage settingsStorage, SessionStorage sessionStorage, @Named("base_storage_sdk") BaseStorage baseStorage, MemoryCache memoryCache) {
        return new ZendeskStorage(sessionStorage, settingsStorage, baseStorage, memoryCache);
    }

    @Singleton
    @Named("gson_serializer")
    public static Serializer provideSerializer(Gson gson) {
        return new GsonSerializer(gson);
    }

    @Singleton
    public static SessionStorage provideSessionStorage(IdentityStorage identityStorage, @Named("base_storage_additional_sdk") BaseStorage baseStorage, @Named("base_storage_disk_lru") BaseStorage baseStorage2, Cache cache, @Named("cache_dir") File file, @Named("data_dir") File file2, @Named("belvedere_dir") File file3) {
        return new ZendeskSessionStorage(identityStorage, baseStorage, cache, baseStorage2, file, file2, file3);
    }

    @Singleton
    @Named("base_storage_settings")
    public static BaseStorage provideSettingsBaseStorage(@Named("application_context") Context context, @Named("gson_serializer") Serializer serializer) {
        return new SharedPreferencesStorage(getSharedPrefs(context, storageName("settings")), serializer);
    }

    @Singleton
    public static SettingsStorage provideSettingsStorage(@Named("base_storage_settings") BaseStorage baseStorage) {
        return new ZendeskSettingsStorage(baseStorage);
    }

    @Singleton
    @Named("belvedere_dir")
    public static File providesBelvedereDir(@Named("application_context") Context context) {
        return new File(context.getCacheDir(), STORAGE_BELVEDERE_CACHE);
    }

    @Singleton
    @Named("cache_dir")
    public static File providesCacheDir(@Named("application_context") Context context) {
        return new File(context.getCacheDir(), "zendesk");
    }

    @Singleton
    @Named("data_dir")
    public static File providesDataDir(@Named("application_context") Context context) {
        return new File(context.getFilesDir(), "zendesk");
    }

    @Singleton
    @Named("base_storage_disk_lru")
    public static BaseStorage providesDiskLruStorage(@Named("cache_dir") File file, @Named("gson_serializer") Serializer serializer) {
        return new ZendeskDiskLruCache(new File(file, storageName("media_cache")), serializer, 20971520);
    }

    public static String storageName(String str) {
        return String.format(Locale.US, "zendesk_%s", str);
    }
}

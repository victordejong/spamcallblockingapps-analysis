package net.pubnative.lite.sdk.config;

import android.content.Context;
import android.content.SharedPreferences;
import net.pubnative.lite.sdk.config.ConfigRequest;
import net.pubnative.lite.sdk.models.RemoteConfigModel;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/config/ConfigManager.class */
public class ConfigManager {
    private static final String KEY_CONFIG_TIMESTAMP = "config_timestamp";
    private static final String PREFERENCES_CONFIG = "net.pubnative.lite.config";
    private static final String TAG = "ConfigManager";
    private final String mAppToken;
    private RemoteConfigModel mConfigModel;
    private final Context mContext;
    private final SharedPreferences mPreferences;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/config/ConfigManager$ConfigListener.class */
    public interface ConfigListener {
        void onConfigFetchFailed(Throwable th);

        void onConfigFetched();
    }

    public ConfigManager(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mAppToken = str;
        this.mPreferences = applicationContext.getSharedPreferences(PREFERENCES_CONFIG, 0);
    }

    private void fetchConfig(final ConfigListener configListener) {
        new ConfigRequest().doRequest(this.mContext, this.mAppToken, new ConfigRequest.Listener() { // from class: net.pubnative.lite.sdk.config.ConfigManager.2
            @Override // net.pubnative.lite.sdk.config.ConfigRequest.Listener
            public void onConfigError(Throwable th) {
                ConfigListener configListener2 = configListener;
                if (configListener2 != null) {
                    configListener2.onConfigFetchFailed(th);
                }
            }

            @Override // net.pubnative.lite.sdk.config.ConfigRequest.Listener
            public void onConfigFetched(RemoteConfigModel remoteConfigModel) {
                if (remoteConfigModel == null) {
                    ConfigListener configListener2 = configListener;
                    if (configListener2 == null) {
                        return;
                    }
                    configListener2.onConfigFetchFailed(new Exception("The server returned an empty config file."));
                } else if (configListener == null) {
                } else {
                    ConfigManager.this.mConfigModel = remoteConfigModel;
                    configListener.onConfigFetched();
                    ConfigManager.this.storeConfigTimestamp();
                }
            }
        });
    }

    public void storeConfigTimestamp() {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.mPreferences.edit();
        edit.putLong(KEY_CONFIG_TIMESTAMP, currentTimeMillis);
        edit.apply();
    }

    public RemoteConfigModel getConfig() {
        return this.mConfigModel;
    }

    public void initialize(ConfigListener configListener) {
        fetchConfig(configListener);
    }

    public boolean isConfigOutdated() {
        RemoteConfigModel remoteConfigModel = this.mConfigModel;
        if (remoteConfigModel != null) {
            return System.currentTimeMillis() >= ((long) (remoteConfigModel.ttl.intValue() * 1000)) + this.mPreferences.getLong(KEY_CONFIG_TIMESTAMP, 0L);
        }
        return false;
    }

    public void refreshConfig() {
        if (isConfigOutdated()) {
            fetchConfig(new ConfigListener() { // from class: net.pubnative.lite.sdk.config.ConfigManager.1
                @Override // net.pubnative.lite.sdk.config.ConfigManager.ConfigListener
                public void onConfigFetchFailed(Throwable th) {
                    String unused = ConfigManager.TAG;
                }

                @Override // net.pubnative.lite.sdk.config.ConfigManager.ConfigListener
                public void onConfigFetched() {
                    String unused = ConfigManager.TAG;
                }
            });
        }
    }
}

package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/AccessTokenCache.class */
public class AccessTokenCache {
    static final String CACHED_ACCESS_TOKEN_KEY = "com.facebook.AccessTokenManager.CachedAccessToken";
    private final SharedPreferences sharedPreferences;
    private LegacyTokenHelper tokenCachingStrategy;
    private final SharedPreferencesTokenCachingStrategyFactory tokenCachingStrategyFactory;

    /* loaded from: classes-dex2jar.jar:com/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory.class */
    public static class SharedPreferencesTokenCachingStrategyFactory {
        SharedPreferencesTokenCachingStrategyFactory() {
        }

        public LegacyTokenHelper create() {
            return new LegacyTokenHelper(FacebookSdk.getApplicationContext());
        }
    }

    public AccessTokenCache() {
        this(FacebookSdk.getApplicationContext().getSharedPreferences(AccessTokenManager.SHARED_PREFERENCES_NAME, 0), new SharedPreferencesTokenCachingStrategyFactory());
    }

    AccessTokenCache(SharedPreferences sharedPreferences, SharedPreferencesTokenCachingStrategyFactory sharedPreferencesTokenCachingStrategyFactory) {
        this.sharedPreferences = sharedPreferences;
        this.tokenCachingStrategyFactory = sharedPreferencesTokenCachingStrategyFactory;
    }

    private AccessToken getCachedAccessToken() {
        String string = this.sharedPreferences.getString(CACHED_ACCESS_TOKEN_KEY, null);
        if (string != null) {
            try {
                return AccessToken.createFromJSONObject(new JSONObject(string));
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    private AccessToken getLegacyAccessToken() {
        Bundle load = getTokenCachingStrategy().load();
        return (load == null || !LegacyTokenHelper.hasTokenInformation(load)) ? null : AccessToken.createFromLegacyCache(load);
    }

    private LegacyTokenHelper getTokenCachingStrategy() {
        if (this.tokenCachingStrategy == null) {
            synchronized (this) {
                if (this.tokenCachingStrategy == null) {
                    this.tokenCachingStrategy = this.tokenCachingStrategyFactory.create();
                }
            }
        }
        return this.tokenCachingStrategy;
    }

    private boolean hasCachedAccessToken() {
        return this.sharedPreferences.contains(CACHED_ACCESS_TOKEN_KEY);
    }

    private boolean shouldCheckLegacyToken() {
        return FacebookSdk.isLegacyTokenUpgradeSupported();
    }

    public void clear() {
        this.sharedPreferences.edit().remove(CACHED_ACCESS_TOKEN_KEY).apply();
        if (shouldCheckLegacyToken()) {
            getTokenCachingStrategy().clear();
        }
    }

    public AccessToken load() {
        AccessToken accessToken;
        if (hasCachedAccessToken()) {
            accessToken = getCachedAccessToken();
        } else if (shouldCheckLegacyToken()) {
            AccessToken legacyAccessToken = getLegacyAccessToken();
            accessToken = legacyAccessToken;
            if (legacyAccessToken != null) {
                save(legacyAccessToken);
                getTokenCachingStrategy().clear();
                accessToken = legacyAccessToken;
            }
        } else {
            accessToken = null;
        }
        return accessToken;
    }

    public void save(AccessToken accessToken) {
        Validate.notNull(accessToken, SDKConstants.PARAM_ACCESS_TOKEN);
        try {
            this.sharedPreferences.edit().putString(CACHED_ACCESS_TOKEN_KEY, accessToken.toJSONObject().toString()).apply();
        } catch (JSONException e) {
        }
    }
}

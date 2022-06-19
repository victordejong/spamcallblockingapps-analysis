package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.appsflyer.internal.j */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/j.class */
public abstract class AbstractC0820j {
    @Nullable
    public AppsFlyerRequestListener AFInAppEventParameterName;
    public final Map<String, Object> AFInAppEventType;
    @Nullable
    public Map<String, Object> AFKeystoreWrapper;
    public String AFLogger$LogLevel;
    public String AFVersionDeclaration;
    public String AppsFlyer2dXConversionCallback;
    public String getLevel;
    public byte[] init;
    public String onAppOpenAttributionNative;
    public int onAttributionFailureNative;
    public boolean onDeepLinkingNative;
    private final boolean onInstallConversionDataLoadedNative;
    @Nullable
    public Application valueOf;
    @Nullable
    public String values;

    public AbstractC0820j() {
        this(null, null, null, null);
    }

    public AbstractC0820j(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Context context) {
        this.AFInAppEventType = new HashMap();
        this.AFLogger$LogLevel = str;
        this.onAppOpenAttributionNative = str2;
        this.onInstallConversionDataLoadedNative = bool != null ? bool.booleanValue() : true;
        if (context != null) {
            this.valueOf = (Application) context.getApplicationContext();
        }
    }

    @NonNull
    public final String AFInAppEventParameterName(String str) {
        String valueOf = C0726ai.valueOf().valueOf(this.valueOf);
        String str2 = str;
        if (valueOf != null) {
            str2 = Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, valueOf).build().toString();
        }
        return str2;
    }

    public final Map<String, Object> AFInAppEventParameterName() {
        return this.AFInAppEventType;
    }

    public final AbstractC0820j AFInAppEventType(Map<String, ?> map) {
        this.AFInAppEventType.putAll(map);
        return this;
    }

    public final boolean AFInAppEventType() {
        return this.onInstallConversionDataLoadedNative;
    }

    public final boolean AFKeystoreWrapper() {
        return this.onDeepLinkingNative;
    }

    public AbstractC0820j valueOf(String str) {
        this.onAppOpenAttributionNative = str;
        return this;
    }

    public final byte[] valueOf() {
        return this.init;
    }
}

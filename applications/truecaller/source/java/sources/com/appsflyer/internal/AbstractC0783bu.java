package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.Nullable;
/* renamed from: com.appsflyer.internal.bu */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bu.class */
public abstract class AbstractC0783bu extends AbstractC0820j {
    public boolean onConversionDataSuccess;
    private final boolean onInstallConversionDataLoadedNative;
    private final boolean onInstallConversionFailureNative;

    public AbstractC0783bu() {
        this(null, null, null, null, null, null);
    }

    public AbstractC0783bu(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Context context) {
        super(str, str2, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        this.onInstallConversionDataLoadedNative = bool != null ? bool.booleanValue() : true;
        this.onInstallConversionFailureNative = bool2 != null ? bool2.booleanValue() : true;
    }

    public final boolean AFLogger$LogLevel() {
        return this.onInstallConversionFailureNative;
    }

    public String AFVersionDeclaration() {
        return C0827o.AFInAppEventParameterName(AFInAppEventParameterName()).toString();
    }

    public final boolean getLevel() {
        return this.onConversionDataSuccess;
    }

    public final boolean init() {
        return this.onInstallConversionDataLoadedNative;
    }
}

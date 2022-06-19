package com.applovin.sdk;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.debugger.p045ui.testmode.C1187b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkSettings.class */
public class AppLovinSdkSettings {

    /* renamed from: a */
    private boolean f5846a;

    /* renamed from: b */
    private boolean f5847b;

    /* renamed from: g */
    private String f5852g;

    /* renamed from: l */
    private C1408l f5857l;

    /* renamed from: f */
    private boolean f5851f = true;
    private final Map<String, Object> localSettings = new HashMap();
    private final Map<String, String> metaData = new HashMap();

    /* renamed from: h */
    private List<String> f5853h = Collections.emptyList();

    /* renamed from: i */
    private List<String> f5854i = Collections.emptyList();

    /* renamed from: j */
    private final Map<String, String> f5855j = new HashMap();

    /* renamed from: k */
    private final Object f5856k = new Object();

    /* renamed from: c */
    private boolean f5848c = true;

    /* renamed from: d */
    private boolean f5849d = true;

    /* renamed from: e */
    private boolean f5850e = true;

    public AppLovinSdkSettings(Context context) {
        this.f5846a = Utils.isVerboseLoggingEnabled(context);
    }

    public void attachAppLovinSdk(C1408l c1408l) {
        this.f5857l = c1408l;
        if (StringUtils.isValidString(this.f5852g)) {
            c1408l.m5534I().m6189a(true);
            c1408l.m5534I().m6191a(this.f5852g);
            this.f5852g = null;
        }
    }

    public Map<String, String> getExtraParameters() {
        HashMap hashMap;
        synchronized (this.f5856k) {
            hashMap = new HashMap(this.f5855j);
        }
        return hashMap;
    }

    public List<String> getInitializationAdUnitIds() {
        return this.f5854i;
    }

    public List<String> getTestDeviceAdvertisingIds() {
        return this.f5853h;
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.f5848c;
    }

    public boolean isExceptionHandlerEnabled() {
        return this.f5849d;
    }

    public boolean isLocationCollectionEnabled() {
        return this.f5850e;
    }

    public boolean isMuted() {
        return this.f5847b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f5846a;
    }

    public void setCreativeDebuggerEnabled(boolean z) {
        this.f5848c = z;
    }

    public void setExceptionHandlerEnabled(boolean z) {
        this.f5849d = z;
    }

    public void setExtraParameter(String str, String str2) {
        C1187b c1187b;
        if (TextUtils.isEmpty(str)) {
            C1479t.m5107i("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        synchronized (this.f5856k) {
            this.f5855j.put(str, str2);
        }
        if (!"test_mode_network".equalsIgnoreCase(str)) {
            return;
        }
        if (this.f5857l == null) {
            this.f5852g = str2;
            return;
        }
        if (StringUtils.isValidString(str2)) {
            this.f5857l.m5534I().m6189a(true);
            c1187b = this.f5857l.m5534I();
        } else {
            this.f5857l.m5534I().m6189a(false);
            c1187b = this.f5857l.m5534I();
            str2 = null;
        }
        c1187b.m6191a(str2);
    }

    public void setInitializationAdUnitIds(List<String> list) {
        if (list == null) {
            this.f5854i = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (StringUtils.isValidString(str) && str.length() > 0) {
                if (str.length() == 16) {
                    arrayList.add(str);
                } else {
                    C1479t.m5107i("AppLovinSdkSettings", "Unable to set initialization ad unit id (" + str + ") - please make sure it is in the format of XXXXXXXXXXXXXXXX");
                }
            }
        }
        this.f5854i = arrayList;
    }

    public void setLocationCollectionEnabled(boolean z) {
        this.f5850e = z;
    }

    public void setMuted(boolean z) {
        this.f5847b = z;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z) {
        this.f5851f = z;
    }

    public void setTestDeviceAdvertisingIds(List<String> list) {
        if (list == null) {
            this.f5853h = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (str == null || str.length() != 36) {
                C1479t.m5107i("AppLovinSdkSettings", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
            } else {
                arrayList.add(str);
            }
        }
        this.f5853h = arrayList;
    }

    public void setVerboseLogging(boolean z) {
        if (!Utils.isVerboseLoggingConfigured()) {
            this.f5846a = z;
            return;
        }
        C1479t.m5107i("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
        if (Utils.isVerboseLoggingEnabled(null) == z) {
            return;
        }
        C1479t.m5107i("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.f5851f;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinSdkSettings{isVerboseLoggingEnabled=");
        m8752j.append(this.f5846a);
        m8752j.append(", muted=");
        m8752j.append(this.f5847b);
        m8752j.append(", testDeviceAdvertisingIds=");
        m8752j.append(this.f5853h.toString());
        m8752j.append(", initializationAdUnitIds=");
        m8752j.append(this.f5854i.toString());
        m8752j.append(", creativeDebuggerEnabled=");
        m8752j.append(this.f5848c);
        m8752j.append(", exceptionHandlerEnabled=");
        m8752j.append(this.f5849d);
        m8752j.append(", locationCollectionEnabled=");
        m8752j.append(this.f5850e);
        m8752j.append('}');
        return m8752j.toString();
    }
}

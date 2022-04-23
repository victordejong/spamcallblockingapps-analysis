package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/mopub/common/SdkConfiguration.class */
public class SdkConfiguration {

    /* renamed from: a */
    public final String f33774a;

    /* renamed from: b */
    public final Set<String> f33775b;

    /* renamed from: c */
    public final MediationSettings[] f33776c;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f33777d;

    /* renamed from: e */
    public final Map<String, Map<String, String>> f33778e;

    /* renamed from: f */
    public final MoPubLog.LogLevel f33779f;

    /* renamed from: g */
    public final boolean f33780g;

    /* loaded from: classes-dex2jar.jar:com/mopub/common/SdkConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f33781a;

        /* renamed from: b */
        public final Set<String> f33782b;

        /* renamed from: c */
        public MediationSettings[] f33783c;

        /* renamed from: d */
        public MoPubLog.LogLevel f33784d = MoPubLog.LogLevel.NONE;

        /* renamed from: e */
        public final Map<String, Map<String, String>> f33785e;

        /* renamed from: f */
        public final Map<String, Map<String, String>> f33786f;

        /* renamed from: g */
        public boolean f33787g;

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Ad unit cannot be empty at initialization");
                MoPubLog.setLogLevel(MoPubLog.getLogLevel());
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FAILED, "Pass in an ad unit used by this app", illegalArgumentException);
            }
            this.f33781a = str;
            this.f33782b = DefaultAdapterClasses.getClassNamesSet();
            this.f33783c = new MediationSettings[0];
            this.f33785e = new HashMap();
            this.f33786f = new HashMap();
            this.f33787g = false;
        }

        public SdkConfiguration build() {
            return new SdkConfiguration(this.f33781a, this.f33782b, this.f33783c, this.f33784d, this.f33785e, this.f33786f, this.f33787g);
        }

        public Builder withAdditionalNetwork(String str) {
            Preconditions.checkNotNull(str);
            this.f33782b.add(str);
            return this;
        }

        public Builder withLegitimateInterestAllowed(boolean z) {
            this.f33787g = z;
            return this;
        }

        public Builder withLogLevel(MoPubLog.LogLevel logLevel) {
            Preconditions.checkNotNull(logLevel);
            this.f33784d = logLevel;
            return this;
        }

        public Builder withMediatedNetworkConfiguration(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f33785e.put(str, map);
            return this;
        }

        public Builder withMediationSettings(MediationSettings... mediationSettingsArr) {
            Preconditions.checkNotNull(mediationSettingsArr);
            this.f33783c = mediationSettingsArr;
            return this;
        }

        public Builder withMoPubRequestOptions(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f33786f.put(str, map);
            return this;
        }
    }

    public SdkConfiguration(String str, Set<String> set, MediationSettings[] mediationSettingsArr, MoPubLog.LogLevel logLevel, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        this.f33774a = str;
        this.f33775b = set;
        this.f33776c = mediationSettingsArr;
        this.f33779f = logLevel;
        this.f33777d = map;
        this.f33778e = map2;
        this.f33780g = z;
    }

    /* renamed from: a */
    public MoPubLog.LogLevel m4607a() {
        return this.f33779f;
    }

    public String getAdUnitId() {
        return this.f33774a;
    }

    public Set<String> getAdapterConfigurationClasses() {
        return Collections.unmodifiableSet(this.f33775b);
    }

    public boolean getLegitimateInterestAllowed() {
        return this.f33780g;
    }

    public Map<String, Map<String, String>> getMediatedNetworkConfigurations() {
        return Collections.unmodifiableMap(this.f33777d);
    }

    public MediationSettings[] getMediationSettings() {
        MediationSettings[] mediationSettingsArr = this.f33776c;
        return (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length);
    }

    public Map<String, Map<String, String>> getMoPubRequestOptions() {
        return Collections.unmodifiableMap(this.f33778e);
    }
}

package com.mopub.common;

import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/SdkConfiguration.class */
public class SdkConfiguration {

    /* renamed from: a */
    public final String f4291a;

    /* renamed from: b */
    public final Set<String> f4292b;

    /* renamed from: c */
    public final MediationSettings[] f4293c;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f4294d;

    /* renamed from: e */
    public final Map<String, Map<String, String>> f4295e;

    /* renamed from: f */
    public final MoPubLog.LogLevel f4296f;

    /* renamed from: g */
    public final boolean f4297g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/SdkConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f4298a;

        /* renamed from: b */
        public final Set<String> f4299b;

        /* renamed from: c */
        public MediationSettings[] f4300c;

        /* renamed from: d */
        public MoPubLog.LogLevel f4301d = MoPubLog.LogLevel.NONE;

        /* renamed from: e */
        public final Map<String, Map<String, String>> f4302e;

        /* renamed from: f */
        public final Map<String, Map<String, String>> f4303f;

        /* renamed from: g */
        public boolean f4304g;

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Ad unit cannot be empty at initialization");
                MoPubLog.setLogLevel(MoPubLog.getLogLevel());
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FAILED, "Pass in an ad unit used by this app", illegalArgumentException);
            }
            this.f4298a = str;
            this.f4299b = DefaultAdapterClasses.getClassNamesSet();
            this.f4300c = new MediationSettings[0];
            this.f4302e = new HashMap();
            this.f4303f = new HashMap();
            this.f4304g = false;
        }

        public SdkConfiguration build() {
            return new SdkConfiguration(this.f4298a, this.f4299b, this.f4300c, this.f4301d, this.f4302e, this.f4303f, this.f4304g);
        }

        public Builder withAdditionalNetwork(String str) {
            Preconditions.checkNotNull(str);
            this.f4299b.add(str);
            return this;
        }

        public Builder withLegitimateInterestAllowed(boolean z) {
            this.f4304g = z;
            return this;
        }

        public Builder withLogLevel(MoPubLog.LogLevel logLevel) {
            Preconditions.checkNotNull(logLevel);
            this.f4301d = logLevel;
            return this;
        }

        public Builder withMediatedNetworkConfiguration(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f4302e.put(str, map);
            return this;
        }

        public Builder withMediationSettings(MediationSettings... mediationSettingsArr) {
            Preconditions.checkNotNull(mediationSettingsArr);
            this.f4300c = mediationSettingsArr;
            return this;
        }

        public Builder withMoPubRequestOptions(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f4303f.put(str, map);
            return this;
        }
    }

    public SdkConfiguration(String str, Set<String> set, MediationSettings[] mediationSettingsArr, MoPubLog.LogLevel logLevel, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        this.f4291a = str;
        this.f4292b = set;
        this.f4293c = mediationSettingsArr;
        this.f4296f = logLevel;
        this.f4294d = map;
        this.f4295e = map2;
        this.f4297g = z;
    }

    /* renamed from: a */
    public MoPubLog.LogLevel m3919a() {
        return this.f4296f;
    }

    public String getAdUnitId() {
        return this.f4291a;
    }

    public Set<String> getAdapterConfigurationClasses() {
        return Collections.unmodifiableSet(this.f4292b);
    }

    public boolean getLegitimateInterestAllowed() {
        return this.f4297g;
    }

    public Map<String, Map<String, String>> getMediatedNetworkConfigurations() {
        return Collections.unmodifiableMap(this.f4294d);
    }

    public MediationSettings[] getMediationSettings() {
        MediationSettings[] mediationSettingsArr = this.f4293c;
        return (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length);
    }

    public Map<String, Map<String, String>> getMoPubRequestOptions() {
        return Collections.unmodifiableMap(this.f4295e);
    }
}

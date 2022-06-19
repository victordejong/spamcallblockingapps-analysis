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
    public final String f8544a;

    /* renamed from: b */
    public final Set<String> f8545b;

    /* renamed from: c */
    public final MediationSettings[] f8546c;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f8547d;

    /* renamed from: e */
    public final Map<String, Map<String, String>> f8548e;

    /* renamed from: f */
    public final MoPubLog.LogLevel f8549f;

    /* renamed from: g */
    public final boolean f8550g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/SdkConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f8551a;

        /* renamed from: b */
        public final Set<String> f8552b;

        /* renamed from: c */
        public MediationSettings[] f8553c;

        /* renamed from: d */
        public MoPubLog.LogLevel f8554d = MoPubLog.LogLevel.NONE;

        /* renamed from: e */
        public final Map<String, Map<String, String>> f8555e;

        /* renamed from: f */
        public final Map<String, Map<String, String>> f8556f;

        /* renamed from: g */
        public boolean f8557g;

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Ad unit cannot be empty at initialization");
                MoPubLog.setLogLevel(MoPubLog.getLogLevel());
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FAILED, "Pass in an ad unit used by this app", illegalArgumentException);
            }
            this.f8551a = str;
            this.f8552b = DefaultAdapterClasses.getClassNamesSet();
            this.f8553c = new MediationSettings[0];
            this.f8555e = new HashMap();
            this.f8556f = new HashMap();
            this.f8557g = false;
        }

        public SdkConfiguration build() {
            return new SdkConfiguration(this.f8551a, this.f8552b, this.f8553c, this.f8554d, this.f8555e, this.f8556f, this.f8557g, null);
        }

        public Builder withAdditionalNetwork(String str) {
            Preconditions.checkNotNull(str);
            this.f8552b.add(str);
            return this;
        }

        public Builder withLegitimateInterestAllowed(boolean z) {
            this.f8557g = z;
            return this;
        }

        public Builder withLogLevel(MoPubLog.LogLevel logLevel) {
            Preconditions.checkNotNull(logLevel);
            this.f8554d = logLevel;
            return this;
        }

        public Builder withMediatedNetworkConfiguration(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f8555e.put(str, map);
            return this;
        }

        public Builder withMediationSettings(MediationSettings... mediationSettingsArr) {
            Preconditions.checkNotNull(mediationSettingsArr);
            this.f8553c = mediationSettingsArr;
            return this;
        }

        public Builder withMoPubRequestOptions(String str, Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f8556f.put(str, map);
            return this;
        }
    }

    public SdkConfiguration(String str, Set set, MediationSettings[] mediationSettingsArr, MoPubLog.LogLevel logLevel, Map map, Map map2, boolean z, C2642a c2642a) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        this.f8544a = str;
        this.f8545b = set;
        this.f8546c = mediationSettingsArr;
        this.f8549f = logLevel;
        this.f8547d = map;
        this.f8548e = map2;
        this.f8550g = z;
    }

    public String getAdUnitId() {
        return this.f8544a;
    }

    public Set<String> getAdapterConfigurationClasses() {
        return Collections.unmodifiableSet(this.f8545b);
    }

    public boolean getLegitimateInterestAllowed() {
        return this.f8550g;
    }

    public Map<String, Map<String, String>> getMediatedNetworkConfigurations() {
        return Collections.unmodifiableMap(this.f8547d);
    }

    public MediationSettings[] getMediationSettings() {
        MediationSettings[] mediationSettingsArr = this.f8546c;
        return (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length);
    }

    public Map<String, Map<String, String>> getMoPubRequestOptions() {
        return Collections.unmodifiableMap(this.f8548e);
    }
}

package com.criteo.sync.sdk;

import com.aotter.net.trek.model.Location;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/ConfigUrlParameters.class */
public class ConfigUrlParameters extends CollectionUrlParameters {
    public boolean consentRequired;
    public LimitedAdTracking limitedAdTracking;
    public boolean meteredNetwork;
    public UserConsent userConsent;

    public ConfigUrlParameters(String str, String str2, String str3, String str4, String str5, String str6, LimitedAdTracking limitedAdTracking, boolean z, boolean z2, UserConsent userConsent) {
        super(str, str2, str3, str4, str5, str6);
        this.limitedAdTracking = limitedAdTracking;
        this.meteredNetwork = z;
        this.consentRequired = z2;
        this.userConsent = userConsent;
    }

    private String limitedAdTrackingToString() {
        LimitedAdTracking limitedAdTracking = this.limitedAdTracking;
        return limitedAdTracking == LimitedAdTracking.ENABLED ? "true" : limitedAdTracking == LimitedAdTracking.DISABLED ? "false" : "";
    }

    private String userConsentToString() {
        UserConsent userConsent = this.userConsent;
        return userConsent == UserConsent.GRANTED ? "true" : userConsent == UserConsent.DENIED ? "false" : "";
    }

    public String getConfigUrl(String str) {
        QueryStringBuilder collectionUrlQueryStringBuilder = getCollectionUrlQueryStringBuilder();
        collectionUrlQueryStringBuilder.append(Location.LOCATION_LAT_KEY, limitedAdTrackingToString());
        collectionUrlQueryStringBuilder.append("metered_network", String.valueOf(this.meteredNetwork));
        collectionUrlQueryStringBuilder.append("consent_required", String.valueOf(this.consentRequired));
        collectionUrlQueryStringBuilder.append("user_consent", userConsentToString());
        return str + "?" + collectionUrlQueryStringBuilder.toString();
    }

    public LimitedAdTracking getLimitedAdTracking() {
        return this.limitedAdTracking;
    }

    public UserConsent getUserConsent() {
        return this.userConsent;
    }

    public boolean isConsentRequired() {
        return this.consentRequired;
    }

    public boolean isMeteredNetwork() {
        return this.meteredNetwork;
    }
}

package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdPreferences.class */
public class JSONAdPreferences {
    @JsonProperty("group")
    private int group;
    @JsonProperty("interstitial_auto_close_sec")
    private int interstitialAutoCloseSec;
    @JsonProperty("interstitial_first")
    private int interstitialFirst;
    @JsonProperty("interstitial_interval")
    private int interstitialInterval;
    @JsonProperty("priority_contact")
    private int priorityContact;
    @JsonProperty("priority_non_contact")
    private int priorityNonContact;
    @JsonProperty("refresh")
    private boolean refresh;
    @JsonProperty("refresh_interval")
    private int refreshInterval;
    @JsonProperty("retry_after_fail")
    private boolean retryAfterFail;
    @JsonProperty("show_interstitial")
    private boolean showInterstitial;
    @JsonProperty("show_without_name")
    private boolean showWithoutName;
    @JsonProperty("frequency_non_contact")
    private int frequencyNonContact = 1;
    @JsonProperty("frequency_contact")
    private int frequencyContact = 1;
    @JsonProperty("interstitial_cap")
    private int interstitialCap = 1;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONAdPreferences jSONAdPreferences = (JSONAdPreferences) obj;
        return this.group == jSONAdPreferences.group && this.priorityNonContact == jSONAdPreferences.priorityNonContact && this.priorityContact == jSONAdPreferences.priorityContact && this.frequencyNonContact == jSONAdPreferences.frequencyNonContact && this.frequencyContact == jSONAdPreferences.frequencyContact && this.showWithoutName == jSONAdPreferences.showWithoutName && this.refresh == jSONAdPreferences.refresh && this.showInterstitial == jSONAdPreferences.showInterstitial && this.interstitialInterval == jSONAdPreferences.interstitialInterval && this.interstitialFirst == jSONAdPreferences.interstitialFirst && this.interstitialCap == jSONAdPreferences.interstitialCap && this.interstitialAutoCloseSec == jSONAdPreferences.interstitialAutoCloseSec && this.refreshInterval == jSONAdPreferences.refreshInterval && this.retryAfterFail == jSONAdPreferences.retryAfterFail;
    }

    public int getFrequencyContact() {
        return this.frequencyContact;
    }

    public int getFrequencyNonContact() {
        return this.frequencyNonContact;
    }

    public int getGroup() {
        return this.group;
    }

    public int getInterstitialAutoCloseSec() {
        return this.interstitialAutoCloseSec;
    }

    public int getInterstitialCap() {
        return this.interstitialCap;
    }

    public int getInterstitialFirst() {
        return this.interstitialFirst;
    }

    public int getInterstitialInterval() {
        return this.interstitialInterval;
    }

    public int getPriorityContact() {
        return this.priorityContact;
    }

    public int getPriorityNonContact() {
        return this.priorityNonContact;
    }

    public int getRefreshInterval() {
        return this.refreshInterval;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((this.group * 31) + this.priorityNonContact) * 31) + this.priorityContact) * 31) + this.frequencyNonContact) * 31) + this.frequencyContact) * 31) + (this.showWithoutName ? 1 : 0)) * 31) + (this.refresh ? 1 : 0)) * 31) + (this.showInterstitial ? 1 : 0)) * 31) + this.interstitialInterval) * 31) + this.interstitialFirst) * 31) + this.interstitialCap) * 31) + this.interstitialAutoCloseSec) * 31) + this.refreshInterval) * 31) + (this.retryAfterFail ? 1 : 0);
    }

    public boolean isRetryAfterFail() {
        return this.retryAfterFail;
    }

    public boolean shouldRefresh() {
        return this.refresh;
    }

    public boolean shouldShowInterstitial() {
        return this.showInterstitial;
    }

    public boolean shouldShowWithoutName() {
        return this.showWithoutName;
    }
}

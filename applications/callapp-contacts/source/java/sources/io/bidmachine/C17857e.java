package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.bidmachine.e */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/e.class */
public final class C17857e {
    static final String IAB_CONSENT_STRING = "IABConsent_ConsentString";
    static final String IAB_SUBJECT_TO_GDPR = "IABConsent_SubjectToGDPR";
    static final String IAB_TCF_GDPR_APPLIES = "IABTCF_gdprApplies";
    static final String IAB_TCF_TC_STRING = "IABTCF_TCString";
    static final String IAB_US_PRIVACY_STRING = "IABUSPrivacy_String";
    private String iabGDPRConsentString;
    private Boolean iabSubjectToGDPR;
    private Boolean iabTcfGdprApplies;
    private String iabTcfTcString;
    private String iabUSPrivacyString;
    private final SharedPreferences.OnSharedPreferenceChangeListener sharedPreferenceListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: io.bidmachine.e.1
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str.hashCode();
            boolean z = true;
            switch (str.hashCode()) {
                case 83641339:
                    if (str.equals(C17857e.IAB_TCF_GDPR_APPLIES)) {
                        z = false;
                        break;
                    }
                    break;
                case 743443760:
                    if (str.equals(C17857e.IAB_US_PRIVACY_STRING)) {
                        z = true;
                        break;
                    }
                    break;
                case 969191740:
                    if (str.equals(C17857e.IAB_CONSENT_STRING)) {
                        z = true;
                        break;
                    }
                    break;
                case 1218895378:
                    if (str.equals(C17857e.IAB_TCF_TC_STRING)) {
                        z = true;
                        break;
                    }
                    break;
                case 1233058135:
                    if (str.equals(C17857e.IAB_SUBJECT_TO_GDPR)) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    C17857e.this.updateTcfGdprApplies(sharedPreferences);
                    return;
                case true:
                    C17857e.this.updateUSPrivacyString(sharedPreferences);
                    return;
                case true:
                    C17857e.this.updateConsentString(sharedPreferences);
                    return;
                case true:
                    C17857e.this.updateTcfTcString(sharedPreferences);
                    return;
                case true:
                    C17857e.this.updateGDPRSubject(sharedPreferences);
                    return;
                default:
                    return;
            }
        }
    };

    public void updateConsentString(SharedPreferences sharedPreferences) {
        this.iabGDPRConsentString = readString(sharedPreferences, IAB_CONSENT_STRING, null);
    }

    public void updateGDPRSubject(SharedPreferences sharedPreferences) {
        String readString = readString(sharedPreferences, IAB_SUBJECT_TO_GDPR, null);
        Boolean bool = null;
        if (readString != null) {
            bool = Boolean.valueOf(readString.equals("1"));
        }
        this.iabSubjectToGDPR = bool;
    }

    public void updateTcfGdprApplies(SharedPreferences sharedPreferences) {
        int readInt = readInt(sharedPreferences, IAB_TCF_GDPR_APPLIES, -1);
        if (readInt == 1) {
            this.iabTcfGdprApplies = Boolean.TRUE;
        } else if (readInt == 0) {
            this.iabTcfGdprApplies = Boolean.FALSE;
        } else {
            this.iabTcfGdprApplies = null;
        }
    }

    public void updateTcfTcString(SharedPreferences sharedPreferences) {
        this.iabTcfTcString = readString(sharedPreferences, IAB_TCF_TC_STRING, null);
    }

    public void updateUSPrivacyString(SharedPreferences sharedPreferences) {
        this.iabUSPrivacyString = readString(sharedPreferences, IAB_US_PRIVACY_STRING, null);
    }

    public final String getGDPRConsentString() {
        return this.iabGDPRConsentString;
    }

    public final Boolean getSubjectToGDPR() {
        return this.iabSubjectToGDPR;
    }

    public final Boolean getTcfGdprApplies() {
        return this.iabTcfGdprApplies;
    }

    public final String getTcfTcString() {
        return this.iabTcfTcString;
    }

    public final String getUSPrivacyString() {
        return this.iabUSPrivacyString;
    }

    public final void initialize(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this.sharedPreferenceListener);
        updateConsentString(defaultSharedPreferences);
        updateGDPRSubject(defaultSharedPreferences);
        updateUSPrivacyString(defaultSharedPreferences);
        updateTcfTcString(defaultSharedPreferences);
        updateTcfGdprApplies(defaultSharedPreferences);
    }

    final int readInt(SharedPreferences sharedPreferences, String str, int i) {
        try {
            if (sharedPreferences.contains(str)) {
                return sharedPreferences.getInt(str, i);
            }
        } catch (Exception e) {
        }
        return i;
    }

    final String readString(SharedPreferences sharedPreferences, String str, String str2) {
        try {
            String string = sharedPreferences.getString(str, str2);
            if (string != null) {
                return string;
            }
        } catch (Exception e) {
        }
        return str2;
    }
}

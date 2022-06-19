package net.pubnative.lite.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.Locale;
import net.pubnative.lite.sdk.consent.CheckConsentRequest;
import net.pubnative.lite.sdk.consent.UserConsentActivity;
import net.pubnative.lite.sdk.consent.UserConsentRequest;
import net.pubnative.lite.sdk.consent.models.UserConsentRequestModel;
import net.pubnative.lite.sdk.consent.models.UserConsentResponseModel;
import net.pubnative.lite.sdk.location.GeoIpRequest;
import net.pubnative.lite.sdk.utils.CountryUtils;
import net.pubnative.lite.sdk.utils.HyBidAdvertisingId;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.PNAsyncUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/UserDataManager.class */
public class UserDataManager {
    private static final int CONSENT_STATE_ACCEPTED = 1;
    private static final int CONSENT_STATE_DENIED = 0;
    private static final String DEVICE_ID_TYPE = "gaid";
    private static final String KEY_CCPA_CONSENT = "ccpa_consent";
    private static final String KEY_CCPA_PUBLIC_CONSENT = "IABUSPrivacy_String";
    private static final String KEY_CMP_PRESENT_PUBLIC = "IABConsent_CMPPresent";
    private static final String KEY_GDPR_ADVERTISING_ID = "gdpr_advertising_id";
    private static final String KEY_GDPR_CONSENT = "gdpr_consent";
    private static final String KEY_GDPR_CONSENT_STATE = "gdpr_consent_state";
    private static final String KEY_GDPR_PUBLIC_CONSENT = "IABConsent_ConsentString";
    private static final String KEY_GDPR_TCF_2_PUBLIC_CONSENT = "IABTCF_TCString";
    private static final String KEY_SUBJECT_TO_GDPR_PUBLIC = "IABConsent_SubjectToGDPR";
    private static final String PREFERENCES_CONSENT = "net.pubnative.lite.dataconsent";
    private static final String TAG = "UserDataManager";
    private boolean inGDPRZone = false;
    private String mAdvertisingId;
    private final SharedPreferences mAppPreferences;
    private final SharedPreferences.OnSharedPreferenceChangeListener mAppPrefsListener;
    private final String mAppToken;
    private final Context mContext;
    private final SharedPreferences mPreferences;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/UserDataManager$UserDataInitialisationListener.class */
    public interface UserDataInitialisationListener {
        void onDataInitialised(boolean z);
    }

    public UserDataManager(Context context, String str) {
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: net.pubnative.lite.sdk.UserDataManager.5
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                str2.hashCode();
                boolean z = true;
                switch (str2.hashCode()) {
                    case 743443760:
                        if (str2.equals(UserDataManager.KEY_CCPA_PUBLIC_CONSENT)) {
                            z = false;
                            break;
                        }
                        break;
                    case 969191740:
                        if (str2.equals(UserDataManager.KEY_GDPR_PUBLIC_CONSENT)) {
                            z = true;
                            break;
                        }
                        break;
                    case 1218895378:
                        if (str2.equals(UserDataManager.KEY_GDPR_TCF_2_PUBLIC_CONSENT)) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        String string = sharedPreferences.getString(UserDataManager.KEY_CCPA_PUBLIC_CONSENT, null);
                        if (!TextUtils.isEmpty(string)) {
                            UserDataManager.this.setIABUSPrivacyString(string);
                            return;
                        } else {
                            UserDataManager.this.removeIABUSPrivacyString();
                            return;
                        }
                    case true:
                        String string2 = sharedPreferences.getString(UserDataManager.KEY_GDPR_PUBLIC_CONSENT, null);
                        if (!TextUtils.isEmpty(string2)) {
                            UserDataManager.this.setIABGDPRConsentString(string2);
                            return;
                        } else {
                            UserDataManager.this.removeIABGDPRConsentString();
                            return;
                        }
                    case true:
                        String string3 = sharedPreferences.getString(UserDataManager.KEY_GDPR_TCF_2_PUBLIC_CONSENT, null);
                        if (!TextUtils.isEmpty(string3)) {
                            UserDataManager.this.setIABGDPRConsentString(string3);
                            return;
                        } else {
                            UserDataManager.this.removeIABGDPRConsentString();
                            return;
                        }
                    default:
                        return;
                }
            }
        };
        this.mAppPrefsListener = onSharedPreferenceChangeListener;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mAppToken = str;
        this.mPreferences = applicationContext.getSharedPreferences(PREFERENCES_CONSENT, 0);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext.getApplicationContext());
        this.mAppPreferences = defaultSharedPreferences;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public boolean askedForGDPRConsent() {
        boolean contains = this.mPreferences.contains(KEY_GDPR_CONSENT_STATE);
        boolean z = contains;
        if (contains) {
            String string = this.mPreferences.getString(KEY_GDPR_ADVERTISING_ID, "");
            z = contains;
            if (!TextUtils.isEmpty(string)) {
                z = contains;
                if (!string.equals(HyBid.getDeviceInfo().getAdvertisingId())) {
                    z = false;
                }
            }
        }
        return z;
    }

    public void checkConsentGiven(final UserDataInitialisationListener userDataInitialisationListener) {
        new CheckConsentRequest().checkConsent(this.mContext, HyBid.getAppToken(), HyBid.getDeviceInfo().getAdvertisingId(), new CheckConsentRequest.CheckConsentListener() { // from class: net.pubnative.lite.sdk.UserDataManager.4
            @Override // net.pubnative.lite.sdk.consent.CheckConsentRequest.CheckConsentListener
            public void onFailure(Throwable th) {
                Logger.m628e(UserDataManager.TAG, th.getMessage());
                UserDataInitialisationListener userDataInitialisationListener2 = userDataInitialisationListener;
                if (userDataInitialisationListener2 != null) {
                    userDataInitialisationListener2.onDataInitialised(false);
                }
            }

            @Override // net.pubnative.lite.sdk.consent.CheckConsentRequest.CheckConsentListener
            public void onSuccess(UserConsentResponseModel userConsentResponseModel) {
                if (userConsentResponseModel.getStatus().equals("ok")) {
                    if (userConsentResponseModel.getConsent() != null) {
                        if (userConsentResponseModel.getConsent().isConsented()) {
                            UserDataManager.this.setConsentState(1);
                        } else {
                            UserDataManager.this.setConsentState(0);
                        }
                    }
                    UserDataInitialisationListener userDataInitialisationListener2 = userDataInitialisationListener;
                    if (userDataInitialisationListener2 == null) {
                        return;
                    }
                    userDataInitialisationListener2.onDataInitialised(true);
                }
            }
        });
    }

    private void determineUserZone(final UserDataInitialisationListener userDataInitialisationListener) {
        new GeoIpRequest().fetchGeoIp(this.mContext, new GeoIpRequest.GeoIpRequestListener() { // from class: net.pubnative.lite.sdk.UserDataManager.3
            @Override // net.pubnative.lite.sdk.location.GeoIpRequest.GeoIpRequestListener
            public void onFailure(Throwable th) {
                Logger.m628e(UserDataManager.TAG, th.getMessage());
                UserDataInitialisationListener userDataInitialisationListener2 = userDataInitialisationListener;
                if (userDataInitialisationListener2 != null) {
                    userDataInitialisationListener2.onDataInitialised(false);
                }
            }

            @Override // net.pubnative.lite.sdk.location.GeoIpRequest.GeoIpRequestListener
            public void onSuccess(String str) {
                if (TextUtils.isEmpty(str)) {
                    Logger.m626w(UserDataManager.TAG, "No country code was obtained. The default value will be used, therefore no user data consent will be required.");
                    UserDataInitialisationListener userDataInitialisationListener2 = userDataInitialisationListener;
                    if (userDataInitialisationListener2 == null) {
                        return;
                    }
                    userDataInitialisationListener2.onDataInitialised(false);
                    return;
                }
                UserDataManager.this.inGDPRZone = CountryUtils.isGDPRCountry(str);
                if (UserDataManager.this.inGDPRZone && !UserDataManager.this.askedForGDPRConsent()) {
                    UserDataManager.this.checkConsentGiven(userDataInitialisationListener);
                    return;
                }
                UserDataInitialisationListener userDataInitialisationListener3 = userDataInitialisationListener;
                if (userDataInitialisationListener3 == null) {
                    return;
                }
                userDataInitialisationListener3.onDataInitialised(true);
            }
        });
    }

    public void notifyConsentGiven(String str, final boolean z) {
        setConsentState(z ? 1 : 0);
        new UserConsentRequest().doRequest(this.mContext, HyBid.getAppToken(), new UserConsentRequestModel(str, DEVICE_ID_TYPE, z), new UserConsentRequest.UserConsentListener() { // from class: net.pubnative.lite.sdk.UserDataManager.2
            @Override // net.pubnative.lite.sdk.consent.UserConsentRequest.UserConsentListener
            public void onFailure(Throwable th) {
                Logger.m628e(UserDataManager.TAG, th.getMessage());
            }

            @Override // net.pubnative.lite.sdk.consent.UserConsentRequest.UserConsentListener
            public void onSuccess(UserConsentResponseModel userConsentResponseModel) {
                if (userConsentResponseModel.getStatus().equals("ok")) {
                    Logger.m630d(UserDataManager.TAG, String.format(Locale.ENGLISH, "%s user consent has been notified", z ? "Positive" : "Negative"));
                }
            }
        });
    }

    private void processConsent(final boolean z) {
        String advertisingId = HyBid.getDeviceInfo().getAdvertisingId();
        if (!TextUtils.isEmpty(advertisingId)) {
            notifyConsentGiven(advertisingId, z);
            return;
        }
        try {
            PNAsyncUtils.safeExecuteOnExecutor(new HyBidAdvertisingId(this.mContext, new HyBidAdvertisingId.Listener() { // from class: net.pubnative.lite.sdk.UserDataManager.1
                @Override // net.pubnative.lite.sdk.utils.HyBidAdvertisingId.Listener
                public void onHyBidAdvertisingIdFinish(String str, Boolean bool) {
                    if (TextUtils.isEmpty(str)) {
                        Logger.m628e(UserDataManager.TAG, "Consent request failed with an empty advertising ID.");
                    } else {
                        UserDataManager.this.notifyConsentGiven(str, z);
                    }
                }
            }), new Void[0]);
        } catch (Exception e) {
            Logger.m628e(TAG, "Error executing HyBidAdvertisingId AsyncTask");
        }
    }

    public void setConsentState(int i) {
        if (i == 1 || i == 0) {
            SharedPreferences.Editor edit = this.mPreferences.edit();
            edit.putString(KEY_GDPR_ADVERTISING_ID, HyBid.getDeviceInfo().getAdvertisingId());
            edit.putInt(KEY_GDPR_CONSENT_STATE, i);
            edit.apply();
            return;
        }
        throw new RuntimeException("Illegal consent state provided");
    }

    public boolean canCollectData() {
        if (gdprApplies()) {
            return askedForGDPRConsent() && this.mPreferences.getInt(KEY_GDPR_CONSENT_STATE, 0) == 1;
        }
        return true;
    }

    @Deprecated
    public void denyConsent() {
        processConsent(false);
    }

    public boolean gdprApplies() {
        return this.inGDPRZone;
    }

    public String getConsentPageLink() {
        return "https://cdn.pubnative.net/static/consent/consent.html";
    }

    public Intent getConsentScreenIntent(Context context) {
        return new Intent(context, UserConsentActivity.class);
    }

    public String getIABGDPRConsentString() {
        String string = this.mPreferences.getString(KEY_GDPR_CONSENT, null);
        String str = string;
        if (TextUtils.isEmpty(string)) {
            String string2 = this.mAppPreferences.getString(KEY_GDPR_TCF_2_PUBLIC_CONSENT, null);
            str = string2;
            if (TextUtils.isEmpty(string2)) {
                str = this.mAppPreferences.getString(KEY_GDPR_PUBLIC_CONSENT, null);
            }
        }
        return str;
    }

    public String getIABUSPrivacyString() {
        return this.mPreferences.getString(KEY_CCPA_CONSENT, null);
    }

    public String getPrivacyPolicyLink() {
        return "https://pubnative.net/privacy-notice/";
    }

    public String getVendorListLink() {
        return "https://pubnative.net/monetization-partners/";
    }

    @Deprecated
    public void grantConsent() {
        processConsent(true);
    }

    public void initialize(String str, UserDataInitialisationListener userDataInitialisationListener) {
        this.mAdvertisingId = str;
        determineUserZone(userDataInitialisationListener);
    }

    public boolean isCCPAOptOut() {
        String iABUSPrivacyString = getIABUSPrivacyString();
        if (TextUtils.isEmpty(iABUSPrivacyString) || iABUSPrivacyString.length() < 3) {
            return false;
        }
        char charAt = iABUSPrivacyString.charAt(2);
        return charAt == 'y' || charAt == 'Y';
    }

    public boolean isConsentDenied() {
        return this.mPreferences.contains(KEY_GDPR_CONSENT_STATE) && this.mPreferences.getInt(KEY_GDPR_CONSENT_STATE, 0) == 0;
    }

    public void removeIABGDPRConsentString() {
        this.mPreferences.edit().remove(KEY_GDPR_CONSENT).apply();
    }

    public void removeIABUSPrivacyString() {
        this.mPreferences.edit().remove(KEY_CCPA_CONSENT).apply();
    }

    @Deprecated
    public void revokeConsent() {
        denyConsent();
    }

    public void setIABGDPRConsentString(String str) {
        this.mPreferences.edit().putString(KEY_GDPR_CONSENT, str).apply();
    }

    public void setIABUSPrivacyString(String str) {
        this.mPreferences.edit().putString(KEY_CCPA_CONSENT, str).apply();
    }

    public boolean shouldAskConsent() {
        return gdprApplies() && !askedForGDPRConsent();
    }

    public void showConsentRequestScreen(Context context) {
        context.startActivity(getConsentScreenIntent(context));
    }
}

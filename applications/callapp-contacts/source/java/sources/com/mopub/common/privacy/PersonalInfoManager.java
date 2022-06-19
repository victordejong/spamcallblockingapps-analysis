package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.privacy.SyncRequest;
import com.mopub.common.util.ManifestUtils;
import com.mopub.mobileads.MoPubConversionTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdResponse;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager.class */
public class PersonalInfoManager {

    /* renamed from: a */
    private final Context f58911a;

    /* renamed from: c */
    private final C16744b f58913c;

    /* renamed from: d */
    private final ConsentDialogController f58914d;

    /* renamed from: e */
    private final MoPubConversionTracker f58915e;

    /* renamed from: g */
    private MultiAdResponse.ServerOverrideListener f58917g;

    /* renamed from: h */
    private SdkInitializationListener f58918h;

    /* renamed from: j */
    private Long f58920j;

    /* renamed from: k */
    private ConsentStatus f58921k;

    /* renamed from: l */
    private boolean f58922l;

    /* renamed from: m */
    private boolean f58923m;

    /* renamed from: n */
    private boolean f58924n;

    /* renamed from: o */
    private boolean f58925o;

    /* renamed from: i */
    private long f58919i = 300000;

    /* renamed from: b */
    private final Set<ConsentStatusChangeListener> f58912b = Collections.synchronizedSet(new HashSet());

    /* renamed from: f */
    private final SyncRequest.Listener f58916f = new C16741b();

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$6 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$6.class */
    static final /* synthetic */ class C167396 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58937a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f58937a = iArr;
            try {
                iArr[ConsentStatus.EXPLICIT_YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58937a[ConsentStatus.EXPLICIT_NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$a.class */
    public final class C16740a implements MultiAdResponse.ServerOverrideListener {
        private C16740a() {
            PersonalInfoManager.this = r4;
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onForceExplicitNo(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m6645a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.REVOKED_BY_SERVER);
            } else {
                PersonalInfoManager.this.m6642a(ConsentStatus.EXPLICIT_NO, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onForceGdprApplies() {
            PersonalInfoManager.this.forceGdprApplies();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onInvalidateConsent(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m6645a(ConsentStatus.UNKNOWN, ConsentChangeReason.REACQUIRE_BY_SERVER);
            } else {
                PersonalInfoManager.this.m6642a(ConsentStatus.UNKNOWN, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onReacquireConsent(String str) {
            if (!TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f58913c.f58990e = str;
            }
            PersonalInfoManager.this.f58913c.f59005t = true;
            PersonalInfoManager.this.f58913c.m6624a();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onRequestSuccess(String str) {
            if (!TextUtils.isEmpty(PersonalInfoManager.this.f58913c.f58986a) || TextUtils.isEmpty(str)) {
                return;
            }
            PersonalInfoManager.this.f58913c.f58986a = str;
            PersonalInfoManager.this.f58913c.m6624a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    public final class C16741b implements SyncRequest.Listener {
        private C16741b() {
            PersonalInfoManager.this = r4;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            boolean z = volleyError instanceof MoPubNetworkError;
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_FAILED, Integer.valueOf(z ? ((MoPubNetworkError) volleyError).getReason().ordinal() : MoPubErrorCode.UNSPECIFIED.getIntCode()), z ? volleyError.getMessage() : MoPubErrorCode.UNSPECIFIED.toString());
            PersonalInfoManager.this.f58922l = false;
            if (PersonalInfoManager.this.f58918h != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Personal Info Manager initialization finished but ran into errors.");
                PersonalInfoManager.this.f58918h.onInitializationFinished();
                PersonalInfoManager.this.f58918h = null;
            }
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener
        public final void onSuccess(SyncResponse syncResponse) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_COMPLETED, new Object[0]);
            boolean canCollectPersonalInformation = PersonalInfoManager.this.canCollectPersonalInformation();
            if (PersonalInfoManager.this.f58913c.f59006u == null) {
                PersonalInfoManager.this.f58913c.f59006u = Boolean.valueOf(syncResponse.isGdprRegion());
            }
            if (syncResponse.isForceGdprApplies()) {
                PersonalInfoManager.this.f58923m = true;
                PersonalInfoManager.this.f58913c.f58991f = true;
                boolean canCollectPersonalInformation2 = PersonalInfoManager.this.canCollectPersonalInformation();
                if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                    PersonalInfoManager personalInfoManager = PersonalInfoManager.this;
                    personalInfoManager.m6643a(personalInfoManager.f58913c.f58988c, PersonalInfoManager.this.f58913c.f58988c, canCollectPersonalInformation2);
                }
            }
            String str = PersonalInfoManager.this.f58913c.f58987b;
            if (!TextUtils.isEmpty(str) && PersonalInfoManager.this.f58913c.f58986a.isEmpty()) {
                PersonalInfoManager.this.f58913c.f58986a = str;
            }
            PersonalInfoManager.this.f58913c.f58989d = PersonalInfoManager.this.f58921k;
            PersonalInfoManager.this.f58913c.f58995j = syncResponse.isWhitelisted();
            PersonalInfoManager.this.f58913c.f58996k = syncResponse.getCurrentVendorListVersion();
            PersonalInfoManager.this.f58913c.f58997l = syncResponse.getCurrentVendorListLink();
            PersonalInfoManager.this.f58913c.f58998m = syncResponse.getCurrentPrivacyPolicyVersion();
            PersonalInfoManager.this.f58913c.f58999n = syncResponse.getCurrentPrivacyPolicyLink();
            String currentVendorListIabHash = syncResponse.getCurrentVendorListIabHash();
            String currentVendorListIabFormat = syncResponse.getCurrentVendorListIabFormat();
            if (!TextUtils.isEmpty(currentVendorListIabHash) && !currentVendorListIabHash.equals(PersonalInfoManager.this.f58913c.f59001p) && !TextUtils.isEmpty(currentVendorListIabFormat)) {
                PersonalInfoManager.this.f58913c.f59000o = currentVendorListIabFormat;
                PersonalInfoManager.this.f58913c.f59001p = currentVendorListIabHash;
            }
            String str2 = syncResponse.f58941a;
            if (!TextUtils.isEmpty(str2)) {
                PersonalInfoManager.this.f58913c.setExtras(str2);
            }
            String consentChangeReason = syncResponse.getConsentChangeReason();
            if (syncResponse.isForceExplicitNo()) {
                PersonalInfoManager.this.f58917g.onForceExplicitNo(consentChangeReason);
            } else if (syncResponse.isInvalidateConsent()) {
                PersonalInfoManager.this.f58917g.onInvalidateConsent(consentChangeReason);
            } else if (syncResponse.isReacquireConsent()) {
                PersonalInfoManager.this.f58917g.onReacquireConsent(consentChangeReason);
            }
            String callAgainAfterSecs = syncResponse.getCallAgainAfterSecs();
            if (!TextUtils.isEmpty(callAgainAfterSecs)) {
                try {
                    long parseLong = Long.parseLong(callAgainAfterSecs);
                    if (parseLong > 0) {
                        PersonalInfoManager.this.f58919i = parseLong * 1000;
                    } else {
                        MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "callAgainAfterSecs is not positive: ".concat(String.valueOf(callAgainAfterSecs)));
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Unable to parse callAgainAfterSecs. Ignoring value");
                }
            }
            if (!ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f58921k)) {
                PersonalInfoManager.this.f58913c.f58992g = null;
            }
            if (PersonalInfoManager.this.f58924n) {
                PersonalInfoManager.this.f58923m = false;
                PersonalInfoManager.this.f58924n = false;
            }
            PersonalInfoManager.this.f58913c.m6624a();
            PersonalInfoManager.this.f58922l = false;
            if (ConsentStatus.POTENTIAL_WHITELIST.equals(PersonalInfoManager.this.f58921k) && PersonalInfoManager.this.f58913c.f58995j) {
                PersonalInfoManager.this.m6645a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
                PersonalInfoManager.this.requestSync(true);
            }
            if (PersonalInfoManager.this.f58918h != null) {
                PersonalInfoManager.this.f58918h.onInitializationFinished();
                PersonalInfoManager.this.f58918h = null;
            }
        }
    }

    public PersonalInfoManager(Context context, String str, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Context applicationContext = context.getApplicationContext();
        this.f58911a = applicationContext;
        C16740a c16740a = new C16740a();
        this.f58917g = c16740a;
        MultiAdResponse.setServerOverrideListener(c16740a);
        this.f58914d = new ConsentDialogController(applicationContext);
        C16744b c16744b = new C16744b(applicationContext);
        this.f58913c = c16744b;
        if (!TextUtils.isEmpty(str) && !str.equals(c16744b.f58987b)) {
            c16744b.f58986a = "";
            c16744b.f58987b = str;
            c16744b.m6624a();
        }
        this.f58915e = new MoPubConversionTracker(applicationContext);
        MoPubIdentifier.AdvertisingIdChangeListener advertisingIdChangeListener = new MoPubIdentifier.AdvertisingIdChangeListener() { // from class: com.mopub.common.privacy.PersonalInfoManager.1
            @Override // com.mopub.common.privacy.MoPubIdentifier.AdvertisingIdChangeListener
            public final void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
                Preconditions.checkNotNull(advertisingId);
                Preconditions.checkNotNull(advertisingId2);
                if (!advertisingId.isDoNotTrack() || !advertisingId2.isDoNotTrack()) {
                    if (!advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                        PersonalInfoManager.this.m6645a(ConsentStatus.DNT, ConsentChangeReason.DENIED_BY_DNT_ON);
                        PersonalInfoManager.this.requestSync(true);
                    } else if (advertisingId.isDoNotTrack() && !advertisingId2.isDoNotTrack()) {
                        if (ConsentStatus.EXPLICIT_NO.equals(PersonalInfoManager.this.f58913c.f58994i)) {
                            PersonalInfoManager.this.m6645a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DNT_OFF);
                        } else {
                            PersonalInfoManager.this.m6645a(ConsentStatus.UNKNOWN, ConsentChangeReason.DNT_OFF);
                        }
                    } else if (TextUtils.isEmpty(advertisingId2.f58870a) || advertisingId2.f58870a.equals(PersonalInfoManager.this.f58913c.f58992g) || !ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f58913c.f58988c)) {
                    } else {
                        PersonalInfoManager.this.f58913c.f58989d = null;
                        PersonalInfoManager.this.f58913c.f58993h = null;
                        PersonalInfoManager.this.m6645a(ConsentStatus.UNKNOWN, ConsentChangeReason.IFA_CHANGED);
                    }
                }
            }
        };
        this.f58918h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(applicationContext).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(advertisingIdChangeListener);
        moPubIdentifier.f58907d = new SdkInitializationListener() { // from class: com.mopub.common.privacy.PersonalInfoManager.5
            @Override // com.mopub.common.SdkInitializationListener
            public final void onInitializationFinished() {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "MoPubIdentifier initialized.");
                if (PersonalInfoManager.m6636a(PersonalInfoManager.this.f58922l, PersonalInfoManager.this.gdprApplies(), false, PersonalInfoManager.this.f58920j, PersonalInfoManager.this.f58919i, PersonalInfoManager.this.f58913c.f58992g, ClientMetadata.getInstance(PersonalInfoManager.this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                    PersonalInfoManager.this.m6646a();
                } else if (PersonalInfoManager.this.f58918h != null) {
                    PersonalInfoManager.this.f58918h.onInitializationFinished();
                    PersonalInfoManager.this.f58918h = null;
                }
                new MoPubConversionTracker(PersonalInfoManager.this.f58911a).reportAppOpen(true);
            }
        };
        if (moPubIdentifier.f58906c) {
            moPubIdentifier.m6652a();
        }
    }

    /* renamed from: a */
    public void m6643a(final ConsentStatus consentStatus, final ConsentStatus consentStatus2, final boolean z) {
        synchronized (this.f58912b) {
            for (final ConsentStatusChangeListener consentStatusChangeListener : this.f58912b) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        consentStatusChangeListener.onConsentStateChange(consentStatus, consentStatus2, z);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    private static boolean m6644a(ConsentStatus consentStatus, ConsentStatus consentStatus2) {
        if (!ConsentStatus.EXPLICIT_NO.equals(consentStatus2) && !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus2)) {
            return !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus) && ConsentStatus.EXPLICIT_YES.equals(consentStatus2);
        }
        return true;
    }

    /* renamed from: a */
    static boolean m6636a(boolean z, Boolean bool, boolean z2, Long l, long j, String str, boolean z3) {
        if (z) {
            return false;
        }
        if (bool == null) {
            return true;
        }
        if (!bool.booleanValue()) {
            return false;
        }
        if (z2) {
            return true;
        }
        if (z3 && TextUtils.isEmpty(str)) {
            return false;
        }
        return l == null || SystemClock.uptimeMillis() - l.longValue() > j;
    }

    /* renamed from: a */
    final void m6646a() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.f58921k = this.f58913c.f58988c;
        this.f58922l = true;
        this.f58920j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f58911a, this.f58921k.getValue());
        syncUrlGenerator.withAdUnitId(this.f58913c.chooseAdUnit()).withConsentedIfa(this.f58913c.f58992g).withLastChangedMs(this.f58913c.f58993h).withLastConsentStatus(this.f58913c.f58989d).withConsentChangeReason(this.f58913c.f58990e).withConsentedVendorListVersion(this.f58913c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f58913c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f58913c.f59001p).withExtras(this.f58913c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f58913c.isForceGdprApplies());
        if (this.f58923m) {
            this.f58924n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(Boolean.TRUE);
        }
        Networking.getRequestQueue(this.f58911a).add(new SyncRequest(this.f58911a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f58916f));
    }

    /* renamed from: a */
    public final void m6645a(ConsentStatus consentStatus, ConsentChangeReason consentChangeReason) {
        m6642a(consentStatus, consentChangeReason.getReason());
    }

    /* renamed from: a */
    final void m6642a(ConsentStatus consentStatus, String str) {
        Preconditions.checkNotNull(consentStatus);
        Preconditions.checkNotNull(str);
        ConsentStatus consentStatus2 = this.f58913c.f58988c;
        if (!this.f58913c.f59005t && consentStatus2.equals(consentStatus)) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
            MoPubLog.log(consentLogEvent, "Consent status is already " + consentStatus2 + ". Not doing a state transition.");
            return;
        }
        C16744b c16744b = this.f58913c;
        StringBuilder sb = new StringBuilder();
        sb.append(Calendar.getInstance().getTimeInMillis());
        c16744b.f58993h = sb.toString();
        this.f58913c.f58990e = str;
        this.f58913c.f58988c = consentStatus;
        if (m6644a(consentStatus2, consentStatus)) {
            C16744b c16744b2 = this.f58913c;
            c16744b2.f59003r = c16744b2.getCurrentPrivacyPolicyVersion();
            C16744b c16744b3 = this.f58913c;
            c16744b3.f59002q = c16744b3.getCurrentVendorListVersion();
            C16744b c16744b4 = this.f58913c;
            c16744b4.f59004s = c16744b4.getCurrentVendorListIabFormat();
        }
        if (ConsentStatus.DNT.equals(consentStatus) || ConsentStatus.UNKNOWN.equals(consentStatus)) {
            this.f58913c.f59003r = null;
            this.f58913c.f59002q = null;
            this.f58913c.f59004s = null;
        }
        if (ConsentStatus.EXPLICIT_YES.equals(consentStatus)) {
            this.f58913c.f58992g = ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().f58870a;
        }
        if (ConsentStatus.DNT.equals(consentStatus)) {
            this.f58913c.f58994i = consentStatus2;
        }
        this.f58913c.f59005t = false;
        this.f58913c.m6624a();
        boolean canCollectPersonalInformation = canCollectPersonalInformation();
        if (canCollectPersonalInformation) {
            ClientMetadata.getInstance(this.f58911a).repopulateCountryData();
            if (this.f58915e.shouldTrack()) {
                this.f58915e.reportAppOpen(false);
            }
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.UPDATED, consentStatus2, consentStatus, Boolean.valueOf(canCollectPersonalInformation()), str);
        m6643a(consentStatus2, consentStatus, canCollectPersonalInformation);
    }

    public boolean canCollectPersonalInformation() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null) {
            return false;
        }
        if (!gdprApplies.booleanValue()) {
            return true;
        }
        return getPersonalInfoConsentStatus().equals(ConsentStatus.EXPLICIT_YES) && !ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack();
    }

    public void forceGdprApplies() {
        if (this.f58913c.isForceGdprApplies()) {
            return;
        }
        boolean canCollectPersonalInformation = canCollectPersonalInformation();
        this.f58913c.f58991f = true;
        this.f58923m = true;
        this.f58913c.m6624a();
        boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
        if (canCollectPersonalInformation != canCollectPersonalInformation2) {
            m6643a(this.f58913c.f58988c, this.f58913c.f58988c, canCollectPersonalInformation2);
        }
        requestSync(true);
    }

    public Boolean gdprApplies() {
        return this.f58913c.isForceGdprApplies() ? Boolean.TRUE : this.f58913c.f59006u;
    }

    public ConsentData getConsentData() {
        return new C16744b(this.f58911a);
    }

    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f58913c.f58988c;
    }

    public void grantConsent() {
        if (ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f58913c.f58995j) {
            m6645a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            m6645a(ConsentStatus.POTENTIAL_WHITELIST, ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB);
        }
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f58914d.f58882c;
    }

    public void loadConsentDialog(final ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f58911a);
        if (ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            if (consentDialogListener == null) {
                return;
            }
            new Handler().post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.2
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.DO_NOT_TRACK.getIntCode()), MoPubErrorCode.DO_NOT_TRACK);
                    consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.DO_NOT_TRACK);
                }
            });
            return;
        }
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || gdprApplies.booleanValue()) {
            this.f58914d.m6656a(consentDialogListener, gdprApplies, this.f58913c);
        } else if (consentDialogListener == null) {
        } else {
            new Handler().post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.3
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.GDPR_DOES_NOT_APPLY.getIntCode()), MoPubErrorCode.GDPR_DOES_NOT_APPLY);
                    consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.GDPR_DOES_NOT_APPLY);
                }
            });
        }
    }

    public void requestSync(boolean z) {
        if (!MoPub.isSdkInitialized()) {
            return;
        }
        if (!m6636a(this.f58922l, gdprApplies(), z, this.f58920j, this.f58919i, this.f58913c.f58992g, ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
            return;
        }
        m6646a();
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f58911a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        m6645a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.f58925o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.f58925o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        if (!this.f58913c.f59005t) {
            return this.f58913c.f58988c.equals(ConsentStatus.UNKNOWN);
        }
        return true;
    }

    public boolean showConsentDialog() {
        ConsentDialogController consentDialogController = this.f58914d;
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!consentDialogController.f58882c || TextUtils.isEmpty(consentDialogController.f58881b)) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return false;
        }
        consentDialogController.f58882c = false;
        ConsentDialogActivity.m6660a(consentDialogController.f58880a, consentDialogController.f58881b);
        consentDialogController.m6657a();
        return true;
    }

    public void subscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener == null) {
            return;
        }
        this.f58912b.add(consentStatusChangeListener);
    }

    public void unsubscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        this.f58912b.remove(consentStatusChangeListener);
    }
}

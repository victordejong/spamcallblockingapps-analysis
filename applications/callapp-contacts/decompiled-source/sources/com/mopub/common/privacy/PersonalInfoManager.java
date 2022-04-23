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

    /* renamed from: a  reason: collision with root package name */
    private final Context f33957a;

    /* renamed from: c  reason: collision with root package name */
    private final com.mopub.common.privacy.b f33959c;

    /* renamed from: d  reason: collision with root package name */
    private final ConsentDialogController f33960d;
    private final MoPubConversionTracker e;
    private MultiAdResponse.ServerOverrideListener g;
    private SdkInitializationListener h;
    private Long j;
    private ConsentStatus k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private long i = 300000;

    /* renamed from: b  reason: collision with root package name */
    private final Set<ConsentStatusChangeListener> f33958b = Collections.synchronizedSet(new HashSet());
    private final SyncRequest.Listener f = new b();

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$6  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$6.class */
    static final /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33971a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f33971a = iArr;
            try {
                iArr[ConsentStatus.EXPLICIT_YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33971a[ConsentStatus.EXPLICIT_NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$a.class */
    final class a implements MultiAdResponse.ServerOverrideListener {
        private a() {
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onForceExplicitNo(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.REVOKED_BY_SERVER);
            } else {
                PersonalInfoManager.this.a(ConsentStatus.EXPLICIT_NO, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onForceGdprApplies() {
            PersonalInfoManager.this.forceGdprApplies();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onInvalidateConsent(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.a(ConsentStatus.UNKNOWN, ConsentChangeReason.REACQUIRE_BY_SERVER);
            } else {
                PersonalInfoManager.this.a(ConsentStatus.UNKNOWN, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onReacquireConsent(String str) {
            if (!TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f33959c.e = str;
            }
            PersonalInfoManager.this.f33959c.t = true;
            PersonalInfoManager.this.f33959c.a();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public final void onRequestSuccess(String str) {
            if (TextUtils.isEmpty(PersonalInfoManager.this.f33959c.f33988a) && !TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f33959c.f33988a = str;
                PersonalInfoManager.this.f33959c.a();
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    final class b implements SyncRequest.Listener {
        private b() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            boolean z = volleyError instanceof MoPubNetworkError;
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_FAILED, Integer.valueOf(z ? ((MoPubNetworkError) volleyError).getReason().ordinal() : MoPubErrorCode.UNSPECIFIED.getIntCode()), z ? volleyError.getMessage() : MoPubErrorCode.UNSPECIFIED.toString());
            PersonalInfoManager.this.l = false;
            if (PersonalInfoManager.this.h != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Personal Info Manager initialization finished but ran into errors.");
                PersonalInfoManager.this.h.onInitializationFinished();
                PersonalInfoManager.this.h = null;
            }
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener
        public final void onSuccess(SyncResponse syncResponse) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_COMPLETED, new Object[0]);
            boolean canCollectPersonalInformation = PersonalInfoManager.this.canCollectPersonalInformation();
            if (PersonalInfoManager.this.f33959c.u == null) {
                PersonalInfoManager.this.f33959c.u = Boolean.valueOf(syncResponse.isGdprRegion());
            }
            if (syncResponse.isForceGdprApplies()) {
                PersonalInfoManager.this.m = true;
                PersonalInfoManager.this.f33959c.f = true;
                boolean canCollectPersonalInformation2 = PersonalInfoManager.this.canCollectPersonalInformation();
                if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                    PersonalInfoManager personalInfoManager = PersonalInfoManager.this;
                    personalInfoManager.a(personalInfoManager.f33959c.f33990c, PersonalInfoManager.this.f33959c.f33990c, canCollectPersonalInformation2);
                }
            }
            String str = PersonalInfoManager.this.f33959c.f33989b;
            if (!TextUtils.isEmpty(str) && PersonalInfoManager.this.f33959c.f33988a.isEmpty()) {
                PersonalInfoManager.this.f33959c.f33988a = str;
            }
            PersonalInfoManager.this.f33959c.f33991d = PersonalInfoManager.this.k;
            PersonalInfoManager.this.f33959c.j = syncResponse.isWhitelisted();
            PersonalInfoManager.this.f33959c.k = syncResponse.getCurrentVendorListVersion();
            PersonalInfoManager.this.f33959c.l = syncResponse.getCurrentVendorListLink();
            PersonalInfoManager.this.f33959c.m = syncResponse.getCurrentPrivacyPolicyVersion();
            PersonalInfoManager.this.f33959c.n = syncResponse.getCurrentPrivacyPolicyLink();
            String currentVendorListIabHash = syncResponse.getCurrentVendorListIabHash();
            String currentVendorListIabFormat = syncResponse.getCurrentVendorListIabFormat();
            if (!TextUtils.isEmpty(currentVendorListIabHash) && !currentVendorListIabHash.equals(PersonalInfoManager.this.f33959c.p) && !TextUtils.isEmpty(currentVendorListIabFormat)) {
                PersonalInfoManager.this.f33959c.o = currentVendorListIabFormat;
                PersonalInfoManager.this.f33959c.p = currentVendorListIabHash;
            }
            String str2 = syncResponse.f33975a;
            if (!TextUtils.isEmpty(str2)) {
                PersonalInfoManager.this.f33959c.setExtras(str2);
            }
            String consentChangeReason = syncResponse.getConsentChangeReason();
            if (syncResponse.isForceExplicitNo()) {
                PersonalInfoManager.this.g.onForceExplicitNo(consentChangeReason);
            } else if (syncResponse.isInvalidateConsent()) {
                PersonalInfoManager.this.g.onInvalidateConsent(consentChangeReason);
            } else if (syncResponse.isReacquireConsent()) {
                PersonalInfoManager.this.g.onReacquireConsent(consentChangeReason);
            }
            String callAgainAfterSecs = syncResponse.getCallAgainAfterSecs();
            if (!TextUtils.isEmpty(callAgainAfterSecs)) {
                try {
                    long parseLong = Long.parseLong(callAgainAfterSecs);
                    if (parseLong > 0) {
                        PersonalInfoManager.this.i = parseLong * 1000;
                    } else {
                        MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "callAgainAfterSecs is not positive: ".concat(String.valueOf(callAgainAfterSecs)));
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Unable to parse callAgainAfterSecs. Ignoring value");
                }
            }
            if (!ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.k)) {
                PersonalInfoManager.this.f33959c.g = null;
            }
            if (PersonalInfoManager.this.n) {
                PersonalInfoManager.this.m = false;
                PersonalInfoManager.this.n = false;
            }
            PersonalInfoManager.this.f33959c.a();
            PersonalInfoManager.this.l = false;
            if (ConsentStatus.POTENTIAL_WHITELIST.equals(PersonalInfoManager.this.k) && PersonalInfoManager.this.f33959c.j) {
                PersonalInfoManager.this.a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
                PersonalInfoManager.this.requestSync(true);
            }
            if (PersonalInfoManager.this.h != null) {
                PersonalInfoManager.this.h.onInitializationFinished();
                PersonalInfoManager.this.h = null;
            }
        }
    }

    public PersonalInfoManager(Context context, String str, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Context applicationContext = context.getApplicationContext();
        this.f33957a = applicationContext;
        a aVar = new a();
        this.g = aVar;
        MultiAdResponse.setServerOverrideListener(aVar);
        this.f33960d = new ConsentDialogController(applicationContext);
        com.mopub.common.privacy.b bVar = new com.mopub.common.privacy.b(applicationContext);
        this.f33959c = bVar;
        if (!TextUtils.isEmpty(str) && !str.equals(bVar.f33989b)) {
            bVar.f33988a = "";
            bVar.f33989b = str;
            bVar.a();
        }
        this.e = new MoPubConversionTracker(applicationContext);
        MoPubIdentifier.AdvertisingIdChangeListener advertisingIdChangeListener = new MoPubIdentifier.AdvertisingIdChangeListener() { // from class: com.mopub.common.privacy.PersonalInfoManager.1
            @Override // com.mopub.common.privacy.MoPubIdentifier.AdvertisingIdChangeListener
            public final void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
                Preconditions.checkNotNull(advertisingId);
                Preconditions.checkNotNull(advertisingId2);
                if (advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                    return;
                }
                if (!advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                    PersonalInfoManager.this.a(ConsentStatus.DNT, ConsentChangeReason.DENIED_BY_DNT_ON);
                    PersonalInfoManager.this.requestSync(true);
                } else if (!advertisingId.isDoNotTrack() || advertisingId2.isDoNotTrack()) {
                    if (!TextUtils.isEmpty(advertisingId2.f33924a) && !advertisingId2.f33924a.equals(PersonalInfoManager.this.f33959c.g) && ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f33959c.f33990c)) {
                        PersonalInfoManager.this.f33959c.f33991d = null;
                        PersonalInfoManager.this.f33959c.h = null;
                        PersonalInfoManager.this.a(ConsentStatus.UNKNOWN, ConsentChangeReason.IFA_CHANGED);
                    }
                } else if (ConsentStatus.EXPLICIT_NO.equals(PersonalInfoManager.this.f33959c.i)) {
                    PersonalInfoManager.this.a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DNT_OFF);
                } else {
                    PersonalInfoManager.this.a(ConsentStatus.UNKNOWN, ConsentChangeReason.DNT_OFF);
                }
            }
        };
        this.h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(applicationContext).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(advertisingIdChangeListener);
        moPubIdentifier.f33955d = new SdkInitializationListener() { // from class: com.mopub.common.privacy.PersonalInfoManager.5
            @Override // com.mopub.common.SdkInitializationListener
            public final void onInitializationFinished() {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "MoPubIdentifier initialized.");
                if (PersonalInfoManager.a(PersonalInfoManager.this.l, PersonalInfoManager.this.gdprApplies(), false, PersonalInfoManager.this.j, PersonalInfoManager.this.i, PersonalInfoManager.this.f33959c.g, ClientMetadata.getInstance(PersonalInfoManager.this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                    PersonalInfoManager.this.a();
                } else if (PersonalInfoManager.this.h != null) {
                    PersonalInfoManager.this.h.onInitializationFinished();
                    PersonalInfoManager.this.h = null;
                }
                new MoPubConversionTracker(PersonalInfoManager.this.f33957a).reportAppOpen(true);
            }
        };
        if (moPubIdentifier.f33954c) {
            moPubIdentifier.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ConsentStatus consentStatus, final ConsentStatus consentStatus2, final boolean z) {
        synchronized (this.f33958b) {
            for (final ConsentStatusChangeListener consentStatusChangeListener : this.f33958b) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        consentStatusChangeListener.onConsentStateChange(consentStatus, consentStatus2, z);
                    }
                });
            }
        }
    }

    private static boolean a(ConsentStatus consentStatus, ConsentStatus consentStatus2) {
        if (!ConsentStatus.EXPLICIT_NO.equals(consentStatus2) && !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus2)) {
            return !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus) && ConsentStatus.EXPLICIT_YES.equals(consentStatus2);
        }
        return true;
    }

    static boolean a(boolean z, Boolean bool, boolean z2, Long l, long j, String str, boolean z3) {
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
        if (!z3 || !TextUtils.isEmpty(str)) {
            return l == null || SystemClock.uptimeMillis() - l.longValue() > j;
        }
        return false;
    }

    final void a() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.k = this.f33959c.f33990c;
        this.l = true;
        this.j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f33957a, this.k.getValue());
        syncUrlGenerator.withAdUnitId(this.f33959c.chooseAdUnit()).withConsentedIfa(this.f33959c.g).withLastChangedMs(this.f33959c.h).withLastConsentStatus(this.f33959c.f33991d).withConsentChangeReason(this.f33959c.e).withConsentedVendorListVersion(this.f33959c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f33959c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f33959c.p).withExtras(this.f33959c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f33959c.isForceGdprApplies());
        if (this.m) {
            this.n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(Boolean.TRUE);
        }
        Networking.getRequestQueue(this.f33957a).add(new SyncRequest(this.f33957a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ConsentStatus consentStatus, ConsentChangeReason consentChangeReason) {
        a(consentStatus, consentChangeReason.getReason());
    }

    final void a(ConsentStatus consentStatus, String str) {
        Preconditions.checkNotNull(consentStatus);
        Preconditions.checkNotNull(str);
        ConsentStatus consentStatus2 = this.f33959c.f33990c;
        if (this.f33959c.t || !consentStatus2.equals(consentStatus)) {
            com.mopub.common.privacy.b bVar = this.f33959c;
            StringBuilder sb = new StringBuilder();
            sb.append(Calendar.getInstance().getTimeInMillis());
            bVar.h = sb.toString();
            this.f33959c.e = str;
            this.f33959c.f33990c = consentStatus;
            if (a(consentStatus2, consentStatus)) {
                com.mopub.common.privacy.b bVar2 = this.f33959c;
                bVar2.r = bVar2.getCurrentPrivacyPolicyVersion();
                com.mopub.common.privacy.b bVar3 = this.f33959c;
                bVar3.q = bVar3.getCurrentVendorListVersion();
                com.mopub.common.privacy.b bVar4 = this.f33959c;
                bVar4.s = bVar4.getCurrentVendorListIabFormat();
            }
            if (ConsentStatus.DNT.equals(consentStatus) || ConsentStatus.UNKNOWN.equals(consentStatus)) {
                this.f33959c.r = null;
                this.f33959c.q = null;
                this.f33959c.s = null;
            }
            if (ConsentStatus.EXPLICIT_YES.equals(consentStatus)) {
                this.f33959c.g = ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().f33924a;
            }
            if (ConsentStatus.DNT.equals(consentStatus)) {
                this.f33959c.i = consentStatus2;
            }
            this.f33959c.t = false;
            this.f33959c.a();
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            if (canCollectPersonalInformation) {
                ClientMetadata.getInstance(this.f33957a).repopulateCountryData();
                if (this.e.shouldTrack()) {
                    this.e.reportAppOpen(false);
                }
            }
            MoPubLog.log(MoPubLog.ConsentLogEvent.UPDATED, consentStatus2, consentStatus, Boolean.valueOf(canCollectPersonalInformation()), str);
            a(consentStatus2, consentStatus, canCollectPersonalInformation);
            return;
        }
        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
        MoPubLog.log(consentLogEvent, "Consent status is already " + consentStatus2 + ". Not doing a state transition.");
    }

    public boolean canCollectPersonalInformation() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null) {
            return false;
        }
        if (!gdprApplies.booleanValue()) {
            return true;
        }
        return getPersonalInfoConsentStatus().equals(ConsentStatus.EXPLICIT_YES) && !ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack();
    }

    public void forceGdprApplies() {
        if (!this.f33959c.isForceGdprApplies()) {
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            this.f33959c.f = true;
            this.m = true;
            this.f33959c.a();
            boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
            if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                a(this.f33959c.f33990c, this.f33959c.f33990c, canCollectPersonalInformation2);
            }
            requestSync(true);
        }
    }

    public Boolean gdprApplies() {
        return this.f33959c.isForceGdprApplies() ? Boolean.TRUE : this.f33959c.u;
    }

    public ConsentData getConsentData() {
        return new com.mopub.common.privacy.b(this.f33957a);
    }

    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f33959c.f33990c;
    }

    public void grantConsent() {
        if (ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f33959c.j) {
            a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            a(ConsentStatus.POTENTIAL_WHITELIST, ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB);
        }
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f33960d.f33936c;
    }

    public void loadConsentDialog(final ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f33957a);
        if (!ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            Boolean gdprApplies = gdprApplies();
            if (gdprApplies == null || gdprApplies.booleanValue()) {
                this.f33960d.a(consentDialogListener, gdprApplies, this.f33959c);
            } else if (consentDialogListener != null) {
                new Handler().post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.GDPR_DOES_NOT_APPLY.getIntCode()), MoPubErrorCode.GDPR_DOES_NOT_APPLY);
                        consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.GDPR_DOES_NOT_APPLY);
                    }
                });
            }
        } else if (consentDialogListener != null) {
            new Handler().post(new Runnable() { // from class: com.mopub.common.privacy.PersonalInfoManager.2
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.DO_NOT_TRACK.getIntCode()), MoPubErrorCode.DO_NOT_TRACK);
                    consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.DO_NOT_TRACK);
                }
            });
        }
    }

    public void requestSync(boolean z) {
        if (MoPub.isSdkInitialized()) {
            if (a(this.l, gdprApplies(), z, this.j, this.i, this.f33959c.g, ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                a();
            }
        }
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f33957a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        if (this.f33959c.t) {
            return true;
        }
        return this.f33959c.f33990c.equals(ConsentStatus.UNKNOWN);
    }

    public boolean showConsentDialog() {
        ConsentDialogController consentDialogController = this.f33960d;
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!consentDialogController.f33936c || TextUtils.isEmpty(consentDialogController.f33935b)) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return false;
        }
        consentDialogController.f33936c = false;
        ConsentDialogActivity.a(consentDialogController.f33934a, consentDialogController.f33935b);
        consentDialogController.a();
        return true;
    }

    public void subscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener != null) {
            this.f33958b.add(consentStatusChangeListener);
        }
    }

    public void unsubscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        this.f33958b.remove(consentStatusChangeListener);
    }
}

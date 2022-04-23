package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.VisibleForTesting;
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
import p081h.p430l.p431a.p432g.C10692b;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager.class */
public class PersonalInfoManager {
    @NonNull

    /* renamed from: a */
    public final Context f8253a;
    @NonNull

    /* renamed from: c */
    public final C10692b f8255c;
    @NonNull

    /* renamed from: d */
    public final ConsentDialogController f8256d;
    @NonNull

    /* renamed from: e */
    public final MoPubConversionTracker f8257e;
    @Nullable

    /* renamed from: h */
    public SdkInitializationListener f8260h;
    @Nullable

    /* renamed from: j */
    public Long f8262j;
    @Nullable

    /* renamed from: k */
    public ConsentStatus f8263k;

    /* renamed from: l */
    public boolean f8264l;

    /* renamed from: m */
    public boolean f8265m;

    /* renamed from: n */
    public boolean f8266n;

    /* renamed from: o */
    public boolean f8267o;

    /* renamed from: i */
    public long f8261i = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    @NonNull

    /* renamed from: b */
    public final Set<ConsentStatusChangeListener> f8254b = Collections.synchronizedSet(new HashSet());
    @NonNull

    /* renamed from: f */
    public final SyncRequest.Listener f8258f = new C3806h(this, null);
    @NonNull

    /* renamed from: g */
    public MultiAdResponse.ServerOverrideListener f8259g = new C3805g(this, null);

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$a.class */
    public class C3799a implements MoPubIdentifier.AdvertisingIdChangeListener {
        public C3799a() {
        }

        @Override // com.mopub.common.privacy.MoPubIdentifier.AdvertisingIdChangeListener
        public void onIdChanged(@NonNull AdvertisingId advertisingId, @NonNull AdvertisingId advertisingId2) {
            Preconditions.checkNotNull(advertisingId);
            Preconditions.checkNotNull(advertisingId2);
            if (advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                return;
            }
            if (!advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                PersonalInfoManager.this.m30687a(ConsentStatus.DNT, ConsentChangeReason.DENIED_BY_DNT_ON);
                PersonalInfoManager.this.requestSync(true);
            } else if (!advertisingId.isDoNotTrack() || advertisingId2.isDoNotTrack()) {
                if (!TextUtils.isEmpty(advertisingId2.f8210b) && !advertisingId2.m30723a().equals(PersonalInfoManager.this.f8255c.m10904l()) && ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f8255c.m10918e())) {
                    PersonalInfoManager.this.f8255c.m10923c((ConsentStatus) null);
                    PersonalInfoManager.this.f8255c.m10901m(null);
                    PersonalInfoManager.this.m30687a(ConsentStatus.UNKNOWN, ConsentChangeReason.IFA_CHANGED);
                }
            } else if (ConsentStatus.EXPLICIT_NO.equals(PersonalInfoManager.this.f8255c.m10916f())) {
                PersonalInfoManager.this.m30687a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DNT_OFF);
            } else {
                PersonalInfoManager.this.m30687a(ConsentStatus.UNKNOWN, ConsentChangeReason.DNT_OFF);
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    public class RunnableC3800b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f8269a;

        public RunnableC3800b(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f8269a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.DO_NOT_TRACK.getIntCode()), MoPubErrorCode.DO_NOT_TRACK);
            this.f8269a.onConsentDialogLoadFailed(MoPubErrorCode.DO_NOT_TRACK);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$c.class */
    public class RunnableC3801c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f8270a;

        public RunnableC3801c(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f8270a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.GDPR_DOES_NOT_APPLY.getIntCode()), MoPubErrorCode.GDPR_DOES_NOT_APPLY);
            this.f8270a.onConsentDialogLoadFailed(MoPubErrorCode.GDPR_DOES_NOT_APPLY);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$d.class */
    public class RunnableC3802d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentStatusChangeListener f8271a;

        /* renamed from: b */
        public final /* synthetic */ ConsentStatus f8272b;

        /* renamed from: c */
        public final /* synthetic */ ConsentStatus f8273c;

        /* renamed from: d */
        public final /* synthetic */ boolean f8274d;

        public RunnableC3802d(PersonalInfoManager personalInfoManager, ConsentStatusChangeListener consentStatusChangeListener, ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
            this.f8271a = consentStatusChangeListener;
            this.f8272b = consentStatus;
            this.f8273c = consentStatus2;
            this.f8274d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8271a.onConsentStateChange(this.f8272b, this.f8273c, this.f8274d);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$e.class */
    public class C3803e implements SdkInitializationListener {
        public C3803e() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "MoPubIdentifier initialized.");
            if (PersonalInfoManager.m30677a(PersonalInfoManager.this.f8264l, PersonalInfoManager.this.gdprApplies(), false, PersonalInfoManager.this.f8262j, PersonalInfoManager.this.f8261i, PersonalInfoManager.this.f8255c.m10904l(), ClientMetadata.getInstance(PersonalInfoManager.this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                PersonalInfoManager.this.m30676b();
            } else if (PersonalInfoManager.this.f8260h != null) {
                PersonalInfoManager.this.f8260h.onInitializationFinished();
                PersonalInfoManager.this.f8260h = null;
            }
            new MoPubConversionTracker(PersonalInfoManager.this.f8253a).reportAppOpen(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$f.class */
    public static /* synthetic */ class C3804f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8276a = new int[ConsentStatus.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f8276a[ConsentStatus.EXPLICIT_YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8276a[ConsentStatus.EXPLICIT_NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$g.class */
    public class C3805g implements MultiAdResponse.ServerOverrideListener {
        public C3805g() {
        }

        public /* synthetic */ C3805g(PersonalInfoManager personalInfoManager, C3799a aVar) {
            this();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceExplicitNo(@Nullable String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m30687a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.REVOKED_BY_SERVER);
            } else {
                PersonalInfoManager.this.m30684a(ConsentStatus.EXPLICIT_NO, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceGdprApplies() {
            PersonalInfoManager.this.forceGdprApplies();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onInvalidateConsent(@Nullable String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m30687a(ConsentStatus.UNKNOWN, ConsentChangeReason.REACQUIRE_BY_SERVER);
            } else {
                PersonalInfoManager.this.m30684a(ConsentStatus.UNKNOWN, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onReacquireConsent(@Nullable String str) {
            if (!TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f8255c.m10922c(str);
            }
            PersonalInfoManager.this.f8255c.m10925b(true);
            PersonalInfoManager.this.f8255c.m10898o();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onRequestSuccess(@Nullable String str) {
            if (TextUtils.isEmpty(PersonalInfoManager.this.f8255c.m10928b()) && !TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f8255c.m10931a(str);
                PersonalInfoManager.this.f8255c.m10898o();
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$h.class */
    public class C3806h implements SyncRequest.Listener {
        public C3806h() {
        }

        public /* synthetic */ C3806h(PersonalInfoManager personalInfoManager, C3799a aVar) {
            this();
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            boolean z = volleyError instanceof MoPubNetworkError;
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_FAILED, Integer.valueOf(z ? ((MoPubNetworkError) volleyError).getReason().ordinal() : MoPubErrorCode.UNSPECIFIED.getIntCode()), z ? volleyError.getMessage() : MoPubErrorCode.UNSPECIFIED.toString());
            PersonalInfoManager.this.f8264l = false;
            if (PersonalInfoManager.this.f8260h != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Personal Info Manager initialization finished but ran into errors.");
                PersonalInfoManager.this.f8260h.onInitializationFinished();
                PersonalInfoManager.this.f8260h = null;
            }
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener
        public void onSuccess(SyncResponse syncResponse) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_COMPLETED, new Object[0]);
            boolean canCollectPersonalInformation = PersonalInfoManager.this.canCollectPersonalInformation();
            if (PersonalInfoManager.this.f8255c.m10912h() == null) {
                PersonalInfoManager.this.f8255c.m10932a(Boolean.valueOf(syncResponse.isGdprRegion()));
            }
            if (syncResponse.isForceGdprApplies()) {
                PersonalInfoManager.this.f8265m = true;
                PersonalInfoManager.this.f8255c.m10929a(true);
                boolean canCollectPersonalInformation2 = PersonalInfoManager.this.canCollectPersonalInformation();
                if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                    PersonalInfoManager personalInfoManager = PersonalInfoManager.this;
                    personalInfoManager.m30685a(personalInfoManager.f8255c.m10918e(), PersonalInfoManager.this.f8255c.m10918e(), canCollectPersonalInformation2);
                }
            }
            String c = PersonalInfoManager.this.f8255c.m10924c();
            if (!TextUtils.isEmpty(c) && PersonalInfoManager.this.f8255c.m10928b().isEmpty()) {
                PersonalInfoManager.this.f8255c.m10931a(c);
            }
            PersonalInfoManager.this.f8255c.m10923c(PersonalInfoManager.this.f8263k);
            PersonalInfoManager.this.f8255c.m10921c(syncResponse.isWhitelisted());
            PersonalInfoManager.this.f8255c.m10903l(syncResponse.getCurrentVendorListVersion());
            PersonalInfoManager.this.f8255c.m10905k(syncResponse.getCurrentVendorListLink());
            PersonalInfoManager.this.f8255c.m10911h(syncResponse.getCurrentPrivacyPolicyVersion());
            PersonalInfoManager.this.f8255c.m10913g(syncResponse.getCurrentPrivacyPolicyLink());
            String currentVendorListIabHash = syncResponse.getCurrentVendorListIabHash();
            String currentVendorListIabFormat = syncResponse.getCurrentVendorListIabFormat();
            if (!TextUtils.isEmpty(currentVendorListIabHash) && !currentVendorListIabHash.equals(PersonalInfoManager.this.f8255c.m10914g()) && !TextUtils.isEmpty(currentVendorListIabFormat)) {
                PersonalInfoManager.this.f8255c.m10909i(currentVendorListIabFormat);
                PersonalInfoManager.this.f8255c.m10907j(currentVendorListIabHash);
            }
            String a = syncResponse.m30664a();
            if (!TextUtils.isEmpty(a)) {
                PersonalInfoManager.this.f8255c.setExtras(a);
            }
            String consentChangeReason = syncResponse.getConsentChangeReason();
            if (syncResponse.isForceExplicitNo()) {
                PersonalInfoManager.this.f8259g.onForceExplicitNo(consentChangeReason);
            } else if (syncResponse.isInvalidateConsent()) {
                PersonalInfoManager.this.f8259g.onInvalidateConsent(consentChangeReason);
            } else if (syncResponse.isReacquireConsent()) {
                PersonalInfoManager.this.f8259g.onReacquireConsent(consentChangeReason);
            }
            String callAgainAfterSecs = syncResponse.getCallAgainAfterSecs();
            if (!TextUtils.isEmpty(callAgainAfterSecs)) {
                try {
                    long parseLong = Long.parseLong(callAgainAfterSecs);
                    if (parseLong > 0) {
                        PersonalInfoManager.this.f8261i = parseLong * 1000;
                    } else {
                        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
                        MoPubLog.log(consentLogEvent, "callAgainAfterSecs is not positive: " + callAgainAfterSecs);
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Unable to parse callAgainAfterSecs. Ignoring value");
                }
            }
            if (!ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f8263k)) {
                PersonalInfoManager.this.f8255c.m10899n(null);
            }
            if (PersonalInfoManager.this.f8266n) {
                PersonalInfoManager.this.f8265m = false;
                PersonalInfoManager.this.f8266n = false;
            }
            PersonalInfoManager.this.f8255c.m10898o();
            PersonalInfoManager.this.f8264l = false;
            if (ConsentStatus.POTENTIAL_WHITELIST.equals(PersonalInfoManager.this.f8263k) && PersonalInfoManager.this.f8255c.m10902m()) {
                PersonalInfoManager.this.m30687a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
                PersonalInfoManager.this.requestSync(true);
            }
            if (PersonalInfoManager.this.f8260h != null) {
                PersonalInfoManager.this.f8260h.onInitializationFinished();
                PersonalInfoManager.this.f8260h = null;
            }
        }
    }

    public PersonalInfoManager(@NonNull Context context, @NonNull String str, @Nullable SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f8253a = context.getApplicationContext();
        MultiAdResponse.setServerOverrideListener(this.f8259g);
        this.f8256d = new ConsentDialogController(this.f8253a);
        this.f8255c = new C10692b(this.f8253a);
        if (!TextUtils.isEmpty(str) && !str.equals(this.f8255c.m10924c())) {
            this.f8255c.m10931a("");
            this.f8255c.m10926b(str);
            this.f8255c.m10898o();
        }
        this.f8257e = new MoPubConversionTracker(this.f8253a);
        C3799a aVar = new C3799a();
        this.f8260h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(aVar);
        moPubIdentifier.m30699a(m30689a());
    }

    /* renamed from: a */
    public static boolean m30686a(@Nullable ConsentStatus consentStatus, @Nullable ConsentStatus consentStatus2) {
        if (!ConsentStatus.EXPLICIT_NO.equals(consentStatus2) && !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus2)) {
            return !ConsentStatus.POTENTIAL_WHITELIST.equals(consentStatus) && ConsentStatus.EXPLICIT_YES.equals(consentStatus2);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static boolean m30677a(boolean z, @Nullable Boolean bool, boolean z2, @Nullable Long l, long j, @Nullable String str, boolean z3) {
        if (z) {
            return false;
        }
        boolean z4 = true;
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
        if (l == null) {
            return true;
        }
        if (SystemClock.uptimeMillis() - l.longValue() <= j) {
            z4 = false;
        }
        return z4;
    }

    /* renamed from: a */
    public final SdkInitializationListener m30689a() {
        return new C3803e();
    }

    /* renamed from: a */
    public void m30688a(@NonNull ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        int i = C3804f.f8276a[consentStatus.ordinal()];
        if (i == 1) {
            m30687a(consentStatus, ConsentChangeReason.GRANTED_BY_USER);
            requestSync(true);
        } else if (i != 2) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
            MoPubLog.log(consentLogEvent, "Invalid consent status: " + consentStatus + ". This is a bug with the use of changeConsentStateFromDialog.");
        } else {
            m30687a(consentStatus, ConsentChangeReason.DENIED_BY_USER);
            requestSync(true);
        }
    }

    /* renamed from: a */
    public final void m30687a(@NonNull ConsentStatus consentStatus, @NonNull ConsentChangeReason consentChangeReason) {
        m30684a(consentStatus, consentChangeReason.getReason());
    }

    /* renamed from: a */
    public final void m30685a(@NonNull ConsentStatus consentStatus, @NonNull ConsentStatus consentStatus2, boolean z) {
        synchronized (this.f8254b) {
            for (ConsentStatusChangeListener consentStatusChangeListener : this.f8254b) {
                new Handler(Looper.getMainLooper()).post(new RunnableC3802d(this, consentStatusChangeListener, consentStatus, consentStatus2, z));
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30684a(@NonNull ConsentStatus consentStatus, @NonNull String str) {
        Preconditions.checkNotNull(consentStatus);
        Preconditions.checkNotNull(str);
        ConsentStatus e = this.f8255c.m10918e();
        if (this.f8255c.m10900n() || !e.equals(consentStatus)) {
            C10692b bVar = this.f8255c;
            bVar.m10901m("" + Calendar.getInstance().getTimeInMillis());
            this.f8255c.m10922c(str);
            this.f8255c.m10933a(consentStatus);
            if (m30686a(e, consentStatus)) {
                C10692b bVar2 = this.f8255c;
                bVar2.m10919d(bVar2.getCurrentPrivacyPolicyVersion());
                C10692b bVar3 = this.f8255c;
                bVar3.m10915f(bVar3.getCurrentVendorListVersion());
                C10692b bVar4 = this.f8255c;
                bVar4.m10917e(bVar4.getCurrentVendorListIabFormat());
            }
            if (ConsentStatus.DNT.equals(consentStatus) || ConsentStatus.UNKNOWN.equals(consentStatus)) {
                this.f8255c.m10919d(null);
                this.f8255c.m10915f(null);
                this.f8255c.m10917e(null);
            }
            if (ConsentStatus.EXPLICIT_YES.equals(consentStatus)) {
                this.f8255c.m10899n(ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().m30723a());
            }
            if (ConsentStatus.DNT.equals(consentStatus)) {
                this.f8255c.m10927b(e);
            }
            this.f8255c.m10925b(false);
            this.f8255c.m10898o();
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            if (canCollectPersonalInformation) {
                ClientMetadata.getInstance(this.f8253a).repopulateCountryData();
                if (this.f8257e.shouldTrack()) {
                    this.f8257e.reportAppOpen(false);
                }
            }
            MoPubLog.log(MoPubLog.ConsentLogEvent.UPDATED, e, consentStatus, Boolean.valueOf(canCollectPersonalInformation()), str);
            m30685a(e, consentStatus, canCollectPersonalInformation);
            return;
        }
        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
        MoPubLog.log(consentLogEvent, "Consent status is already " + e + ". Not doing a state transition.");
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30676b() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.f8263k = this.f8255c.m10918e();
        this.f8264l = true;
        this.f8262j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f8253a, this.f8263k.getValue());
        syncUrlGenerator.withAdUnitId(this.f8255c.m10935a()).withUdid(this.f8255c.m10904l()).withLastChangedMs(this.f8255c.m10910i()).withLastConsentStatus(this.f8255c.m10908j()).withConsentChangeReason(this.f8255c.m10920d()).withConsentedVendorListVersion(this.f8255c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f8255c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f8255c.m10914g()).withExtras(this.f8255c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f8255c.isForceGdprApplies());
        if (this.f8265m) {
            this.f8266n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(true);
        }
        Networking.getRequestQueue(this.f8253a).add(new SyncRequest(this.f8253a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f8258f));
    }

    public boolean canCollectPersonalInformation() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null) {
            return false;
        }
        if (!gdprApplies.booleanValue()) {
            return true;
        }
        boolean z = false;
        if (getPersonalInfoConsentStatus().equals(ConsentStatus.EXPLICIT_YES)) {
            z = false;
            if (!ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
                z = true;
            }
        }
        return z;
    }

    public void forceGdprApplies() {
        if (!this.f8255c.isForceGdprApplies()) {
            boolean canCollectPersonalInformation = canCollectPersonalInformation();
            this.f8255c.m10929a(true);
            this.f8265m = true;
            this.f8255c.m10898o();
            boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
            if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                m30685a(this.f8255c.m10918e(), this.f8255c.m10918e(), canCollectPersonalInformation2);
            }
            requestSync(true);
        }
    }

    @Nullable
    public Boolean gdprApplies() {
        if (this.f8255c.isForceGdprApplies()) {
            return true;
        }
        return this.f8255c.m10912h();
    }

    public ConsentData getConsentData() {
        return new C10692b(this.f8253a);
    }

    @NonNull
    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f8255c.m10918e();
    }

    public void grantConsent() {
        if (ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f8255c.m10902m()) {
            m30687a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            m30687a(ConsentStatus.POTENTIAL_WHITELIST, ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB);
        }
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f8256d.m30713a();
    }

    public void loadConsentDialog(@Nullable ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f8253a);
        if (!ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            Boolean gdprApplies = gdprApplies();
            if (gdprApplies == null || gdprApplies.booleanValue()) {
                this.f8256d.m30712a(consentDialogListener, gdprApplies, this.f8255c);
            } else if (consentDialogListener != null) {
                new Handler().post(new RunnableC3801c(this, consentDialogListener));
            }
        } else if (consentDialogListener != null) {
            new Handler().post(new RunnableC3800b(this, consentDialogListener));
        }
    }

    public void requestSync(boolean z) {
        if (MoPub.isSdkInitialized()) {
            if (m30677a(this.f8264l, gdprApplies(), z, this.f8262j, this.f8261i, this.f8255c.m10904l(), ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                m30676b();
            }
        }
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f8253a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        m30687a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.f8267o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.f8267o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        if (this.f8255c.m10900n()) {
            return true;
        }
        return this.f8255c.m10918e().equals(ConsentStatus.UNKNOWN);
    }

    public boolean showConsentDialog() {
        return this.f8256d.m30710c();
    }

    public void subscribeConsentStatusChangeListener(@Nullable ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener != null) {
            this.f8254b.add(consentStatusChangeListener);
        }
    }

    public void unsubscribeConsentStatusChangeListener(@Nullable ConsentStatusChangeListener consentStatusChangeListener) {
        this.f8254b.remove(consentStatusChangeListener);
    }
}

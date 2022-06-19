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
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager.class */
public class PersonalInfoManager {

    /* renamed from: a */
    public final Context f4436a;

    /* renamed from: c */
    public final dg1 f4438c;

    /* renamed from: d */
    public final ConsentDialogController f4439d;

    /* renamed from: e */
    public final MoPubConversionTracker f4440e;

    /* renamed from: g */
    public MultiAdResponse.ServerOverrideListener f4442g;

    /* renamed from: h */
    public SdkInitializationListener f4443h;

    /* renamed from: j */
    public Long f4445j;

    /* renamed from: k */
    public ConsentStatus f4446k;

    /* renamed from: l */
    public boolean f4447l;

    /* renamed from: m */
    public boolean f4448m;

    /* renamed from: n */
    public boolean f4449n;

    /* renamed from: o */
    public boolean f4450o;

    /* renamed from: i */
    public long f4444i = 300000;

    /* renamed from: b */
    public final Set<ConsentStatusChangeListener> f4437b = Collections.synchronizedSet(new HashSet());

    /* renamed from: f */
    public final SyncRequest.Listener f4441f = new C1059h(this, null);

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$a.class */
    public class C1052a implements MoPubIdentifier.AdvertisingIdChangeListener {
        public C1052a() {
            PersonalInfoManager.this = r4;
        }

        @Override // com.mopub.common.privacy.MoPubIdentifier.AdvertisingIdChangeListener
        public void onIdChanged(AdvertisingId advertisingId, AdvertisingId advertisingId2) {
            Preconditions.checkNotNull(advertisingId);
            Preconditions.checkNotNull(advertisingId2);
            if (!advertisingId.isDoNotTrack() || !advertisingId2.isDoNotTrack()) {
                if (!advertisingId.isDoNotTrack() && advertisingId2.isDoNotTrack()) {
                    PersonalInfoManager.this.m3804q(ConsentStatus.DNT, ConsentChangeReason.DENIED_BY_DNT_ON);
                    PersonalInfoManager.this.requestSync(true);
                } else if (advertisingId.isDoNotTrack() && !advertisingId2.isDoNotTrack()) {
                    ConsentStatus consentStatus = ConsentStatus.EXPLICIT_NO;
                    if (consentStatus.equals(PersonalInfoManager.this.f4438c.m2673e())) {
                        PersonalInfoManager.this.m3804q(consentStatus, ConsentChangeReason.DNT_OFF);
                    } else {
                        PersonalInfoManager.this.m3804q(ConsentStatus.UNKNOWN, ConsentChangeReason.DNT_OFF);
                    }
                } else if (TextUtils.isEmpty(advertisingId2.f4393a) || advertisingId2.m3853c().equals(PersonalInfoManager.this.f4438c.m2670h()) || !ConsentStatus.EXPLICIT_YES.equals(PersonalInfoManager.this.f4438c.m2674d())) {
                } else {
                    PersonalInfoManager.this.f4438c.m2683F(null);
                    PersonalInfoManager.this.f4438c.m2684E(null);
                    PersonalInfoManager.this.m3804q(ConsentStatus.UNKNOWN, ConsentChangeReason.IFA_CHANGED);
                }
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    public class RunnableC1053b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f4452a;

        public RunnableC1053b(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f4452a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.DO_NOT_TRACK;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f4452a.onConsentDialogLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$c.class */
    public class RunnableC1054c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f4453a;

        public RunnableC1054c(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f4453a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.GDPR_DOES_NOT_APPLY;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f4453a.onConsentDialogLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$d.class */
    public class RunnableC1055d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentStatusChangeListener f4454a;

        /* renamed from: b */
        public final /* synthetic */ ConsentStatus f4455b;

        /* renamed from: c */
        public final /* synthetic */ ConsentStatus f4456c;

        /* renamed from: d */
        public final /* synthetic */ boolean f4457d;

        public RunnableC1055d(PersonalInfoManager personalInfoManager, ConsentStatusChangeListener consentStatusChangeListener, ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
            this.f4454a = consentStatusChangeListener;
            this.f4455b = consentStatus;
            this.f4456c = consentStatus2;
            this.f4457d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4454a.onConsentStateChange(this.f4455b, this.f4456c, this.f4457d);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$e.class */
    public class C1056e implements SdkInitializationListener {
        public C1056e() {
            PersonalInfoManager.this = r4;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "MoPubIdentifier initialized.");
            if (PersonalInfoManager.m3798w(PersonalInfoManager.this.f4447l, PersonalInfoManager.this.gdprApplies(), false, PersonalInfoManager.this.f4445j, PersonalInfoManager.this.f4444i, PersonalInfoManager.this.f4438c.m2670h(), ClientMetadata.getInstance(PersonalInfoManager.this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
                PersonalInfoManager.this.m3799v();
            } else if (PersonalInfoManager.this.f4443h != null) {
                PersonalInfoManager.this.f4443h.onInitializationFinished();
                PersonalInfoManager.this.f4443h = null;
            }
            new MoPubConversionTracker(PersonalInfoManager.this.f4436a).reportAppOpen(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$f */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$f.class */
    public static /* synthetic */ class C1057f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4459a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f4459a = iArr;
            try {
                iArr[ConsentStatus.EXPLICIT_YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4459a[ConsentStatus.EXPLICIT_NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$g */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$g.class */
    public class C1058g implements MultiAdResponse.ServerOverrideListener {
        public C1058g() {
            PersonalInfoManager.this = r4;
        }

        public /* synthetic */ C1058g(PersonalInfoManager personalInfoManager, C1052a c1052a) {
            this();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceExplicitNo(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m3804q(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.REVOKED_BY_SERVER);
            } else {
                PersonalInfoManager.this.m3803r(ConsentStatus.EXPLICIT_NO, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onForceGdprApplies() {
            PersonalInfoManager.this.forceGdprApplies();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onInvalidateConsent(String str) {
            if (TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.m3804q(ConsentStatus.UNKNOWN, ConsentChangeReason.REACQUIRE_BY_SERVER);
            } else {
                PersonalInfoManager.this.m3803r(ConsentStatus.UNKNOWN, str);
            }
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onReacquireConsent(String str) {
            if (!TextUtils.isEmpty(str)) {
                PersonalInfoManager.this.f4438c.m2662p(str);
            }
            PersonalInfoManager.this.f4438c.m2682G(true);
            PersonalInfoManager.this.f4438c.m2678K();
        }

        @Override // com.mopub.network.MultiAdResponse.ServerOverrideListener
        public void onRequestSuccess(String str) {
            if (!TextUtils.isEmpty(PersonalInfoManager.this.f4438c.m2677a()) || TextUtils.isEmpty(str)) {
                return;
            }
            PersonalInfoManager.this.f4438c.m2664n(str);
            PersonalInfoManager.this.f4438c.m2678K();
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$h */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$h.class */
    public class C1059h implements SyncRequest.Listener {
        public C1059h() {
            PersonalInfoManager.this = r4;
        }

        public /* synthetic */ C1059h(PersonalInfoManager personalInfoManager, C1052a c1052a) {
            this();
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            boolean z = volleyError instanceof MoPubNetworkError;
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_FAILED, Integer.valueOf(z ? ((MoPubNetworkError) volleyError).getReason().ordinal() : MoPubErrorCode.UNSPECIFIED.getIntCode()), z ? volleyError.getMessage() : MoPubErrorCode.UNSPECIFIED.toString());
            PersonalInfoManager.this.f4447l = false;
            if (PersonalInfoManager.this.f4443h != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Personal Info Manager initialization finished but ran into errors.");
                PersonalInfoManager.this.f4443h.onInitializationFinished();
                PersonalInfoManager.this.f4443h = null;
            }
        }

        @Override // com.mopub.common.privacy.SyncRequest.Listener
        public void onSuccess(SyncResponse syncResponse) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_COMPLETED, new Object[0]);
            boolean canCollectPersonalInformation = PersonalInfoManager.this.canCollectPersonalInformation();
            if (PersonalInfoManager.this.f4438c.m2671g() == null) {
                PersonalInfoManager.this.f4438c.m2686C(Boolean.valueOf(syncResponse.isGdprRegion()));
            }
            if (syncResponse.isForceGdprApplies()) {
                PersonalInfoManager.this.f4448m = true;
                PersonalInfoManager.this.f4438c.m2687B(true);
                boolean canCollectPersonalInformation2 = PersonalInfoManager.this.canCollectPersonalInformation();
                if (canCollectPersonalInformation != canCollectPersonalInformation2) {
                    PersonalInfoManager personalInfoManager = PersonalInfoManager.this;
                    personalInfoManager.m3800u(personalInfoManager.f4438c.m2674d(), PersonalInfoManager.this.f4438c.m2674d(), canCollectPersonalInformation2);
                }
            }
            String m2676b = PersonalInfoManager.this.f4438c.m2676b();
            if (!TextUtils.isEmpty(m2676b) && PersonalInfoManager.this.f4438c.m2677a().isEmpty()) {
                PersonalInfoManager.this.f4438c.m2664n(m2676b);
            }
            PersonalInfoManager.this.f4438c.m2683F(PersonalInfoManager.this.f4446k);
            PersonalInfoManager.this.f4438c.m2681H(syncResponse.isWhitelisted());
            PersonalInfoManager.this.f4438c.m2688A(syncResponse.getCurrentVendorListVersion());
            PersonalInfoManager.this.f4438c.m2652z(syncResponse.getCurrentVendorListLink());
            PersonalInfoManager.this.f4438c.m2655w(syncResponse.getCurrentPrivacyPolicyVersion());
            PersonalInfoManager.this.f4438c.m2656v(syncResponse.getCurrentPrivacyPolicyLink());
            String currentVendorListIabHash = syncResponse.getCurrentVendorListIabHash();
            String currentVendorListIabFormat = syncResponse.getCurrentVendorListIabFormat();
            if (!TextUtils.isEmpty(currentVendorListIabHash) && !currentVendorListIabHash.equals(PersonalInfoManager.this.f4438c.m2672f()) && !TextUtils.isEmpty(currentVendorListIabFormat)) {
                PersonalInfoManager.this.f4438c.m2654x(currentVendorListIabFormat);
                PersonalInfoManager.this.f4438c.m2653y(currentVendorListIabHash);
            }
            String m3795a = syncResponse.m3795a();
            if (!TextUtils.isEmpty(m3795a)) {
                PersonalInfoManager.this.f4438c.setExtras(m3795a);
            }
            String consentChangeReason = syncResponse.getConsentChangeReason();
            if (syncResponse.isForceExplicitNo()) {
                PersonalInfoManager.this.f4442g.onForceExplicitNo(consentChangeReason);
            } else if (syncResponse.isInvalidateConsent()) {
                PersonalInfoManager.this.f4442g.onInvalidateConsent(consentChangeReason);
            } else if (syncResponse.isReacquireConsent()) {
                PersonalInfoManager.this.f4442g.onReacquireConsent(consentChangeReason);
            }
            String callAgainAfterSecs = syncResponse.getCallAgainAfterSecs();
            if (!TextUtils.isEmpty(callAgainAfterSecs)) {
                try {
                    long parseLong = Long.parseLong(callAgainAfterSecs);
                    if (parseLong > 0) {
                        PersonalInfoManager.this.f4444i = parseLong * 1000;
                    } else {
                        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
                        MoPubLog.log(consentLogEvent, "callAgainAfterSecs is not positive: " + callAgainAfterSecs);
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Unable to parse callAgainAfterSecs. Ignoring value");
                }
            }
            ConsentStatus consentStatus = ConsentStatus.EXPLICIT_YES;
            if (!consentStatus.equals(PersonalInfoManager.this.f4446k)) {
                PersonalInfoManager.this.f4438c.m2685D(null);
            }
            if (PersonalInfoManager.this.f4449n) {
                PersonalInfoManager.this.f4448m = false;
                PersonalInfoManager.this.f4449n = false;
            }
            PersonalInfoManager.this.f4438c.m2678K();
            PersonalInfoManager.this.f4447l = false;
            if (ConsentStatus.POTENTIAL_WHITELIST.equals(PersonalInfoManager.this.f4446k) && PersonalInfoManager.this.f4438c.m2666l()) {
                PersonalInfoManager.this.m3804q(consentStatus, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
                PersonalInfoManager.this.requestSync(true);
            }
            if (PersonalInfoManager.this.f4443h != null) {
                PersonalInfoManager.this.f4443h.onInitializationFinished();
                PersonalInfoManager.this.f4443h = null;
            }
        }
    }

    public PersonalInfoManager(Context context, String str, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Context applicationContext = context.getApplicationContext();
        this.f4436a = applicationContext;
        C1058g c1058g = new C1058g(this, null);
        this.f4442g = c1058g;
        MultiAdResponse.setServerOverrideListener(c1058g);
        this.f4439d = new ConsentDialogController(applicationContext);
        dg1 dg1Var = new dg1(applicationContext);
        this.f4438c = dg1Var;
        if (!TextUtils.isEmpty(str) && !str.equals(dg1Var.m2676b())) {
            dg1Var.m2664n("");
            dg1Var.m2663o(str);
            dg1Var.m2678K();
        }
        this.f4440e = new MoPubConversionTracker(applicationContext);
        C1052a c1052a = new C1052a();
        this.f4443h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(applicationContext).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(c1052a);
        moPubIdentifier.m3823j(m3801t());
    }

    @VisibleForTesting
    /* renamed from: w */
    public static boolean m3798w(boolean z, Boolean bool, boolean z2, Long l, long j, String str, boolean z3) {
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
        if (l == null) {
            return true;
        }
        boolean z4 = false;
        if (SystemClock.uptimeMillis() - l.longValue() > j) {
            z4 = true;
        }
        return z4;
    }

    /* renamed from: x */
    public static boolean m3797x(ConsentStatus consentStatus, ConsentStatus consentStatus2) {
        if (ConsentStatus.EXPLICIT_NO.equals(consentStatus2)) {
            return true;
        }
        ConsentStatus consentStatus3 = ConsentStatus.POTENTIAL_WHITELIST;
        if (consentStatus3.equals(consentStatus2)) {
            return true;
        }
        return !consentStatus3.equals(consentStatus) && ConsentStatus.EXPLICIT_YES.equals(consentStatus2);
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
            if (!ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
                z = true;
            }
        }
        return z;
    }

    public void forceGdprApplies() {
        if (this.f4438c.isForceGdprApplies()) {
            return;
        }
        boolean canCollectPersonalInformation = canCollectPersonalInformation();
        this.f4438c.m2687B(true);
        this.f4448m = true;
        this.f4438c.m2678K();
        boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
        if (canCollectPersonalInformation != canCollectPersonalInformation2) {
            m3800u(this.f4438c.m2674d(), this.f4438c.m2674d(), canCollectPersonalInformation2);
        }
        requestSync(true);
    }

    public Boolean gdprApplies() {
        return this.f4438c.isForceGdprApplies() ? Boolean.TRUE : this.f4438c.m2671g();
    }

    public ConsentData getConsentData() {
        return new dg1(this.f4436a);
    }

    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f4438c.m2674d();
    }

    public void grantConsent() {
        ConsentChangeReason consentChangeReason;
        ConsentStatus consentStatus;
        if (ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f4438c.m2666l()) {
            consentStatus = ConsentStatus.EXPLICIT_YES;
            consentChangeReason = ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB;
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            consentStatus = ConsentStatus.POTENTIAL_WHITELIST;
            consentChangeReason = ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB;
        }
        m3804q(consentStatus, consentChangeReason);
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f4439d.m3847a();
    }

    public void loadConsentDialog(ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f4436a);
        if (ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            if (consentDialogListener == null) {
                return;
            }
            new Handler().post(new RunnableC1053b(this, consentDialogListener));
            return;
        }
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || gdprApplies.booleanValue()) {
            this.f4439d.m3846b(consentDialogListener, gdprApplies, this.f4438c);
        } else if (consentDialogListener == null) {
        } else {
            new Handler().post(new RunnableC1054c(this, consentDialogListener));
        }
    }

    /* renamed from: q */
    public final void m3804q(ConsentStatus consentStatus, ConsentChangeReason consentChangeReason) {
        m3803r(consentStatus, consentChangeReason.getReason());
    }

    @VisibleForTesting
    /* renamed from: r */
    public void m3803r(ConsentStatus consentStatus, String str) {
        Preconditions.checkNotNull(consentStatus);
        Preconditions.checkNotNull(str);
        ConsentStatus m2674d = this.f4438c.m2674d();
        if (!this.f4438c.m2680I() && m2674d.equals(consentStatus)) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
            MoPubLog.log(consentLogEvent, "Consent status is already " + m2674d + ". Not doing a state transition.");
            return;
        }
        dg1 dg1Var = this.f4438c;
        dg1Var.m2684E("" + Calendar.getInstance().getTimeInMillis());
        this.f4438c.m2662p(str);
        this.f4438c.m2661q(consentStatus);
        if (m3797x(m2674d, consentStatus)) {
            dg1 dg1Var2 = this.f4438c;
            dg1Var2.m2659s(dg1Var2.getCurrentPrivacyPolicyVersion());
            dg1 dg1Var3 = this.f4438c;
            dg1Var3.m2657u(dg1Var3.getCurrentVendorListVersion());
            dg1 dg1Var4 = this.f4438c;
            dg1Var4.m2658t(dg1Var4.getCurrentVendorListIabFormat());
        }
        ConsentStatus consentStatus2 = ConsentStatus.DNT;
        if (consentStatus2.equals(consentStatus) || ConsentStatus.UNKNOWN.equals(consentStatus)) {
            this.f4438c.m2659s(null);
            this.f4438c.m2657u(null);
            this.f4438c.m2658t(null);
        }
        if (ConsentStatus.EXPLICIT_YES.equals(consentStatus)) {
            this.f4438c.m2685D(ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().m3853c());
        }
        if (consentStatus2.equals(consentStatus)) {
            this.f4438c.m2660r(m2674d);
        }
        this.f4438c.m2682G(false);
        this.f4438c.m2678K();
        boolean canCollectPersonalInformation = canCollectPersonalInformation();
        if (canCollectPersonalInformation) {
            ClientMetadata.getInstance(this.f4436a).repopulateCountryData();
            if (this.f4440e.shouldTrack()) {
                this.f4440e.reportAppOpen(false);
            }
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.UPDATED, m2674d, consentStatus, Boolean.valueOf(canCollectPersonalInformation()), str);
        m3800u(m2674d, consentStatus, canCollectPersonalInformation);
    }

    public void requestSync(boolean z) {
        if (!MoPub.isSdkInitialized()) {
            return;
        }
        if (!m3798w(this.f4447l, gdprApplies(), z, this.f4445j, this.f4444i, this.f4438c.m2670h(), ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
            return;
        }
        m3799v();
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f4436a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        m3804q(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    /* renamed from: s */
    public void m3802s(ConsentStatus consentStatus) {
        ConsentChangeReason consentChangeReason;
        Preconditions.checkNotNull(consentStatus);
        int i = C1057f.f4459a[consentStatus.ordinal()];
        if (i == 1) {
            consentChangeReason = ConsentChangeReason.GRANTED_BY_USER;
        } else if (i != 2) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
            MoPubLog.log(consentLogEvent, "Invalid consent status: " + consentStatus + ". This is a bug with the use of changeConsentStateFromDialog.");
            return;
        } else {
            consentChangeReason = ConsentChangeReason.DENIED_BY_USER;
        }
        m3804q(consentStatus, consentChangeReason);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.f4450o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.f4450o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        if (!this.f4438c.m2680I()) {
            return this.f4438c.m2674d().equals(ConsentStatus.UNKNOWN);
        }
        return true;
    }

    public boolean showConsentDialog() {
        return this.f4439d.m3844d();
    }

    public void subscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener == null) {
            return;
        }
        this.f4437b.add(consentStatusChangeListener);
    }

    /* renamed from: t */
    public final SdkInitializationListener m3801t() {
        return new C1056e();
    }

    /* renamed from: u */
    public final void m3800u(ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
        synchronized (this.f4437b) {
            for (ConsentStatusChangeListener consentStatusChangeListener : this.f4437b) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1055d(this, consentStatusChangeListener, consentStatus, consentStatus2, z));
            }
        }
    }

    public void unsubscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        this.f4437b.remove(consentStatusChangeListener);
    }

    @VisibleForTesting
    /* renamed from: v */
    public void m3799v() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.f4446k = this.f4438c.m2674d();
        this.f4447l = true;
        this.f4445j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f4436a, this.f4446k.getValue());
        syncUrlGenerator.withAdUnitId(this.f4438c.chooseAdUnit()).withConsentedIfa(this.f4438c.m2670h()).withLastChangedMs(this.f4438c.m2669i()).withLastConsentStatus(this.f4438c.m2668j()).withConsentChangeReason(this.f4438c.m2675c()).withConsentedVendorListVersion(this.f4438c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f4438c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f4438c.m2672f()).withExtras(this.f4438c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f4438c.isForceGdprApplies());
        if (this.f4448m) {
            this.f4449n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(Boolean.TRUE);
        }
        Networking.getRequestQueue(this.f4436a).add(new SyncRequest(this.f4436a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f4441f));
    }
}

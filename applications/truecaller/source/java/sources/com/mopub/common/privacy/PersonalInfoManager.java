package com.mopub.common.privacy;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
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
import com.mopub.common.util.Intents;
import com.mopub.common.util.ManifestUtils;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubConversionTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MultiAdResponse;
import com.mopub.network.Networking;
import e.n.a.l.a;
import e.n.a.l.e;
import e.n.a.l.f;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager.class */
public class PersonalInfoManager {

    /* renamed from: a */
    public final Context f8643a;

    /* renamed from: c */
    public final e f8645c;

    /* renamed from: d */
    public final ConsentDialogController f8646d;

    /* renamed from: e */
    public final MoPubConversionTracker f8647e;

    /* renamed from: g */
    public MultiAdResponse.ServerOverrideListener f8649g;

    /* renamed from: h */
    public SdkInitializationListener f8650h;

    /* renamed from: j */
    public Long f8652j;

    /* renamed from: k */
    public ConsentStatus f8653k;

    /* renamed from: l */
    public boolean f8654l;

    /* renamed from: m */
    public boolean f8655m;

    /* renamed from: n */
    public boolean f8656n;

    /* renamed from: o */
    public boolean f8657o;

    /* renamed from: i */
    public long f8651i = 300000;

    /* renamed from: b */
    public final Set<ConsentStatusChangeListener> f8644b = Collections.synchronizedSet(new HashSet());

    /* renamed from: f */
    public final SyncRequest.Listener f8648f = new f(this, (a) null);

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$b.class */
    public class RunnableC2652b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f8658a;

        public RunnableC2652b(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f8658a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.DO_NOT_TRACK;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f8658a.onConsentDialogLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$c.class */
    public class RunnableC2653c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f8659a;

        public RunnableC2653c(PersonalInfoManager personalInfoManager, ConsentDialogListener consentDialogListener) {
            this.f8659a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.GDPR_DOES_NOT_APPLY;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f8659a.onConsentDialogLoadFailed(moPubErrorCode);
        }
    }

    /* renamed from: com.mopub.common.privacy.PersonalInfoManager$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/PersonalInfoManager$d.class */
    public class RunnableC2654d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentStatusChangeListener f8660a;

        /* renamed from: b */
        public final /* synthetic */ ConsentStatus f8661b;

        /* renamed from: c */
        public final /* synthetic */ ConsentStatus f8662c;

        /* renamed from: d */
        public final /* synthetic */ boolean f8663d;

        public RunnableC2654d(PersonalInfoManager personalInfoManager, ConsentStatusChangeListener consentStatusChangeListener, ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
            this.f8660a = consentStatusChangeListener;
            this.f8661b = consentStatus;
            this.f8662c = consentStatus2;
            this.f8663d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8660a.onConsentStateChange(this.f8661b, this.f8662c, this.f8663d);
        }
    }

    public PersonalInfoManager(Context context, String str, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Context applicationContext = context.getApplicationContext();
        this.f8643a = applicationContext;
        e eVar = new e(this, (a) null);
        this.f8649g = eVar;
        MultiAdResponse.setServerOverrideListener(eVar);
        this.f8646d = new ConsentDialogController(applicationContext);
        e eVar2 = new e(applicationContext);
        this.f8645c = eVar2;
        if (!TextUtils.isEmpty(str) && !str.equals(eVar2.c)) {
            eVar2.b = "";
            eVar2.c = str;
            eVar2.b();
        }
        this.f8647e = new MoPubConversionTracker(applicationContext);
        MoPubIdentifier.AdvertisingIdChangeListener aVar = new a(this);
        this.f8650h = sdkInitializationListener;
        MoPubIdentifier moPubIdentifier = ClientMetadata.getInstance(applicationContext).getMoPubIdentifier();
        moPubIdentifier.setIdChangeListener(aVar);
        moPubIdentifier.f8641f = new f(this);
        if (moPubIdentifier.f8640e) {
            moPubIdentifier.m36270b();
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    public static boolean m36264e(boolean z, Boolean bool, boolean z2, Long l, long j, String str, boolean z3) {
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

    /* renamed from: a */
    public final void m36268a(ConsentStatus consentStatus, ConsentChangeReason consentChangeReason) {
        m36267b(consentStatus, consentChangeReason.getReason());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0161  */
    @com.mopub.common.VisibleForTesting
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m36267b(com.mopub.common.privacy.ConsentStatus r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.privacy.PersonalInfoManager.m36267b(com.mopub.common.privacy.ConsentStatus, java.lang.String):void");
    }

    /* renamed from: c */
    public final void m36266c(ConsentStatus consentStatus, ConsentStatus consentStatus2, boolean z) {
        synchronized (this.f8644b) {
            for (ConsentStatusChangeListener consentStatusChangeListener : this.f8644b) {
                new Handler(Looper.getMainLooper()).post(new RunnableC2654d(this, consentStatusChangeListener, consentStatus, consentStatus2, z));
            }
        }
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
            if (!ClientMetadata.getInstance(this.f8643a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
                z = true;
            }
        }
        return z;
    }

    @VisibleForTesting
    /* renamed from: d */
    public void m36265d() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SYNC_ATTEMPTED, new Object[0]);
        this.f8653k = this.f8645c.d;
        this.f8654l = true;
        this.f8652j = Long.valueOf(SystemClock.uptimeMillis());
        SyncUrlGenerator syncUrlGenerator = new SyncUrlGenerator(this.f8643a, this.f8653k.getValue());
        syncUrlGenerator.withAdUnitId(this.f8645c.chooseAdUnit()).withConsentedIfa(this.f8645c.h).withLastChangedMs(this.f8645c.i).withLastConsentStatus(this.f8645c.e).withConsentChangeReason(this.f8645c.f).withConsentedVendorListVersion(this.f8645c.getConsentedVendorListVersion()).withConsentedPrivacyPolicyVersion(this.f8645c.getConsentedPrivacyPolicyVersion()).withCachedVendorListIabHash(this.f8645c.q).withExtras(this.f8645c.getExtras()).withGdprApplies(gdprApplies()).withForceGdprApplies(this.f8645c.isForceGdprApplies());
        if (this.f8655m) {
            this.f8656n = true;
            syncUrlGenerator.withForceGdprAppliesChanged(Boolean.TRUE);
        }
        Networking.getRequestQueue(this.f8643a).add(new SyncRequest(this.f8643a, syncUrlGenerator.generateUrlString(Constants.HOST), this.f8648f));
    }

    public void forceGdprApplies() {
        if (this.f8645c.isForceGdprApplies()) {
            return;
        }
        boolean canCollectPersonalInformation = canCollectPersonalInformation();
        e eVar = this.f8645c;
        eVar.g = true;
        this.f8655m = true;
        eVar.b();
        boolean canCollectPersonalInformation2 = canCollectPersonalInformation();
        if (canCollectPersonalInformation != canCollectPersonalInformation2) {
            ConsentStatus consentStatus = this.f8645c.d;
            m36266c(consentStatus, consentStatus, canCollectPersonalInformation2);
        }
        requestSync(true);
    }

    public Boolean gdprApplies() {
        return this.f8645c.isForceGdprApplies() ? Boolean.TRUE : this.f8645c.w;
    }

    public ConsentData getConsentData() {
        return new e(this.f8643a);
    }

    public ConsentStatus getPersonalInfoConsentStatus() {
        return this.f8645c.d;
    }

    public void grantConsent() {
        if (ClientMetadata.getInstance(this.f8643a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot grant consent because Do Not Track is on.");
            return;
        }
        if (this.f8645c.k) {
            m36268a(ConsentStatus.EXPLICIT_YES, ConsentChangeReason.GRANTED_BY_WHITELISTED_PUB);
        } else {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information.");
            m36268a(ConsentStatus.POTENTIAL_WHITELIST, ConsentChangeReason.GRANTED_BY_NOT_WHITELISTED_PUB);
        }
        requestSync(true);
    }

    public boolean isConsentDialogReady() {
        return this.f8646d.d;
    }

    public void loadConsentDialog(ConsentDialogListener consentDialogListener) {
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_ATTEMPTED, new Object[0]);
        ManifestUtils.checkGdprActivitiesDeclared(this.f8643a);
        if (ClientMetadata.getInstance(this.f8643a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            if (consentDialogListener == null) {
                return;
            }
            new Handler().post(new RunnableC2652b(this, consentDialogListener));
            return;
        }
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies != null && !gdprApplies.booleanValue()) {
            if (consentDialogListener == null) {
                return;
            }
            new Handler().post(new RunnableC2653c(this, consentDialogListener));
            return;
        }
        ConsentDialogController consentDialogController = this.f8646d;
        e eVar = this.f8645c;
        synchronized (consentDialogController) {
            Preconditions.checkNotNull(eVar);
            if (consentDialogController.d) {
                if (consentDialogListener != null) {
                    consentDialogController.f.post(new a(consentDialogController, consentDialogListener));
                }
            } else if (consentDialogController.e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                consentDialogController.c = consentDialogListener;
                consentDialogController.e = true;
                Context context = consentDialogController.a;
                ConsentDialogUrlGenerator consentDialogUrlGenerator = new ConsentDialogUrlGenerator(context, eVar.b, eVar.d.getValue());
                consentDialogUrlGenerator.h = gdprApplies;
                consentDialogUrlGenerator.k = eVar.getConsentedPrivacyPolicyVersion();
                consentDialogUrlGenerator.j = eVar.getConsentedVendorListVersion();
                consentDialogUrlGenerator.i = eVar.isForceGdprApplies();
                Networking.getRequestQueue(consentDialogController.a).add(new ConsentDialogRequest(context, consentDialogUrlGenerator.generateUrlString(Constants.HOST), consentDialogController));
            }
        }
    }

    public void requestSync(boolean z) {
        if (!MoPub.isSdkInitialized()) {
            return;
        }
        if (!m36264e(this.f8654l, gdprApplies(), z, this.f8652j, this.f8651i, this.f8645c.h, ClientMetadata.getInstance(this.f8643a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack())) {
            return;
        }
        m36265d();
    }

    public void revokeConsent() {
        if (ClientMetadata.getInstance(this.f8643a).getMoPubIdentifier().getAdvertisingInfo().isDoNotTrack()) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.CUSTOM, "Cannot revoke consent because Do Not Track is on.");
            return;
        }
        m36268a(ConsentStatus.EXPLICIT_NO, ConsentChangeReason.DENIED_BY_PUB);
        requestSync(true);
    }

    public void setAllowLegitimateInterest(boolean z) {
        this.f8657o = z;
    }

    public boolean shouldAllowLegitimateInterest() {
        return this.f8657o;
    }

    public boolean shouldShowConsentDialog() {
        Boolean gdprApplies = gdprApplies();
        if (gdprApplies == null || !gdprApplies.booleanValue()) {
            return false;
        }
        e eVar = this.f8645c;
        if (!eVar.v) {
            return eVar.d.equals(ConsentStatus.UNKNOWN);
        }
        return true;
    }

    public boolean showConsentDialog() {
        ConsentDialogController consentDialogController = this.f8646d;
        Objects.requireNonNull(consentDialogController);
        boolean z = false;
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!consentDialogController.d || TextUtils.isEmpty(consentDialogController.b)) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        } else {
            consentDialogController.d = false;
            Context context = consentDialogController.a;
            String str = consentDialogController.b;
            int i = ConsentDialogActivity.f8628e;
            Preconditions.checkNotNull(context);
            if (TextUtils.isEmpty(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity htmlData can't be empty string.");
                MoPubLog.ConsentLogEvent consentLogEvent2 = MoPubLog.ConsentLogEvent.SHOW_FAILED;
                MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.INTERNAL_ERROR;
                MoPubLog.log(consentLogEvent2, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
            } else {
                Preconditions.checkNotNull(context);
                Preconditions.checkNotNull(str);
                Bundle bundle = new Bundle();
                bundle.putString("html-page-content", str);
                try {
                    Intents.startActivity(context, Intents.getStartActivityIntent(context, ConsentDialogActivity.class, bundle));
                } catch (ActivityNotFoundException | IntentNotResolvableException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?");
                    MoPubLog.ConsentLogEvent consentLogEvent3 = MoPubLog.ConsentLogEvent.SHOW_FAILED;
                    MoPubErrorCode moPubErrorCode3 = MoPubErrorCode.INTERNAL_ERROR;
                    MoPubLog.log(consentLogEvent3, Integer.valueOf(moPubErrorCode3.getIntCode()), moPubErrorCode3);
                }
            }
            consentDialogController.e = false;
            consentDialogController.d = false;
            consentDialogController.c = null;
            consentDialogController.b = null;
            z = true;
        }
        return z;
    }

    public void subscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        if (consentStatusChangeListener == null) {
            return;
        }
        this.f8644b.add(consentStatusChangeListener);
    }

    public void unsubscribeConsentStatusChangeListener(ConsentStatusChangeListener consentStatusChangeListener) {
        this.f8644b.remove(consentStatusChangeListener);
    }
}

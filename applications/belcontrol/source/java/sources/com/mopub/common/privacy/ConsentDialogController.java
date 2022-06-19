package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogRequest;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController.class */
public class ConsentDialogController implements ConsentDialogRequest.Listener {

    /* renamed from: a */
    public final Context f4404a;

    /* renamed from: b */
    public String f4405b;

    /* renamed from: c */
    public ConsentDialogListener f4406c;

    /* renamed from: d */
    public volatile boolean f4407d;

    /* renamed from: f */
    public volatile boolean f4408f;

    /* renamed from: g */
    public final Handler f4409g = new Handler();

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$a.class */
    public class RunnableC1044a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f4410a;

        public RunnableC1044a(ConsentDialogController consentDialogController, ConsentDialogListener consentDialogListener) {
            this.f4410a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f4410a.onConsentDialogLoaded();
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$b.class */
    public static /* synthetic */ class C1045b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4411a;

        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f4411a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public ConsentDialogController(Context context) {
        Preconditions.checkNotNull(context);
        this.f4404a = context.getApplicationContext();
    }

    /* renamed from: a */
    public boolean m3847a() {
        return this.f4407d;
    }

    /* renamed from: b */
    public void m3846b(ConsentDialogListener consentDialogListener, Boolean bool, dg1 dg1Var) {
        synchronized (this) {
            Preconditions.checkNotNull(dg1Var);
            if (this.f4407d) {
                if (consentDialogListener != null) {
                    this.f4409g.post(new RunnableC1044a(this, consentDialogListener));
                }
            } else if (this.f4408f) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                this.f4406c = consentDialogListener;
                this.f4408f = true;
                Context context = this.f4404a;
                ConsentDialogUrlGenerator consentDialogUrlGenerator = new ConsentDialogUrlGenerator(this.f4404a, dg1Var.m2677a(), dg1Var.m2674d().getValue());
                consentDialogUrlGenerator.m3833p(bool);
                consentDialogUrlGenerator.m3836m(dg1Var.getConsentedPrivacyPolicyVersion());
                consentDialogUrlGenerator.m3835n(dg1Var.getConsentedVendorListVersion());
                consentDialogUrlGenerator.m3834o(dg1Var.isForceGdprApplies());
                Networking.getRequestQueue(this.f4404a).add(new ConsentDialogRequest(context, consentDialogUrlGenerator.generateUrlString(Constants.HOST), this));
            }
        }
    }

    /* renamed from: c */
    public final void m3845c() {
        this.f4408f = false;
        this.f4407d = false;
        this.f4406c = null;
        this.f4405b = null;
    }

    /* renamed from: d */
    public boolean m3844d() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!this.f4407d || TextUtils.isEmpty(this.f4405b)) {
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            return false;
        }
        this.f4407d = false;
        ConsentDialogActivity.m3848e(this.f4404a, this.f4405b);
        m3845c();
        return true;
    }

    @Override // com.mopub.common.privacy.ConsentDialogRequest.Listener, com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ConsentDialogListener consentDialogListener = this.f4406c;
        m3845c();
        if (consentDialogListener == null) {
            return;
        }
        if (volleyError instanceof MoPubNetworkError) {
            if (C1045b.f4411a[((MoPubNetworkError) volleyError).getReason().ordinal()] == 1) {
                MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
                MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
                MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
                consentDialogListener.onConsentDialogLoadFailed(moPubErrorCode);
                return;
            }
            MoPubLog.ConsentLogEvent consentLogEvent2 = MoPubLog.ConsentLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
            MoPubLog.log(consentLogEvent2, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
        }
        consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.UNSPECIFIED);
    }

    @Override // com.mopub.common.privacy.ConsentDialogRequest.Listener
    public void onSuccess(cg1 cg1Var) {
        this.f4408f = false;
        String html = cg1Var.getHtml();
        this.f4405b = html;
        if (!TextUtils.isEmpty(html)) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f4407d = true;
            ConsentDialogListener consentDialogListener = this.f4406c;
            if (consentDialogListener == null) {
                return;
            }
            consentDialogListener.onConsentDialogLoaded();
            return;
        }
        this.f4407d = false;
        if (this.f4406c == null) {
            return;
        }
        MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.LOAD_FAILED;
        MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
        MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        this.f4406c.onConsentDialogLoadFailed(moPubErrorCode);
    }
}

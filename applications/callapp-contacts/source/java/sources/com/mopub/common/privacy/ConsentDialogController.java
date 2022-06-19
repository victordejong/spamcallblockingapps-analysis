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
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController.class */
public class ConsentDialogController implements ConsentDialogRequest.Listener {

    /* renamed from: a */
    final Context f58880a;

    /* renamed from: b */
    String f58881b;

    /* renamed from: c */
    volatile boolean f58882c;

    /* renamed from: d */
    volatile boolean f58883d;

    /* renamed from: e */
    private ConsentDialogListener f58884e;

    /* renamed from: f */
    private final Handler f58885f = new Handler();

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$2 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$2.class */
    static final /* synthetic */ class C167272 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58888a;

        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f58888a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public ConsentDialogController(Context context) {
        Preconditions.checkNotNull(context);
        this.f58880a = context.getApplicationContext();
    }

    /* renamed from: a */
    public final void m6657a() {
        this.f58883d = false;
        this.f58882c = false;
        this.f58884e = null;
        this.f58881b = null;
    }

    /* renamed from: a */
    public final void m6656a(final ConsentDialogListener consentDialogListener, Boolean bool, C16744b c16744b) {
        synchronized (this) {
            Preconditions.checkNotNull(c16744b);
            if (this.f58882c) {
                if (consentDialogListener != null) {
                    this.f58885f.post(new Runnable() { // from class: com.mopub.common.privacy.ConsentDialogController.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
                            consentDialogListener.onConsentDialogLoaded();
                        }
                    });
                }
            } else if (this.f58883d) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                this.f58884e = consentDialogListener;
                this.f58883d = true;
                Context context = this.f58880a;
                ConsentDialogUrlGenerator consentDialogUrlGenerator = new ConsentDialogUrlGenerator(context, c16744b.f58986a, c16744b.f58988c.getValue());
                consentDialogUrlGenerator.f58897a = bool;
                consentDialogUrlGenerator.f58900d = c16744b.getConsentedPrivacyPolicyVersion();
                consentDialogUrlGenerator.f58899c = c16744b.getConsentedVendorListVersion();
                consentDialogUrlGenerator.f58898b = c16744b.isForceGdprApplies();
                Networking.getRequestQueue(this.f58880a).add(new ConsentDialogRequest(context, consentDialogUrlGenerator.generateUrlString(Constants.HOST), this));
            }
        }
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ConsentDialogListener consentDialogListener = this.f58884e;
        m6657a();
        if (consentDialogListener == null) {
            return;
        }
        if (volleyError instanceof MoPubNetworkError) {
            if (C167272.f58888a[((MoPubNetworkError) volleyError).getReason().ordinal()] == 1) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
        }
        consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.UNSPECIFIED);
    }

    @Override // com.mopub.common.privacy.ConsentDialogRequest.Listener
    public void onSuccess(C16743a c16743a) {
        this.f58883d = false;
        String html = c16743a.getHtml();
        this.f58881b = html;
        if (TextUtils.isEmpty(html)) {
            this.f58882c = false;
            if (this.f58884e == null) {
                return;
            }
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            this.f58884e.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f58882c = true;
        ConsentDialogListener consentDialogListener = this.f58884e;
        if (consentDialogListener == null) {
            return;
        }
        consentDialogListener.onConsentDialogLoaded();
    }
}

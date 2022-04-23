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

    /* renamed from: a  reason: collision with root package name */
    final Context f33934a;

    /* renamed from: b  reason: collision with root package name */
    String f33935b;

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f33936c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f33937d;
    private ConsentDialogListener e;
    private final Handler f = new Handler();

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$2  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$2.class */
    static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33940a;

        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f33940a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConsentDialogController(Context context) {
        Preconditions.checkNotNull(context);
        this.f33934a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f33937d = false;
        this.f33936c = false;
        this.e = null;
        this.f33935b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final ConsentDialogListener consentDialogListener, Boolean bool, b bVar) {
        synchronized (this) {
            Preconditions.checkNotNull(bVar);
            if (this.f33936c) {
                if (consentDialogListener != null) {
                    this.f.post(new Runnable() { // from class: com.mopub.common.privacy.ConsentDialogController.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
                            consentDialogListener.onConsentDialogLoaded();
                        }
                    });
                }
            } else if (this.f33937d) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                this.e = consentDialogListener;
                this.f33937d = true;
                Context context = this.f33934a;
                ConsentDialogUrlGenerator consentDialogUrlGenerator = new ConsentDialogUrlGenerator(context, bVar.f33988a, bVar.f33990c.getValue());
                consentDialogUrlGenerator.f33948a = bool;
                consentDialogUrlGenerator.f33951d = bVar.getConsentedPrivacyPolicyVersion();
                consentDialogUrlGenerator.f33950c = bVar.getConsentedVendorListVersion();
                consentDialogUrlGenerator.f33949b = bVar.isForceGdprApplies();
                Networking.getRequestQueue(this.f33934a).add(new ConsentDialogRequest(context, consentDialogUrlGenerator.generateUrlString(Constants.HOST), this));
            }
        }
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ConsentDialogListener consentDialogListener = this.e;
        a();
        if (consentDialogListener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                if (AnonymousClass2.f33940a[((MoPubNetworkError) volleyError).getReason().ordinal()] != 1) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
                } else {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                    consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
            }
            consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.mopub.common.privacy.ConsentDialogRequest.Listener
    public void onSuccess(a aVar) {
        this.f33937d = false;
        String html = aVar.getHtml();
        this.f33935b = html;
        if (TextUtils.isEmpty(html)) {
            this.f33936c = false;
            if (this.e != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                this.e.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
            return;
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f33936c = true;
        ConsentDialogListener consentDialogListener = this.e;
        if (consentDialogListener != null) {
            consentDialogListener.onConsentDialogLoaded();
        }
    }
}

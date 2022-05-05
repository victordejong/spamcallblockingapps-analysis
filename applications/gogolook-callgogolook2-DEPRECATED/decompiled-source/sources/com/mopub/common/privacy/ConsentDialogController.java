package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogRequest;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import p081h.p430l.p431a.p432g.C10691a;
import p081h.p430l.p431a.p432g.C10692b;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController.class */
public class ConsentDialogController implements ConsentDialogRequest.Listener {
    @NonNull

    /* renamed from: a */
    public final Context f8221a;
    @Nullable

    /* renamed from: b */
    public String f8222b;
    @Nullable

    /* renamed from: c */
    public ConsentDialogListener f8223c;

    /* renamed from: d */
    public volatile boolean f8224d;

    /* renamed from: e */
    public volatile boolean f8225e;

    /* renamed from: f */
    public final Handler f8226f = new Handler();

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$a.class */
    public class RunnableC3791a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f8227a;

        public RunnableC3791a(ConsentDialogController consentDialogController, ConsentDialogListener consentDialogListener) {
            this.f8227a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f8227a.onConsentDialogLoaded();
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$b.class */
    public static /* synthetic */ class C3792b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8228a = new int[MoPubNetworkError.Reason.values().length];

        static {
            try {
                f8228a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public ConsentDialogController(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        this.f8221a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m30712a(@Nullable ConsentDialogListener consentDialogListener, @Nullable Boolean bool, @NonNull C10692b bVar) {
        synchronized (this) {
            Preconditions.checkNotNull(bVar);
            if (this.f8224d) {
                if (consentDialogListener != null) {
                    this.f8226f.post(new RunnableC3791a(this, consentDialogListener));
                }
            } else if (this.f8225e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                this.f8223c = consentDialogListener;
                this.f8225e = true;
                Networking.getRequestQueue(this.f8221a).add(new ConsentDialogRequest(this.f8221a, new ConsentDialogUrlGenerator(this.f8221a, bVar.m10928b(), bVar.m10918e().getValue()).withGdprApplies(bool).withConsentedPrivacyPolicyVersion(bVar.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(bVar.getConsentedVendorListVersion()).withForceGdprApplies(bVar.isForceGdprApplies()).generateUrlString(Constants.HOST), this));
            }
        }
    }

    /* renamed from: a */
    public boolean m30713a() {
        return this.f8224d;
    }

    /* renamed from: b */
    public final void m30711b() {
        this.f8225e = false;
        this.f8224d = false;
        this.f8223c = null;
        this.f8222b = null;
    }

    /* renamed from: c */
    public boolean m30710c() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!this.f8224d || TextUtils.isEmpty(this.f8222b)) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return false;
        }
        this.f8224d = false;
        ConsentDialogActivity.m30714b(this.f8221a, this.f8222b);
        m30711b();
        return true;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ConsentDialogListener consentDialogListener = this.f8223c;
        m30711b();
        if (consentDialogListener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                if (C3792b.f8228a[((MoPubNetworkError) volleyError).getReason().ordinal()] != 1) {
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
    public void onSuccess(C10691a aVar) {
        this.f8225e = false;
        this.f8222b = aVar.getHtml();
        if (TextUtils.isEmpty(this.f8222b)) {
            this.f8224d = false;
            if (this.f8223c != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                this.f8223c.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
            return;
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f8224d = true;
        ConsentDialogListener consentDialogListener = this.f8223c;
        if (consentDialogListener != null) {
            consentDialogListener.onConsentDialogLoaded();
        }
    }
}

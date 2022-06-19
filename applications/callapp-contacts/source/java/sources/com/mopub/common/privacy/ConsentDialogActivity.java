package com.mopub.common.privacy;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogLayout;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity.class */
public class ConsentDialogActivity extends Activity {

    /* renamed from: a */
    ConsentDialogLayout f58873a;

    /* renamed from: b */
    Handler f58874b;

    /* renamed from: c */
    ConsentStatus f58875c;

    /* renamed from: d */
    private Runnable f58876d;

    /* renamed from: a */
    public static void m6660a(Context context, String str) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity htmlData can't be empty string.");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Bundle bundle = new Bundle();
        bundle.putString("html-page-content", str);
        try {
            Intents.startActivity(context, Intents.getStartActivityIntent(context, ConsentDialogActivity.class, bundle));
        } catch (ActivityNotFoundException | IntentNotResolvableException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6659a(ConsentDialogActivity consentDialogActivity, ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        consentDialogActivity.f58875c = consentStatus;
    }

    /* renamed from: a */
    final void m6658a(boolean z) {
        Handler handler = this.f58874b;
        if (handler != null) {
            handler.removeCallbacks(this.f58876d);
        }
        ConsentDialogLayout consentDialogLayout = this.f58873a;
        if (consentDialogLayout != null) {
            consentDialogLayout.setCloseVisible(z);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("html-page-content");
        if (TextUtils.isEmpty(stringExtra)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Web page for ConsentDialogActivity is empty");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            finish();
            return;
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        try {
            ConsentDialogLayout consentDialogLayout = new ConsentDialogLayout(this);
            this.f58873a = consentDialogLayout;
            ConsentDialogLayout.AbstractC16730a abstractC16730a = new ConsentDialogLayout.AbstractC16730a() { // from class: com.mopub.common.privacy.ConsentDialogActivity.1
                @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC16730a
                public final void onCloseClick() {
                    ConsentDialogActivity.this.finish();
                }

                @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC16730a
                public final void onConsentClick(ConsentStatus consentStatus) {
                    ConsentDialogActivity.m6659a(ConsentDialogActivity.this, consentStatus);
                    ConsentDialogActivity.this.m6658a(false);
                }
            };
            Preconditions.checkNotNull(abstractC16730a);
            consentDialogLayout.f58892d = abstractC16730a;
            this.f58876d = new Runnable() { // from class: com.mopub.common.privacy.ConsentDialogActivity.2
                @Override // java.lang.Runnable
                public final void run() {
                    ConsentDialogActivity.this.m6658a(true);
                }
            };
            setContentView(this.f58873a);
            final ConsentDialogLayout consentDialogLayout2 = this.f58873a;
            ConsentDialogLayout.AbstractC16731b abstractC16731b = new ConsentDialogLayout.AbstractC16731b() { // from class: com.mopub.common.privacy.ConsentDialogActivity.3
                @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC16731b
                public final void onLoadProgress(int i) {
                    int i2 = ConsentDialogLayout.f58889a;
                }
            };
            Preconditions.checkNotNull(stringExtra);
            consentDialogLayout2.f58891c = abstractC16731b;
            consentDialogLayout2.f58890b.setWebViewClient(consentDialogLayout2.f58893e);
            consentDialogLayout2.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.common.privacy.ConsentDialogLayout.1
                @Override // com.mopub.common.CloseableLayout.OnCloseListener
                public final void onClose() {
                    if (consentDialogLayout2.f58892d != null) {
                        consentDialogLayout2.f58892d.onCloseClick();
                    }
                }
            });
            WebView webView = consentDialogLayout2.f58890b;
            webView.loadDataWithBaseURL("https://" + Constants.HOST + "/", stringExtra, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
        } catch (RuntimeException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Unable to create WebView", e);
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ConsentStatus consentStatus;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null && (consentStatus = this.f58875c) != null) {
            Preconditions.checkNotNull(consentStatus);
            int i = PersonalInfoManager.C167396.f58937a[consentStatus.ordinal()];
            if (i == 1) {
                personalInformationManager.m6645a(consentStatus, ConsentChangeReason.GRANTED_BY_USER);
                personalInformationManager.requestSync(true);
            } else if (i != 2) {
                MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
                MoPubLog.log(consentLogEvent, "Invalid consent status: " + consentStatus + ". This is a bug with the use of changeConsentStateFromDialog.");
            } else {
                personalInformationManager.m6645a(consentStatus, ConsentChangeReason.DENIED_BY_USER);
                personalInformationManager.requestSync(true);
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_SUCCESS, new Object[0]);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Handler handler = new Handler();
        this.f58874b = handler;
        handler.postDelayed(this.f58876d, 10000L);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        m6658a(true);
    }
}

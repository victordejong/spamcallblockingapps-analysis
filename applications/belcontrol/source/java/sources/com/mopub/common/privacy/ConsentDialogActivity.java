package com.mopub.common.privacy;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogLayout;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity.class */
public class ConsentDialogActivity extends Activity {

    /* renamed from: a */
    public ConsentDialogLayout f4398a;

    /* renamed from: b */
    public Runnable f4399b;

    /* renamed from: c */
    public Handler f4400c;

    /* renamed from: d */
    public ConsentStatus f4401d;

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$a.class */
    public class C1041a implements ConsentDialogLayout.AbstractC1048c {
        public C1041a() {
            ConsentDialogActivity.this = r4;
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC1048c
        public void onCloseClick() {
            ConsentDialogActivity.this.finish();
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC1048c
        public void onConsentClick(ConsentStatus consentStatus) {
            ConsentDialogActivity.this.m3850c(consentStatus);
            ConsentDialogActivity.this.m3849d(false);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$b.class */
    public class RunnableC1042b implements Runnable {
        public RunnableC1042b() {
            ConsentDialogActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConsentDialogActivity.this.m3849d(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$c.class */
    public class C1043c implements ConsentDialogLayout.AbstractC1049d {
        public C1043c(ConsentDialogActivity consentDialogActivity) {
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC1049d
        public void onLoadProgress(int i) {
            int i2 = ConsentDialogLayout.f4412v;
        }
    }

    /* renamed from: b */
    public static Intent m3851b(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Bundle bundle = new Bundle();
        bundle.putString("html-page-content", str);
        return Intents.getStartActivityIntent(context, ConsentDialogActivity.class, bundle);
    }

    /* renamed from: e */
    public static void m3848e(Context context, String str) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity htmlData can't be empty string.");
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            return;
        }
        try {
            Intents.startActivity(context, m3851b(context, str));
        } catch (ActivityNotFoundException | IntentNotResolvableException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?");
            MoPubLog.ConsentLogEvent consentLogEvent2 = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent2, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
        }
    }

    /* renamed from: c */
    public final void m3850c(ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        this.f4401d = consentStatus;
    }

    /* renamed from: d */
    public void m3849d(boolean z) {
        Handler handler = this.f4400c;
        if (handler != null) {
            handler.removeCallbacks(this.f4399b);
        }
        ConsentDialogLayout consentDialogLayout = this.f4398a;
        if (consentDialogLayout != null) {
            consentDialogLayout.setCloseVisible(z);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("html-page-content");
        if (TextUtils.isEmpty(stringExtra)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Web page for ConsentDialogActivity is empty");
            MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            finish();
            return;
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        try {
            ConsentDialogLayout consentDialogLayout = new ConsentDialogLayout(this);
            this.f4398a = consentDialogLayout;
            consentDialogLayout.m3840k(new C1041a());
            this.f4399b = new RunnableC1042b();
            setContentView(this.f4398a);
            this.f4398a.m3838m(stringExtra, new C1043c(this));
        } catch (RuntimeException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Unable to create WebView", e);
            MoPubLog.ConsentLogEvent consentLogEvent2 = MoPubLog.ConsentLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(consentLogEvent2, Integer.valueOf(moPubErrorCode2.getIntCode()), moPubErrorCode2);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ConsentStatus consentStatus;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null && (consentStatus = this.f4401d) != null) {
            personalInformationManager.m3802s(consentStatus);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_SUCCESS, new Object[0]);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Handler handler = new Handler();
        this.f4400c = handler;
        handler.postDelayed(this.f4399b, 10000L);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        m3849d(true);
    }
}

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
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity.class */
public class ConsentDialogActivity extends Activity {

    /* renamed from: a */
    public ConsentDialogLayout f33834a;

    /* renamed from: b */
    public Runnable f33835b;

    /* renamed from: c */
    public Handler f33836c;

    /* renamed from: d */
    public ConsentStatus f33837d;

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$a.class */
    public class C8726a implements ConsentDialogLayout.AbstractC8733c {
        public C8726a() {
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC8733c
        public void onCloseClick() {
            ConsentDialogActivity.this.finish();
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC8733c
        public void onConsentClick(ConsentStatus consentStatus) {
            ConsentDialogActivity.this.m4570a(consentStatus);
            ConsentDialogActivity.this.m4569a(false);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$b.class */
    public class RunnableC8727b implements Runnable {
        public RunnableC8727b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConsentDialogActivity.this.m4569a(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$c.class */
    public class C8728c implements ConsentDialogLayout.AbstractC8734d {
        public C8728c() {
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC8734d
        public void onLoadProgress(int i) {
            int i2 = ConsentDialogLayout.f33849s;
        }
    }

    /* renamed from: a */
    public static Intent m4572a(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Bundle bundle = new Bundle();
        bundle.putString("html-page-content", str);
        return Intents.getStartActivityIntent(context, ConsentDialogActivity.class, bundle);
    }

    /* renamed from: b */
    public static void m4568b(Context context, String str) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity htmlData can't be empty string.");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        try {
            Intents.startActivity(context, m4572a(context, str));
        } catch (ActivityNotFoundException | IntentNotResolvableException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    /* renamed from: a */
    public final void m4570a(ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        this.f33837d = consentStatus;
    }

    /* renamed from: a */
    public void m4569a(boolean z) {
        Handler handler = this.f33836c;
        if (handler != null) {
            handler.removeCallbacks(this.f33835b);
        }
        ConsentDialogLayout consentDialogLayout = this.f33834a;
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
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            finish();
            return;
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        try {
            ConsentDialogLayout consentDialogLayout = new ConsentDialogLayout(this);
            this.f33834a = consentDialogLayout;
            consentDialogLayout.m4562a(new C8726a());
            this.f33835b = new RunnableC8727b();
            setContentView(this.f33834a);
            this.f33834a.m4560a(stringExtra, new C8728c());
        } catch (RuntimeException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Unable to create WebView", e);
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ConsentStatus consentStatus;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (!(personalInformationManager == null || (consentStatus = this.f33837d) == null)) {
            personalInformationManager.m4542a(consentStatus);
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
        this.f33836c = handler;
        handler.postDelayed(this.f33835b, 10000L);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        m4569a(true);
    }
}

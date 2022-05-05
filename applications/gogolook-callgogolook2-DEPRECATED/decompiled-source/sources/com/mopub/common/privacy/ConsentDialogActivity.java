package com.mopub.common.privacy;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogLayout;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity.class */
public class ConsentDialogActivity extends Activity {
    @Nullable

    /* renamed from: a */
    public ConsentDialogLayout f8215a;
    @Nullable

    /* renamed from: b */
    public Runnable f8216b;
    @Nullable

    /* renamed from: c */
    public Handler f8217c;
    @Nullable

    /* renamed from: d */
    public ConsentStatus f8218d;

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$a.class */
    public class C3788a implements ConsentDialogLayout.AbstractC3795c {
        public C3788a() {
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC3795c
        public void onCloseClick() {
            ConsentDialogActivity.this.finish();
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC3795c
        public void onConsentClick(ConsentStatus consentStatus) {
            ConsentDialogActivity.this.m30716a(consentStatus);
            ConsentDialogActivity.this.m30715a(false);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$b.class */
    public class RunnableC3789b implements Runnable {
        public RunnableC3789b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConsentDialogActivity.this.m30715a(true);
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$c.class */
    public class C3790c implements ConsentDialogLayout.AbstractC3796d {
        public C3790c(ConsentDialogActivity consentDialogActivity) {
        }

        @Override // com.mopub.common.privacy.ConsentDialogLayout.AbstractC3796d
        public void onLoadProgress(int i) {
            int i2 = ConsentDialogLayout.f8229s;
        }
    }

    @NonNull
    /* renamed from: a */
    public static Intent m30718a(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Bundle bundle = new Bundle();
        bundle.putString("html-page-content", str);
        return Intents.getStartActivityIntent(context, ConsentDialogActivity.class, bundle);
    }

    /* renamed from: b */
    public static void m30714b(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity htmlData can't be empty string.");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        try {
            Intents.startActivity(context, m30718a(context, str));
        } catch (ActivityNotFoundException | IntentNotResolvableException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ConsentDialogActivity not found - did you declare it in AndroidManifest.xml?");
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    /* renamed from: a */
    public final void m30716a(@NonNull ConsentStatus consentStatus) {
        Preconditions.checkNotNull(consentStatus);
        this.f8218d = consentStatus;
    }

    /* renamed from: a */
    public void m30715a(boolean z) {
        Handler handler = this.f8217c;
        if (handler != null) {
            handler.removeCallbacks(this.f8216b);
        }
        ConsentDialogLayout consentDialogLayout = this.f8215a;
        if (consentDialogLayout != null) {
            consentDialogLayout.setCloseVisible(z);
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
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
            this.f8215a = new ConsentDialogLayout(this);
            this.f8215a.m30708a(new C3788a());
            this.f8216b = new RunnableC3789b();
            setContentView(this.f8215a);
            this.f8215a.m30706a(stringExtra, new C3790c(this));
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
        if (!(personalInformationManager == null || (consentStatus = this.f8218d) == null)) {
            personalInformationManager.m30688a(consentStatus);
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
        this.f8217c = new Handler();
        this.f8217c.postDelayed(this.f8216b, 10000L);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        m30715a(true);
    }
}

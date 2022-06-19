package com.mopub.common.privacy;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.amazon.device.ads.DtbConstants;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.tenor.android.core.constant.StringConstant;
import e.n.a.l.b;
import e.n.a.l.c;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity.class */
public class ConsentDialogActivity extends Activity {

    /* renamed from: e */
    public static final /* synthetic */ int f8628e = 0;

    /* renamed from: a */
    public c f8629a;

    /* renamed from: b */
    public Runnable f8630b;

    /* renamed from: c */
    public Handler f8631c;

    /* renamed from: d */
    public ConsentStatus f8632d;

    /* renamed from: com.mopub.common.privacy.ConsentDialogActivity$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogActivity$b.class */
    public class RunnableC2649b implements Runnable {
        public RunnableC2649b() {
            ConsentDialogActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConsentDialogActivity.this.m36272a(true);
        }
    }

    /* renamed from: a */
    public void m36272a(boolean z) {
        Handler handler = this.f8631c;
        if (handler != null) {
            handler.removeCallbacks(this.f8630b);
        }
        c cVar = this.f8629a;
        if (cVar != null) {
            cVar.setCloseVisible(z);
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
            c cVar = new c(this);
            this.f8629a = cVar;
            a aVar = new a(this);
            Objects.requireNonNull(cVar);
            Preconditions.checkNotNull(aVar);
            cVar.r = aVar;
            this.f8630b = new RunnableC2649b();
            setContentView((View) this.f8629a);
            c cVar2 = this.f8629a;
            c cVar3 = new c(this);
            Objects.requireNonNull(cVar2);
            Preconditions.checkNotNull(stringExtra);
            cVar2.q = cVar3;
            cVar2.p.setWebViewClient(cVar2.s);
            cVar2.setOnCloseListener(new b(cVar2));
            cVar2.p.loadDataWithBaseURL(C22128a.m8618h(C22128a.m8728C(DtbConstants.HTTPS), Constants.HOST, StringConstant.SLASH), stringExtra, "text/html", StringConstant.UTF8, null);
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
        if (personalInformationManager != null && (consentStatus = this.f8632d) != null) {
            Preconditions.checkNotNull(consentStatus);
            int ordinal = consentStatus.ordinal();
            if (ordinal == 0) {
                personalInformationManager.m36268a(consentStatus, ConsentChangeReason.GRANTED_BY_USER);
                personalInformationManager.requestSync(true);
            } else if (ordinal != 1) {
                MoPubLog.ConsentLogEvent consentLogEvent = MoPubLog.ConsentLogEvent.CUSTOM;
                MoPubLog.log(consentLogEvent, "Invalid consent status: " + consentStatus + ". This is a bug with the use of changeConsentStateFromDialog.");
            } else {
                personalInformationManager.m36268a(consentStatus, ConsentChangeReason.DENIED_BY_USER);
                personalInformationManager.requestSync(true);
            }
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
        this.f8631c = handler;
        handler.postDelayed(this.f8630b, 10000L);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        m36272a(true);
    }
}

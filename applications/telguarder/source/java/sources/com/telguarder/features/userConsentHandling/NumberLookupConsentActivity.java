package com.telguarder.features.userConsentHandling;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Spanned;
import android.view.View;
import android.webkit.WebViewClient;
import com.telguarder.C2083R;
import com.telguarder.features.main.MainActivity;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.web.LollipopFixedWebView;
import java.util.HashMap;
import java.util.Map;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.Textoo;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/userConsentHandling/NumberLookupConsentActivity.class */
public class NumberLookupConsentActivity extends ConsentActivity {
    private String mPrivacyUrl;

    public Map<String, String> getCustomHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("X-DeviceId", UID.uid(this));
        return hashMap;
    }

    private void logPermissionResults(String[] strArr, int[] iArr) {
        if (Build.VERSION.SDK_INT >= 23) {
            for (int i = 0; i < strArr.length; i++) {
                if (!"android.permission.ANSWER_PHONE_CALLS".equals(strArr[i]) || Build.VERSION.SDK_INT >= 28) {
                    boolean z = true;
                    boolean z2 = iArr[i] != 0;
                    if (!z2 || shouldShowRequestPermissionRationale(strArr[i])) {
                        z = false;
                    }
                    AnalyticsManager.getInstance().sendRuntimePermissionReqResult(strArr[i], !z2, z);
                }
            }
        }
    }

    public static void openNumberLookupConsentActivity(Context context, boolean z, boolean z2) {
        Intent intent = new Intent(context, NumberLookupConsentActivity.class);
        if (z) {
            intent.setFlags(131072);
        }
        if (z2) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    private void preloadWebView(final String str) {
        new Handler().post(new Runnable() { // from class: com.telguarder.features.userConsentHandling.NumberLookupConsentActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (NumberLookupConsentActivity.this == null) {
                        return;
                    }
                    LollipopFixedWebView lollipopFixedWebView = new LollipopFixedWebView(NumberLookupConsentActivity.this);
                    lollipopFixedWebView.setWebViewClient(new WebViewClient());
                    lollipopFixedWebView.getSettings().setCacheMode(-1);
                    lollipopFixedWebView.loadUrl(str, NumberLookupConsentActivity.this.getCustomHeaders());
                } catch (Exception e) {
                }
            }
        });
    }

    @Override // com.telguarder.features.userConsentHandling.ConsentActivity
    protected Spanned getPolicyText(Context context) {
        return AppUtil.fromHtml(getString(C2083R.string.privacy_policy_2018).replace("<privacylink>", "<a href=\"privacy:\"><b>").replace("</privacylink>", "</a></b>"));
    }

    @Override // com.telguarder.features.userConsentHandling.ConsentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mPrivacyUrl = String.format(BackendApi.WEB_PRIVACY_POLICY, CountryManager.getInstance().getDeviceLanguage());
        Textoo.config(this.mPolicyTextView).addLinksHandler(new LinksHandler() { // from class: com.telguarder.features.userConsentHandling.NumberLookupConsentActivity.1
            @Override // org.bluecabin.textoo.LinksHandler
            public boolean onClick(View view, String str) {
                str.hashCode();
                if (!str.equals("privacy:")) {
                    return false;
                }
                NumberLookupConsentActivity numberLookupConsentActivity = NumberLookupConsentActivity.this;
                PolicyWebView.openPolicy(numberLookupConsentActivity, numberLookupConsentActivity.mPrivacyUrl);
                return true;
            }
        }).apply();
        preloadWebView(this.mPrivacyUrl);
    }

    @Override // com.telguarder.features.userConsentHandling.ConsentActivity
    protected void onDismiss() {
        UserConsentManager.getInstance().onNumberLookupConsentDismiss(this);
        finishAndRemoveTask();
    }

    @Override // com.telguarder.features.userConsentHandling.ConsentActivity
    protected void onNo() {
        UserConsentManager.getInstance().onNumberLookupConsentNo(this);
        finishAndRemoveTask();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        NumberLookupConsentActivityPermissionsDispatcher.onRequestPermissionsResult(this, i, iArr);
        logPermissionResults(strArr, iArr);
        startNextActivity();
    }

    @Override // com.telguarder.features.userConsentHandling.ConsentActivity
    protected void onYes() {
        NumberLookupConsentActivityPermissionsDispatcher.startNextActivityWithPermissionCheck(this);
    }

    public void showDeniedForPermissions() {
        startNextActivity();
    }

    public void startNextActivity() {
        UserConsentManager.getInstance().onNumberLookupConsentYes(this);
        MainActivity.openMainActivity(this, false);
        finish();
    }
}

package com.telguarder.features.phoneEventHistory;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/SpamCallsActivity.class */
public class SpamCallsActivity extends PhoneEventBaseActivity {
    private static final String TAG = "SpamCallsActivity";

    public static void openSpamCalls(AppCompatActivity appCompatActivity, View view) {
        UiHelper.openMainFeatureActivity(appCompatActivity, view, SpamCallsActivity.class, UiHelper.PageType.SPAMCALLS, false);
    }

    @Override // com.telguarder.features.phoneEventHistory.PhoneEventBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.pageTitle = C2083R.string.spam_calls;
        this.spamFilter = true;
        super.onCreate(bundle);
    }
}

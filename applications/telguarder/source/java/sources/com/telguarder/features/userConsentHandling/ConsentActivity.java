package com.telguarder.features.userConsentHandling;

import android.content.Context;
import android.os.Bundle;
import android.text.Spanned;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/userConsentHandling/ConsentActivity.class */
public abstract class ConsentActivity extends AppCompatActivity {
    public TextView mPolicyTextView;

    private void initViews() {
        setContentView(C2083R.layout.activity_consent);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, null, true);
        TextView textView = (TextView) findViewById(C2083R.C2086id.textView_policy_text);
        this.mPolicyTextView = textView;
        textView.setText(getPolicyText(this));
    }

    private void initbUttons() {
        ((Button) findViewById(C2083R.C2086id.button_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.userConsentHandling.ConsentActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConsentActivity.this.onNo();
            }
        });
        ((Button) findViewById(C2083R.C2086id.button_approve)).setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.userConsentHandling.ConsentActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConsentActivity.this.onYes();
            }
        });
    }

    protected abstract Spanned getPolicyText(Context context);

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        onDismiss();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initViews();
        initbUttons();
    }

    protected abstract void onDismiss();

    protected abstract void onNo();

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onDismiss();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected abstract void onYes();
}

package com.asus.contacts.interactions;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallTagEncourageActivity.class */
public class EndCallTagEncourageActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private String f2709a = EndCallTagEncourageActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private TextView f2710b;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131297132:
                finish();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d(this.f2709a, "onCreate");
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        requestWindowFeature(1);
        setContentView(2131427540);
        this.f2710b = (TextView) findViewById(2131297132);
        this.f2710b.setOnClickListener(this);
    }
}

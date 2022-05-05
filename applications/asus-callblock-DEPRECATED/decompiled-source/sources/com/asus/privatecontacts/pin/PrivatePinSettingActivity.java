package com.asus.privatecontacts.pin;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.PrivateContactsActivity;
import com.asus.privatecontacts.e;
import com.asus.privatecontacts.provider.c;
import com.asus.updatesdk.BuildConfig;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/PrivatePinSettingActivity.class */
public class PrivatePinSettingActivity extends e implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3036a = PrivatePinSettingActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Activity f3037b;
    private TextView c;
    private EditText d;
    private Button e;
    private Button f;
    private String i;
    private int g = 0;
    private HashMap<Integer, String> h = new HashMap<>();
    private TextWatcher j = new TextWatcher() { // from class: com.asus.privatecontacts.pin.PrivatePinSettingActivity.1
        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (PrivatePinSettingActivity.this.g < 4) {
                if (charSequence.length() > 0 && charSequence.length() < 4) {
                    PrivatePinSettingActivity.this.g = 1;
                } else if (charSequence.length() >= 4 && charSequence.length() <= 12) {
                    PrivatePinSettingActivity.this.g = 3;
                } else if (charSequence.length() > 12) {
                    PrivatePinSettingActivity.this.g = 2;
                } else {
                    PrivatePinSettingActivity.this.g = 0;
                }
            } else if (charSequence.length() > 0) {
                PrivatePinSettingActivity.this.g = 5;
            } else {
                PrivatePinSettingActivity.this.g = 4;
            }
            if (PrivatePinSettingActivity.this.c != null) {
                PrivatePinSettingActivity.this.c.setText(PrivatePinSettingActivity.this.c());
            }
            PrivatePinSettingActivity.this.a(PrivatePinSettingActivity.this.g);
        }
    };
    private View.OnClickListener k = new View.OnClickListener() { // from class: com.asus.privatecontacts.pin.PrivatePinSettingActivity.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PrivatePinSettingActivity.this.a();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.g < 4) {
            this.g = 4;
            if (this.c != null) {
                this.c.setText(c());
            }
            this.i = this.d.getText().toString();
            if (this.d != null) {
                this.d.setText(BuildConfig.FLAVOR);
            }
            a(this.g);
            return;
        }
        String obj = this.d.getText().toString();
        if (obj == null) {
            return;
        }
        if (obj.equals(this.i)) {
            c.b(this.f3037b, obj);
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this.f3037b, PrivateContactsActivity.class));
            this.f3037b.finish();
            return;
        }
        Toast.makeText(this.f3037b, this.f3037b.getResources().getString(2131755994), 0).show();
        this.g = 4;
        a(this.g);
        this.d.setText(BuildConfig.FLAVOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.f != null) {
            this.f.setEnabled(i == 3 || i == 5);
            if (i == 4) {
                this.f.setText(17039370);
            }
        }
    }

    private void b() {
        this.h.put(0, getResources().getString(2131755995));
        this.h.put(1, getResources().getString(2131755996));
        this.h.put(2, String.format(getResources().getString(2131755997), 12));
        this.h.put(3, getResources().getString(2131756003));
        this.h.put(4, getResources().getString(2131755975));
        this.h.put(5, getResources().getString(2131755975));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        if (this.h.size() == 0) {
            b();
        }
        return this.h.get(Integer.valueOf(this.g));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427634);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        this.f3037b = this;
        this.c = (TextView) findViewById(2131296924);
        this.d = (EditText) findViewById(2131297165);
        this.e = (Button) findViewById(2131296518);
        this.f = (Button) findViewById(2131297112);
        b();
        if (bundle != null) {
            this.g = bundle.getInt("key_state", 0);
            this.c.setText(bundle.getString("key_input_pin", BuildConfig.FLAVOR));
            this.i = bundle.getString("key_confirm_pin", BuildConfig.FLAVOR);
        } else {
            this.g = 0;
            this.c.setText(c());
            this.i = BuildConfig.FLAVOR;
        }
        this.f.setOnClickListener(this.k);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.asus.privatecontacts.pin.PrivatePinSettingActivity.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrivatePinSettingActivity.this.finish();
            }
        });
        a(this.g);
        if (this.j != null) {
            this.d.addTextChangedListener(this.j);
        }
        this.d.setOnEditorActionListener(this);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 0 || i == 6 || i == 5) {
            if (this.f.isEnabled()) {
                a();
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putInt("key_state", this.g);
            if (this.d != null) {
                bundle.putString("key_input_pin", this.d.getText().toString());
            }
            bundle.putString("key_confirm_pin", this.i);
        }
        super.onSaveInstanceState(bundle);
    }
}

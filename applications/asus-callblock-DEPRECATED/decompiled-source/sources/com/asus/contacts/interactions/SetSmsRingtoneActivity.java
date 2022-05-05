package com.asus.contacts.interactions;

import android.app.Activity;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.RequestStoragePermissionsActivity;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/SetSmsRingtoneActivity.class */
public class SetSmsRingtoneActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f2720a = SetSmsRingtoneActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private String f2721b;
    private int c;
    private String d;
    private String e;
    private TextView f;
    private TextView g;
    private RadioButton h;
    private RadioButton i;
    private RadioButton j;
    private Button k;
    private Button l;
    private View m;
    private View n;
    private View o;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(android.net.Uri r8) {
        /*
            r7 = this;
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: SQLiteException -> 0x005c, all -> 0x0077
            r1 = r8
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: SQLiteException -> 0x005c, all -> 0x0077
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x009d
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x008b, SQLiteException -> 0x0092
            if (r0 == 0) goto L_0x009d
            r0 = r9
            r8 = r0
            r0 = r9
            java.lang.String r1 = "title"
            int r0 = r0.getColumnIndex(r1)     // Catch: all -> 0x008b, SQLiteException -> 0x0092
            r10 = r0
            r0 = r10
            if (r0 < 0) goto L_0x004c
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r10
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x008b, SQLiteException -> 0x0092
            r11 = r0
            r0 = r11
            r8 = r0
        L_0x0039:
            r0 = r8
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0049
            r0 = r9
            r0.close()
            r0 = r8
            r11 = r0
        L_0x0049:
            r0 = r11
            return r0
        L_0x004c:
            r0 = r9
            r8 = r0
            r0 = r7
            r1 = 2131756173(0x7f10048d, float:1.9143246E38)
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x008b, SQLiteException -> 0x0092
            r11 = r0
            r0 = r11
            r8 = r0
            goto L_0x0039
        L_0x005c:
            r11 = move-exception
            r0 = 0
            r9 = r0
        L_0x0060:
            r0 = r9
            r8 = r0
            r0 = r11
            r0.printStackTrace()     // Catch: all -> 0x008b
            r0 = r9
            if (r0 == 0) goto L_0x0097
            r0 = r9
            r0.close()
            r0 = 0
            r11 = r0
            goto L_0x0049
        L_0x0077:
            r8 = move-exception
            r0 = 0
            r11 = r0
            r0 = r8
            r9 = r0
        L_0x007d:
            r0 = r11
            if (r0 == 0) goto L_0x0089
            r0 = r11
            r0.close()
        L_0x0089:
            r0 = r9
            throw r0
        L_0x008b:
            r9 = move-exception
            r0 = r8
            r11 = r0
            goto L_0x007d
        L_0x0092:
            r11 = move-exception
            goto L_0x0060
        L_0x0097:
            r0 = 0
            r11 = r0
            goto L_0x0049
        L_0x009d:
            r0 = 0
            r8 = r0
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.interactions.SetSmsRingtoneActivity.a(android.net.Uri):java.lang.String");
    }

    private void a() {
        this.e = null;
        if (this.f2721b == null) {
            this.h.setChecked(false);
            this.i.setChecked(true);
            this.j.setChecked(false);
        } else if (this.f2721b.equals("none")) {
            this.h.setChecked(true);
            this.i.setChecked(false);
            this.j.setChecked(false);
        } else {
            this.e = a(Uri.parse(this.f2721b));
            Log.d(this.f2720a, "Other mRingtoneUri = " + this.f2721b);
            this.h.setChecked(false);
            this.i.setChecked(false);
            this.j.setChecked(true);
        }
        if (TextUtils.isEmpty(this.e)) {
            this.g.setVisibility(8);
            return;
        }
        this.g.setText(this.e);
        this.g.setVisibility(0);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 1:
                    Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
                    Log.i(this.f2720a, "handleSmsRingtonePicked pickedUri = " + uri);
                    if (uri == null) {
                        this.f2721b = null;
                    } else {
                        this.f2721b = uri.toString();
                    }
                    a();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Uri defaultUri;
        switch (view.getId()) {
            case 2131296643:
                this.f2721b = null;
                a();
                return;
            case 2131297122:
                this.f2721b = "none";
                a();
                return;
            case 2131297142:
                Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
                intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", false);
                intent.putExtra("android.intent.extra.ringtone.TYPE", 2);
                intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", false);
                Log.i(this.f2720a, "mSmsRingtone = " + this.f2721b);
                if (this.f2721b == null || this.f2721b.equals("none")) {
                    String string = Settings.System.getString(getContentResolver(), "notification_sound");
                    Log.i(this.f2720a, "settingRingTone = " + string);
                    defaultUri = TextUtils.isEmpty(string) ? RingtoneManager.getDefaultUri(2) : Uri.parse(string);
                } else {
                    defaultUri = Uri.parse(this.f2721b);
                }
                Log.i(this.f2720a, "smsRingtoneUri = " + defaultUri);
                intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", defaultUri);
                intent.putExtra("android.intent.extra.ringtone.TITLE", getString(this.c));
                startActivityForResult(intent, 1);
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!RequestStoragePermissionsActivity.startPermissionActivity(this)) {
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            setContentView(2131427655);
            this.f = (TextView) findViewById(2131296645);
            this.g = (TextView) findViewById(2131297141);
            this.h = (RadioButton) findViewById(2131297209);
            this.i = (RadioButton) findViewById(2131297208);
            this.j = (RadioButton) findViewById(2131297210);
            this.k = (Button) findViewById(2131296987);
            this.l = (Button) findViewById(2131297239);
            this.m = findViewById(2131297122);
            this.n = findViewById(2131296643);
            this.o = findViewById(2131297142);
            this.m.setOnClickListener(this);
            this.n.setOnClickListener(this);
            this.o.setOnClickListener(this);
            if (getIntent() != null) {
                this.f2721b = getIntent().getStringExtra("ringtone_uri");
                this.c = getIntent().getIntExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, 2131755847);
            } else {
                this.c = 2131755847;
            }
            setTitle(this.c);
            a();
            this.k.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.interactions.SetSmsRingtoneActivity.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SetSmsRingtoneActivity.this.setResult(0);
                    SetSmsRingtoneActivity.this.finish();
                }
            });
            this.l.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.interactions.SetSmsRingtoneActivity.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Intent intent = new Intent();
                    intent.putExtra("ringtone_uri", SetSmsRingtoneActivity.this.f2721b);
                    SetSmsRingtoneActivity.this.setResult(-1, intent);
                    SetSmsRingtoneActivity.this.finish();
                }
            });
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        String string = Settings.System.getString(getContentResolver(), "notification_sound");
        Log.i(this.f2720a, "settingRingTone = " + string);
        this.d = a(TextUtils.isEmpty(string) ? RingtoneManager.getDefaultUri(2) : Uri.parse(string));
        if (this.f == null) {
            return;
        }
        if (TextUtils.isEmpty(this.d)) {
            this.f.setVisibility(8);
            return;
        }
        this.f.setText(this.d);
        this.f.setVisibility(0);
    }
}

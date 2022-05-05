package com.asus.privatecontacts.settings;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.k;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.b.f;
import com.asus.privatecontacts.e;
import com.asus.privatecontacts.provider.a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/PrivateEditProfileActivity.class */
public class PrivateEditProfileActivity extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3075a = PrivateEditProfileActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final int f3076b = 1;
    private final int c = 2;
    private boolean d = false;
    private Activity e;
    private EditText f;
    private ImageView g;
    private EditText h;
    private Spinner i;
    private Uri j;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/settings/PrivateEditProfileActivity$a.class */
    final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private ContentResolver f3079b;
        private boolean c = false;
        private String d;
        private String e;
        private String f;
        private String g;
        private Bundle h;

        public a(ContentResolver contentResolver, Bundle bundle) {
            this.f3079b = contentResolver;
            this.h = bundle;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 191
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.settings.PrivateEditProfileActivity.a.a():java.lang.Void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r9) {
            super.onPostExecute(r9);
            try {
                PrivateEditProfileActivity.this.d = this.c;
                Log.d(PrivateEditProfileActivity.f3075a, "_photoUri:" + this.e);
                if (this.h != null) {
                    PrivateEditProfileActivity.this.f.setText(this.h.getString("temp_name", this.d));
                    if (this.h.getString("temp_photo", this.e) == null) {
                        k.a(PrivateEditProfileActivity.this).a(PrivateEditProfileActivity.this.g, (Uri) null, PrivateEditProfileActivity.this.g.getWidth(), false, false, new k.d(null, null, 1, false));
                    } else {
                        b.a(PrivateEditProfileActivity.this.g, Uri.parse(this.h.getString("temp_photo", this.e)), 0);
                    }
                    PrivateEditProfileActivity.this.h.setText(this.h.getString("temp_phone", this.f));
                    return;
                }
                PrivateEditProfileActivity.this.f.setText(this.d);
                if (this.e == null) {
                    k.a(PrivateEditProfileActivity.this).a(PrivateEditProfileActivity.this.g, (Uri) null, PrivateEditProfileActivity.this.g.getWidth(), false, false, new k.d(null, null, 1, false));
                } else {
                    b.a(PrivateEditProfileActivity.this.g, Uri.parse(this.e), 0);
                }
                PrivateEditProfileActivity.this.h.setText(this.f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i) {
            case 1:
                if (i2 != -1 || intent == null) {
                    f.a((Context) this, true);
                    return;
                }
                try {
                    ((e) this.e).setStayPrivate(true);
                    Intent a2 = b.a(intent.getData());
                    this.j = (Uri) a2.getParcelableExtra("output");
                    startActivityForResult(a2, 2);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case 2:
                if (i2 == -1) {
                    b.a(this.g, this.j, 0);
                }
                f.a((Context) this, true);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427629);
            boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                if (isCarMode) {
                    setRequestedOrientation(-1);
                } else {
                    setRequestedOrientation(1);
                }
            }
            ActionBar actionBar = getActionBar();
            actionBar.setDisplayOptions(12, 12);
            actionBar.setDisplayShowHomeEnabled(false);
            this.e = this;
            this.f = (EditText) findViewById(2131296773);
            this.g = (ImageView) findViewById(2131297153);
            this.g.setOnClickListener(new View.OnClickListener() { // from class: com.asus.privatecontacts.settings.PrivateEditProfileActivity.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        Log.d(PrivateEditProfileActivity.f3075a, "click set photo");
                        ((e) PrivateEditProfileActivity.this.e).setStayPrivate(true);
                        f.a((Context) PrivateEditProfileActivity.this, false);
                        PrivateEditProfileActivity.this.startActivityForResult(b.b(), 1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
            this.h = (EditText) findViewById(2131296775);
            this.i = (Spinner) findViewById(2131296526);
            this.i.setVisibility(4);
            if (bundle != null) {
                try {
                    this.j = Uri.parse(bundle.getString("temp_photo"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            f.a((Context) this, true);
            new a(getContentResolver(), bundle).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492899, menu);
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        Log.d(f3075a, "PrivateEditProfileActivity onDestroy");
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = false;
        boolean z2 = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296517:
                finish();
                break;
            case 2131296758:
                ContentValues contentValues = new ContentValues();
                boolean z3 = this.f != null;
                if (!TextUtils.isEmpty(this.f.getText().toString())) {
                    z = true;
                }
                if (z3 && z) {
                    contentValues.put("key_custom_profile_name", this.f.getText().toString());
                } else {
                    contentValues.put("key_custom_profile_name", getString(2131755972));
                }
                if (this.j != null && !TextUtils.isEmpty(this.j.toString()) && new File(this.j.getPath()).exists()) {
                    File file = new File(b.b(this), "PrivateCustomPhoto");
                    if (b.a(getContentResolver(), this.j, file.getPath())) {
                        new File(this.j.getPath()).delete();
                        this.j = Uri.fromFile(file);
                    }
                    contentValues.put("key_custom_profile_photo", this.j.toString());
                }
                if (this.h == null || TextUtils.isEmpty(this.h.getText().toString())) {
                    contentValues.put("key_custom_profile_phone", getString(2131755972));
                } else {
                    contentValues.put("key_custom_profile_phone", this.h.getText().toString());
                }
                try {
                    getContentResolver().update(a.e.d, contentValues, null, null);
                    Log.d(f3075a, "Customized profiles are saved!");
                } catch (Exception e) {
                    Log.d(f3075a, "Failed to save customized profiles!");
                    e.printStackTrace();
                }
                finish();
                break;
            default:
                z2 = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return b.a(this, menu, "menu_save");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("temp_name", this.f.getText().toString());
        if (this.j != null) {
            bundle.putString("temp_photo", this.j.toString());
        }
        bundle.putString("temp_phone", this.h.getText().toString());
    }
}

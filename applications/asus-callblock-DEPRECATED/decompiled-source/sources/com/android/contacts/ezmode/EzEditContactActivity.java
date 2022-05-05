package com.android.contacts.ezmode;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.a.b;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.editor.d;
import com.android.contacts.ezmode.g;
import com.android.contacts.k;
import com.android.contacts.list.af;
import com.android.contacts.list.bh;
import com.android.contacts.p;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzEditContactActivity.class */
public class EzEditContactActivity extends p implements View.OnClickListener, g.b, bh.b {
    private String B;
    private long C;
    private bh D;
    private bh.c E;
    private af F;
    private MenuItem G;
    private Uri e;
    private long f;
    private long g;
    private String h;
    private String i;
    private long j;
    private long k;
    private long l;
    private EditText m;
    private EditText n;
    private ImageView o;
    private View p;
    private View q;
    private int r;
    private Uri u;
    private g w;
    private Uri y;
    private final String d = EzEditContactActivity.class.getSimpleName();
    private final String s = "ezSaveCompleted";
    private Bundle t = new Bundle();
    private boolean v = false;
    private k x = null;
    private boolean z = true;
    private boolean A = true;

    /* renamed from: a  reason: collision with root package name */
    boolean f1243a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f1244b = true;
    boolean c = true;
    private boolean H = false;
    private boolean I = false;
    private ContentObserver J = new ContentObserver(new Handler()) { // from class: com.android.contacts.ezmode.EzEditContactActivity.3
        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Log.d(EzEditContactActivity.this.d, "selfChange = " + z);
            EzEditContactActivity.this.getContentResolver().unregisterContentObserver(EzEditContactActivity.this.J);
            EzEditContactActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzEditContactActivity$a.class */
    public final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:175:0x0490  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x04e5  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x050a  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x01fb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 1424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ezmode.EzEditContactActivity.a.a():java.lang.Void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r7) {
            super.onPostExecute(r7);
            View findViewById = EzEditContactActivity.this.findViewById(2131297016);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
            if (EzEditContactActivity.this.G != null) {
                if (EzEditContactActivity.this.r <= 0 || e.a(EzEditContactActivity.this).a(EzEditContactActivity.this.r)) {
                    EzEditContactActivity.this.G.setVisible(true);
                } else {
                    EzEditContactActivity.this.G.setVisible(false);
                }
            }
            EzEditContactActivity.this.m.setText(EzEditContactActivity.this.h);
            EzEditContactActivity.this.n.setText(EzEditContactActivity.this.i);
            EzEditContactActivity.this.m.setEnabled(EzEditContactActivity.this.f1243a);
            EzEditContactActivity.this.n.setEnabled(EzEditContactActivity.this.f1244b);
            EzEditContactActivity.this.o.setTag(8);
            if (EzEditContactActivity.this.r == 2) {
                EzEditContactActivity.this.x.a(EzEditContactActivity.this.o, -2L, 6);
            } else if (EzEditContactActivity.this.r == 1) {
                EzEditContactActivity.this.x.a(EzEditContactActivity.this.o, -1L, 6);
            } else {
                EzEditContactActivity.this.x.a(EzEditContactActivity.this.o, EzEditContactActivity.this.u, -1, 6);
            }
            EzEditContactActivity.this.f();
            EzEditContactActivity.this.I = true;
        }
    }

    private void a(boolean z) {
        boolean z2;
        bh.c c = this.D.c();
        Log.d(this.d, "updateViewConfiguration: forceUpdate = " + z + " status = " + c.f1810a);
        if (z || this.E == null || c.f1810a != this.E.f1810a) {
            this.E = c;
            View findViewById = findViewById(2131296603);
            View findViewById2 = findViewById(2131297016);
            if (CompatUtils.isMarshmallowCompatible()) {
                z2 = true;
                if (this.E.f1810a != 0) {
                    z2 = this.E.f1810a == 2;
                }
            } else {
                z2 = true;
                if (this.E.f1810a != 0) {
                    z2 = true;
                    if (this.E.f1810a != 4) {
                        z2 = false;
                    }
                }
            }
            if (z2) {
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                if (!this.I) {
                    new a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    return;
                }
                return;
            }
            if (this.F == null) {
                this.F = new af();
                getFragmentManager().beginTransaction().replace(2131296602, this.F).commitAllowingStateLoss();
            }
            if (findViewById != null) {
                this.F.a(this.E);
                findViewById.setVisibility(0);
            }
            if (findViewById2 != null) {
                findViewById2.setVisibility(8);
            }
            if (this.G != null) {
                this.G.setVisible(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        int i;
        boolean z = true;
        if ((this.u == null && this.t.size() == 0) || this.v || this.C == 0) {
            i = 4;
        } else {
            this.o.setScaleType(ImageView.ScaleType.CENTER_CROP);
            i = 14;
        }
        ImageView imageView = this.o;
        if (this.r > 0 || !this.c) {
            z = false;
        }
        this.w = new g(this, imageView, i, z);
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a() {
        this.x.a(this.o, (Uri) null, this.o.getWidth());
        this.t.clear();
        this.v = true;
        f();
        this.o.setScaleType(ImageView.ScaleType.FIT_XY);
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a(Bitmap bitmap, String str) {
        if (bitmap == null || bitmap.getHeight() < 0 || bitmap.getWidth() < 0) {
            Log.w(this.d, "Invalid bitmap");
            return;
        }
        this.t.putString(String.valueOf(this.l), str);
        this.o.setImageBitmap(bitmap);
        this.v = false;
        f();
    }

    @Override // com.android.contacts.ezmode.g.b
    public final void a(String str) {
        this.B = str;
    }

    public final void b() {
        if (this.n.getText().length() == 0) {
            this.A = false;
        } else {
            this.A = true;
        }
    }

    @Override // com.android.contacts.ezmode.g.b
    public final String c() {
        return this.B;
    }

    public final void d() {
        if (this.m.getText().length() == 0) {
            this.z = false;
        } else {
            this.z = true;
        }
    }

    public final void e() {
        if (this.A && this.z) {
            this.q.setEnabled(true);
        } else {
            this.q.setEnabled(false);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.w == null || this.w.handlePhotoActivityResult(i, i2, intent)) {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296801:
                if (this.r == 1 || this.r == 2) {
                    Toast.makeText(this, getResources().getString(2131756136), 1).show();
                }
                ((d.a) this.w.getListener()).a(1);
                return;
            case 2131296804:
                finish();
                return;
            case 2131296822:
                if ((!TextUtils.isEmpty(this.m.getText().toString()) || TextUtils.isEmpty(this.h)) ? (!this.m.getText().toString().equals(this.h) || !this.n.getText().toString().equals(this.i)) ? true : this.t.size() > 0 || this.v : true) {
                    this.m.setEnabled(false);
                    this.n.setEnabled(false);
                    startService(ContactSaveService.a(this, this.e, this.m.getText().toString(), this.n.getText().toString(), this.g, this.f, this.k, this.j, this.l, false, this.r, getClass(), "ezSaveCompleted", this.t, this.v));
                    b.a();
                    b.a(2, (Activity) this, "Ez_Contact_Edit", true);
                    return;
                }
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.B = bundle.getString("currentPhotoFile");
        }
        boolean a2 = h.a(getApplicationContext());
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || !a2) {
            Intent intent = new Intent("android.intent.action.EDIT", getIntent().getData());
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
            ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
            finish();
            return;
        }
        Intent intent2 = getIntent();
        String action = intent2.getAction();
        this.H = intent2.getBooleanExtra("need_open_detail", false);
        if ("ezSaveCompleted".equals(action)) {
            finish();
            return;
        }
        setContentView(2131427546);
        this.D = bh.a((Context) this);
        this.D.a((bh.b) this);
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle(2131755594);
        this.n = (EditText) findViewById(2131296800);
        this.m = (EditText) findViewById(2131296799);
        this.o = (ImageView) findViewById(2131296801);
        this.p = findViewById(2131296804);
        this.q = findViewById(2131296822);
        this.p.setOnClickListener(this);
        this.q.setOnClickListener(this);
        this.o.setOnClickListener(this);
        this.x = k.a(this);
        this.e = getIntent().getData();
        this.f = getIntent().getLongExtra("PHONE_ID", -1L);
        View findViewById = findViewById(2131297016);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        this.n.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.ezmode.EzEditContactActivity.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzEditContactActivity.this.b();
                EzEditContactActivity.this.e();
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzEditContactActivity.this.b();
                EzEditContactActivity.this.e();
            }
        });
        this.m.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.ezmode.EzEditContactActivity.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzEditContactActivity.this.d();
                EzEditContactActivity.this.e();
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EzEditContactActivity.this.d();
                EzEditContactActivity.this.e();
            }
        });
        if (PhoneCapabilityTester.IsAsusDevice()) {
            getContentResolver().registerContentObserver(Settings.System.getUriFor("asus_easy_launcher"), true, this.J);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492890, menu);
        this.G = menu.findItem(2131296806);
        if (this.E != null && this.E.f1810a == 0) {
            if (this.r <= 0 || e.a(this).a(this.r)) {
                this.G.setVisible(true);
            } else {
                this.G.setVisible(false);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        getContentResolver().unregisterContentObserver(this.J);
        super.onDestroy();
        this.D.b(this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        String action = intent.getAction();
        Log.d(this.d, "needOpenDetail = " + this.H);
        if ("ezSaveCompleted".equals(action)) {
            if (this.H) {
                Uri data = intent.getData();
                Uri uri = intent.getParcelableExtra("INDEX_PHONE_URI") == null ? null : (Uri) intent.getParcelableExtra("INDEX_PHONE_URI");
                String stringExtra = intent.getStringExtra("INDEX_CONTACT_DETAIL_TITLE");
                Intent intent2 = new Intent("android.intent.action.EZ_CONTACT_DETAIL", data);
                intent2.putExtra("INDEX_PHONE_URI", uri);
                intent2.putExtra("INDEX_CONTACT_DETAIL_TITLE", stringExtra);
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296806:
                this.y = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, this.f);
                b.a(this, this.y, true);
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.D.b();
    }

    @Override // com.android.contacts.list.bh.b
    public void onProviderStatusChange() {
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.D.a();
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("currentPhotoFile", this.B);
    }
}

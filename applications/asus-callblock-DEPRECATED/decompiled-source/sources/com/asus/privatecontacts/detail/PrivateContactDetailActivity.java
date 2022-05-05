package com.asus.privatecontacts.detail;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.LoaderManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.k;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.a.b;
import com.asus.privatecontacts.a.f;
import com.asus.privatecontacts.b.d;
import com.asus.privatecontacts.e;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/PrivateContactDetailActivity.class */
public class PrivateContactDetailActivity extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3013a = PrivateContactDetailActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Activity f3014b;
    private long c;
    private TextView d;
    private TextView e;
    private a f;
    private LinearLayout g;
    private TextView h;
    private TextView i;
    private c j;
    private b k;
    private final LoaderManager.LoaderCallbacks<b> l = new LoaderManager.LoaderCallbacks<b>() { // from class: com.asus.privatecontacts.detail.PrivateContactDetailActivity.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<b> onCreateLoader(int i, Bundle bundle) {
            Log.d(PrivateContactDetailActivity.f3013a, "[mDetailLoaderlistener] >>> onCreateLoader ...");
            return new com.asus.privatecontacts.detail.a(PrivateContactDetailActivity.this.f3014b, PrivateContactDetailActivity.this.c);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<b> loader, b bVar) {
            k.d dVar = null;
            b bVar2 = bVar;
            Log.d(PrivateContactDetailActivity.f3013a, "[mDetailLoaderlistener] >>> onLoadFinished ...");
            if (bVar2 == null) {
                Log.e(PrivateContactDetailActivity.f3013a, "[mDetailLoaderlistener] >>> onLoadFinished: data is null ...");
                PrivateContactDetailActivity.this.finish();
            }
            if (bVar2.c == b.a.f2993b) {
                Log.w(PrivateContactDetailActivity.f3013a, "Failed to load contact : " + bVar2.d);
                PrivateContactDetailActivity.this.k = null;
                PrivateContactDetailActivity.this.finish();
                return;
            }
            if (bVar2.c == b.a.c) {
                Log.i(PrivateContactDetailActivity.f3013a, "No contact found: " + PrivateContactDetailActivity.this.c);
                PrivateContactDetailActivity.this.k = null;
                PrivateContactDetailActivity.this.finish();
                return;
            }
            Log.d(PrivateContactDetailActivity.f3013a, "[mDetailLoaderlistener] >>> mContact is not null ...");
            PrivateContactDetailActivity.this.k = bVar2;
            String a2 = d.a(PrivateContactDetailActivity.this.f3014b, PrivateContactDetailActivity.this.k.f2990a);
            if (PrivateContactDetailActivity.this.h != null) {
                PrivateContactDetailActivity.this.h.setText(a2);
                PrivateContactDetailActivity.this.h.setTextSize(2, PrivateContactDetailActivity.this.getResources().getInteger(2131361793));
                PrivateContactDetailActivity.this.i.setText(BuildConfig.FLAVOR);
                PrivateContactDetailActivity.this.i.setVisibility(8);
            }
            c cVar = PrivateContactDetailActivity.this.j;
            b bVar3 = PrivateContactDetailActivity.this.k;
            if (bVar3 == null) {
                Log.e(c.f3025a, ">>> setContactData: ERROR! contact is null!");
                return;
            }
            cVar.d = bVar3;
            if (cVar.f3026b != null) {
                b bVar4 = cVar.f3026b;
                f fVar = bVar3.f2990a;
                if (fVar != null) {
                    bVar4.d = fVar;
                    String asString = fVar.f2998a.getAsString(PhotoSelectionActivity.PHOTO_URI);
                    String asString2 = fVar.f2998a.getAsString("photo_thumb_uri");
                    if (asString == null && asString2 != null) {
                        asString = asString2;
                    }
                    Uri parse = asString != null ? Uri.parse(asString) : null;
                    if (asString == null || TextUtils.isEmpty(asString)) {
                        dVar = new k.d(null, null, true);
                    }
                    k.a(bVar4.c.getBaseContext()).a(bVar4.f, parse, bVar4.f.getWidth(), false, true, dVar);
                    com.asus.privatecontacts.b.b.a(bVar4.g, com.asus.privatecontacts.b.b.f3002a, b.f3023b);
                    if (bVar4.h != null) {
                        bVar4.h.setOnClickListener(bVar4.i);
                    }
                    bVar4.e.setVisibility(0);
                } else {
                    Log.e(b.f3022a, "contact is null!");
                }
            }
            if (cVar.c != null) {
                cVar.c.setPrivateData(cVar.d);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<b> loader) {
        }
    };
    private final ContactDetailFragment.Listener m = new ContactDetailFragment.Listener() { // from class: com.asus.privatecontacts.detail.PrivateContactDetailActivity.2
        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onCreateRawContactRequested(String str, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onCreateRawContactRequested(ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onItemClicked(Intent intent) {
            if (intent != null) {
                if (!intent.getAction().equals("android.intent.action.SENDTO") || intent.getBooleanExtra("CANSENDSMS", true)) {
                    if (!(PrivateContactDetailActivity.this.k == null || intent == null)) {
                        intent.removeExtra("com.android.phone.AsusDialName");
                        intent.removeExtra("com.android.phone.AsusDialContactId");
                        Log.d(PrivateContactDetailActivity.f3013a, "normal mode");
                    }
                    try {
                        ((e) PrivateContactDetailActivity.this.f3014b).setStayPrivate(true);
                        CallUtil.startDialActivity(PrivateContactDetailActivity.this.f3014b, intent);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    new AlertDialog.Builder(PrivateContactDetailActivity.this.f3014b).setMessage(2131756091).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.detail.PrivateContactDetailActivity.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    }).show();
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/PrivateContactDetailActivity$a.class */
    private final class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        Context f3018a;

        public a(Context context) {
            this.f3018a = context;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            switch (view.getId()) {
                case 2131296937:
                    PrivateContactDetailActivity.this.onBackPressed();
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427624);
            this.f3014b = this;
            boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                if (isCarMode) {
                    setRequestedOrientation(-1);
                } else {
                    setRequestedOrientation(1);
                }
            }
            Intent intent = getIntent();
            if (intent != null) {
                this.c = intent.getLongExtra(ContactDetailCallogActivity.EXTRA_CONTACT_ID, 0L);
            } else if (bundle != null) {
                this.c = bundle.getLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, 0L);
            } else {
                this.c = 0L;
            }
            if (this.c == 0) {
                Log.e(f3013a, "mContactId is 0");
                finish();
            }
            this.d = (TextView) findViewById(2131296285);
            this.e = (TextView) findViewById(2131297347);
            AsusActionBarUtils.updateActionBar(this, this.d, this.e);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayOptions(16);
                actionBar.setCustomView(2131427496);
                this.f = new a(this);
                ((ImageView) actionBar.getCustomView().findViewById(2131296937)).setOnClickListener(this.f);
                this.g = (LinearLayout) actionBar.getCustomView().findViewById(2131297401);
                this.g.setClickable(true);
                this.g.setOnClickListener(this.f);
                this.h = (TextView) actionBar.getCustomView().findViewById(2131297010);
                this.i = (TextView) actionBar.getCustomView().findViewById(2131297357);
                if (this.h != null) {
                    this.h.setText("Main Title");
                }
                if (this.i != null) {
                    this.i.setText("Sub Title");
                }
            }
            this.j = new c(this, bundle, getFragmentManager(), findViewById(2131297192), this.m);
            try {
                getLoaderManager().initLoader(1, null, this.l);
            } catch (Exception e) {
                Log.w(f3013a, "initLoader: " + e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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
            bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, this.c);
        }
    }
}

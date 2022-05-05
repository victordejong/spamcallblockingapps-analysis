package com.asus.privatecontacts;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.ContactEditorAccountsChangedActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.PrivateContactsManager;
import com.asus.privatecontacts.b.f;
import com.asus.privatecontacts.detail.PrivateContactDetailActivity;
import com.asus.privatecontacts.provider.a;
import com.asus.privatecontacts.settings.PrivateSettingsActivity;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsActivity.class */
public class PrivateContactsActivity extends e implements LoaderManager.LoaderCallbacks<Cursor>, PrivateContactsManager.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2958a = PrivateContactsActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private ProgressDialog f2959b;
    private ProgressDialog c;
    private ListView d;
    private TextView e;
    private com.asus.privatecontacts.b f;
    private boolean g = false;
    private boolean h = false;
    private View.OnClickListener i = new View.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.asus.privatecontacts.c cVar = (com.asus.privatecontacts.c) view.getTag();
            if (cVar != null) {
                try {
                    PrivateContactsActivity.this.setStayPrivate(true);
                    Intent intent = new Intent(view.getContext(), PrivateContactDetailActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, cVar.e.getText().toString());
                    bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, cVar.g);
                    intent.putExtras(bundle);
                    ImplicitIntentsUtil.startActivityInApp(PrivateContactsActivity.this, intent);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    };
    private View.OnClickListener j = new View.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.asus.privatecontacts.c cVar = (com.asus.privatecontacts.c) view.getTag();
            if (cVar != null) {
                try {
                    new c(PrivateContactsActivity.this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(cVar.g));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsActivity$a.class */
    private final class a extends AsyncTask<Void, Integer, Integer> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2968b;
        private final int c = 1;
        private final int d = 2;
        private final int e = 3;
        private final int f = 4;
        private long g;

        public a(PrivateContactsActivity privateContactsActivity) {
            this.f2968b = privateContactsActivity;
        }

        private Integer a() {
            NetworkInfo networkInfo;
            NetworkInfo networkInfo2;
            int i;
            if (com.asus.privatecontacts.provider.c.k(this.f2968b) == 0) {
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) PrivateContactsActivity.this.getApplicationContext().getSystemService("connectivity");
                    networkInfo = connectivityManager.getNetworkInfo(0);
                    networkInfo2 = connectivityManager.getNetworkInfo(1);
                } catch (Exception e) {
                    Log.w(PrivateContactsActivity.f2958a, e.toString());
                }
                if ((networkInfo2 != null && networkInfo2.isConnected()) || (networkInfo != null && networkInfo.isConnected())) {
                    this.g = b();
                    Log.d(PrivateContactsActivity.f2958a, "AsusMessage versionCode:" + this.g);
                    if (this.g != -1) {
                        i = this.g == -2 ? 4 : this.g < 0 ? 3 : 1;
                        return Integer.valueOf(i);
                    }
                }
                i = 2;
                return Integer.valueOf(i);
            }
            i = 0;
            return Integer.valueOf(i);
        }

        /* JADX WARN: Type inference failed for: r10v4, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long b() {
            /*
                r5 = this;
                r0 = -1
                r6 = r0
                r0 = r6
                r8 = r0
                java.lang.String r0 = com.asus.privatecontacts.PrivateContactsActivity.c()     // Catch: Exception -> 0x0052
                java.lang.String r1 = "getGooglePlayVersion()"
                int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x0052
                r0 = r6
                r10 = r0
                r0 = r6
                r8 = r0
                r0 = r5
                android.content.Context r0 = r0.f2968b     // Catch: Exception -> 0x0052
                java.lang.String r1 = "com.android.vending"
                boolean r0 = com.android.contacts.util.PhoneCapabilityTester.checkApkInstalled(r0, r1)     // Catch: Exception -> 0x0052
                if (r0 == 0) goto L_0x004f
                r0 = r6
                r10 = r0
                r0 = r6
                r8 = r0
                boolean r0 = com.android.contacts.util.PhoneCapabilityTester.isVerizon()     // Catch: Exception -> 0x0052
                if (r0 != 0) goto L_0x004f
                r0 = r6
                r8 = r0
                java.lang.String r0 = com.asus.privatecontacts.PrivateContactsActivity.c()     // Catch: Exception -> 0x0052
                java.lang.String r1 = "getApkLatestVersion START"
                int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x0052
                r0 = r6
                r8 = r0
                r0 = r5
                android.content.Context r0 = r0.f2968b     // Catch: Exception -> 0x0052
                java.lang.String r1 = "com.asus.message"
                long r0 = com.asus.updatesdk.ZenUiFamily.getApkLatestVersion(r0, r1)     // Catch: Exception -> 0x0052
                r10 = r0
                r0 = r10
                r8 = r0
                java.lang.String r0 = com.asus.privatecontacts.PrivateContactsActivity.c()     // Catch: Exception -> 0x0052
                java.lang.String r1 = "getApkLatestVersion END"
                int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x0052
            L_0x004f:
                r0 = r10
                return r0
            L_0x0052:
                r12 = move-exception
                java.lang.String r0 = com.asus.privatecontacts.PrivateContactsActivity.c()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                java.lang.String r3 = "Fail to get GooglePlay version, Exception: "
                r2.<init>(r3)
                r2 = r12
                java.lang.String r2 = r2.toString()
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
                r0 = r8
                r10 = r0
                goto L_0x004f
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsActivity.a.b():long");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            Log.d(PrivateContactsActivity.f2958a, "GetAsusMessageVersionTask result:" + num2);
            switch (num2.intValue()) {
                case 1:
                    PrivateContactsActivity.this.h = true;
                    Log.d(PrivateContactsActivity.f2958a, "Get AsusMessage VALID_VERSION");
                    break;
                case 2:
                case 3:
                case 4:
                    Log.d(PrivateContactsActivity.f2958a, "Can't get AsusMessage VALID_VERSION");
                    break;
            }
            PrivateContactsActivity.a(PrivateContactsActivity.this, this.f2968b);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsActivity$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        public long f2969a;

        /* renamed from: b  reason: collision with root package name */
        public String f2970b;
        public String c = null;
        public String d = null;
        public long e;
        public String f;
        public String g;

        public b(long j, String str, long j2, String str2, String str3) {
            this.f2969a = j;
            this.f2970b = str;
            this.e = j2;
            this.f = str2;
            this.g = str3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsActivity$c.class */
    final class c extends AsyncTask<Long, Void, ArrayList<b>> {

        /* renamed from: b  reason: collision with root package name */
        private Activity f2972b;
        private String c;

        public c(Activity activity) {
            this.f2972b = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList<com.asus.privatecontacts.PrivateContactsActivity.b> doInBackground(java.lang.Long... r11) {
            /*
                Method dump skipped, instructions count: 297
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsActivity.c.doInBackground(java.lang.Long[]):java.util.ArrayList");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(ArrayList<b> arrayList) {
            ArrayList<b> arrayList2 = arrayList;
            if (arrayList2 != null && arrayList2.size() > 0) {
                ((e) this.f2972b).setStayPrivate(true);
                PhoneNumberInteraction.a((TransactionSafeActivity) this.f2972b, arrayList2, this.c);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsActivity$d.class */
    final class d extends AsyncTask<Void, Void, Void> {
        d() {
        }

        private Void a() {
            Throwable th;
            Cursor cursor;
            try {
                if (!f.a(PrivateContactsActivity.this)) {
                    return null;
                }
                try {
                    ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                    ArrayList arrayList2 = new ArrayList();
                    cursor = PrivateContactsActivity.this.getContentResolver().query(a.d.f3064a, null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                do {
                                    ContentValues contentValues = new ContentValues();
                                    Long valueOf = Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id")));
                                    String string = cursor.getString(cursor.getColumnIndex(PhotoSelectionActivity.PHOTO_URI));
                                    String string2 = cursor.getString(cursor.getColumnIndex("photo_thumb_uri"));
                                    if (string != null && com.asus.privatecontacts.b.b.b(Uri.parse(string))) {
                                        arrayList2.add(valueOf);
                                        contentValues.putNull(PhotoSelectionActivity.PHOTO_URI);
                                    }
                                    if (string2 != null && com.asus.privatecontacts.b.b.b(Uri.parse(string))) {
                                        if (!arrayList2.contains(valueOf)) {
                                            arrayList2.add(valueOf);
                                        }
                                        contentValues.putNull("photo_thumb_uri");
                                    }
                                    if (contentValues.size() > 0) {
                                        arrayList.add(ContentProviderOperation.newUpdate(a.d.f3064a).withSelection("_id=" + String.valueOf(valueOf), null).withValues(contentValues).build());
                                    }
                                } while (cursor.moveToNext());
                            }
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (cursor == null) {
                                return null;
                            }
                            cursor.close();
                            return null;
                        }
                    }
                    if (arrayList.size() > 0) {
                        try {
                            PrivateContactsActivity.this.getContentResolver().applyBatch("com.asus.privatecontacts.provider", arrayList);
                            Log.d(PrivateContactsActivity.f2958a, "Fix wrong resources for all photo uris...");
                        } catch (OperationApplicationException e2) {
                            e2.printStackTrace();
                        } catch (RemoteException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                } catch (Exception e4) {
                    e = e4;
                    cursor = null;
                } catch (Throwable th2) {
                    th = th2;
                    Cursor cursor2 = null;
                    if (0 != 0) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            PrivateContactsActivity.this.b();
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            PrivateContactsActivity.this.a();
        }
    }

    static /* synthetic */ void a(PrivateContactsActivity privateContactsActivity, final Context context) {
        boolean d2 = com.asus.privatecontacts.b.b.d(context);
        int k = com.asus.privatecontacts.provider.c.k(context);
        if (k == 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setMessage(privateContactsActivity.getString(2131755981)).setPositiveButton(privateContactsActivity.getString(2131755983), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
            if (!d2) {
                if (privateContactsActivity.h) {
                    builder.setNegativeButton(privateContactsActivity.getString(2131755987), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.4
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                ImplicitIntentsUtil.startActivityOutsideApp(context, new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.asus.message")));
                            } catch (ActivityNotFoundException e) {
                                ImplicitIntentsUtil.startActivityOutsideApp(context, new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=com.asus.message")));
                            } catch (Exception e2) {
                                Log.d(PrivateContactsActivity.f2958a, "Go to google play error: " + e2.toString());
                                Toast.makeText(context, "Sorry, failed to open. Please try again later.", 0).show();
                            }
                            dialogInterface.cancel();
                        }
                    });
                }
                com.asus.privatecontacts.provider.c.a(context, 2);
            } else {
                com.asus.privatecontacts.provider.c.a(context, 1);
            }
            builder.show();
        } else if (k == 1) {
            if (!d2) {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(context);
                builder2.setMessage(privateContactsActivity.getString(2131756006)).setPositiveButton(privateContactsActivity.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                    }
                });
                builder2.show();
                com.asus.privatecontacts.provider.c.a(context, 2);
            }
        } else if (k == 2 && d2) {
            AlertDialog.Builder builder3 = new AlertDialog.Builder(context);
            builder3.setMessage(privateContactsActivity.getString(2131756005)).setPositiveButton(privateContactsActivity.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.PrivateContactsActivity.6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
            builder3.show();
            com.asus.privatecontacts.provider.c.a(context, 1);
        }
    }

    private void d() {
        Loader loader = getLoaderManager().getLoader(13);
        if (loader != null && loader.isReset()) {
            getLoaderManager().restartLoader(13, null, this);
        } else if (loader == null) {
            getLoaderManager().initLoader(13, null, this);
        }
    }

    private void e() {
        if (this.f2959b != null && !this.f2959b.isShowing()) {
            this.f2959b.show();
        }
    }

    private void f() {
        if (this.f2959b != null) {
            this.f2959b.cancel();
            this.f2959b.dismiss();
        }
    }

    public final void a() {
        if (this.c != null && !this.c.isShowing()) {
            this.c.show();
        }
    }

    @Override // com.asus.privatecontacts.PrivateContactsManager.a
    public final void a(Intent intent) {
        String action = intent.getAction();
        if ("act_private_contact_added".equals(action) || "act_private_contact_deleted".equals(action)) {
            f();
            getLoaderManager().restartLoader(13, null, this);
        }
    }

    public final void b() {
        if (this.c != null) {
            this.c.cancel();
            this.c.dismiss();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        super.onActivityResult(i, i2, intent);
        if (intent == null) {
            Log.d(f2958a, "resultCode: " + i2 + " <<< onActivityResult");
            Log.d(f2958a, "Return intent is null <<< onActivityResult");
        } else if (i == 1001) {
            e();
            try {
                if (this.g) {
                    Uri parse = Uri.parse(intent.getData().toString() + "/entities");
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(parse.toString());
                    startService(PrivateContactsManager.a(this, arrayList, PrivateContactsActivity.class, "act_private_contact_added"));
                } else {
                    startService(PrivateContactsManager.a(this, intent.getStringArrayListExtra("return_selected_uri"), PrivateContactsActivity.class, "act_private_contact_added"));
                }
            } catch (Exception e) {
                f();
                e.printStackTrace();
            }
        } else if (i == 1002 || i == 1003) {
            e();
            if (i != 1003) {
                z = false;
            }
            try {
                Intent a2 = PrivateContactsManager.a(this, intent.getLongArrayExtra("selected_id"), z, PrivateContactsActivity.class, "act_private_contact_deleted");
                if (z) {
                    a2.putExtra("com.android.contacts.extra.ACCOUNT", (AccountWithDataSet) intent.getParcelableExtra("com.android.contacts.extra.ACCOUNT"));
                }
                startService(a2);
            } catch (Exception e2) {
                f();
                e2.printStackTrace();
            }
        } else if (i == 1004) {
            try {
                setStayPrivate(true);
                Intent intent2 = new Intent(this, ContactsMultiplePickerActivity.class);
                intent2.setAction("com.asus.contacts.action.restore_private_contacts");
                intent2.putExtra("com.android.contacts.extra.ACCOUNT", (AccountWithDataSet) intent.getParcelableExtra("com.android.contacts.extra.ACCOUNT"));
                startActivityForResult(intent2, 1003);
            } catch (Exception e3) {
                Log.e(f2958a, "Failed to invoke account selection dialog...");
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427625);
            boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                if (isCarMode) {
                    setRequestedOrientation(-1);
                } else {
                    setRequestedOrientation(1);
                }
            }
            AsusActionBarUtils.initActionbarDisplayOptions(getActionBar());
            this.d = (ListView) findViewById(2131297002);
            this.f = new com.asus.privatecontacts.b(this, this.i, 2131427631, this.j);
            this.d.setAdapter((ListAdapter) this.f);
            this.e = (TextView) findViewById(2131297116);
            PrivateContactsManager.a(this);
            this.f2959b = new ProgressDialog(this);
            this.f2959b.setCancelable(false);
            this.f2959b.setMessage(getString(2131755350));
            this.c = new ProgressDialog(this);
            this.c.setCancelable(false);
            this.c.setMessage(getString(2131755350));
            try {
                new d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
            d();
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        a();
        return new CursorLoader(this, Uri.withAppendedPath(a.d.f3064a, "list"), null, null, null, null);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492900, menu);
        MenuItem findItem = menu.findItem(2131297191);
        Drawable b2 = android.support.v4.a.a.a.b(findItem.getIcon().mutate());
        android.support.v4.a.a.a.a(b2, getResources().getColor(2131034157));
        findItem.setIcon(b2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.privatecontacts.e, android.app.Activity
    public void onDestroy() {
        PrivateContactsManager.b(this);
        getLoaderManager().destroyLoader(13);
        f();
        b();
        this.f2959b = null;
        this.c = null;
        super.onDestroy();
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        Cursor cursor2 = cursor;
        this.f.swapCursor(cursor2);
        if (cursor2 == null || cursor2.getCount() == 0) {
            this.d.setVisibility(8);
            this.e.setVisibility(0);
        } else {
            this.d.setVisibility(0);
            this.e.setVisibility(8);
        }
        b();
        if (Build.VERSION.SDK_INT == 23) {
            new a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        this.f.swapCursor(null);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131297191:
                try {
                    if (this.g) {
                        setStayPrivate(true);
                        startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), RequestCameraPermissionsActivity.REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER);
                    } else {
                        setStayPrivate(true);
                        Intent intent = new Intent(this, ContactsMultiplePickerActivity.class);
                        intent.setAction("com.asus.contacts.action.contacts_multi_picker");
                        startActivityForResult(intent, RequestCameraPermissionsActivity.REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER);
                    }
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                    z = false;
                    break;
                }
            case 2131297193:
                try {
                    setStayPrivate(true);
                    Intent intent2 = new Intent(this, ContactsMultiplePickerActivity.class);
                    intent2.setAction("com.asus.contacts.action.delete_private_contacts");
                    startActivityForResult(intent2, 1002);
                    break;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    z = false;
                    break;
                }
            case 2131297194:
                try {
                    setStayPrivate(true);
                    Intent intent3 = new Intent(this, ContactEditorAccountsChangedActivity.class);
                    intent3.putExtra("sim_support", false);
                    intent3.putExtra("extra_private_restore", true);
                    startActivityForResult(intent3, 1004);
                    break;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    z = false;
                    break;
                }
            case 2131297195:
                setStayPrivate(true);
                ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, PrivateSettingsActivity.class));
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // com.asus.privatecontacts.e, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        d();
    }
}

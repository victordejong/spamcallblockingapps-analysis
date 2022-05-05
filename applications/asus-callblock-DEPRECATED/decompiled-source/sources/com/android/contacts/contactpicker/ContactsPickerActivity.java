package com.android.contacts.contactpicker;

import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RemoteViews;
import android.widget.SearchView;
import android.widget.TextView;
import com.android.contacts.AsusContactsMultipleSelectionActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.list.ab;
import com.android.contacts.list.ah;
import com.android.contacts.list.g;
import com.android.contacts.list.h;
import com.android.contacts.list.v;
import com.android.contacts.list.y;
import com.android.contacts.miniwidget.ContactsWidget;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/ContactsPickerActivity.class */
public class ContactsPickerActivity extends AsusContactsMultipleSelectionActivity implements SharedPreferences.OnSharedPreferenceChangeListener, View.OnClickListener, SearchView.OnQueryTextListener, v.d {
    private static final String m = ContactsPickerActivity.class.getSimpleName();
    private String D;
    private v K;
    private com.android.contacts.contactpicker.a n;
    private SharedPreferences r;
    private View u;
    private View v;
    protected Bundle k = null;
    private long o = 0;
    private View p = null;
    b l = null;
    private TextView q = null;
    private Map<Long, Integer> s = new HashMap();
    private int t = 30;
    private int w = 100;
    private int x = -1;
    private boolean y = false;
    private boolean z = false;
    private boolean A = false;
    private int B = 0;
    private ArrayList<String> C = new ArrayList<>();
    private boolean E = false;
    private String F = BuildConfig.FLAVOR;
    private int G = Integer.MAX_VALUE;
    private int H = 100;
    private int I = 0;
    private View.OnClickListener J = new a(this, (byte) 0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/ContactsPickerActivity$a.class */
    private final class a implements View.OnClickListener {
        private a() {
        }

        /* synthetic */ a(ContactsPickerActivity contactsPickerActivity, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ContactsPickerActivity.this.c.setFocusable(false);
            ContactsPickerActivity.this.c.clearFocus();
            ContactsPickerActivity.this.showFilterWindow(view);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/ContactsPickerActivity$b.class */
    public interface b {
        void a(long j);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/ContactsPickerActivity$c.class */
    public final class c extends AsyncTask<Integer, Void, Integer> {
        public c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0275  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x03ee  */
        /* JADX WARN: Removed duplicated region for block: B:215:0x050c  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.lang.Integer... r8) {
            /*
                Method dump skipped, instructions count: 1813
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.contactpicker.ContactsPickerActivity.c.doInBackground(java.lang.Integer[]):java.lang.Integer");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            if (ContactsPickerActivity.this.q != null && !TextUtils.isEmpty(ContactsPickerActivity.this.q.getText()) && ContactsPickerActivity.this.q.getText().toString().contains("(")) {
                String charSequence = ContactsPickerActivity.this.q.getText().toString();
                ContactsPickerActivity.this.q.setText(charSequence.substring(0, charSequence.indexOf("(")) + "(" + num2 + ")");
            } else if (ContactsPickerActivity.this.q == null || ContactsPickerActivity.this.F.equals(ContactsPickerActivity.this.getString(2131756095))) {
                String str = ContactsPickerActivity.this.getString(2131756095) + " (" + num2 + ")";
                if (ContactsPickerActivity.this.q != null) {
                    ContactsPickerActivity.this.q.setText(str);
                }
            } else {
                ContactsPickerActivity.this.q.setText(ContactsPickerActivity.this.F + " (" + num2 + ")");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/contactpicker/ContactsPickerActivity$d.class */
    public final class d extends AsyncTask<Uri, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        ContactsPickerActivity f766a;

        public d(ContactsPickerActivity contactsPickerActivity) {
            this.f766a = contactsPickerActivity;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Uri[] uriArr) {
            if (this.f766a == null) {
                return null;
            }
            ContactsPickerActivity.j(ContactsPickerActivity.this);
            AppWidgetManager.getInstance(this.f766a).updateAppWidget(ContactsPickerActivity.this.x, new RemoteViews(this.f766a.getPackageName(), 2131427606));
            Intent intent = new Intent();
            intent.putExtra("appWidgetId", ContactsPickerActivity.this.x);
            ContactsPickerActivity.this.setResult(-1, intent);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (this.f766a != null) {
                this.f766a.c(ContactsPickerActivity.this.x);
                this.f766a.finish();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.android.contacts.contactpicker.ContactsPickerActivity r7) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.contactpicker.ContactsPickerActivity.a(com.android.contacts.contactpicker.ContactsPickerActivity):void");
    }

    private void f() {
        g gVar;
        if (this.I == 2) {
            if (this.z) {
                new d(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[0]);
                return;
            }
            Intent intent = new Intent();
            ArrayList<String> arrayList = new ArrayList<>();
            if (!(this.f419a == null || (gVar = (g) this.f419a.t) == null || gVar.e.size() <= 0)) {
                for (Uri uri : gVar.e) {
                    Log.d(m, "Uri=" + uri.toString());
                    arrayList.add(uri.getLastPathSegment().toString());
                }
                intent.putStringArrayListExtra("addToWidget", arrayList);
            }
            setResult(-1, intent);
            finish();
        } else if (this.I == 3) {
            if (this.f419a != null) {
                g gVar2 = (g) this.f419a.t;
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                if (gVar2.e.size() > 0) {
                    for (Uri uri2 : gVar2.e) {
                        Log.d(m, "Uri=" + uri2.toString());
                        arrayList2.add(uri2);
                    }
                }
                Intent intent2 = new Intent();
                intent2.putParcelableArrayListExtra("UriData", arrayList2);
                setResult(-1, intent2);
            }
        } else if (this.f419a != null) {
            g gVar3 = (g) this.f419a.t;
            ArrayList arrayList3 = new ArrayList();
            if (gVar3.e.size() > 0) {
                for (Uri uri3 : gVar3.e) {
                    Log.d(m, "Uri=" + uri3.toString());
                    arrayList3.add(uri3);
                }
            }
            Intent intent3 = new Intent();
            intent3.putExtra("UriData", arrayList3);
            setResult(2, intent3);
        }
    }

    private int g() {
        Intent intent = getIntent();
        int i = -1;
        if (intent != null) {
            i = -1;
            if (intent.getExtras() != null) {
                i = intent.getExtras().getInt("appWidgetId", 0);
            }
        }
        Log.d(m, "New widget id is " + i);
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02e5  */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void j(com.android.contacts.contactpicker.ContactsPickerActivity r7) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.contactpicker.ContactsPickerActivity.j(com.android.contacts.contactpicker.ContactsPickerActivity):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity
    public final void a() {
        switch (this.I) {
            case 3:
                setTitle(2131755858);
                return;
            default:
                setTitle(2131756227);
                return;
        }
    }

    @Override // com.android.contacts.list.v.d
    public final void a(long j, String str, int i, Map<Long, Integer> map) {
        int i2 = 0;
        if (j != 0 || !TextUtils.isEmpty(str)) {
            if (this.q != null) {
                if (i >= 0) {
                    i2 = i;
                }
                this.q.setText(str + " (" + i2 + ")");
            }
            if (i < 0) {
                try {
                    new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf((int) j));
                } catch (Exception e) {
                    Log.d(m, e.toString());
                }
            }
            this.o = j;
            this.l.a(j);
            this.K = null;
            this.s = map;
            this.F = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity
    public final void b() {
        if (this.n.f) {
            ah ahVar = new ah(getApplicationContext(), this.y, this.x, this.o);
            ahVar.B = this.w;
            this.l = ahVar;
            this.d.setVisibility(8);
            this.f419a = ahVar;
            this.I = 2;
        } else if (this.n.f769b) {
            switch (com.android.contacts.contactpicker.a.g) {
                case 1:
                    ab abVar = new ab(getApplicationContext(), this.o, (byte) 0);
                    abVar.B = this.H;
                    abVar.C = false;
                    this.l = abVar;
                    this.d.setVisibility(8);
                    this.f419a = abVar;
                    this.I = 3;
                    break;
                default:
                    ab abVar2 = new ab(getApplicationContext(), this.o);
                    abVar2.B = this.t;
                    this.l = abVar2;
                    this.d.setVisibility(8);
                    this.f419a = abVar2;
                    this.I = 0;
                    break;
            }
        } else {
            y yVar = new y(getApplicationContext(), this.o);
            yVar.C = this.G;
            this.l = yVar;
            this.d.setVisibility(8);
            this.f419a = yVar;
            this.I = 1;
        }
        if (this.k != null && h.class.isInstance(this.f419a)) {
            ((h) this.f419a).k = this.k;
        }
        this.e.setVisibility(8);
        getFragmentManager().beginTransaction().replace(2131296333, this.f419a).commitAllowingStateLoss();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.contacts.contactpicker.ContactsPickerActivity$1] */
    public final void c(final int i) {
        ContactsWidget.a(getApplicationContext(), AppWidgetManager.getInstance(getApplicationContext()), new int[]{i});
        if (getResources().getBoolean(2130968593)) {
            new Thread() { // from class: com.android.contacts.contactpicker.ContactsPickerActivity.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    ContactsWidget.a(ContactsPickerActivity.this.getApplicationContext(), AppWidgetManager.getInstance(ContactsPickerActivity.this.getApplicationContext()), new int[]{i});
                }
            }.start();
        }
        super.finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296804:
                break;
            default:
                return;
            case 2131296818:
                if (this.I != 2) {
                    f();
                    break;
                } else {
                    f();
                    return;
                }
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.F = getString(2131756095);
        if (bundle != null) {
            this.k = bundle;
            this.o = this.k.getLong("GroupId", -1L);
            this.F = this.k.getString("GroupName", getString(2131756095));
        }
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.t = getIntent().getExtras().getInt("SMS_MAX_SELECTABLE_SIZE", 30);
            this.w = getIntent().getExtras().getInt("WIDGET_MAX_SELECTABLE_SIZE", 100);
            this.E = getIntent().getExtras().getBoolean("WIDGET_EDITOR", false);
            this.x = getIntent().getExtras().getInt("id", -1);
            this.G = getIntent().getExtras().getInt("EMAIL_MAX_SELECTABLE_SIZE", Integer.MAX_VALUE);
            this.H = getIntent().getExtras().getInt("EXTRA_BLOCKLIST_MAX_SELECTABLE_SIZE", 100);
        }
        Intent intent = getIntent();
        if (!(intent == null || intent.getAction() == null || !intent.getAction().toString().equals("android.appwidget.action.APPWIDGET_CONFIGURE"))) {
            this.x = g();
        }
        if (!this.E) {
            this.z = true;
        }
        this.n = new com.android.contacts.contactpicker.a();
        com.android.contacts.contactpicker.a.a(this, this.n);
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131296351);
            View findViewById = findViewById(2131296798);
            View findViewById2 = findViewById(2131296813);
            if (this.j) {
                this.c.setVisibility(8);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
                if (findViewById2 != null) {
                    findViewById2.setVisibility(0);
                }
                this.u = findViewById(2131296818);
                this.v = findViewById(2131296804);
                if (this.u != null) {
                    this.u.setOnClickListener(this);
                }
                if (this.v != null) {
                    this.v.setOnClickListener(this);
                }
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(2, (Activity) this, "Ez_Contact_Picker", true);
            } else {
                this.c.setVisibility(0);
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(0);
                }
                if (findViewById2 != null) {
                    findViewById2.setVisibility(8);
                }
            }
            this.q = (TextView) findViewById(2131296348);
            if (this.q != null) {
                this.q.setText(getString(2131756095));
            }
            this.p = findViewById(2131296350);
            this.p.setOnClickListener(this.J);
            this.r = getSharedPreferences("asus_sim_setting", 0);
            this.r.registerOnSharedPreferenceChangeListener(this);
            if (relativeLayout != null && !PhoneCapabilityTester.IsAsusDevice()) {
                relativeLayout.setVisibility(8);
            }
        }
    }

    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        g gVar;
        getMenuInflater().inflate(2131492880, menu);
        this.h = menu.findItem(2131297244);
        MenuItem findItem = menu.findItem(2131297041);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        if (this.j) {
            findItem.setVisible(false);
            this.h.setVisible(false);
            return true;
        }
        this.h.setVisible(true);
        this.h.setEnabled(false);
        if (this.h != null) {
            com.android.contacts.skin.a.a(this, this.h);
        }
        findItem.setVisible(true);
        if (this.f419a == null || (gVar = (g) this.f419a.t) == null || gVar.e.size() <= 0) {
            return true;
        }
        this.h.setEnabled(true);
        if (this.h == null) {
            return true;
        }
        com.android.contacts.skin.a.a(this, this.h);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.r != null) {
            this.r.unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131297041:
                if (this.I != 2) {
                    finish();
                    break;
                } else {
                    if (this.x == -1) {
                        this.x = g();
                    }
                    if (this.x > 0) {
                        AppWidgetManager.getInstance(this).updateAppWidget(this.x, new RemoteViews(getPackageName(), 2131427606));
                        Intent intent = new Intent();
                        intent.putExtra("appWidgetId", this.x);
                        setResult(-1, intent);
                        c(this.x);
                    }
                    finish();
                    break;
                }
            case 2131297244:
                if (this.I != 2) {
                    f();
                    finish();
                    break;
                } else {
                    f();
                    break;
                }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f419a != null) {
            g gVar = (g) ((h) this.f419a).t;
            ArrayList<String> arrayList = new ArrayList<>();
            for (Uri uri : gVar.e) {
                gVar.g.get(uri);
                arrayList.add(uri.toString());
            }
            Log.d(m, "savearrays.size = " + arrayList.size());
            bundle.putStringArrayList("mapAllAsusDeleteAll", arrayList);
            bundle.putLong("GroupId", this.o);
            bundle.putString("GroupName", this.F);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Log.d(m, "SharedPreferences: " + str);
        if (str.startsWith("asushadIccCard") || str.startsWith("asusIccCardLoaded")) {
            if (this.l != null) {
                this.l.a(this.o);
            }
            try {
                new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf((int) this.o));
            } catch (Exception e) {
                Log.d(m, e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.AsusContactsMultipleSelectionActivity, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.q != null && this.o == v.m) {
            try {
                new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(v.m));
            } catch (Exception e) {
                Log.d(m, e.toString());
            }
        } else if (this.q != null && this.o != v.m) {
            try {
                Log.d(m, "For Rotate Group filter new async task");
                new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf((int) this.o));
            } catch (Exception e2) {
                Log.d(m, e2.toString());
            }
        }
    }

    public void showFilterWindow(View view) {
        if (this.I == 2) {
            this.K = new v(this.I, this.y, this.x);
        } else {
            this.K = new v(this.I);
        }
        View view2 = view;
        if (view == null) {
            view2 = this.p;
        }
        if (view2 != null) {
            view2.setTag(Long.valueOf(this.o));
        }
        v vVar = this.K;
        Map<Long, Integer> map = this.s;
        Log.d(vVar.f1881a, "makePopupWindow ");
        vVar.f1882b = this;
        vVar.h = view2;
        vVar.c = new PopupWindow(vVar.f1882b);
        vVar.i = Long.valueOf(view2.getTag() == null ? 0L : ((Long) view2.getTag()).longValue());
        vVar.l = map;
        if (vVar.l.containsKey(vVar.n)) {
            vVar.j = vVar.l.get(vVar.n).intValue();
        }
        vVar.k = new v.c(getContentResolver());
        r0.startQuery(0, null, Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups"), v.this.t, null, null, " COLLATE LOCALIZED ASC");
        View inflate = ((LayoutInflater) vVar.f1882b.getSystemService("layout_inflater")).inflate(2131427364, (ViewGroup) null, false);
        vVar.d = (ListView) inflate.findViewById(Resources.getSystem().getIdentifier("list", "id", "android"));
        vVar.e = new v.b(vVar.f1882b, vVar.f);
        vVar.d.setAdapter((ListAdapter) vVar.e);
        vVar.c.setWidth(vVar.f1882b.getResources().getDimensionPixelSize(2131099725));
        inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        vVar.c.setBackgroundDrawable(vVar.f1882b.getResources().getDrawable(2131165482));
        vVar.c.setContentView(inflate);
        vVar.c.setOutsideTouchable(true);
        vVar.c.setFocusable(true);
        vVar.c.setTouchable(true);
        vVar.c.setOnDismissListener(vVar);
        vVar.d.setOnItemClickListener(vVar.o);
        if (vVar.c != null) {
            vVar.c.setHeight(-2);
        }
        this.K.g = this;
    }
}

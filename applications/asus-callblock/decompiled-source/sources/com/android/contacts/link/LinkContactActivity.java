package com.android.contacts.link;

import android.app.ActionBar;
import android.app.Activity;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.OperationApplicationException;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.k;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.p;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.EmptyService;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity.class */
public class LinkContactActivity extends p {
    private static WeakReference<ProgressDialog> S;
    private static final String[] g = {"_id", "display_name", "display_name_alt", "sort_key", "starred", "times_contacted", "photo_id", "lookup", "phonetic_name", "has_phone_number"};
    private static final String[] h = {"_id", "display_name", "display_name_alt"};
    private static final String[] i = {"_id", "display_name", "display_name_alt", SelectAccountActivity.ACCOUNT_NAME};
    private b A;
    private ArrayAdapter<String> B;
    private a C;
    private e D;
    private f E;
    private ListView F;
    private TextView G;
    private Spinner H;
    private ImageView I;
    private Context J;
    private ContentResolver K;
    private LayoutInflater L;
    private com.android.contacts.model.a M;
    private k N;
    private SearchView O;
    private LinearLayout P;
    private boolean T;
    private boolean U;
    private long[] V;
    private ProgressDialog W;
    private ListPopupWindow X;
    private com.android.contacts.link.b n;
    private int s;
    private RawContactDeltaList t;
    private com.android.contacts.link.b v;
    private com.android.contacts.link.a w;
    private ArrayList<ContactInfo> x;
    private ArrayList<ContactInfo> y;
    private ArrayList<ContactInfo> z;
    private boolean e = false;
    private int f = -1;
    private long j = -1;
    private int k = -1;
    private long l = -1;
    private long m = -1;
    private long o = 0;
    private ArrayList<ContactInfo> p = new ArrayList<>();
    private int q = -1;
    private String r = BuildConfig.FLAVOR;
    private boolean u = false;
    private boolean Q = false;
    private ArrayList<Long> R = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ContactInfo> f1605a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    final Handler f1606b = new Handler() { // from class: com.android.contacts.link.LinkContactActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            super.handleMessage(message);
            switch (message.what) {
                case 401:
                    LinkContactActivity.this.B.clear();
                    LinkContactActivity.this.p.clear();
                    Iterator it = LinkContactActivity.this.x.iterator();
                    while (it.hasNext()) {
                        ContactInfo contactInfo = (ContactInfo) it.next();
                        Iterator it2 = LinkContactActivity.this.f1605a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                ContactInfo contactInfo2 = (ContactInfo) it2.next();
                                if (contactInfo2.f1601a == contactInfo.f1601a && contactInfo2.f1602b == contactInfo.f1602b) {
                                    z = true;
                                }
                            } else {
                                z = false;
                            }
                        }
                        if (!z) {
                            LinkContactActivity.this.B.add(contactInfo.i);
                            LinkContactActivity.this.p.add(contactInfo);
                        }
                    }
                    if (LinkContactActivity.this.q >= 0) {
                        LinkContactActivity.this.H.setSelection(LinkContactActivity.this.q);
                    } else {
                        LinkContactActivity.this.H.setSelection(0);
                    }
                    if (LinkContactActivity.this.l >= 0) {
                        LinkContactActivity.this.N.a(LinkContactActivity.this.I, LinkContactActivity.this.l, false);
                    }
                    if (LinkContactActivity.this.G != null) {
                        LinkContactActivity.this.G.setText(LinkContactActivity.this.r);
                        return;
                    }
                    return;
                case 402:
                    Bundle data = message.getData();
                    if (data != null) {
                        long j = data.getLong("contactId");
                        long j2 = data.getLong("rawContactId");
                        long j3 = data.getLong("photoId");
                        long j4 = data.getLong("photoFileId");
                        CharSequence charSequence = data.getCharSequence("accountTypeName");
                        a aVar = LinkContactActivity.this.C;
                        aVar.f1612a.add(Long.valueOf(j));
                        aVar.f1613b.add(Long.valueOf(j2));
                        aVar.c.add(Long.valueOf(j3));
                        aVar.d.add(charSequence);
                        aVar.e.add(Long.valueOf(j4));
                        LinkContactActivity.this.C.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 403:
                case 404:
                default:
                    return;
                case 405:
                    Bundle data2 = message.getData();
                    if (data2 != null) {
                        ContactInfo contactInfo3 = new ContactInfo();
                        contactInfo3.f1601a = data2.getLong("id");
                        contactInfo3.f1602b = data2.getInt("idtype");
                        contactInfo3.i = data2.getString(ContactDetailCallogActivity.EXTRA_NAME);
                        contactInfo3.c = data2.getLong("photoid");
                        contactInfo3.d = data2.getLong("photoFileId");
                        contactInfo3.f = data2.getInt("photo_file_size");
                        contactInfo3.e = data2.getInt("photo_pixel_count");
                        contactInfo3.h = data2.getString(SelectAccountActivity.ACCOUNT_TYPE);
                        contactInfo3.g = data2.getBoolean("is_super_primary");
                        contactInfo3.j = data2.getString("accounttitle");
                        if (!LinkContactActivity.a(LinkContactActivity.this.x, contactInfo3)) {
                            LinkContactActivity.this.x.add(contactInfo3);
                        }
                        LinkContactActivity.this.A.notifyDataSetChanged();
                        return;
                    }
                    return;
            }
        }
    };
    private final LoaderManager.LoaderCallbacks<com.android.contacts.model.c> Y = new LoaderManager.LoaderCallbacks<com.android.contacts.model.c>() { // from class: com.android.contacts.link.LinkContactActivity.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<com.android.contacts.model.c> onCreateLoader(int i2, Bundle bundle) {
            return new com.android.contacts.model.d(LinkContactActivity.this.J, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, LinkContactActivity.this.j));
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<com.android.contacts.model.c> loader, com.android.contacts.model.c cVar) {
            com.android.contacts.model.c cVar2 = cVar;
            if (cVar2.c() || cVar2.b()) {
                Log.i("LinkContactActivity", "No contact found. Closing activity");
                return;
            }
            LinkContactActivity.this.t = cVar2.a();
            LinkContactActivity.this.u = true;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<com.android.contacts.model.c> loader) {
        }
    };
    AdapterView.OnItemSelectedListener c = new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.link.LinkContactActivity.3
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
            LinkContactActivity.this.k = LinkContactActivity.this.x.indexOf(LinkContactActivity.this.p.get(i2));
            LinkContactActivity.this.q = i2;
            LinkContactActivity.this.A.notifyDataSetChanged();
            String string = LinkContactActivity.this.getString(2131755227, new Object[]{LinkContactActivity.this.e()});
            if (LinkContactActivity.this.G != null) {
                LinkContactActivity.this.G.setText(string);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
            LinkContactActivity.this.k = -1;
            LinkContactActivity.this.q = -1;
        }
    };
    View.OnClickListener d = new View.OnClickListener() { // from class: com.android.contacts.link.LinkContactActivity.4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = LinkContactActivity.this.C;
            aVar.f1612a.clear();
            aVar.f1613b.clear();
            aVar.c.clear();
            aVar.d.clear();
            aVar.e.clear();
            LinkContactActivity.r(LinkContactActivity.this);
            LinkContactActivity.this.X = new ListPopupWindow(LinkContactActivity.this.J, null);
            LinkContactActivity.this.X.setWidth(LinkContactActivity.this.J.getResources().getDimensionPixelSize(2131099794));
            LinkContactActivity.this.X.setAnchorView(LinkContactActivity.this.I);
            LinkContactActivity.this.X.setAdapter(LinkContactActivity.this.C);
            LinkContactActivity.this.X.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.contacts.link.LinkContactActivity.4.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r10v3 */
                /* JADX WARN: Type inference failed for: r10v4, types: [long] */
                /* JADX WARN: Type inference failed for: r10v5 */
                /* JADX WARN: Type inference failed for: r10v8 */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // android.widget.AdapterView.OnItemClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onItemClick(android.widget.AdapterView<?> r7, android.view.View r8, int r9, long r10) {
                    /*
                        r6 = this;
                        r0 = 0
                        r12 = r0
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        android.widget.ListPopupWindow r0 = com.android.contacts.link.LinkContactActivity.s(r0)
                        r0.dismiss()
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        r8 = r0
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        com.android.contacts.link.LinkContactActivity$a r0 = com.android.contacts.link.LinkContactActivity.l(r0)
                        r7 = r0
                        r0 = r9
                        if (r0 < 0) goto L_0x00c2
                        r0 = r9
                        r1 = r7
                        java.util.ArrayList<java.lang.Long> r1 = r1.c
                        int r1 = r1.size()
                        if (r0 >= r1) goto L_0x00c2
                        r0 = r7
                        java.util.ArrayList<java.lang.Long> r0 = r0.c
                        r1 = r9
                        java.lang.Object r0 = r0.get(r1)
                        java.lang.Long r0 = (java.lang.Long) r0
                        long r0 = r0.longValue()
                        r10 = r0
                    L_0x0042:
                        r0 = r8
                        r1 = r10
                        long r0 = com.android.contacts.link.LinkContactActivity.a(r0, r1)
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        r8 = r0
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        com.android.contacts.link.LinkContactActivity$a r0 = com.android.contacts.link.LinkContactActivity.l(r0)
                        r7 = r0
                        r0 = r12
                        r10 = r0
                        r0 = r9
                        if (r0 < 0) goto L_0x0083
                        r0 = r12
                        r10 = r0
                        r0 = r9
                        r1 = r7
                        java.util.ArrayList<java.lang.Long> r1 = r1.e
                        int r1 = r1.size()
                        if (r0 >= r1) goto L_0x0083
                        r0 = r7
                        java.util.ArrayList<java.lang.Long> r0 = r0.e
                        r1 = r9
                        java.lang.Object r0 = r0.get(r1)
                        java.lang.Long r0 = (java.lang.Long) r0
                        long r0 = r0.longValue()
                        r10 = r0
                    L_0x0083:
                        r0 = r8
                        r1 = r10
                        long r0 = com.android.contacts.link.LinkContactActivity.b(r0, r1)
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        r1 = r6
                        com.android.contacts.link.LinkContactActivity$4 r1 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r1 = com.android.contacts.link.LinkContactActivity.this
                        long r1 = com.android.contacts.link.LinkContactActivity.g(r1)
                        long r0 = com.android.contacts.link.LinkContactActivity.c(r0, r1)
                        r0 = r6
                        com.android.contacts.link.LinkContactActivity$4 r0 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r0 = com.android.contacts.link.LinkContactActivity.this
                        com.android.contacts.k r0 = com.android.contacts.link.LinkContactActivity.i(r0)
                        r1 = r6
                        com.android.contacts.link.LinkContactActivity$4 r1 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r1 = com.android.contacts.link.LinkContactActivity.this
                        android.widget.ImageView r1 = com.android.contacts.link.LinkContactActivity.h(r1)
                        r2 = r6
                        com.android.contacts.link.LinkContactActivity$4 r2 = com.android.contacts.link.LinkContactActivity.AnonymousClass4.this
                        com.android.contacts.link.LinkContactActivity r2 = com.android.contacts.link.LinkContactActivity.this
                        long r2 = com.android.contacts.link.LinkContactActivity.g(r2)
                        r3 = 0
                        r0.a(r1, r2, r3)
                        return
                    L_0x00c2:
                        r0 = 0
                        r10 = r0
                        goto L_0x0042
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.AnonymousClass4.AnonymousClass1.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
                }
            });
            LinkContactActivity.this.X.setModal(true);
            LinkContactActivity.this.X.show();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$a.class */
    private final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<Long> f1612a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        ArrayList<Long> f1613b = new ArrayList<>();
        ArrayList<Long> c = new ArrayList<>();
        ArrayList<CharSequence> d = new ArrayList<>();
        ArrayList<Long> e = new ArrayList<>();

        public a() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1613b.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = LinkContactActivity.this.getLayoutInflater().inflate(2131427387, viewGroup, false);
            }
            ImageView imageView = (ImageView) view2.findViewById(2131296754);
            TextView textView = (TextView) view2.findViewById(2131296753);
            LinkContactActivity.this.N.a(imageView, this.c.get(i).longValue(), false);
            textView.setText(this.d.get(i));
            return view2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$b.class */
    private final class b extends BaseAdapter implements AbsListView.OnScrollListener {

        /* renamed from: b  reason: collision with root package name */
        private Context f1615b;

        public b(Context context) {
            this.f1615b = context;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return LinkContactActivity.this.x == null ? 0 : LinkContactActivity.this.x.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return LinkContactActivity.this.x == null ? null : LinkContactActivity.this.x.get(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return LinkContactActivity.this.x == null ? 0L : ((ContactInfo) LinkContactActivity.this.x.get(i)).f1601a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
            if (r8.getTag() == null) goto L_0x000e;
         */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
            /*
                Method dump skipped, instructions count: 355
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.b.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 2) {
                LinkContactActivity.this.N.a();
            } else {
                LinkContactActivity.this.N.b();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$c.class */
    private static final class c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private int f1618a = 0;

        /* renamed from: b  reason: collision with root package name */
        private LinkContactActivity f1619b;

        public c(LinkContactActivity linkContactActivity) {
            this.f1619b = linkContactActivity;
        }

        private Void a() {
            switch (this.f1618a) {
                case 0:
                    if (this.f1619b == null || this.f1619b.isDestroyed()) {
                        return null;
                    }
                    try {
                        Log.i("LinkContactActivity", "Contactsprovider version is " + this.f1619b.getApplicationContext().getPackageManager().getPackageInfo("com.android.providers.contacts", 0).versionCode);
                    } catch (Exception e) {
                        Log.d("LinkContactActivity", "Fail to get app version, Exception: " + e.toString());
                    }
                    LinkContactActivity.B(this.f1619b);
                    return null;
                default:
                    return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            LinkContactActivity.i();
            try {
                this.f1619b.stopService(new Intent(this.f1619b, EmptyService.class));
            } catch (Exception e) {
                Log.e("LinkContactActivity", "Error when stop progress service: " + e.getMessage());
            }
            this.f1619b.c();
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            WeakReference unused = LinkContactActivity.S = new WeakReference(ProgressDialog.show(this.f1619b, null, this.f1619b.getText(2131755749)));
            this.f1619b.startService(new Intent(this.f1619b, EmptyService.class));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$d.class */
    public final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Context f1620a;

        /* renamed from: b  reason: collision with root package name */
        String f1621b;

        public d(Context context, String str) {
            this.f1620a = context;
            this.f1621b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Toast.makeText(this.f1620a, this.f1621b, 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$e.class */
    public final class e extends Thread {

        /* renamed from: a  reason: collision with root package name */
        boolean f1622a;

        private e() {
        }

        /* synthetic */ e(LinkContactActivity linkContactActivity, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            this.f1622a = false;
            if (this.f1622a) {
                LinkContactActivity.this.a();
                return;
            }
            LinkContactActivity.t(LinkContactActivity.this);
            if (this.f1622a) {
                LinkContactActivity.this.a();
                return;
            }
            long c = LinkContactActivity.this.c(LinkContactActivity.this.j);
            int a2 = LinkContactActivity.this.v.a();
            int i = 0;
            while (true) {
                if (i < a2) {
                    if (LinkContactActivity.this.k <= 0 && c == LinkContactActivity.this.v.a(i)) {
                        LinkContactActivity.this.k = i;
                        LinkContactActivity.this.q = i;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            if (this.f1622a) {
                LinkContactActivity.this.a();
                return;
            }
            if (LinkContactActivity.this.l <= 0) {
                LinkContactActivity.this.l = LinkContactActivity.this.b(LinkContactActivity.this.j);
            }
            if (this.f1622a) {
                LinkContactActivity.this.a();
                return;
            }
            LinkContactActivity.this.r = LinkContactActivity.this.getString(2131755227, new Object[]{LinkContactActivity.this.e()});
            if (this.f1622a) {
                LinkContactActivity.this.a();
                return;
            }
            Message message = new Message();
            message.what = 401;
            LinkContactActivity.this.f1606b.sendMessage(message);
            LinkContactActivity.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkContactActivity$f.class */
    public final class f extends Thread {

        /* renamed from: a  reason: collision with root package name */
        boolean f1624a;

        private f() {
        }

        /* synthetic */ f(LinkContactActivity linkContactActivity, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            long j;
            long j2;
            Throwable th;
            Cursor cursor;
            long j3;
            long j4;
            this.f1624a = false;
            ContentResolver contentResolver = LinkContactActivity.this.getContentResolver();
            int a2 = LinkContactActivity.this.n.a();
            for (int i = 0; i < a2 && !this.f1624a; i++) {
                if (LinkContactActivity.this.n.b(i) == 1) {
                    long a3 = LinkContactActivity.this.n.a(i);
                    Cursor query = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "_id=" + a3, null, null);
                    try {
                        if (query.moveToFirst()) {
                            CharSequence a4 = LinkContactActivity.this.M.a(query.getString(0), null).a(LinkContactActivity.this.J);
                            cursor = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "data14"}, "raw_contact_id=" + a3 + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                            try {
                                if (cursor.moveToFirst()) {
                                    j4 = cursor.getLong(0);
                                    j3 = cursor.getLong(1);
                                } else {
                                    j3 = 0;
                                    j4 = 0;
                                }
                                Bundle bundle = new Bundle();
                                bundle.putLong("contactId", LinkContactActivity.this.j);
                                bundle.putLong("rawContactId", a3);
                                bundle.putLong("photoId", j4);
                                bundle.putLong("photoFileId", j3);
                                bundle.putCharSequence("accountTypeName", a4);
                                Message message = new Message();
                                message.what = 402;
                                message.setData(bundle);
                                LinkContactActivity.this.f1606b.sendMessage(message);
                            } catch (Throwable th2) {
                                th = th2;
                                if (query != null) {
                                    query.close();
                                }
                                throw th;
                            }
                        } else {
                            cursor = null;
                        }
                        if (query != null) {
                            query.close();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = null;
                    }
                } else {
                    long a5 = LinkContactActivity.this.n.a(i);
                    Cursor query2 = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id=" + a5, null, null);
                    Cursor cursor2 = null;
                    while (query2.moveToNext()) {
                        try {
                            if (!this.f1624a) {
                                long j5 = query2.getLong(0);
                                Cursor query3 = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "_id=" + j5, null, null);
                                Cursor cursor3 = cursor2;
                                try {
                                    if (query3.moveToFirst()) {
                                        CharSequence a6 = LinkContactActivity.this.M.a(query3.getString(0), null).a(LinkContactActivity.this.J);
                                        cursor2 = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "data14"}, "raw_contact_id=" + j5 + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                                        try {
                                            if (cursor2.moveToFirst()) {
                                                j2 = cursor2.getLong(0);
                                                j = cursor2.getLong(1);
                                            } else {
                                                j = 0;
                                                j2 = 0;
                                            }
                                            Bundle bundle2 = new Bundle();
                                            bundle2.putLong("contactId", a5);
                                            bundle2.putLong("rawContactId", j5);
                                            bundle2.putLong("photoId", j2);
                                            bundle2.putLong("photoFileId", j);
                                            bundle2.putCharSequence("accountTypeName", a6);
                                            Message message2 = new Message();
                                            message2.what = 402;
                                            message2.setData(bundle2);
                                            LinkContactActivity.this.f1606b.sendMessage(message2);
                                            cursor3 = cursor2;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            if (query3 != null) {
                                                query3.close();
                                            }
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    if (query3 != null) {
                                        query3.close();
                                    }
                                    cursor2 = cursor3;
                                    if (cursor3 != null) {
                                        cursor3.close();
                                        cursor2 = cursor3;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            } else if (query2 != null) {
                                query2.close();
                                return;
                            } else {
                                return;
                            }
                        } finally {
                            if (query2 != null) {
                                query2.close();
                            }
                        }
                    }
                    if (query2 != null) {
                        query2.close();
                    }
                }
            }
        }
    }

    static /* synthetic */ void B(LinkContactActivity linkContactActivity) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int a2 = linkContactActivity.v.a();
        for (int i2 = 0; i2 < a2; i2++) {
            if (linkContactActivity.v.b(i2) == 1) {
                arrayList2.add(Long.valueOf(linkContactActivity.v.a(i2)));
            } else {
                arrayList.add(Long.valueOf(linkContactActivity.v.a(i2)));
            }
        }
        if (a2 > 0) {
            long j = -1;
            if (linkContactActivity.k >= 0) {
                j = linkContactActivity.f();
            }
            if (linkContactActivity.u) {
                Log.v("LinkContactActivity", "state load success. splitAggregateWithState();");
                linkContactActivity.g();
            } else {
                Log.v("LinkContactActivity", "state load failed. splitAggregateWithShit();");
                linkContactActivity.h();
            }
            long e2 = linkContactActivity.e(linkContactActivity.a(arrayList2, arrayList));
            if (e2 >= 0) {
                linkContactActivity.j = e2;
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (j >= 0) {
                        linkContactActivity.a(e2, j);
                    }
                    if (linkContactActivity.l >= 0) {
                        linkContactActivity.a(e2, linkContactActivity.l, linkContactActivity.m);
                    }
                    if (linkContactActivity.o > 0) {
                        Iterator<ContactInfo> it = linkContactActivity.p.iterator();
                        while (it.hasNext()) {
                            ContactInfo next = it.next();
                            if (next.g && linkContactActivity.o != next.c) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("is_super_primary", (Integer) 0);
                                contentValues.put("is_primary", (Integer) 0);
                                linkContactActivity.getContentResolver().update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, next.c), contentValues, null, null);
                            } else if (!next.g && linkContactActivity.o == next.c) {
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("is_super_primary", (Integer) 1);
                                contentValues2.put("is_primary", (Integer) 1);
                                linkContactActivity.getContentResolver().update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, next.c), contentValues2, null, null);
                            }
                        }
                    }
                }
            }
        }
    }

    private int a(ContactInfo contactInfo) {
        int i2;
        if (contactInfo != null && contactInfo.f1602b == 0) {
            int size = this.y.size();
            i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.y.get(i2).f1601a == contactInfo.f1601a) {
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            i2 = -1;
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object] */
    private long a(List<Long> list, List<Long> list2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList2.add(list.get(i2));
        }
        for (int i3 = 0; i3 < list2.size(); i3++) {
            Cursor query = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id=" + list2.get(i3).longValue(), null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        arrayList2.add(Long.valueOf(query.getLong(0)));
                    } finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                }
            }
        }
        int size = arrayList2.size();
        long longValue = size > 0 ? ((Long) arrayList2.get(0)).longValue() : -1L;
        for (int i4 = 0; i4 < size; i4++) {
            for (int i5 = 0; i5 < size; i5++) {
                if (i4 != i5) {
                    long longValue2 = ((Long) arrayList2.get(i4)).longValue();
                    long longValue3 = ((Long) arrayList2.get(i5)).longValue();
                    ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
                    newUpdate.withValue("type", 1);
                    newUpdate.withValue("raw_contact_id1", Long.valueOf(longValue2));
                    newUpdate.withValue("raw_contact_id2", Long.valueOf(longValue3));
                    arrayList.add(newUpdate.build());
                }
            }
        }
        try {
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                int i6 = (size2 / 300) + 1;
                Log.d("LinkContactActivity", "total op count: " + size2 + ", loopCount: " + i6);
                for (int i7 = 0; i7 < i6; i7++) {
                    Log.d("LinkContactActivity", "joinAggregate batch[" + (i7 + 1) + "]");
                    ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
                    for (int i8 = 0; i8 < 300; i8++) {
                        int i9 = (i7 * 300) + i8;
                        if (i9 < arrayList.size()) {
                            arrayList3.add(arrayList.get(i9));
                        }
                    }
                    Log.d("LinkContactActivity", "partOperations count: " + arrayList3.size());
                    getContentResolver().applyBatch("com.android.contacts", arrayList3);
                }
            }
        } catch (OperationApplicationException e2) {
            Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e2);
        } catch (RemoteException e3) {
            Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e3);
        }
        return longValue;
    }

    private ArrayList<ContactInfo> a(ArrayList<Long> arrayList) {
        long j;
        ArrayList<ContactInfo> arrayList2 = new ArrayList<>();
        Iterator<Long> it = arrayList.iterator();
        String str = BuildConfig.FLAVOR;
        while (it.hasNext()) {
            str = str + it.next() + ", ";
        }
        Cursor query = getContentResolver().query(!TextUtils.isEmpty(null) ? Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_FILTER_URI, Uri.encode(null)) : ContactsContract.Contacts.CONTENT_URI, g, "_id IN (" + str.substring(0, str.length() - 2) + ")", null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        ContactInfo contactInfo = new ContactInfo();
                        contactInfo.f1601a = query.getLong(0);
                        contactInfo.f1602b = 0;
                        String string = query.getString(this.s);
                        if (!TextUtils.isEmpty(string)) {
                            contactInfo.i = string;
                        } else {
                            contactInfo.i = String.valueOf(getString(2131756348));
                        }
                        contactInfo.c = query.getLong(6);
                        String d2 = d(contactInfo.f1601a);
                        if (d2 != null) {
                            if (!d2.equals(getString(2131756143))) {
                                contactInfo.j = d2;
                            }
                        }
                        Cursor query2 = getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"data14", "is_super_primary", "raw_contact_id"}, "_id = " + contactInfo.c, null, null);
                        if (query2 != null) {
                            if (query2.moveToFirst()) {
                                contactInfo.d = query2.getLong(0);
                                contactInfo.g = query2.getInt(1) == 1;
                                j = query2.getLong(2);
                            } else {
                                j = 0;
                            }
                            query2.close();
                            if (j > 0) {
                                Cursor query3 = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "_id = " + j, null, null);
                                if (query3 != null && query3.moveToFirst()) {
                                    contactInfo.h = query3.getString(0);
                                }
                                if (query3 != null) {
                                    query3.close();
                                }
                            }
                            if (contactInfo.d <= 0 || !PhoneCapabilityTester.IsAsusDevice()) {
                                contactInfo.e = 9216;
                                contactInfo.f = 0;
                            } else {
                                Uri.Builder buildUpon = ContactsContract.AUTHORITY_URI.buildUpon();
                                buildUpon.appendPath("asus_raw_contacts");
                                buildUpon.appendPath("photo");
                                Cursor query4 = this.K.query(buildUpon.build(), new String[]{"height", "width", "filesize"}, "_id = " + contactInfo.d, null, null);
                                if (query4 != null && query4.moveToFirst()) {
                                    int i2 = query4.getInt(0);
                                    int i3 = query4.getInt(1);
                                    int i4 = query4.getInt(2);
                                    contactInfo.e = i2 * i3;
                                    contactInfo.f = i4;
                                }
                                if (query4 != null) {
                                    query4.close();
                                }
                            }
                            arrayList2.add(contactInfo);
                        }
                    } while (query.moveToNext());
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x022d A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.ArrayList<com.android.contacts.link.ContactInfo> a(long[] r8) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.a(long[]):java.util.ArrayList");
    }

    private void a(long j, long j2) {
        if (j >= 0 && j2 >= 0 && b(j2, j)) {
            ContentValues contentValues = new ContentValues();
            try {
                if (CompatUtils.isMarshmallowCompatible()) {
                    Uri uri = ContactsContract.Data.CONTENT_URI;
                    contentValues.put("is_super_primary", (Integer) 1);
                    Log.i("LinkContactActivity", "changeDisplayName:" + j2 + "(" + this.K.update(uri, contentValues, "raw_contact_id = " + j2 + " AND mimetype='vnd.android.cursor.item/name'", null) + ")");
                    return;
                }
                contentValues.put("name_verified", (Integer) 1);
                int update = this.K.update(ContactsContract.RawContacts.CONTENT_URI, contentValues, "_id = " + j2, null);
                int i2 = update;
                if (update <= 0) {
                    Log.i("LinkContactActivity", "changeDisplayName(readOnly):" + j2 + "(" + update + ")");
                    i2 = this.K.update(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build(), contentValues, "_id = " + j2, null);
                }
                Log.i("LinkContactActivity", "changeDisplayName:" + j2 + "(" + i2 + ")");
            } catch (UnsupportedOperationException e2) {
                runOnUiThread(new d(this, "DataBase not suport Changing DisplayName ! "));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0211  */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(long r8, long r10, long r12) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.a(long, long, long):void");
    }

    private void a(boolean z) {
        if (!z) {
            d();
        }
    }

    private boolean a(long j) {
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= this.z.size()) {
                break;
            } else if (this.z.get(i2).f1601a == j) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        return z;
    }

    private static boolean a(ContactInfo contactInfo, ContactInfo contactInfo2) {
        boolean z = true;
        if (contactInfo != null) {
            if (contactInfo2.e == contactInfo.e) {
                if (contactInfo2.f - contactInfo.f <= 0) {
                    z = false;
                }
            } else if (contactInfo2.e - contactInfo.e <= 0) {
                z = false;
            }
        }
        return z;
    }

    public static boolean a(ArrayList<ContactInfo> arrayList, ContactInfo contactInfo) {
        boolean z;
        if (arrayList != null) {
            Iterator<ContactInfo> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                ContactInfo next = it.next();
                if (next != null && next.f1601a == contactInfo.f1601a) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private static boolean a(long[] jArr, long j) {
        boolean z;
        if (jArr == null) {
            z = false;
        } else {
            int length = jArr.length;
            int i2 = 0;
            while (true) {
                z = false;
                if (i2 >= length) {
                    break;
                } else if (jArr[i2] == j) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(long j) {
        long j2;
        Cursor query = getContentResolver().query(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "data"), new String[]{"photo_id", "photo_file_id"}, null, null, null);
        try {
            if (query.moveToFirst()) {
                j2 = query.getLong(0);
                this.m = query.getLong(1);
            } else {
                j2 = 0;
            }
            return j2;
        } finally {
            if (query != null) {
                query.close();
            }
        }
    }

    private boolean b(long j, long j2) {
        boolean z;
        Cursor query = this.K.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id=" + j, null, null);
        try {
            if (query.getCount() > 0) {
                query.moveToFirst();
                if (j2 == query.getLong(0)) {
                    if (query != null) {
                        query.close();
                    }
                    z = true;
                    return z;
                }
            }
            if (query != null) {
                query.close();
            }
            z = false;
            return z;
        } catch (Throwable th) {
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long c(long r8) {
        /*
            r7 = this;
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.CONTENT_URI
            r1 = r8
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r0, r1)
            java.lang.String r1 = "data"
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)
            r10 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = r10
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "name_raw_contact_id"
            r3[r4] = r5
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0062
            r0 = r11
            int r0 = r0.getCount()     // Catch: all -> 0x0053
            if (r0 <= 0) goto L_0x0062
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0053
            r0 = r11
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0053
            r8 = r0
        L_0x0045:
            r0 = r11
            if (r0 == 0) goto L_0x0051
            r0 = r11
            r0.close()
        L_0x0051:
            r0 = r8
            return r0
        L_0x0053:
            r10 = move-exception
            r0 = r11
            if (r0 == 0) goto L_0x0060
            r0 = r11
            r0.close()
        L_0x0060:
            r0 = r10
            throw r0
        L_0x0062:
            r0 = -1
            r8 = r0
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.c(long):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Intent intent = new Intent();
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.j);
        if (this.j > 0) {
            com.android.contacts.c.b.a(8, this.j, -1);
        }
        intent.setData(withAppendedId);
        if (!this.T && !this.U) {
            intent.setAction("android.intent.action.VIEW");
            ImplicitIntentsUtil.startActivityInApp(this.J, intent);
        } else if (this.e) {
            Log.i("LinkContactActivity", "link activity heard bd listener");
            this.e = false;
            intent.putExtra("raw_contact_id", this.f);
            setResult(1000, intent);
        } else {
            setResult(-1, intent);
        }
        if (getIntent().getBooleanExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.REQ_CHANGE_PHOTO, false)) {
            Intent intent2 = new Intent();
            intent2.setAction(ContactDetailActivity.ChangeLinkPhotoReceiver.CHANGE_PHOTO_ACTION);
            intent2.putExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.REQ_CHANGE_PHOTO, true);
            intent2.putExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, withAppendedId.toString());
            android.support.v4.content.c.a(this).a(intent2);
        }
        finish();
    }

    private String d(long j) {
        String str = null;
        StringBuilder sb = new StringBuilder();
        Cursor query = this.K.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "contact_id=" + j, null, null);
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                if (string != null) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.M.a(string, null).a(this.J));
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        if (sb.length() > 0) {
            str = sb.toString();
        }
        return str;
    }

    private void d() {
        if (this.D.isAlive()) {
            this.D.f1622a = true;
            try {
                this.D.join(100L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        if (this.E.isAlive()) {
            this.E.f1624a = true;
            try {
                this.E.join(100L);
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            }
        }
    }

    private long e(long j) {
        long j2;
        Cursor query = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id=" + j, null, null);
        try {
            if (query.getCount() > 0) {
                query.moveToFirst();
                j2 = query.getLong(0);
            } else {
                j2 = -1;
            }
            return j2;
        } finally {
            if (query != null) {
                query.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String e() {
        /*
            r7 = this;
            r0 = r7
            int r0 = r0.k
            if (r0 < 0) goto L_0x0029
            r0 = r7
            int r0 = r0.k
            r1 = r7
            java.util.ArrayList<com.android.contacts.link.ContactInfo> r1 = r1.x
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x0029
            r0 = r7
            java.util.ArrayList<com.android.contacts.link.ContactInfo> r0 = r0.x
            r1 = r7
            int r1 = r1.k
            java.lang.Object r0 = r0.get(r1)
            com.android.contacts.link.ContactInfo r0 = (com.android.contacts.link.ContactInfo) r0
            java.lang.String r0 = r0.i
            r8 = r0
        L_0x0027:
            r0 = r8
            return r0
        L_0x0029:
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI
            r2 = r7
            long r2 = r2.j
            android.net.Uri r1 = android.content.ContentUris.withAppendedId(r1, r2)
            java.lang.String[] r2 = com.android.contacts.link.LinkContactActivity.h
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007c
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x006f
            if (r0 == 0) goto L_0x007c
            r0 = r8
            r1 = r7
            int r1 = r1.s     // Catch: all -> 0x006f
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x006f
            r9 = r0
        L_0x0059:
            r0 = r8
            if (r0 == 0) goto L_0x0063
            r0 = r8
            r0.close()
        L_0x0063:
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0027
            java.lang.String r0 = ""
            r8 = r0
            goto L_0x0027
        L_0x006f:
            r9 = move-exception
            r0 = r8
            if (r0 == 0) goto L_0x007a
            r0 = r8
            r0.close()
        L_0x007a:
            r0 = r9
            throw r0
        L_0x007c:
            r0 = 0
            r9 = r0
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.e():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long f() {
        /*
            r7 = this;
            r0 = r7
            java.util.ArrayList<com.android.contacts.link.ContactInfo> r0 = r0.x
            r1 = r7
            int r1 = r1.k
            java.lang.Object r0 = r0.get(r1)
            com.android.contacts.link.ContactInfo r0 = (com.android.contacts.link.ContactInfo) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0019
            r0 = -1
            r9 = r0
        L_0x0017:
            r0 = r9
            return r0
        L_0x0019:
            r0 = r8
            int r0 = r0.f1602b
            r1 = 1
            if (r0 != r1) goto L_0x0029
            r0 = r8
            long r0 = r0.f1601a
            r9 = r0
            goto L_0x0017
        L_0x0029:
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.CONTENT_URI
            r1 = r8
            long r1 = r1.f1601a
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r0, r1)
            java.lang.String r1 = "data"
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)
            r8 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = r8
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "name_raw_contact_id"
            r3[r4] = r5
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r11 = r0
            r0 = r11
            int r0 = r0.getCount()     // Catch: all -> 0x0082
            if (r0 <= 0) goto L_0x0091
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0082
            r0 = r11
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0082
            r12 = r0
        L_0x006d:
            r0 = r12
            r9 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0017
            r0 = r11
            r0.close()
            r0 = r12
            r9 = r0
            goto L_0x0017
        L_0x0082:
            r8 = move-exception
            r0 = r11
            if (r0 == 0) goto L_0x008f
            r0 = r11
            r0.close()
        L_0x008f:
            r0 = r8
            throw r0
        L_0x0091:
            r0 = -1
            r12 = r0
            goto L_0x006d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.f():long");
    }

    private void g() {
        if (this.t != null && !this.t.isEmpty()) {
            this.t.f1990a = true;
            ArrayList<ContentProviderOperation> a2 = this.t.a();
            try {
                if (!a2.isEmpty()) {
                    int size = a2.size();
                    int i2 = (size / 300) + 1;
                    Log.d("LinkContactActivity", "total op count: " + size + ", loopCount: " + i2);
                    for (int i3 = 0; i3 < i2; i3++) {
                        Log.d("LinkContactActivity", "splitAggregateWithState batch[" + (i3 + 1) + "]");
                        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                        for (int i4 = 0; i4 < 300; i4++) {
                            int i5 = (i3 * 300) + i4;
                            if (i5 < a2.size()) {
                                arrayList.add(a2.get(i5));
                            }
                        }
                        Log.d("LinkContactActivity", "partOperations count: " + arrayList.size());
                        getContentResolver().applyBatch("com.android.contacts", arrayList);
                    }
                }
            } catch (OperationApplicationException e2) {
                Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e2);
            } catch (RemoteException e3) {
                Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e3);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v53, types: [java.lang.Object] */
    private void h() {
        long j;
        ArrayList arrayList = new ArrayList();
        Cursor query = this.K.query(ContactsContract.RawContacts.CONTENT_URI, h, "contact_id=" + this.j, null, null);
        long[] jArr = new long[query.getCount()];
        for (int i2 = 0; i2 < jArr.length; i2++) {
            try {
                if (!query.moveToNext()) {
                    throw new IllegalStateException("couldn't move cursor to position " + i2);
                }
                jArr[i2] = query.getLong(0);
            } finally {
            }
        }
        if (query != null) {
            query.close();
        }
        for (int i3 = 0; i3 < jArr.length; i3++) {
            for (int i4 = 0; i4 < jArr.length; i4++) {
                if (i3 != i4) {
                    long j2 = jArr[i3];
                    long j3 = jArr[i4];
                    ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
                    newUpdate.withValue("type", 2);
                    newUpdate.withValue("raw_contact_id1", Long.valueOf(j2));
                    newUpdate.withValue("raw_contact_id2", Long.valueOf(j3));
                    arrayList.add(newUpdate.build());
                }
            }
        }
        try {
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i5 = (size / 300) + 1;
                Log.d("LinkContactActivity", "total op count: " + size + ", loopCount: " + i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    Log.d("LinkContactActivity", "splitAggregateWithState batch[" + (i6 + 1) + "]");
                    ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                    for (int i7 = 0; i7 < 300; i7++) {
                        int i8 = (i6 * 300) + i7;
                        if (i8 < arrayList.size()) {
                            arrayList2.add(arrayList.get(i8));
                        }
                    }
                    Log.d("LinkContactActivity", "partOperations count: " + arrayList2.size());
                    getContentResolver().applyBatch("com.android.contacts", arrayList2);
                }
            }
        } catch (OperationApplicationException e2) {
            Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e2);
        } catch (RemoteException e3) {
            Log.e("LinkContactActivity", "Failed to apply aggregation exception batch", e3);
        }
        for (long j4 : jArr) {
            if (j4 >= 0) {
                Cursor query2 = this.K.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id = " + j4, null, null);
                try {
                    long j5 = query2.moveToFirst() ? query2.getLong(0) : -1L;
                    if (query2 != null) {
                        query2.close();
                    }
                    if (j5 >= 0) {
                        long j6 = -1;
                        query = this.K.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "data14"}, "raw_contact_id=" + j4 + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                        try {
                            if (query.moveToFirst()) {
                                j = query.getLong(0);
                                j6 = query.getLong(1);
                            } else {
                                j = -1;
                            }
                            if (query != null) {
                                query.close();
                            }
                            if (PhoneCapabilityTester.IsAsusDevice()) {
                                a(j5, j4);
                                a(j5, j, j6);
                            }
                        } finally {
                            if (query != null) {
                                query.close();
                            }
                        }
                    } else {
                        continue;
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i() {
        ProgressDialog progressDialog = S == null ? null : S.get();
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        S = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b8, code lost:
        if (a(r7, r0) != false) goto L_0x00bb;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0179 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.LinkContactActivity.j():void");
    }

    static /* synthetic */ void r(LinkContactActivity linkContactActivity) {
        if (linkContactActivity.E.isAlive()) {
            linkContactActivity.E.f1624a = true;
            try {
                linkContactActivity.E.join(100L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        linkContactActivity.E = new f(linkContactActivity, (byte) 0);
        linkContactActivity.E.start();
    }

    static /* synthetic */ void t(LinkContactActivity linkContactActivity) {
        boolean z;
        boolean z2;
        String string;
        Cursor query = linkContactActivity.K.query(ContactsContract.RawContacts.CONTENT_URI, h, "contact_id=" + linkContactActivity.j, null, null);
        if (query != null) {
            try {
                linkContactActivity.v.b();
                linkContactActivity.n.b();
                while (query.moveToNext()) {
                    ContactInfo contactInfo = new ContactInfo();
                    long j = query.getLong(0);
                    contactInfo.f1601a = j;
                    contactInfo.f1602b = 1;
                    String string2 = query.getString(linkContactActivity.s);
                    String str = string2;
                    if (TextUtils.isEmpty(string2)) {
                        str = linkContactActivity.getString(2131756348);
                    }
                    contactInfo.i = String.valueOf(str);
                    Cursor query2 = linkContactActivity.K.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "data14", "is_super_primary"}, "raw_contact_id=" + j + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                    if (query2 != null) {
                        if (query2.moveToFirst()) {
                            contactInfo.c = query2.getLong(0);
                            contactInfo.d = query2.getLong(1);
                            contactInfo.g = query2.getInt(2) == 1;
                        }
                        query2.close();
                        Cursor query3 = linkContactActivity.K.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_TYPE}, "_id=" + j, null, null);
                        if (query3.moveToFirst() && (string = query3.getString(0)) != null) {
                            CharSequence a2 = linkContactActivity.M.a(string, null).a(linkContactActivity.J);
                            if (a2 != null) {
                                contactInfo.j = a2.toString();
                            }
                            contactInfo.h = string;
                        }
                        if (query3 != null) {
                            query3.close();
                        }
                        if (contactInfo.d <= 0 || !PhoneCapabilityTester.IsAsusDevice()) {
                            contactInfo.e = 9216;
                            contactInfo.f = 0;
                        } else {
                            Uri.Builder buildUpon = ContactsContract.AUTHORITY_URI.buildUpon();
                            buildUpon.appendPath("asus_raw_contacts");
                            buildUpon.appendPath("photo");
                            Cursor query4 = linkContactActivity.K.query(buildUpon.build(), new String[]{"height", "width", "filesize"}, "_id = " + contactInfo.d, null, null);
                            if (query4 != null && query4.moveToFirst()) {
                                int i2 = query4.getInt(0);
                                int i3 = query4.getInt(1);
                                int i4 = query4.getInt(2);
                                contactInfo.e = i2 * i3;
                                contactInfo.f = i4;
                            }
                            if (query4 != null) {
                                query4.close();
                            }
                        }
                        if (!a(linkContactActivity.V, j)) {
                            Bundle bundle = new Bundle();
                            bundle.putLong("id", contactInfo.f1601a);
                            bundle.putInt("idtype", contactInfo.f1602b);
                            bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, contactInfo.i);
                            bundle.putLong("photoid", contactInfo.c);
                            bundle.putLong("photoFileId", contactInfo.d);
                            bundle.putBoolean("is_super_primary", contactInfo.g);
                            bundle.putInt("photo_file_size", contactInfo.f);
                            bundle.putInt("photo_pixel_count", contactInfo.e);
                            bundle.putString(SelectAccountActivity.ACCOUNT_TYPE, contactInfo.h);
                            bundle.putString("accounttitle", contactInfo.j);
                            Message message = new Message();
                            message.what = 405;
                            message.setData(bundle);
                            linkContactActivity.f1606b.sendMessage(message);
                            linkContactActivity.v.a(j, 1);
                            Iterator<ContactInfo> it = linkContactActivity.f1605a.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z2 = false;
                                    break;
                                }
                                ContactInfo next = it.next();
                                if (next.f1601a == j && next.f1602b == 1) {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (!z2) {
                                linkContactActivity.n.a(j, 1);
                            }
                        } else if (linkContactActivity.V != null && !linkContactActivity.Q) {
                            ArrayList<ContactInfo> a3 = linkContactActivity.a(linkContactActivity.V);
                            for (int i5 = 0; i5 < a3.size(); i5++) {
                                if (!linkContactActivity.a(a3.get(i5).f1601a)) {
                                    linkContactActivity.z.add(a3.get(i5));
                                }
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (linkContactActivity.R.size() > 0) {
                    Iterator<ContactInfo> it2 = linkContactActivity.a(linkContactActivity.R).iterator();
                    while (it2.hasNext()) {
                        ContactInfo next2 = it2.next();
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("id", next2.f1601a);
                        bundle2.putInt("idtype", next2.f1602b);
                        bundle2.putString(ContactDetailCallogActivity.EXTRA_NAME, next2.i);
                        bundle2.putLong("photoid", next2.c);
                        bundle2.putLong("photoFileId", next2.d);
                        bundle2.putString("accounttitle", next2.j);
                        Message message2 = new Message();
                        message2.what = 405;
                        message2.setData(bundle2);
                        linkContactActivity.f1606b.sendMessage(message2);
                        linkContactActivity.v.a(next2.f1601a, next2.f1602b);
                        Iterator<ContactInfo> it3 = linkContactActivity.f1605a.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z = false;
                                break;
                            }
                            ContactInfo next3 = it3.next();
                            if (next3.f1601a == next2.f1601a && next3.f1602b == next2.f1602b) {
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            linkContactActivity.n.a(next2.f1601a, next2.f1602b);
                        }
                    }
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
    }

    public final void a() {
        if (this.W != null) {
            this.W.cancel();
            this.W.dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        switch (i3) {
            case android.support.v4.view.p.POSITION_UNCHANGED /* -1 */:
                ArrayList<Long> arrayList = new ArrayList<>();
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("uri_array");
                long[] longArrayExtra = intent.getLongArrayExtra("raw_contact_id_array");
                Iterator it = parcelableArrayListExtra.iterator();
                while (it.hasNext()) {
                    Uri uri = (Uri) it.next();
                    arrayList.add(Long.valueOf(ContentUris.parseId(uri)));
                    this.R.add(Long.valueOf(ContentUris.parseId(uri)));
                }
                if (arrayList.size() > 0) {
                    Iterator<ContactInfo> it2 = a(arrayList).iterator();
                    while (it2.hasNext()) {
                        ContactInfo next = it2.next();
                        this.v.a(next.f1601a, next.f1602b);
                        this.x.add(next);
                        this.B.add(next.i);
                        this.n.a(next.f1601a, next.f1602b);
                        this.p.add(next);
                        this.w.a(a(next), false);
                    }
                }
                if (longArrayExtra != null) {
                    Iterator<ContactInfo> it3 = a(longArrayExtra).iterator();
                    while (it3.hasNext()) {
                        ContactInfo next2 = it3.next();
                        this.v.a(next2.f1601a, next2.f1602b);
                        this.x.add(next2);
                        this.B.add(next2.i);
                        this.n.a(next2.f1601a, next2.f1602b);
                        this.p.add(next2);
                        if (next2.f1602b == 1) {
                            int size = this.z.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 < size) {
                                    ContactInfo contactInfo = this.z.get(i4);
                                    if (contactInfo.f1601a == next2.f1601a && contactInfo.f1602b == next2.f1602b) {
                                        this.z.remove(i4);
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                        }
                        this.w.a(a(next2), false);
                    }
                }
                if (arrayList.size() > 0 || longArrayExtra != null) {
                    this.A.notifyDataSetChanged();
                }
                j();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        d();
        c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        LinearLayout.LayoutParams layoutParams;
        super.onConfigurationChanged(configuration);
        int i2 = configuration.orientation;
        if (this.Q && (!this.Q ? this.P != null : !(this.P == null || this.O == null))) {
            if (i2 != 1) {
                float dimension = getResources().getDimension(2131099778);
                Log.d("Peter12", "left_layout=" + dimension + "left_layout_size=" + getResources().getDimensionPixelSize(2131099778));
                if (getResources().getBoolean(2130968598)) {
                    layoutParams = new LinearLayout.LayoutParams(getResources().getDimensionPixelSize(2131100232), -1, 0.0f);
                    new LinearLayout.LayoutParams(-1, -1, 1.0f).setMargins(1, 0, 0, 0);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0f);
                    new LinearLayout.LayoutParams(-1, -1, 1.0f).setMargins(1, 0, 0, 0);
                }
                int dimensionPixelSize = getResources().getDimensionPixelSize(2131100234);
                new LinearLayout.LayoutParams(dimensionPixelSize, -1).setMargins(getResources().getDimensionPixelSize(2131100235), 0, 0, 0);
            } else if (getResources().getBoolean(2130968598)) {
                layoutParams = new LinearLayout.LayoutParams(getResources().getDimensionPixelSize(2131100232), -1, 0.0f);
                new LinearLayout.LayoutParams(-1, -1, 1.0f).setMargins(1, 0, 0, 0);
            } else {
                layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0f);
                new LinearLayout.LayoutParams(-1, -1, 1.0f).setMargins(1, 0, 0, 0);
            }
            this.P.setLayoutParams(layoutParams);
        }
        invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.W = new ProgressDialog(this);
            this.W.setCancelable(false);
            this.W.setMessage(getString(2131755350));
            Intent intent = getIntent();
            this.j = intent.getLongExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, -1L);
            if (this.j == -1) {
                Log.e("LinkContactActivity", "Intent " + intent.getAction() + " is missing required extra: com.android.contacts.action.CONTACT_ID");
                setResult(0);
                finish();
                return;
            }
            this.T = intent.getBooleanExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, false);
            this.U = intent.getBooleanExtra("fromEditActivity", false);
            setContentView(2131427357);
            this.x = new ArrayList<>();
            this.y = new ArrayList<>();
            this.z = new ArrayList<>();
            this.L = (LayoutInflater) getSystemService("layout_inflater");
            this.N = k.a(this);
            this.v = new com.android.contacts.link.b();
            this.n = new com.android.contacts.link.b();
            this.w = new com.android.contacts.link.a();
            this.F = (ListView) findViewById(2131297009);
            this.G = (TextView) findViewById(2131296978);
            this.H = (Spinner) findViewById(2131297325);
            this.I = (ImageView) findViewById(2131296946);
            this.D = new e(this, (byte) 0);
            this.E = new f(this, (byte) 0);
            this.P = (LinearLayout) findViewById(2131296989);
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                LinearLayout linearLayout = (LinearLayout) findViewById(2131297157);
                LinearLayout linearLayout2 = (LinearLayout) findViewById(2131297158);
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
            }
            this.F.setDividerHeight(0);
            this.A = new b(this);
            this.F.setAdapter((ListAdapter) this.A);
            this.B = new ArrayAdapter<>(this, 2131427386);
            this.B.setDropDownViewResource(2131427659);
            this.H.setAdapter((SpinnerAdapter) this.B);
            this.C = new a();
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                this.J = this;
                actionBar.setDisplayOptions(12, 12);
                actionBar.setTitle(2131755792);
                actionBar.setDisplayShowHomeEnabled(false);
                a(false);
            }
            this.H.setOnItemSelectedListener(this.c);
            this.I.setOnClickListener(this.d);
            getLoaderManager().initLoader(1, null, this.Y);
            this.J = this;
            this.K = this.J.getContentResolver();
            this.M = com.android.contacts.model.a.a(this.J);
            this.w = new com.android.contacts.link.a();
            this.s = new ContactsPreferences(this.J).getDisplayOrder() == 2 ? 2 : 1;
            a(true);
            if (this.D.isAlive()) {
                this.D.f1622a = true;
                try {
                    this.D.join(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            this.D = new e(this, (byte) 0);
            this.D.start();
            if (this.W != null && !this.W.isShowing()) {
                this.W.show();
            }
            if (bundle != null) {
                long[] longArray = bundle.getLongArray("tobelinkContactId");
                if (longArray != null) {
                    for (long j : longArray) {
                        this.R.add(Long.valueOf(j));
                    }
                }
                this.V = bundle.getLongArray("tobeUnlinkRawContactId");
                this.f1605a = bundle.getParcelableArrayList("contacts_unlinked");
                this.l = bundle.getLong("choosed_photo_id", 0L);
                this.m = bundle.getLong("choosed_photo_file_id", 0L);
                this.k = bundle.getInt("choosed_display_name", 0);
                this.q = bundle.getInt("choosed_display_name_spinner", 0);
            }
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            if (PhoneCapabilityTester.IsSystemApp()) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) this, "Link contact", true);
                return;
            }
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(10, (Activity) this, "Link contact", true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492866, menu);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        a();
        super.onDestroy();
        if (this.X != null) {
            this.X.dismiss();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        long[] jArr;
        long[] jArr2;
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 16908332:
            case 2131297041:
                d();
                setResult(0);
                finish();
                z = true;
                break;
            case 2131297029:
                Log.d("LinkContactActivity", "mToBeLinked.size():" + this.R.size() + " mContactsSuggestedRaw.size():" + this.z.size());
                if (this.R.size() > 0) {
                    jArr = new long[this.R.size()];
                    for (int i2 = 0; i2 < this.R.size(); i2++) {
                        jArr[i2] = this.R.get(i2).longValue();
                    }
                } else {
                    jArr = new long[1];
                }
                if (this.z.size() > 0) {
                    jArr2 = new long[this.z.size()];
                    for (int i3 = 0; i3 < this.z.size(); i3++) {
                        jArr2[i3] = this.z.get(i3).f1601a;
                    }
                } else {
                    jArr2 = new long[1];
                }
                Intent intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_LINK_EDIT");
                intent.putExtra("target_conatct_id", this.j);
                intent.putExtra("to_be_linked_contact_id", jArr);
                intent.putExtra("main_contact_name", e());
                intent.putExtra("suggest_to_unlink", jArr2);
                startActivityForResult(intent, 0);
                z = true;
                break;
            case 2131297048:
                Iterator<ContactInfo> it = this.f1605a.iterator();
                while (it.hasNext()) {
                    ContactInfo next = it.next();
                    if (next.f1602b == 1) {
                        this.z.add(next);
                    } else if (next.f1602b == 0) {
                        int size = this.R.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 < size) {
                                if (this.R.get(i4).longValue() == next.f1601a) {
                                    this.R.remove(i4);
                                } else {
                                    i4++;
                                }
                            }
                        }
                    }
                    int indexOf = this.x.indexOf(next);
                    if (indexOf >= 0 && indexOf < this.k) {
                        this.k--;
                    }
                    this.v.b(next.f1601a, next.f1602b);
                    this.x.remove(next);
                    this.B.remove(next.i);
                    this.A.notifyDataSetChanged();
                    this.n.b(next.f1601a, next.f1602b);
                    this.p.remove(next);
                    this.w.a(a(next), true);
                }
                d();
                new c(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        d();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem findItem = menu.findItem(2131297029);
        MenuItem findItem2 = menu.findItem(2131296299);
        MenuItem findItem3 = menu.findItem(2131297031);
        MenuItem findItem4 = menu.findItem(2131297041);
        MenuItem findItem5 = menu.findItem(2131297048);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        if (findItem4 != null) {
            com.android.contacts.skin.a.a(this, findItem4);
        }
        if (findItem5 != null) {
            com.android.contacts.skin.a.a(this, findItem5);
        }
        if (findItem != null) {
            findItem.setVisible(true);
        }
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        if (findItem3 == null) {
            return true;
        }
        findItem3.setVisible(false);
        return true;
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.j = bundle.getLong("targetContactId");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.N.b();
        if (this.J == null) {
            this.J = this;
        }
        if (this.K == null) {
            this.K = this.J.getContentResolver();
        }
        if (this.M == null) {
            this.M = com.android.contacts.model.a.a(this.J);
        }
        if (this.w == null) {
            this.w = new com.android.contacts.link.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("targetContactId", this.j);
        if (this.R.size() > 0) {
            long[] jArr = new long[this.R.size()];
            for (int i2 = 0; i2 < this.R.size(); i2++) {
                jArr[i2] = this.R.get(i2).longValue();
            }
            bundle.putLongArray("tobelinkContactId", jArr);
        }
        if (this.z.size() > 0) {
            long[] jArr2 = new long[this.z.size()];
            for (int i3 = 0; i3 < this.z.size(); i3++) {
                jArr2[i3] = this.z.get(i3).f1601a;
            }
            bundle.putLongArray("tobeUnlinkRawContactId", jArr2);
        }
        bundle.putParcelableArrayList("contacts_unlinked", this.f1605a);
        bundle.putLong("choosed_photo_id", this.l);
        bundle.putLong("choosed_photo_file_id", this.m);
        bundle.putInt("choosed_display_name", this.k);
        bundle.putInt("choosed_display_name_spinner", this.q);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        i();
    }
}

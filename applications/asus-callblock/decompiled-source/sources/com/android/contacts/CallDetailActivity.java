package com.android.contacts;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.ab;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.calllog.n;
import com.android.contacts.calllog.o;
import com.android.contacts.calllog.p;
import com.android.contacts.calllog.t;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.g;
import com.android.contacts.k.a;
import com.android.contacts.util.AsusBitmapMerge;
import com.android.contacts.util.AsyncTaskExecutor;
import com.android.contacts.util.AsyncTaskExecutors;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ClipboardUtils;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.updatesdk.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity.class */
public class CallDetailActivity extends Activity implements SharedPreferences.OnSharedPreferenceChangeListener {
    static final String[] j = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "post_dial_digits", "block", "sim_index", "city_id", "features"};
    static final String[] k = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "post_dial_digits", "subscription_component_name", "subscription_id"};
    static final String[] l = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "block", "sim_index", "city_id", "features"};
    static final String[] m = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "subscription_component_name", "subscription_id"};
    private Context A;
    private ImageView B;
    private ImageView C;
    private ViewStub D;
    private ViewStub E;
    private ImageView F;
    private ViewStub G;
    private ImageView H;
    private Intent I;
    private SharedPreferences L;
    private ImageView P;
    private AsyncTaskExecutor Q;
    private p R;
    private String V;
    private k Z;

    /* renamed from: a  reason: collision with root package name */
    com.android.contacts.a f433a;
    private com.android.contacts.h aa;
    private com.android.contacts.k.a ab;
    private View ac;
    private TextView ad;
    private TextView ae;
    private boolean af;
    private boolean ag;
    private ab ah;
    private ActionMode aj;
    private String[] an;
    private final View.OnClickListener ao;
    private final View.OnClickListener ap;
    private c aq;
    private MenuItem ar;
    private MenuItem as;
    private boolean at;
    private boolean au;
    private final View.OnClickListener av;
    private final View.OnClickListener aw;

    /* renamed from: b  reason: collision with root package name */
    LayoutInflater f434b;
    Resources c;
    TextView d;
    ImageView e;
    AlertDialog f;
    AlertDialog g;
    AlertDialog h;
    AlertDialog i;
    private CharSequence q;
    private n t;
    private t u;
    private z v;
    private TextView w;
    private View x;
    private ImageView y;
    private com.android.contacts.c.a z;
    private SimpleDateFormat n = new SimpleDateFormat("M/dd,E");
    private com.android.contacts.calllog.d o = null;
    private String p = BuildConfig.FLAVOR;
    private boolean r = false;
    private long s = -1;
    private boolean J = false;
    private boolean K = false;
    private long M = 0;
    private boolean N = false;
    private boolean O = false;
    private Uri S = null;
    private String T = BuildConfig.FLAVOR;
    private String U = null;
    private long W = 0;
    private long X = 0;
    private int Y = 0;
    private final d ai = new d(this, (byte) 0);
    private boolean ak = false;
    private boolean al = false;
    private boolean am = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$a.class */
    public final class a extends AsyncTask<Void, Void, y[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f454a;
        private StringBuilder c;

        a(Uri[] uriArr) {
            this.f454a = uriArr;
        }

        private y[] a() {
            y[] yVarArr;
            Uri[] c;
            StringBuilder sb;
            int i;
            y[] yVarArr2;
            Cursor cursor;
            Log.d("CallDetail", "[updateData] callUris: " + Arrays.toString(this.f454a));
            try {
                this.c = new StringBuilder();
                for (Uri uri : CallDetailActivity.this.c()) {
                    if (this.c.length() != 0) {
                        this.c.append(",");
                    }
                    this.c.append(ContentUris.parseId(uri));
                }
                sb = new StringBuilder();
                try {
                    String stringExtra = CallDetailActivity.this.getIntent().getStringExtra("CALL_LOG_NUMBER");
                    if (TextUtils.isEmpty(stringExtra)) {
                        sb.append((CharSequence) this.c);
                        i = 1;
                    } else {
                        long[] callIds = PhoneCapabilityTester.getCallIds(CallDetailActivity.this, stringExtra);
                        for (long j : callIds) {
                            if (sb.length() != 0) {
                                sb.append(",");
                            }
                            sb.append(j);
                        }
                        i = callIds.length;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    i = 0;
                }
                yVarArr2 = new y[i];
            } catch (IllegalArgumentException e2) {
                Log.w("CallDetail", "invalid URI starting call details", e2);
                yVarArr = null;
            }
            try {
                Cursor query = CallDetailActivity.this.getContentResolver().query(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, CallDetailActivity.this.an, "_id IN (" + ((Object) sb) + ")", null, "_id DESC");
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i2 = 0;
                            do {
                                try {
                                    yVarArr2[i2] = CallDetailActivity.this.b(query);
                                    i2++;
                                } catch (Exception e3) {
                                    Log.d("CallDetail", e3.toString());
                                }
                            } while (query.moveToNext());
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                yVarArr = yVarArr2;
                return yVarArr;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y[] doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y[] yVarArr) {
            y[] yVarArr2 = yVarArr;
            CallDetailActivity.this.O = false;
            if (yVarArr2 == null) {
                Log.d("CallDetail", "Call details == null");
                CallDetailActivity.this.finish();
                return;
            }
            y yVar = null;
            if (yVarArr2.length > 0) {
                yVar = yVarArr2[0];
            }
            if (yVar == null || yVar.f2214a == null) {
                CallDetailActivity.this.U = BuildConfig.FLAVOR;
            } else {
                CallDetailActivity.this.U = yVar.f2214a.toString();
            }
            t unused = CallDetailActivity.this.u;
            boolean a2 = t.a((CharSequence) CallDetailActivity.this.U);
            ListView listView = (ListView) CallDetailActivity.this.findViewById(2131296936);
            CallDetailActivity.this.o = new com.android.contacts.calllog.d(CallDetailActivity.this, CallDetailActivity.this.f434b, CallDetailActivity.this.t, yVarArr2, CallDetailActivity.g(CallDetailActivity.this), a2, CallDetailActivity.this.findViewById(2131296607), this.c.toString());
            if (com.android.contacts.simcardmanage.b.a(CallDetailActivity.this.A)) {
                CallDetailActivity.this.a();
            }
            if (CallDetailActivity.this.o != null) {
                CallDetailActivity.this.o.f677a = CallDetailActivity.this.n.format(new Date());
                CallDetailActivity.this.o.f678b = CallDetailActivity.this.n.format(new Date(System.currentTimeMillis() - 86400000));
            }
            listView.setDividerHeight(1);
            listView.setAdapter((ListAdapter) CallDetailActivity.this.o);
            CallDetailActivity.this.registerForContextMenu(listView);
            com.android.contacts.g.a(new g.a() { // from class: com.android.contacts.CallDetailActivity.a.1

                /* renamed from: b  reason: collision with root package name */
                private View f457b;
                private View c;
                private View d;

                {
                    this.f457b = CallDetailActivity.this.findViewById(2131296607);
                    this.c = CallDetailActivity.this.findViewById(2131297161);
                    this.d = CallDetailActivity.this.findViewById(2131296400);
                }

                @Override // com.android.contacts.g.a
                public final int a() {
                    return this.c.getVisibility() == 0 ? 0 : this.d.getHeight();
                }

                @Override // com.android.contacts.g.a
                public final void a(int i) {
                    this.f457b.setY(-i);
                }
            }, listView);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            CallDetailActivity.this.O = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$b.class */
    public final class b extends AsyncTask<Void, Void, y> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f458a;

        b(Uri[] uriArr) {
            this.f458a = uriArr;
        }

        private y a() {
            y yVar;
            try {
                yVar = CallDetailActivity.this.a(this.f458a[0]);
            } catch (IllegalArgumentException e) {
                Log.w("CallDetail", "invalid URI starting call details", e);
                yVar = null;
            }
            return yVar;
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y yVar) {
            final Intent intent;
            int i;
            y yVar2 = yVar;
            CallDetailActivity.this.N = false;
            if (yVar2 == null) {
                Log.d("CallDetail", "Call details == null");
                CallDetailActivity.this.finish();
                return;
            }
            if (yVar2 == null || yVar2.f2214a == null) {
                CallDetailActivity.this.U = BuildConfig.FLAVOR;
            } else {
                CallDetailActivity.this.U = yVar2.f2214a.toString();
            }
            if (yVar2.h != null) {
                CallDetailActivity.this.T = yVar2.h.toString();
            }
            CallDetailActivity.this.S = yVar2.k;
            final Uri uri = yVar2.k;
            Uri uri2 = yVar2.l;
            CallDetailActivity.this.W = yVar2.m;
            CallDetailActivity.this.X = yVar2.f;
            if (!CallDetailActivity.this.ak) {
                CallDetailActivity.this.v.a(CallDetailActivity.this.w, yVar2);
            }
            t unused = CallDetailActivity.this.u;
            Uri a2 = t.a(CallDetailActivity.this.U);
            t unused2 = CallDetailActivity.this.u;
            boolean a3 = t.a((CharSequence) CallDetailActivity.this.U);
            boolean c = CallDetailActivity.this.u.c(CallDetailActivity.this.U);
            t unused3 = CallDetailActivity.this.u;
            boolean d = t.d(CallDetailActivity.this.U);
            CharSequence a4 = !TextUtils.isEmpty(yVar2.h) ? yVar2.h : TextUtils.isEmpty(yVar2.f2214a) ? CallDetailActivity.this.u.a(yVar2.f2214a, yVar2.q, yVar2.f2215b, yVar2.p) : ((Object) yVar2.f2214a) + yVar2.q;
            CallDetailActivity.this.q = a4;
            if (uri != null) {
                CallDetailActivity.this.r = true;
                intent = new Intent("android.intent.action.VIEW", uri);
                i = 2131165335;
            } else if (a3 || c || d) {
                intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                intent.setType("vnd.android.cursor.item/contact");
                intent.putExtra("phone", CallDetailActivity.this.U);
                intent.putExtra("ShowDialog", "ShowAddToContactsDialog");
                i = 2131165301;
            } else {
                i = 0;
                intent = null;
            }
            if (intent == null) {
                CallDetailActivity.this.y.setVisibility(4);
            } else {
                CallDetailActivity.this.y.setVisibility(0);
                CallDetailActivity.this.y.setImageResource(i);
                CallDetailActivity.this.y.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.b.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (((intent == null || intent.getExtras() == null) ? null : intent.getExtras().getString("ShowDialog")) != null) {
                            com.android.contacts.a.a(intent.getExtras().getString("phone")).show(CallDetailActivity.this.getFragmentManager(), "dialog");
                            return;
                        }
                        Log.d("CallDetail", "[mMainActionView] onClick, mContactId: " + CallDetailActivity.this.Y + ", uri: " + uri);
                        if (com.android.contacts.d.a.a(CallDetailActivity.this.Y)) {
                            Log.d("CallDetail", "[mMainActionView] isEnterpriseContactId = true");
                            ContactsContract.QuickContact.showQuickContact(CallDetailActivity.this, new Rect(), uri, 4, (String[]) null);
                            return;
                        }
                        try {
                            ImplicitIntentsUtil.startActivityInApp(CallDetailActivity.this, intent);
                        } catch (Exception e) {
                            Log.d("CallDetail", "Fail to load Contact Detail : " + e.toString());
                        }
                    }
                });
                if (CallDetailActivity.this.J) {
                    com.asus.toolpanel.a aVar = new com.asus.toolpanel.a(CallDetailActivity.this.getResources(), 2131099903, 2131099905, CallDetailActivity.this.A.getResources().getColor(2131034426), CallDetailActivity.this.A.getResources().getColor(2131034292), i);
                    if (CallDetailActivity.this.C != null) {
                        CallDetailActivity.this.C.setImageDrawable(aVar);
                        CallDetailActivity.this.C.setOnClickListener(CallDetailActivity.this.aw);
                    }
                    CallDetailActivity.this.F.setImageResource(2131165326);
                    CallDetailActivity.this.y.setVisibility(8);
                    if (CallDetailActivity.this.G.getParent() != null) {
                        CallDetailActivity.this.G.inflate();
                        CallDetailActivity.this.H = (ImageView) CallDetailActivity.this.findViewById(2131297527);
                    }
                    CallDetailActivity.this.I = intent;
                }
                CallDetailActivity.this.w.setVisibility(0);
                CallDetailActivity.this.x.setVisibility(0);
            }
            if (a3) {
                CharSequence a5 = CallDetailActivity.this.u.a(yVar2.f2214a, yVar2.q, yVar2.f2215b, -1);
                long j = -1;
                if (uri != null) {
                    j = Long.valueOf(uri.getLastPathSegment()).longValue();
                }
                String str = BuildConfig.FLAVOR;
                if (yVar2.h != null) {
                    str = yVar2.h.toString();
                }
                Intent intent2 = new Intent("android.intent.action.CALL", a2);
                intent2.putExtra("com.android.phone.AsusDialName", str);
                intent2.putExtra("com.android.phone.AsusDialContactId", j);
                intent2.putExtra("com.android.phone.FromAsusDialer", true);
                f fVar = new f(String.valueOf(a5), intent2, CallDetailActivity.this.getString(2131755526, new Object[]{a4}));
                if (!TextUtils.isEmpty(yVar2.h) && !TextUtils.isEmpty(yVar2.f2214a) && !CallUtil.isUriNumber(yVar2.f2214a.toString())) {
                    fVar.d = ContactsContract.CommonDataKinds.Phone.getTypeLabel(CallDetailActivity.this.c, yVar2.i, yVar2.j);
                }
                if (CallDetailActivity.this.u.b(CallDetailActivity.this.U) && PhoneCapabilityTester.isSmsIntentRegistered(CallDetailActivity.this.getApplicationContext())) {
                    Intent intent3 = new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", CallDetailActivity.this.U, null));
                    String string = CallDetailActivity.this.getString(2131755547, new Object[]{a4});
                    fVar.e = 2131165345;
                    fVar.f = intent3;
                    fVar.g = string;
                }
                fVar.h = CallDetailActivity.this.p;
                CallDetailActivity.a(CallDetailActivity.this, fVar);
            } else {
                CallDetailActivity.a(CallDetailActivity.this, yVar2);
            }
            CallDetailActivity.this.af = CallDetailActivity.g(CallDetailActivity.this);
            CallDetailActivity.this.ag = !CallDetailActivity.g(CallDetailActivity.this);
            CallDetailActivity.this.invalidateOptionsMenu();
            CallDetailActivity.a(CallDetailActivity.this, uri2, uri);
            CallDetailActivity.this.findViewById(2131296440).setVisibility(0);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            CallDetailActivity.this.N = true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$c.class */
    private final class c extends ContentObserver {
        public c(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            CallDetailActivity.this.a(CallDetailActivity.this.c());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$d.class */
    private final class d implements ab.a {

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f464b;
        private final Runnable c;

        private d() {
            this.f464b = new Runnable() { // from class: com.android.contacts.CallDetailActivity.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    CallDetailActivity.this.findViewById(2131296380).setVisibility(0);
                    CallDetailActivity.this.getActionBar().hide();
                }
            };
            this.c = new Runnable() { // from class: com.android.contacts.CallDetailActivity.d.2
                @Override // java.lang.Runnable
                public final void run() {
                    CallDetailActivity.this.findViewById(2131296380).setVisibility(8);
                    CallDetailActivity.this.getActionBar().show();
                }
            };
        }

        /* synthetic */ d(CallDetailActivity callDetailActivity, byte b2) {
            this();
        }

        private void a(Runnable runnable, long j) {
            synchronized (this) {
                CallDetailActivity.this.findViewById(2131296380).postDelayed(runnable, j);
            }
        }

        @Override // com.android.contacts.ab.a
        public final void a() {
            synchronized (this) {
                c();
                a(this.f464b, 100L);
            }
        }

        @Override // com.android.contacts.ab.a
        public final void b() {
            synchronized (this) {
                c();
                a(this.c, 500L);
            }
        }

        public final void c() {
            synchronized (this) {
                View findViewById = CallDetailActivity.this.findViewById(2131296380);
                findViewById.removeCallbacks(this.f464b);
                findViewById.removeCallbacks(this.c);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$e.class */
    public enum e {
        MARK_VOICEMAIL_READ,
        DELETE_VOICEMAIL_AND_FINISH,
        REMOVE_FROM_CALL_LOG_AND_FINISH,
        UPDATE_PHONE_CALL_DETAILS
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final String f469a;

        /* renamed from: b  reason: collision with root package name */
        public final Intent f470b;
        public final String c;
        public CharSequence d = null;
        public int e = 0;
        public Intent f = null;
        public String g = null;
        public String h = null;

        public f(String str, Intent intent, String str2) {
            this.f469a = str;
            this.f470b = intent;
            this.c = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$g.class */
    public final class g extends AsyncTask<String, Void, a.c> {
        g() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ a.c doInBackground(String[] strArr) {
            a.c cVar;
            if (CallDetailActivity.this.A != null) {
                Log.d("CallDetail", "in qTTask number:" + com.asus.a.a.c(CallDetailActivity.this.getIntent().getStringExtra("CALL_LOG_NUMBER")));
                cVar = com.asus.a.a.a(CallDetailActivity.this.A, CallDetailActivity.this.getIntent().getStringExtra("CALL_LOG_NUMBER"), "12");
            } else {
                cVar = null;
            }
            return cVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(a.c cVar) {
            int i;
            int i2;
            a.c cVar2 = cVar;
            if (cVar2 != null) {
                Log.d("CallDetail", "tagName:" + cVar2.d + ", _name" + cVar2.f2356b + " ,number:" + com.asus.a.a.c(cVar2.f2355a) + ", tagStatus:" + cVar2.l);
                if (cVar2.d != null) {
                    if (cVar2.l == 0) {
                        i2 = 2131165777;
                        i = -1;
                    } else if (cVar2.l == 1) {
                        i2 = 2131165778;
                        i = -1;
                    } else if (cVar2.l == 6) {
                        i2 = 2131165776;
                        i = -1;
                    } else {
                        i = 0;
                        i2 = 0;
                    }
                    if (!TextUtils.isEmpty(cVar2.f2356b)) {
                        CallDetailActivity.this.w.setText(cVar2.f2356b);
                        CallDetailActivity.this.ak = true;
                    } else {
                        CallDetailActivity.this.ak = false;
                    }
                    if (cVar2.l != 4) {
                        CallDetailActivity.this.d.setVisibility(0);
                        CallDetailActivity.this.d.setBackgroundResource(i2);
                        CallDetailActivity.this.d.setTextColor(i);
                        CallDetailActivity.this.d.setText(cVar2.d);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) CallDetailActivity.this.A.getResources().getDimension(2131099751));
                        layoutParams.setMargins(0, 0, 0, 0);
                        CallDetailActivity.this.w.setLayoutParams(layoutParams);
                        return;
                    }
                    return;
                }
                CallDetailActivity.this.ak = false;
                CallDetailActivity.this.d.setVisibility(8);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, (int) CallDetailActivity.this.A.getResources().getDimension(2131099751));
                layoutParams2.setMargins((int) CallDetailActivity.this.A.getResources().getDimension(2131099965), 0, (int) CallDetailActivity.this.A.getResources().getDimension(2131099942), 0);
                CallDetailActivity.this.w.setLayoutParams(layoutParams2);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/CallDetailActivity$h.class */
    public final class h extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private ContentResolver f473b;

        h(ContentResolver contentResolver) {
            this.f473b = contentResolver;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long a() {
            /*
                r7 = this;
                java.lang.String r0 = "content://com.android.contacts/asus_global_groups"
                android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: all -> 0x0056
                r8 = r0
                r0 = r7
                android.content.ContentResolver r0 = r0.f473b     // Catch: all -> 0x0056
                r1 = r8
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0056
                r3 = r2
                r4 = 0
                java.lang.String r5 = "_id"
                r3[r4] = r5     // Catch: all -> 0x0056
                java.lang.String r3 = "system_id = 'VIP' "
                r4 = 0
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x0056
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0044
                r0 = r9
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0067
                if (r0 == 0) goto L_0x0044
                r0 = r9
                r1 = 0
                long r0 = r0.getLong(r1)     // Catch: all -> 0x0067
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0041
                r0 = r9
                r0.close()
                r0 = r10
                r12 = r0
            L_0x0041:
                r0 = r12
                return r0
            L_0x0044:
                r0 = r9
                if (r0 == 0) goto L_0x004e
                r0 = r9
                r0.close()
            L_0x004e:
                r0 = -1
                r12 = r0
                goto L_0x0041
            L_0x0056:
                r14 = move-exception
                r0 = 0
                r8 = r0
            L_0x005a:
                r0 = r8
                if (r0 == 0) goto L_0x0064
                r0 = r8
                r0.close()
            L_0x0064:
                r0 = r14
                throw r0
            L_0x0067:
                r8 = move-exception
                r0 = r8
                r14 = r0
                r0 = r9
                r8 = r0
                goto L_0x005a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.CallDetailActivity.h.a():long");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            CallDetailActivity.this.s = a();
            return null;
        }
    }

    public CallDetailActivity() {
        this.an = CompatUtils.isNCompatible() ? PhoneCapabilityTester.IsAsusDevice() ? j : k : PhoneCapabilityTester.IsAsusDevice() ? l : m;
        this.ao = new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!CallDetailActivity.a(CallDetailActivity.this)) {
                    if (CallDetailActivity.this.getResources().getBoolean(2130968595)) {
                        Intent intent = ((f) view.getTag()).f470b;
                        float a2 = AdditionalButtonFragment.a();
                        AdditionalButtonFragment.a(a2);
                        intent.putExtra("com.android.phone.AsusSetTransitionAnimationScale", a2);
                        CallUtil.startDialActivity(CallDetailActivity.this, intent);
                    } else {
                        CallUtil.startDialActivity(CallDetailActivity.this, ((f) view.getTag()).f470b);
                    }
                    Log.d("callDetailActivity", "make call from callLogDetail");
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, CallDetailActivity.this, "Dialer", "Call Log Detail", "Call Log Detail: press phone number", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, (Activity) CallDetailActivity.this, "Make a Call", true);
                }
            }
        };
        this.ap = new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!CallDetailActivity.a(CallDetailActivity.this)) {
                    CallUtil.startActivityWithErrorToast(CallDetailActivity.this, ((f) view.getTag()).f);
                }
            }
        };
        this.aq = new c(new Handler());
        this.ar = null;
        this.as = null;
        this.at = false;
        this.au = false;
        this.av = new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!CallDetailActivity.a(CallDetailActivity.this)) {
                    Intent intent = ((f) view.getTag()).f470b;
                    intent.putExtra("android.telecom.extra.START_CALL_WITH_VIDEO_STATE", 3);
                    CallUtil.startDialActivity(CallDetailActivity.this, intent);
                    Log.d("callDetailActivity", "make video call from callLogDetail");
                }
            }
        };
        this.aw = new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                String str = null;
                if (CallDetailActivity.this.I != null) {
                    str = null;
                    if (CallDetailActivity.this.I.getExtras() != null) {
                        str = CallDetailActivity.this.I.getExtras().getString("ShowDialog");
                    }
                }
                if (str != null) {
                    CallDetailActivity.this.f433a = com.android.contacts.a.a(CallDetailActivity.this.I.getExtras().getString("phone"));
                    CallDetailActivity.this.f433a.show(CallDetailActivity.this.getFragmentManager(), "dialog");
                    return;
                }
                try {
                    ImplicitIntentsUtil.startActivityInApp(CallDetailActivity.this, CallDetailActivity.this.I);
                } catch (Exception e2) {
                    Log.d("CallDetail", "Fail to load Contact Detail : " + e2.toString());
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y a(Uri uri) {
        int a2;
        int i;
        o oVar;
        CharSequence charSequence;
        String str;
        int i2;
        Uri uri2;
        long j2;
        String str2;
        Uri uri3;
        Cursor query = getContentResolver().query(uri, this.an, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(2);
                    long j3 = query.getLong(0);
                    long j4 = query.getLong(1);
                    int i3 = query.getInt(3);
                    String string2 = query.getString(4);
                    String string3 = query.getString(5);
                    int i4 = 0;
                    if (this.J) {
                        i4 = query.getInt(query.getColumnIndex("features"));
                    }
                    int i5 = query.getInt(7);
                    String string4 = CompatUtils.isNCompatible() ? query.getString(8) : BuildConfig.FLAVOR;
                    this.p = BuildConfig.FLAVOR;
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        i = query.getInt(query.getColumnIndex("block"));
                        a2 = PhoneCapabilityTester.getCallLogSimIndexAsInt(this.A, query.getInt(query.getColumnIndex("sim_index")));
                        this.p = query.getString(query.getColumnIndex("city_id"));
                    } else {
                        a2 = com.android.contacts.simcardmanage.a.a(query);
                        i = 0;
                    }
                    int i6 = query.getInt(6);
                    String str3 = string2;
                    if (TextUtils.isEmpty(string2)) {
                        str3 = this.V;
                    }
                    o a3 = t.a((CharSequence) string) ? this.R.a(string + string4, str3, i) : null;
                    if (a3 == null) {
                        oVar = t.a((CharSequence) string) ? this.R.a(string + string4, str3, 0) : null;
                    } else {
                        oVar = a3;
                        if (a3.l == 0) {
                            oVar = a3;
                            if (i != 0) {
                                oVar = t.a((CharSequence) string) ? this.R.a(string + string4, str3, 0) : null;
                            }
                        }
                    }
                    if (oVar == null) {
                        charSequence = this.u.a(string, string4, null, -1);
                        str = BuildConfig.FLAVOR;
                        i2 = 0;
                        str2 = BuildConfig.FLAVOR;
                        uri2 = null;
                        j2 = 0;
                        uri3 = null;
                    } else {
                        charSequence = oVar.f;
                        str = oVar.f738b;
                        i2 = oVar.c;
                        str2 = oVar.d;
                        uri2 = oVar.i;
                        j2 = oVar.h;
                        uri3 = oVar.f737a;
                    }
                    y yVar = new y(string, string4, i5, charSequence, str3, string3, new int[]{i3}, j3, j4, str, i2, str2, uri3, uri2, a2, i6, j2, 0L, i4);
                    if (query != null) {
                        query.close();
                    }
                    return yVar;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("Cannot find content: " + uri);
    }

    static /* synthetic */ void a(CallDetailActivity callDetailActivity, Uri uri, Uri uri2) {
        Bitmap createBitmap;
        callDetailActivity.Z.a(callDetailActivity.P, uri, callDetailActivity.P.getWidth());
        if (uri2 != null) {
            int a2 = com.android.contacts.c.b.a(callDetailActivity.A, String.valueOf(Long.valueOf(uri2.getLastPathSegment()).longValue()));
            if (a2 >= 0) {
                ImageView imageView = callDetailActivity.P;
                if ((a2 == 0 ? 'x' : (char) 65535) != 65535) {
                    Bitmap decodeResource = BitmapFactory.decodeResource(callDetailActivity.getResources(), 2131165304);
                    Drawable drawable = imageView.getDrawable();
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    int i = width;
                    if (width == 0) {
                        i = callDetailActivity.A.getResources().getDimensionPixelOffset(2131099726);
                    }
                    int i2 = height;
                    if (height == 0) {
                        i2 = callDetailActivity.A.getResources().getDimensionPixelOffset(2131099726);
                    }
                    if (drawable instanceof BitmapDrawable) {
                        createBitmap = ((BitmapDrawable) drawable).getBitmap();
                    } else {
                        createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                    }
                    int dimensionPixelOffset = callDetailActivity.A.getResources().getDimensionPixelOffset(2131099699);
                    ImageView imageView2 = new ImageView(callDetailActivity.A);
                    imageView2.layout(0, 0, i, i2);
                    imageView2.setBackgroundDrawable(null);
                    imageView2.setImageBitmap(createBitmap);
                    imageView2.setDrawingCacheEnabled(true);
                    imageView.setImageBitmap(AsusBitmapMerge.createBitmap(imageView2.getDrawingCache(), decodeResource, i, i2, dimensionPixelOffset, 0));
                }
            }
        }
    }

    static /* synthetic */ void a(CallDetailActivity callDetailActivity, f fVar) {
        View findViewById = callDetailActivity.findViewById(2131296428);
        findViewById.setVisibility(0);
        ImageView imageView = (ImageView) findViewById.findViewById(2131296431);
        TextView textView = (TextView) findViewById.findViewById(2131296434);
        View findViewById2 = findViewById.findViewById(2131296433);
        if (callDetailActivity.J) {
            callDetailActivity.F.setOnClickListener(callDetailActivity.ao);
            callDetailActivity.F.setTag(fVar);
            if (callDetailActivity.H != null) {
                callDetailActivity.H.setOnClickListener(callDetailActivity.av);
                callDetailActivity.H.setTag(fVar);
            }
        } else {
            findViewById2.setOnClickListener(callDetailActivity.ao);
            findViewById2.setTag(fVar);
            findViewById2.setContentDescription(fVar.c);
        }
        if (fVar.f != null) {
            imageView.setOnClickListener(callDetailActivity.ap);
            imageView.setImageResource(fVar.e);
            imageView.setVisibility(0);
            imageView.setTag(fVar);
            imageView.setContentDescription(fVar.g);
        } else {
            imageView.setVisibility(8);
        }
        textView.setText(fVar.f469a);
        TextView textView2 = (TextView) findViewById.findViewById(2131296432);
        ImageView imageView2 = (ImageView) findViewById.findViewById(2131296372);
        if (!PhoneCapabilityTester.isATTSku()) {
            imageView2.setVisibility(8);
            if (TextUtils.isEmpty(fVar.d)) {
                textView2.setVisibility(8);
                return;
            }
            textView2.setText(fVar.d);
            textView2.setVisibility(0);
        } else if (fVar.h == null || fVar.h.length() == 0) {
            imageView2.setVisibility(0);
            textView2.setText(BuildConfig.FLAVOR);
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        } else {
            textView2.setText(fVar.h);
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
        }
    }

    static /* synthetic */ void a(CallDetailActivity callDetailActivity, y yVar) {
        CharSequence a2 = callDetailActivity.u.a(yVar.f2214a, yVar.f2215b, yVar.p);
        View findViewById = callDetailActivity.findViewById(2131296428);
        findViewById.setVisibility(0);
        ((ImageView) findViewById.findViewById(2131296431)).setVisibility(8);
        ((TextView) findViewById.findViewById(2131296434)).setText(a2);
        ((TextView) findViewById.findViewById(2131296432)).setVisibility(8);
        View findViewById2 = findViewById.findViewById(2131296433);
        findViewById2.setFocusable(false);
        findViewById2.setOnClickListener(null);
        findViewById2.setTag(null);
        findViewById2.setContentDescription(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri... uriArr) {
        boolean z = false;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.M > 2000) {
            z = true;
        }
        try {
            this.M = currentTimeMillis;
            if (!this.N || z) {
                this.Q.submit(e.UPDATE_PHONE_CALL_DETAILS, new b(uriArr), new Void[0]);
            }
            if (!this.O || z) {
                this.Q.submit(e.UPDATE_PHONE_CALL_DETAILS, new a(uriArr), new Void[0]);
            }
            if ((!this.O || z) && this.am) {
                this.Q.submit(e.UPDATE_PHONE_CALL_DETAILS, new g(), new String[0]);
            }
        } catch (RejectedExecutionException e2) {
            Log.d("CallDetail", "UpdateData: " + e2.toString());
        }
    }

    private boolean a(int i) {
        Cursor cursor;
        Throwable th;
        boolean z;
        Cursor cursor2 = null;
        Log.d("DoItLaterA", "mVipGroupId: " + this.s);
        ContentResolver contentResolver = getContentResolver();
        try {
            Cursor query = contentResolver.query(Uri.parse("content://com.android.contacts/contacts"), new String[]{"_id", "name_raw_contact_id", "starred"}, "_id ='" + i + "'", null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        if (query.getInt(2) == 1) {
                            if (query != null) {
                                query.close();
                            }
                            z = true;
                        } else {
                            long j2 = query.getLong(1);
                            try {
                                cursor = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id"}, "(mimetype='vnd.android.cursor.item/group_membership') AND ( data2 ='" + this.s + "') AND (raw_contact_id ='" + j2 + "')", null, null);
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (query != null) {
                                                query.close();
                                            }
                                            z = true;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (query != null) {
                                    query.close();
                                }
                                z = false;
                            } catch (Throwable th3) {
                                th = th3;
                                cursor = null;
                            }
                        }
                        return z;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    cursor2 = query;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            z = false;
            return z;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    static /* synthetic */ boolean a(CallDetailActivity callDetailActivity) {
        boolean z;
        if (callDetailActivity.aj == null) {
            z = false;
        } else {
            callDetailActivity.aj.finish();
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int b(android.net.Uri r8) {
        /*
            r7 = this;
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0057, all -> 0x008f
            r9 = r0
            r0 = r9
            r1 = r9
            r2 = r8
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.getLookupUri(r1, r2)     // Catch: Exception -> 0x0057, all -> 0x008f
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0057, all -> 0x008f
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_id"
            r3[r4] = r5     // Catch: Exception -> 0x0057, all -> 0x008f
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0057, all -> 0x008f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0047
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00a3, Exception -> 0x00aa
            if (r0 == 0) goto L_0x0047
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = 0
            int r0 = r0.getInt(r1)     // Catch: all -> 0x00a3, Exception -> 0x00aa
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r0.close()
            r0 = r10
            r11 = r0
        L_0x0044:
            r0 = r11
            return r0
        L_0x0047:
            r0 = r9
            if (r0 == 0) goto L_0x0051
            r0 = r9
            r0.close()
        L_0x0051:
            r0 = 0
            r11 = r0
            goto L_0x0044
        L_0x0057:
            r12 = move-exception
            r0 = 0
            r9 = r0
        L_0x005b:
            r0 = r9
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a3
            r13 = r0
            r0 = r9
            r8 = r0
            r0 = r13
            java.lang.String r1 = "Fail to getContactId, Exception = "
            r0.<init>(r1)     // Catch: all -> 0x00a3
            r0 = r9
            r8 = r0
            java.lang.String r0 = "CallDetail"
            r1 = r13
            r2 = r12
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00a3
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00a3
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a3
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00a3
            r0 = r9
            if (r0 == 0) goto L_0x0051
            r0 = r9
            r0.close()
            goto L_0x0051
        L_0x008f:
            r8 = move-exception
            r0 = 0
            r12 = r0
            r0 = r8
            r9 = r0
        L_0x0095:
            r0 = r12
            if (r0 == 0) goto L_0x00a1
            r0 = r12
            r0.close()
        L_0x00a1:
            r0 = r9
            throw r0
        L_0x00a3:
            r9 = move-exception
            r0 = r8
            r12 = r0
            goto L_0x0095
        L_0x00aa:
            r12 = move-exception
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.CallDetailActivity.b(android.net.Uri):int");
    }

    private Uri b() {
        return (Uri) getIntent().getParcelableExtra("EXTRA_VOICEMAIL_URI");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y b(Cursor cursor) {
        y yVar;
        int a2;
        try {
            String string = cursor.getString(2);
            long j2 = cursor.getLong(0);
            long j3 = cursor.getLong(1);
            int i = cursor.getInt(3);
            String string2 = cursor.getString(4);
            String string3 = cursor.getString(5);
            int i2 = 0;
            if (this.J) {
                i2 = cursor.getInt(cursor.getColumnIndex("features"));
            }
            int i3 = cursor.getInt(7);
            this.p = BuildConfig.FLAVOR;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                a2 = PhoneCapabilityTester.getCallLogSimIndexAsInt(this.A, cursor.getInt(cursor.getColumnIndex("sim_index")));
                this.p = cursor.getString(cursor.getColumnIndex("city_id"));
            } else {
                a2 = com.android.contacts.simcardmanage.a.a(cursor);
            }
            int i4 = cursor.getInt(6);
            String str = string2;
            if (TextUtils.isEmpty(string2)) {
                str = this.V;
            }
            CharSequence a3 = this.u.a(string, null);
            yVar = this.J ? new y(string, BuildConfig.FLAVOR, i3, a3, str, string3, new int[]{i}, j2, j3, BuildConfig.FLAVOR, 0, BuildConfig.FLAVOR, null, null, a2, i4, 0L, 0L, i2) : new y(string, i3, a3, str, string3, new int[]{i}, j2, j3, a2, i4);
        } catch (Exception e2) {
            Log.d("CallDetail", e2.toString());
            yVar = null;
        }
        return yVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri[] c() {
        Uri[] uriArr;
        Uri data = getIntent().getData();
        if (data != null) {
            uriArr = new Uri[]{data};
        } else {
            long[] longArrayExtra = getIntent().getLongArrayExtra("EXTRA_CALL_LOG_IDS");
            if (longArrayExtra != null) {
                uriArr = new Uri[longArrayExtra.length];
                for (int i = 0; i < longArrayExtra.length; i++) {
                    if (PhoneCapabilityTester.IsUnbundled()) {
                        uriArr[i] = ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI, longArrayExtra[i]);
                    } else {
                        uriArr[i] = ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, longArrayExtra[i]);
                    }
                }
            } else {
                uriArr = null;
            }
        }
        return uriArr;
    }

    private void d() {
        Bitmap createBitmap;
        ImageView imageView = new ImageView(this);
        imageView.layout(0, 0, 300, 300);
        k.a(this).a(imageView, this.W, false);
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof BitmapDrawable) {
            createBitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            createBitmap = Bitmap.createBitmap(imageView.getWidth(), imageView.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Bundle bundle = new Bundle();
        bundle.putByteArray("extra_later_image", byteArray);
        bundle.putBoolean("extra_boolean_issaveimage", false);
        bundle.putString("extra_later_subtitle", this.U);
        bundle.putInt("extra_later_task_type", 1);
        if (this.X > 0) {
            bundle.putLong("extra_later_time", this.X);
        }
        if (this.S != null) {
            Uri lookupUri = ContactsContract.Contacts.getLookupUri(getContentResolver(), this.S);
            int b2 = b(this.S);
            bundle.putString("extra_later_title", this.T);
            bundle.putString("extra_later_data1", lookupUri.toString());
            Log.d("DoItLaterA", "mInfo.lookupUri.toString(): " + lookupUri.toString());
            boolean a2 = a(b2);
            Log.d("DoItLaterA", "InVipGroup:" + a2);
            if (a2) {
                bundle.putInt("extra_later_importance", 2);
            }
        }
        com.asus.laterhandle.b.a(this, com.asus.laterhandle.b.a((Activity) this), bundle, new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.U)));
    }

    static /* synthetic */ boolean g(CallDetailActivity callDetailActivity) {
        return callDetailActivity.b() != null;
    }

    public final void a() {
        boolean isSimActive = PhoneCapabilityTester.isSimActive(this, 1);
        boolean isSimActive2 = PhoneCapabilityTester.isSimActive(this, 2);
        if (this.o != null) {
            this.o.a(isSimActive, isSimActive2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Cursor cursor) {
        final a.C0045a aVar;
        if (cursor == null) {
            this.ac.setVisibility(8);
            return;
        }
        List<a.C0045a> a2 = this.ab.a(cursor);
        if (a2.size() == 0) {
            aVar = null;
        } else {
            if (a2.size() > 1) {
                Log.w("CallDetail", String.format("Expected 1, found (%d) num of status messages. Will use the first one.", Integer.valueOf(a2.size())));
            }
            aVar = a2.get(0);
        }
        if (aVar == null || !aVar.b()) {
            this.ac.setVisibility(8);
            return;
        }
        this.ac.setVisibility(0);
        this.ad.setText(aVar.c);
        if (aVar.d != -1) {
            this.ae.setText(aVar.d);
        }
        if (aVar.e != null) {
            this.ae.setClickable(true);
            this.ae.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ImplicitIntentsUtil.startActivityOutsideApp(CallDetailActivity.this, new Intent("android.intent.action.VIEW", aVar.e));
                }
            });
            return;
        }
        this.ae.setClickable(false);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Log.d("CallDetail", "requestCode:" + i + " ,resultCode:" + i2);
        if (i2 == -1 && i == 1) {
            new g().execute(new String[0]);
        } else if (i != 199) {
        } else {
            if (!CompatUtils.isMarshmallowCompatible() || !Settings.canDrawOverlays(this)) {
                Log.d("CallDetail", "Deny SYSTEM_ALERT_WINDOW permission");
                return;
            }
            Log.d("CallDetail", "Grant SYSTEM_ALERT_WINDOW permission");
            d();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.K = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || this.K) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        setContentView(2131427415);
        this.L = getSharedPreferences("asus_sim_setting", 0);
        this.L.registerOnSharedPreferenceChangeListener(this);
        this.Q = AsyncTaskExecutors.createThreadPoolExecutor();
        this.f434b = (LayoutInflater) getSystemService("layout_inflater");
        this.c = getResources();
        this.t = new n(getResources());
        this.u = new t(this);
        this.v = new z(getApplicationContext(), this.c, this.t, this.u);
        this.ab = new com.android.contacts.k.b();
        this.aa = new com.android.contacts.h(this);
        this.w = (TextView) findViewById(2131296930);
        this.x = findViewById(2131297161);
        this.ac = findViewById(2131297542);
        this.ad = (TextView) findViewById(2131297544);
        this.ae = (TextView) findViewById(2131297543);
        this.y = (ImageView) findViewById(2131297011);
        this.A = getApplicationContext();
        this.z = new com.android.contacts.c.a(this.A.getContentResolver());
        this.P = (ImageView) findViewById(2131296552);
        this.V = q.a(this);
        this.Z = k.a(this);
        this.ah = new ab(this, this.ai);
        this.R = new p(this, q.a(this));
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowTitleEnabled(true);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle(getString(2131755280));
        }
        this.ac.setVisibility(8);
        findViewById(2131297541).setVisibility(8);
        if (getIntent().getBooleanExtra("EXTRA_FROM_NOTIFICATION", false)) {
            sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        }
        this.d = (TextView) findViewById(2131296497);
        this.e = (ImageView) findViewById(2131297020);
        this.al = !com.asus.a.c.a(getIntent().getStringExtra("CALL_LOG_NUMBER")) && !com.asus.a.c.a(this, getIntent().getStringExtra("CALL_LOG_NUMBER")) && !TextUtils.isEmpty(getIntent().getStringExtra("CALL_LOG_NUMBER")) && getIntent().getParcelableExtra("EXTRA_VOICEMAIL_URI") == null && com.asus.a.c.e();
        this.am = com.asus.a.a.d(this) && com.asus.a.a.h(this);
        if (this.am && this.al) {
            this.e.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    final CallDetailActivity callDetailActivity = CallDetailActivity.this;
                    final String stringExtra = callDetailActivity.getIntent().getStringExtra("CALL_LOG_NUMBER");
                    if (com.asus.a.a.h(callDetailActivity, stringExtra)) {
                        com.asus.a.c.a(callDetailActivity, new DialogInterface.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.9
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i) {
                                switch (i) {
                                    case 0:
                                        Intent intent = new Intent();
                                        intent.setAction("android.intent.action.ASUS_END_CALL_TAG");
                                        intent.putExtra("doNotTag", true);
                                        intent.putExtra("number", stringExtra);
                                        intent.putExtra("markFrom", 3);
                                        CallDetailActivity.this.startActivityForResult(intent, 1);
                                        return;
                                    case 1:
                                        Intent intent2 = new Intent();
                                        intent2.setAction("android.intent.action.ASUS_END_CALL_TAG");
                                        intent2.putExtra("doNotTag", false);
                                        intent2.putExtra("number", stringExtra);
                                        intent2.putExtra("isShowBlockCheck", true);
                                        intent2.putExtra("markFrom", 3);
                                        CallDetailActivity.this.startActivityForResult(intent2, 1);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        });
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.ASUS_END_CALL_TAG");
                    intent.putExtra("doNotTag", false);
                    intent.putExtra("number", callDetailActivity.getIntent().getStringExtra("CALL_LOG_NUMBER"));
                    intent.putExtra("isShowBlockCheck", true);
                    intent.putExtra("markFrom", 3);
                    callDetailActivity.startActivityForResult(intent, 1);
                }
            });
            this.e.setVisibility(0);
        }
        getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.aq);
        this.Y = getIntent().getIntExtra("EXTRA_CONTACT_ID", 0);
        this.J = PhoneCapabilityTester.isRCSVerizon();
        this.F = (ImageView) findViewById(2131297540);
        this.G = (ViewStub) findViewById(2131297523);
        this.E = (ViewStub) findViewById(2131296481);
        this.D = (ViewStub) findViewById(2131296480);
        if (this.J) {
            this.E.inflate();
            this.C = (ImageView) findViewById(2131296479);
            this.y.setVisibility(8);
        } else {
            this.F.setVisibility(8);
            this.D.inflate();
            this.B = (ImageView) findViewById(2131296478);
            this.G.setVisibility(8);
        }
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, (Activity) this, "CallLog detail", true);
            return;
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(10, (Activity) this, "CallLog detail", true);
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getMenuInflater().inflate(2131492873, contextMenu);
        boolean a2 = t.a((CharSequence) this.U);
        boolean b2 = this.u.b(this.U);
        boolean isEmpty = TextUtils.isEmpty(this.U);
        contextMenu.findItem(2131297062).setVisible(this.ag);
        contextMenu.findItem(2131297080).setVisible(this.af);
        com.asus.blocklist.g.a(this, contextMenu.findItem(2131297036), contextMenu.findItem(2131297081), this.U);
        contextMenu.findItem(2131296298).setVisible(!this.r && !isEmpty);
        contextMenu.findItem(2131297529).setVisible(this.r);
        MenuItem findItem = contextMenu.findItem(2131296492);
        MenuItem findItem2 = contextMenu.findItem(2131296493);
        findItem.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(this, 1)));
        findItem2.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(this, 2)));
        if (!com.android.contacts.simcardmanage.b.a(this.A) || !PhoneCapabilityTester.isSimActive(this, 1) || !PhoneCapabilityTester.isSimActive(this, 2) || CallUtil.isUriNumber(this.U) || !a2) {
            findItem.setVisible(false);
            findItem2.setVisible(false);
        } else {
            findItem.setVisible(true);
            findItem2.setVisible(true);
        }
        if (com.android.contacts.simcardmanage.b.e(getApplicationContext(), 1)) {
            findItem2.setVisible(false);
        }
        if (com.android.contacts.simcardmanage.b.e(getApplicationContext(), 2)) {
            findItem.setVisible(false);
        }
        contextMenu.setHeaderTitle(this.q);
        if (!b2) {
            contextMenu.findItem(2131297272).setVisible(false);
        }
        if (!a2 || CallUtil.isUriNumber(this.U)) {
            contextMenu.findItem(2131297053).setVisible(false);
        }
        if (isEmpty) {
            contextMenu.findItem(2131296610).setVisible(false);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492875, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.L != null) {
            this.L.unregisterOnSharedPreferenceChangeListener(this);
        }
        getContentResolver().unregisterContentObserver(this.aq);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z;
        switch (i) {
            case 5:
                if (((TelephonyManager) getSystemService("phone")).getCallState() == 0) {
                    ImplicitIntentsUtil.startActivityOutsideApp(this, CallUtil.getCallIntent(Uri.fromParts(Constants.SCHEME_TEL, this.U, null)));
                    z = true;
                    break;
                }
            default:
                z = super.onKeyDown(i, keyEvent);
                break;
        }
        return z;
    }

    public void onMenuBlockCaller(MenuItem menuItem) {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(9, this, "ContactDetail", "CallLogDetail- Add to block list", null, null);
        }
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setTitle(getResources().getString(2131755783)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (CallDetailActivity.this.S != null) {
                    if (com.asus.blocklist.g.h(CallDetailActivity.this)) {
                        com.asus.blocklist.backwardcompatible.a.b(CallDetailActivity.this, CallDetailActivity.this.b(CallDetailActivity.this.S));
                    } else {
                        com.asus.blocklist.g.a(CallDetailActivity.this, CallDetailActivity.this.b(CallDetailActivity.this.S));
                    }
                } else if (CallDetailActivity.this.U != null) {
                    if (com.asus.blocklist.g.h(CallDetailActivity.this)) {
                        com.asus.blocklist.backwardcompatible.a.c(CallDetailActivity.this, CallDetailActivity.this.U);
                    } else {
                        com.asus.blocklist.g.e(CallDetailActivity.this, CallDetailActivity.this.U);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(19, CallDetailActivity.this, "Behavior - Block", "Block by call detail", null, null);
                }
            }
        }).setNegativeButton(getString(17039369), (DialogInterface.OnClickListener) null);
        if (this.S != null) {
            if (com.asus.blocklist.a.b(this)) {
                negativeButton.setMessage(getResources().getString(2131755202));
            } else {
                negativeButton.setMessage(getResources().getString(2131755203));
            }
        } else if (this.U != null) {
            if (com.asus.blocklist.a.b(this)) {
                negativeButton.setMessage(getResources().getString(2131755212));
            } else {
                negativeButton.setMessage(getResources().getString(2131755213));
            }
        }
        this.h = negativeButton.show();
    }

    public void onMenuDoItLater(MenuItem menuItem) {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(9, this, "ContactDetail", "CallLogDetail- Call later", null, null);
        }
        if (!CompatUtils.isMarshmallowCompatible() || Settings.canDrawOverlays(this)) {
            d();
            return;
        }
        Log.d("CallDetail", "Need SYSTEM_ALERT_WINDOW permission");
        startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())), 199);
    }

    public void onMenuEditNumberBeforeCall(MenuItem menuItem) {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(9, this, "ContactDetail", "CallLogDetail- Edit number before calling", null, null);
        }
        Intent intent = new Intent(getApplicationContext(), DialtactsActivity.class);
        intent.setAction("android.intent.action.DIAL");
        intent.setData(q.a(this.U));
        try {
            ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
        } catch (Exception e2) {
            ImplicitIntentsUtil.startActivityOutsideApp(this, new Intent("android.intent.action.DIAL", q.a(this.U)));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        long j2 = -1;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return true;
            case 2131296298:
                com.android.contacts.a.a(this.U).show(getFragmentManager(), "dialog");
                return true;
            case 2131296492:
                if (this.S != null) {
                    j2 = Long.valueOf(this.S.getLastPathSegment()).longValue();
                }
                ImplicitIntentsUtil.startActivityOutsideApp(this, PhoneCapabilityTester.newDialNumberIntent(getApplicationContext(), this.T, this.U, j2, BuildConfig.FLAVOR, false, -1, 0));
                return true;
            case 2131296493:
                if (this.S != null) {
                    j2 = Long.valueOf(this.S.getLastPathSegment()).longValue();
                }
                ImplicitIntentsUtil.startActivityOutsideApp(this, PhoneCapabilityTester.newDialNumberIntent(getApplicationContext(), this.T, this.U, j2, BuildConfig.FLAVOR, false, -1, 1));
                return true;
            case 2131296610:
                String str = this.U;
                if (TextUtils.isEmpty(str)) {
                    return true;
                }
                ClipboardUtils.copyText(this, " ", str, true);
                return true;
            case 2131297529:
                ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.VIEW", this.S));
                return true;
            default:
                throw new IllegalArgumentException();
        }
    }

    public void onMenuRemoveFromCallLog(MenuItem menuItem) {
        Uri[] c2;
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(9, this, "ContactDetail", "CallLogDetail- Remove from call log", null, null);
        }
        final StringBuilder sb = new StringBuilder();
        for (Uri uri : c()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(ContentUris.parseId(uri));
        }
        this.g = new AlertDialog.Builder(this).setTitle(getResources().getString(2131755790)).setMessage(getResources().getString(2131755524)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CallDetailActivity.this.Q.submit(e.REMOVE_FROM_CALL_LOG_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.CallDetailActivity.11.1
                    @Override // android.os.AsyncTask
                    public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                        CallDetailActivity.this.getContentResolver().delete(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, "_id IN (" + ((Object) sb) + ")", null);
                        return null;
                    }

                    @Override // android.os.AsyncTask
                    public final /* synthetic */ void onPostExecute(Void r3) {
                        CallDetailActivity.this.finish();
                    }
                }, new Void[0]);
            }
        }).setNegativeButton(getString(17039369), (DialogInterface.OnClickListener) null).show();
    }

    public void onMenuRemoveThisCallLog(MenuItem menuItem) {
        Uri[] uriArr;
        int i = this.o.c;
        if (this.o != null) {
            y[] yVarArr = this.o.d;
            uriArr = new Uri[yVarArr.length];
            for (int i2 = 0; i2 < yVarArr.length; i2++) {
                y yVar = yVarArr[i2];
                if (PhoneCapabilityTester.IsUnbundled()) {
                    uriArr[i2] = ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI, yVar.o);
                } else {
                    uriArr[i2] = ContentUris.withAppendedId(CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, yVar.o);
                }
            }
        } else {
            uriArr = new Uri[0];
        }
        if (uriArr.length > 0 && i > 0) {
            final long parseId = ContentUris.parseId(uriArr[i - 1]);
            this.f = new AlertDialog.Builder(this).setTitle(getResources().getString(2131755790)).setMessage(getResources().getString(2131755524)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    CallDetailActivity.this.Q.submit(e.REMOVE_FROM_CALL_LOG_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.CallDetailActivity.10.1
                        @Override // android.os.AsyncTask
                        public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                            CallDetailActivity.this.getContentResolver().delete(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, "_id IN (" + parseId + ")", null);
                            return null;
                        }

                        @Override // android.os.AsyncTask
                        public final /* synthetic */ void onPostExecute(Void r3) {
                            CallDetailActivity.this.finish();
                        }
                    }, new Void[0]);
                }
            }).setNegativeButton(getString(17039369), (DialogInterface.OnClickListener) null).show();
        }
    }

    public void onMenuSendMessage(MenuItem menuItem) {
        if (new t(this).b(this.U)) {
            ImplicitIntentsUtil.startActivityOutsideApp(this, new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", this.U, null)));
        }
    }

    public void onMenuTrashVoicemail(MenuItem menuItem) {
        final Uri b2 = b();
        this.Q.submit(e.DELETE_VOICEMAIL_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.CallDetailActivity.12
            @Override // android.os.AsyncTask
            public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                CallDetailActivity.this.getContentResolver().delete(b2, null, null);
                return null;
            }

            @Override // android.os.AsyncTask
            public final /* synthetic */ void onPostExecute(Void r3) {
                CallDetailActivity.this.finish();
            }
        }, new Void[0]);
    }

    public void onMenuUnBlockCaller(MenuItem menuItem) {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(9, this, "ContactDetail", "CallLogDetail- Remove from block list", null, null);
        }
        this.i = new AlertDialog.Builder(this).setTitle(getResources().getString(2131755798)).setMessage(getResources().getString(2131755015)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.CallDetailActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                if (CallDetailActivity.this.S != null) {
                    if (com.asus.blocklist.g.h(CallDetailActivity.this)) {
                        com.asus.blocklist.backwardcompatible.a.c(CallDetailActivity.this, CallDetailActivity.this.b(CallDetailActivity.this.S));
                    } else {
                        com.asus.blocklist.g.b(CallDetailActivity.this, CallDetailActivity.this.b(CallDetailActivity.this.S));
                    }
                } else if (CallDetailActivity.this.U != null) {
                    if (com.asus.blocklist.g.h(CallDetailActivity.this)) {
                        com.asus.blocklist.backwardcompatible.a.d(CallDetailActivity.this, CallDetailActivity.this.U);
                    } else {
                        com.asus.blocklist.g.f(CallDetailActivity.this, CallDetailActivity.this.U);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(19, CallDetailActivity.this, "Behavior - UnBlock", "Unblock by call detail", null, null);
                }
            }
        }).setNegativeButton(getResources().getString(17039369), (DialogInterface.OnClickListener) null).show();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.ah.a();
        this.ai.c();
        if (this.v != null) {
            this.v.a();
        }
        closeOptionsMenu();
        super.onPause();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if (this.ar != null) {
            this.at = this.ar.isVisible();
        }
        if (this.as != null) {
            this.au = this.as.isVisible();
        }
        this.ar = menu.findItem(2131297036);
        this.as = menu.findItem(2131297081);
        if (this.ar != null) {
            this.ar.setVisible(this.at);
        }
        if (this.as != null) {
            this.as.setVisible(this.au);
        }
        menu.findItem(2131297062).setVisible(this.ag);
        menu.findItem(2131297080).setVisible(this.af);
        if (!t.a((CharSequence) this.U) || CallUtil.isUriNumber(this.U)) {
            menu.findItem(2131297053).setVisible(false);
        } else {
            menu.findItem(2131297053).setVisible(true);
        }
        com.asus.blocklist.g.a(this.A, this.ar, this.as, this.U);
        if (!com.asus.b.a.a(this.A) || !t.a((CharSequence) this.U)) {
            menu.findItem(2131297040).setVisible(false);
        } else {
            menu.findItem(2131297040).setVisible(true);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(this);
            boolean z = getResources().getConfiguration().orientation == 2;
            if (isUsingTwoPanes && z) {
                Uri[] c2 = c();
                if (c2 != null) {
                    String[] strArr = new String[c2.length];
                    for (int i = 0; i < c2.length; i++) {
                        strArr[i] = String.valueOf(c2[i]);
                    }
                    Intent intent = new Intent(this, DialtactsActivity.class);
                    intent.putExtra("CallDetail", true);
                    intent.putExtra("CallDetailChoose", strArr);
                    ImplicitIntentsUtil.startActivityInApp(this, intent);
                }
                finish();
                Log.d("CallDetail", "finish in pad");
            }
            Uri[] c3 = c();
            if (c3 != null) {
                a(c3);
            } else {
                Log.w("CallDetail", "getCallLogEntryUris is null");
                Intent intent2 = new Intent(this, DialtactsActivity.class);
                intent2.setAction(MainDialtactsActivity.ACTION_ENTER_CALL_LOG);
                startActivity(intent2);
                finish();
            }
            if (com.asus.laterhandle.b.a((Context) this) && this.s == -1 && PhoneCapabilityTester.IsAsusDevice()) {
                new h(getContentResolver()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!com.android.contacts.simcardmanage.b.a(this.A)) {
            return;
        }
        if (str.equals("asushadIccCard1") || str.equals("asushadIccCard2") || str.equals("asusIsIccCardFlyMode1") || str.equals("asusIsIccCardFlyMode2")) {
            a();
            if (this.o != null) {
                this.o.notifyDataSetChanged();
            }
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.f != null) {
            this.f.dismiss();
        }
        if (this.g != null) {
            this.g.dismiss();
        }
        if (this.h != null) {
            this.h.dismiss();
        }
        if (this.i != null) {
            this.i.dismiss();
        }
        if (this.f433a != null) {
            this.f433a.dismiss();
        }
    }
}

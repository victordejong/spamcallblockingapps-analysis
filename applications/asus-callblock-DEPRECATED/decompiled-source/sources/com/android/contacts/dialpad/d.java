package com.android.contacts.dialpad;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.ae;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.calllog.o;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import com.asus.a.a;
import com.asus.updatesdk.BuildConfig;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d.class */
public final class d extends CursorAdapter implements d.a {
    public static final String[] m;
    private PhoneNumberUtil P;
    private j Q;
    private int S;
    private int T;
    private int U;
    private Drawable W;
    private Drawable X;
    private Drawable Y;
    private Drawable Z;
    private Drawable aa;
    private Context ab;
    private Resources ac;
    private LayoutInflater ad;
    private final com.android.contacts.k ae;
    private boolean ah;
    private String ai;
    boolean d;
    boolean e;
    ResultListFragment.h l;
    private final LinkedList<c> v;
    private int w;
    private int x;

    /* renamed from: a  reason: collision with root package name */
    String f1014a = null;

    /* renamed from: b  reason: collision with root package name */
    String f1015b = null;
    Map<Long, Boolean> c = new HashMap();
    boolean f = false;
    boolean g = false;
    Map<String, Bitmap> h = new HashMap();
    Map<String, Boolean> i = new HashMap();
    private HashMap<String, o> u = new HashMap<>();
    boolean j = false;
    public ae.b k = null;
    private int y = -1;
    private int z = -1;
    private int A = -1;
    private int B = -1;
    private int C = -1;
    private int D = -1;
    private int E = -1;
    private int F = -1;
    private int G = -1;
    private int H = -1;
    private int I = -1;
    private int J = -1;
    private int K = -1;
    private int L = -1;
    private int M = -1;
    private int N = -1;
    private int O = -1;
    private Handler R = new Handler() { // from class: com.android.contacts.dialpad.d.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    d.this.l.b();
                    d.this.notifyDataSetChanged();
                    return;
                case 2:
                    d.this.c();
                    return;
                default:
                    return;
            }
        }
    };
    private boolean V = true;
    String n = BuildConfig.FLAVOR;
    e o = null;
    ResultListFragment.e p = null;
    f q = null;
    g r = null;
    private Cursor af = null;
    boolean s = false;
    private boolean ag = false;
    boolean t = false;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$a.class */
    final class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b  reason: collision with root package name */
        private long f1019b;

        public a(long j) {
            this.f1019b = j;
        }

        private Boolean a() {
            Throwable th;
            Cursor cursor;
            boolean z;
            boolean z2 = true;
            boolean z3 = this.f1019b > 0;
            if (d.this.ab == null) {
                z2 = false;
            }
            if (z3 && z2) {
                try {
                    cursor = d.this.ab.getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "mimetype='vnd.android.cursor.item/group_membership' AND data1 IN ( SELECT _id FROM groups WHERE title = 'VIP') AND contact_id = " + this.f1019b, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.getCount() > 0) {
                                z = true;
                                if (cursor != null) {
                                    cursor.close();
                                    z = true;
                                }
                                return z;
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
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
            z = false;
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            d.this.c.put(Long.valueOf(this.f1019b), bool2);
            if (bool2.booleanValue()) {
                d.this.notifyDataSetChanged();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f1020a;

        /* renamed from: b  reason: collision with root package name */
        public int f1021b;
        public int c;
        public int d;
        public long e;
        public byte[] f;
        public String g;
        public String h;
        public String i;
        public int j;
        public int k;
        public int l;
        public String m;
        public int n;
        public String o;
        public String p;
        public String q;
        public String r;
        public String s;
        public long t;
        public boolean u;
        public boolean v;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$c.class */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        b f1022a;

        /* renamed from: b  reason: collision with root package name */
        String f1023b;
        boolean c;

        public c(b bVar, String str, boolean z) {
            this.f1022a = bVar;
            this.f1023b = str;
            this.c = z;
        }
    }

    /* renamed from: com.android.contacts.dialpad.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$d.class */
    public static final class C0033d {

        /* renamed from: a  reason: collision with root package name */
        private static SimpleDateFormat f1024a = null;

        /* renamed from: b  reason: collision with root package name */
        private static SimpleDateFormat f1025b = null;
        private static SimpleDateFormat c = null;
        private static SimpleDateFormat d = null;
        private static SimpleDateFormat e = null;

        public static void a() {
            f1024a = null;
            f1025b = null;
            d = null;
            e = null;
            c = null;
        }

        public static SimpleDateFormat b() {
            SimpleDateFormat simpleDateFormat;
            if (f1024a == null) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("H:mm");
                f1024a = simpleDateFormat2;
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                simpleDateFormat = f1024a;
            } else {
                simpleDateFormat = f1024a;
            }
            return simpleDateFormat;
        }

        public static SimpleDateFormat c() {
            SimpleDateFormat simpleDateFormat;
            if (f1025b == null) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("hh:mm a");
                f1025b = simpleDateFormat2;
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                simpleDateFormat = f1025b;
            } else {
                simpleDateFormat = f1025b;
            }
            return simpleDateFormat;
        }

        public static SimpleDateFormat d() {
            SimpleDateFormat simpleDateFormat;
            if (d == null) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("M/dd,E-H:mm");
                d = simpleDateFormat2;
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                simpleDateFormat = d;
            } else {
                simpleDateFormat = d;
            }
            return simpleDateFormat;
        }

        public static SimpleDateFormat e() {
            SimpleDateFormat simpleDateFormat;
            if (e == null) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("M/dd,E-hh:mm a");
                e = simpleDateFormat2;
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                simpleDateFormat = e;
            } else {
                simpleDateFormat = e;
            }
            return simpleDateFormat;
        }

        public static SimpleDateFormat f() {
            SimpleDateFormat simpleDateFormat;
            if (c == null) {
                SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("M/dd,E");
                c = simpleDateFormat2;
                simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                simpleDateFormat = c;
            } else {
                simpleDateFormat = c;
            }
            return simpleDateFormat;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$e.class */
    public interface e {
        String a();

        void f(b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$f.class */
    public interface f {
        int c(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$g.class */
    public interface g {
        boolean e(int i, View view, b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$h.class */
    private final class h implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f1027b;
        private View c;
        private b d;
        private k e;

        h(int i, b bVar, View view, k kVar) {
            this.f1027b = i;
            this.d = bVar;
            this.c = view;
            this.e = kVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Integer num = (Integer) view.getTag();
            if (num == null) {
                if (this.c instanceof AbsListView) {
                    ((AbsListView) this.c).setItemChecked(this.f1027b, true);
                    d.this.q.c(this.f1027b);
                }
                if (d.this.o != null) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, d.this.ab, "Dialer", d.this.o.a(), d.this.o.a() + ": press item", null);
                    if (d.this.ab instanceof Activity) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(18, (Activity) d.this.ab, "Make a Call", true);
                    }
                    d.this.o.f(this.d);
                }
            } else if (d.this.p != null && num != null) {
                d.this.p.a(this.d, num.intValue());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$i.class */
    private final class i implements View.OnLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f1029b;
        private View c;
        private b d;

        i(int i, View view, b bVar) {
            this.f1029b = i;
            this.c = view;
            this.d = bVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            d.this.r.e(this.f1029b, this.c, this.d);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$j.class */
    public final class j extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f1030a = false;

        public j() {
            super("CallLogAdapter.QueryThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean z;
            while (!this.f1030a) {
                c cVar = null;
                synchronized (d.this.v) {
                    if (!d.this.v.isEmpty()) {
                        cVar = (c) d.this.v.removeFirst();
                    }
                }
                if (cVar != null) {
                    z = d.a(d.this, cVar.f1022a, cVar.f1023b, cVar.c);
                } else {
                    try {
                        synchronized (d.this.v) {
                            d.this.v.wait(1000L);
                        }
                        z = false;
                    } catch (InterruptedException e) {
                        z = false;
                    }
                }
                if (z) {
                    d.this.R.sendEmptyMessage(1);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$k.class */
    public static final class k {
        TextView A;
        public ViewStub B;
        public View C;
        View D;
        TextView E;
        ImageView F;
        ImageView G;
        View H;

        /* renamed from: a  reason: collision with root package name */
        public View f1032a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1033b;
        TextView c;
        TextView d;
        AsusQuickContactBadge e;
        ImageView f;
        ImageView g;
        public ImageButton h;
        ImageView i;
        ImageView j;
        ImageView k;
        TextView l;
        ImageView m;
        TextView n;
        TextView o;
        ViewStub p;
        ViewStub q;
        ViewStub r;
        ViewStub s;
        ViewStub t;
        ViewStub u;
        ViewStub v;
        ViewStub w;
        FrameLayout x;
        ViewStub y;
        TextView z;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/d$l.class */
    private final class l extends AsyncTask<a.c, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private k f1035b;
        private a.c c;

        l(k kVar) {
            this.f1035b = kVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(a.c[] cVarArr) {
            Bitmap bitmap;
            a.c[] cVarArr2 = cVarArr;
            if (d.this.ab != null) {
                this.c = cVarArr2[0];
                bitmap = com.asus.a.a.a(d.this.ab, this.c);
            } else {
                bitmap = null;
            }
            return bitmap;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                super.onPostExecute(bitmap2);
                if (this.f1035b != null) {
                    d.this.h.put(this.c.f2355a, bitmap2);
                    this.f1035b.e.setImageBitmap(bitmap2);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    static {
        m = !PhoneCapabilityTester.IsUnbundled() ? new String[]{"_id", "call_id", ContactDetailCallogActivity.EXTRA_NAME, "pos", "date", "type", "number", "lookup", "photo_id", SpeedDialList.Columns.ISSIM, "name_token", "label", "numberType", "city_id"} : new String[]{"_id", "call_id", ContactDetailCallogActivity.EXTRA_NAME, "pos", "date", "type", "number", "lookup", "photo_id", "name_token", "label", "numberType", "city_id"};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context) {
        super(context, (Cursor) null, 2);
        boolean z = false;
        this.ah = (com.android.contacts.skin.a.b() || com.android.contacts.skin.a.c()) ? true : z;
        this.ad = LayoutInflater.from(context);
        this.ac = context.getResources();
        this.ab = context;
        this.ai = ((TelephonyManager) this.ab.getSystemService("phone")).getSimCountryIso();
        if (com.android.contacts.skin.a.b()) {
            this.w = context.getResources().getColor(2131034161);
            this.x = context.getResources().getColor(2131034197);
            this.U = context.getResources().getColor(2131034159);
            this.S = context.getResources().getColor(2131034152);
        } else if (com.android.contacts.skin.a.c()) {
            this.w = com.android.contacts.skin.a.a(2);
            this.x = com.android.contacts.skin.a.a(2);
            this.U = com.android.contacts.skin.a.a(2);
            this.S = com.android.contacts.skin.a.a(1);
        } else {
            this.U = context.getResources().getColor(2131034158);
            this.S = context.getResources().getColor(2131034152);
        }
        this.W = context.getResources().getDrawable(2131165323);
        this.X = context.getResources().getDrawable(2131165325);
        this.Y = context.getResources().getDrawable(2131165324);
        this.aa = context.getResources().getDrawable(2131165323);
        this.T = context.getResources().getColor(2131034193);
        this.ae = com.android.contacts.k.a(context);
        this.v = new LinkedList<>();
    }

    private static int a(String str, int i2) {
        int i3 = 0;
        if (i2 > 0) {
            i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < str.length(); i5++) {
                char charAt = str.charAt(i5);
                if (-1 != "0123456789,+*#".indexOf(charAt)) {
                    int i6 = i4 + 1;
                    i4 = i6;
                    if (i2 <= i6) {
                        break;
                    }
                } else {
                    i4 = i4;
                    if (-1 != " ()-".indexOf(charAt)) {
                        i3++;
                    }
                }
            }
        }
        return i3;
    }

    private SpannableString a(String str, int i2, int i3) {
        SpannableString spannableString;
        if (str == null) {
            spannableString = new SpannableString(BuildConfig.FLAVOR);
        } else if (i2 < 0 || i3 < 0 || i2 > i3) {
            spannableString = new SpannableString(str);
        } else {
            spannableString = new SpannableString(str);
            spannableString.setSpan(new ForegroundColorSpan(this.S), i2, i3, 0);
            spannableString.setSpan(new BackgroundColorSpan(this.T), i2, i3, 0);
        }
        return spannableString;
    }

    private CharSequence a(b bVar, int i2) {
        String str;
        int a2;
        int i3;
        try {
            str = PhoneNumberUtils.formatNumber(bVar.h);
        } catch (ArrayIndexOutOfBoundsException e2) {
            Log.e("ContactsAdapter", "Error occurred in decorateNumber: " + e2.getMessage());
            str = bVar.h;
        }
        SpannableString spannableString = str;
        if (i2 != 0) {
            if (bVar.h.length() < i2) {
                a2 = -1;
                i3 = -1;
            } else {
                a2 = a(str, i2) + i2;
                i3 = 0;
            }
            spannableString = a(str, i3, a2);
        }
        return spannableString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x030f, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.CharSequence a(com.android.contacts.dialpad.d.b r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 1480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.d.a(com.android.contacts.dialpad.d$b, java.lang.String):java.lang.CharSequence");
    }

    private CharSequence a(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = null;
        } else {
            String replace = charSequence.toString().replace(" ", BuildConfig.FLAVOR).replace("-", BuildConfig.FLAVOR).replace("(", BuildConfig.FLAVOR).replace(")", BuildConfig.FLAVOR);
            int indexOf = replace.toLowerCase().indexOf(this.n.toLowerCase());
            if (indexOf >= 0) {
                charSequence = a(replace, indexOf, this.n.length() + indexOf);
            }
        }
        return charSequence;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.android.contacts.dialpad.d.k r7, com.android.contacts.dialpad.d.b r8) {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.d.a(com.android.contacts.dialpad.d$k, com.android.contacts.dialpad.d$b):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
        if (r15.t != false) goto L_0x0076;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ boolean a(com.android.contacts.dialpad.d r9, com.android.contacts.dialpad.d.b r10, java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.d.a(com.android.contacts.dialpad.d, com.android.contacts.dialpad.d$b, java.lang.String, boolean):boolean");
    }

    private PhoneNumberUtil b() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (this) {
            if (this.P == null) {
                this.P = PhoneNumberUtil.getInstance();
            }
            phoneNumberUtil = this.P;
        }
        return phoneNumberUtil;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this) {
            if (this.Q == null) {
                this.Q = new j();
                this.Q.setPriority(1);
                this.Q.start();
            }
        }
    }

    public final void a() {
        synchronized (this) {
            this.R.removeMessages(2);
            if (this.Q != null) {
                this.Q.f1030a = true;
                this.Q.interrupt();
                this.Q = null;
            }
        }
    }

    @Override // com.android.contacts.asuscallerid.d.a
    public final void a(d.c cVar) {
        if ("4".equals(cVar.d) && cVar.a() != null && ((Integer) cVar.a().getTag(2131296500)).intValue() == cVar.f606b) {
            if (this.f) {
                this.g = true;
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public final void a(boolean z) {
        Log.d("ContactsAdapter", "turn " + (z ? "on " : "off ") + "smart search");
        this.V = z;
    }

    @Override // android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
    }

    @Override // android.widget.CursorAdapter
    public final /* synthetic */ CharSequence convertToString(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndexOrThrow(ContactDetailCallogActivity.EXTRA_NAME));
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x11b9  */
    @Override // android.widget.CursorAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r10, android.view.View r11, android.view.ViewGroup r12) {
        /*
            Method dump skipped, instructions count: 4593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.d.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return null;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        if (this.f) {
            this.g = true;
            return;
        }
        this.g = false;
        super.notifyDataSetChanged();
    }

    @Override // android.widget.CursorAdapter
    public final Cursor swapCursor(Cursor cursor) {
        if (cursor != null) {
            this.y = cursor.getColumnIndex("_id");
            this.z = cursor.getColumnIndex("call_id");
            this.A = cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_NAME);
            this.B = cursor.getColumnIndex("pos");
            this.C = cursor.getColumnIndex("date");
            this.D = cursor.getColumnIndex("type");
            this.E = cursor.getColumnIndex("number");
            this.F = cursor.getColumnIndex("lookup");
            this.G = cursor.getColumnIndex("photo_id");
            this.H = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
            this.I = cursor.getColumnIndex("name_token");
            this.J = cursor.getColumnIndex("label");
            this.K = cursor.getColumnIndex("numberType");
            this.L = cursor.getColumnIndex("countryiso");
            this.M = cursor.getColumnIndex("sim_index");
            this.N = cursor.getColumnIndex("city_id");
            this.O = cursor.getColumnIndex("normalize_number");
        }
        return super.swapCursor(cursor);
    }
}

package com.android.contacts.group;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.GroupDetailActivity;
import com.android.contacts.activities.OdmGroupDetailActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.b;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.k;
import com.android.contacts.r;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.vcard.VCardConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/e.class */
public final class e extends BaseAdapter {
    private static boolean D = false;
    private static int t;
    private Map<Long, com.android.contacts.airview.e[]> A;
    private Set<Long> B;
    private ArrayList<Long> C;
    private int G;
    private int H;
    private int I;
    private int J;
    private boolean K;

    /* renamed from: a  reason: collision with root package name */
    Cursor f1377a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1378b;
    Uri c;
    public int h;
    boolean n;
    private final Context o;
    private final LayoutInflater p;
    private final com.android.contacts.model.a q;
    private com.android.contacts.airview.f r;
    private boolean s;
    private ArrayList<Long> u;
    private k v;
    private Map<Long, b> w;
    private Map<Long, a> x;
    private Map<Long, a> y;
    private Set<Long> z;
    private int E = -1;
    private boolean F = false;
    public boolean d = true;
    public boolean e = true;
    public final int f = 20;
    public final int g = 315;
    public final int i = 4;
    public final int j = 3;
    public final int k = 0;
    public final int l = 2;
    public final long m = 1;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f1399a;

        /* renamed from: b  reason: collision with root package name */
        public List<C0040e> f1400b = new ArrayList();

        public a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        public String f1401a;

        /* renamed from: b  reason: collision with root package name */
        public long f1402b;
        public long c;
        public long d;
        public int e;

        public b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final View f1403a;

        /* renamed from: b  reason: collision with root package name */
        final int f1404b = 3;
        final int c = e.t;
        public final TextView d;
        public final TextView e;
        public final ImageView f;
        public View g;
        Uri h;
        public long i;
        public final TextView j;
        public final TextView k;
        public final View l;
        public final View m;
        public LinearLayout n;
        public LinearLayout o;
        public final View p;

        public c(View view) {
            this.j = (TextView) view.findViewById(2131296274);
            this.k = (TextView) view.findViewById(2131296273);
            this.l = view.findViewById(2131296903);
            this.m = view.findViewById(2131296927);
            this.g = view.findViewById(2131296757);
            this.f1403a = view.findViewById(2131296905);
            this.d = (TextView) view.findViewById(2131296982);
            this.e = (TextView) view.findViewById(2131297091);
            this.f = (ImageView) view.findViewById(2131297290);
            this.n = (LinearLayout) view.findViewById(2131296899);
            this.o = (LinearLayout) view.findViewById(2131296969);
            this.p = view.findViewById(2131297003);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final View f1405a;

        /* renamed from: b  reason: collision with root package name */
        final int f1406b = 3;
        final int c = e.t;
        public final TextView d;
        public TextView e;
        public View f;
        Uri g;
        public long h;
        public final TextView i;
        public ImageView[] j;
        public ViewGroup k;
        public ViewGroup l;
        public final TextView m;
        public final TextView n;
        public final View o;
        public final View p;
        public final View q;
        public final View r;

        public d(View view) {
            this.m = (TextView) view.findViewById(2131296274);
            this.n = (TextView) view.findViewById(2131296273);
            this.o = view.findViewById(2131296903);
            this.p = view.findViewById(2131296927);
            this.q = view.findViewById(2131297003);
            this.r = view.findViewById(2131296898);
            if (e.D) {
                this.f1405a = view.findViewById(2131296905);
                this.d = (TextView) view.findViewById(2131296982);
                this.f = view.findViewById(2131296757);
                this.f.setVisibility(8);
                this.i = (TextView) view.findViewById(2131297028);
                this.e = (TextView) view.findViewById(2131297024);
                this.k = (ViewGroup) view.findViewById(2131297026);
                this.l = (ViewGroup) view.findViewById(2131297027);
                this.j = new ImageView[3];
                this.j[0] = (ImageView) view.findViewById(2131297021);
                this.j[1] = (ImageView) view.findViewById(2131297022);
                this.j[2] = (ImageView) view.findViewById(2131297023);
                return;
            }
            this.f = view.findViewById(2131296757);
            this.f1405a = view.findViewById(2131296905);
            this.d = (TextView) view.findViewById(2131296982);
            this.i = (TextView) view.findViewById(2131297028);
        }
    }

    /* renamed from: com.android.contacts.group.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$e.class */
    public final class C0040e {

        /* renamed from: a  reason: collision with root package name */
        public long f1407a;

        /* renamed from: b  reason: collision with root package name */
        public String f1408b;
        public long c;
        public String d;
        public long e;
        public long f;

        public C0040e() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$f.class */
    public final class f extends AsyncTask<Void, Integer, Void> {

        /* renamed from: a  reason: collision with root package name */
        Context f1409a;

        /* renamed from: b  reason: collision with root package name */
        String f1410b;

        public f(Context context) {
            this.f1409a = context;
            this.f1410b = this.f1409a.getString(2131755855);
        }

        private Void a() {
            Cursor query = this.f1409a.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "photo_id", "display_name", "lookup", "has_phone_number", "starred"}, null, null, null);
            a aVar = new a();
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        int i = 0;
                        int i2 = 0;
                        while (i < query.getCount()) {
                            C0040e eVar = new C0040e();
                            query.moveToPosition(i);
                            i2 = i2;
                            if (query.getString(5).equals("1")) {
                                i2++;
                                eVar.f1407a = query.getLong(1);
                                eVar.c = query.getLong(0);
                                eVar.d = query.getString(3);
                                eVar.f = query.getLong(4);
                                String string = query.getString(2);
                                String str = string;
                                if (string == null) {
                                    str = this.f1410b;
                                }
                                eVar.f1408b = str;
                                aVar.f1400b.add(eVar);
                                aVar.f1399a = i2;
                            }
                            i++;
                        }
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
            e.this.y.put(1L, aVar);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (e.this.d) {
                e.this.d = false;
                e.this.notifyDataSetChanged();
                this.f1409a = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$g.class */
    public final class g extends AsyncTask<Long, Integer, Void> {

        /* renamed from: a  reason: collision with root package name */
        long f1411a;

        /* renamed from: b  reason: collision with root package name */
        d f1412b;
        Context c;
        String d;
        String e;

        public g(Context context, long j, d dVar, String str) {
            this.c = context;
            this.f1411a = j;
            this.f1412b = dVar;
            this.d = str;
            this.e = this.c.getString(2131755855);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x017a, code lost:
            android.util.Log.d("GroupBrowseListAdapter", r8.length() + "/" + r18 + " -> member name is already too long and photo count is full.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x01a7, code lost:
            r18 = r0;
            r14 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01b0  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Long... r8) {
            /*
                Method dump skipped, instructions count: 679
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.e.g.doInBackground(java.lang.Long[]):java.lang.Void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            super.onPostExecute(r6);
            e.this.u.remove(Long.valueOf(this.f1411a));
            if (this.f1411a == this.f1412b.h) {
                e.this.notifyDataSetChanged();
                this.f1412b = null;
                this.c = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            e.this.u.add(Long.valueOf(this.f1411a));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$h.class */
    public final class h extends AsyncTask<Long, Integer, Void> {

        /* renamed from: a  reason: collision with root package name */
        long f1413a;

        /* renamed from: b  reason: collision with root package name */
        c f1414b;
        Context c;
        String d;
        String e;

        public h(Context context, long j, c cVar, String str) {
            this.c = context;
            this.f1413a = j;
            this.f1414b = cVar;
            this.d = str;
            this.e = this.c.getString(2131755855);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Long... lArr) {
            Long l = lArr[0];
            if (this.c == null || this.c.getContentResolver() == null) {
                return null;
            }
            String a2 = e.a(this.d);
            ArrayList<String> a3 = e.a(this.d, l.longValue());
            Uri build = e.b(this.d).buildUpon().appendQueryParameter("directory", "0").build();
            ContentResolver contentResolver = this.c.getContentResolver();
            String str = a2;
            if (a2 == null) {
                str = null;
            }
            Cursor query = contentResolver.query(build, new String[]{"_id", "photo_id", "display_name", "lookup", "has_phone_number", SpeedDialList.Columns.ISSIM}, str, a3 == null ? null : (String[]) a3.toArray(new String[a3.size()]), e.c(this.d));
            a aVar = new a();
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        aVar.f1399a = query.getCount();
                        for (int i = 0; i < query.getCount(); i++) {
                            C0040e eVar = new C0040e();
                            query.moveToPosition(i);
                            eVar.f1407a = query.getLong(1);
                            String string = query.getString(2);
                            String str2 = string;
                            if (string == null) {
                                str2 = this.e;
                            }
                            eVar.f1408b = str2;
                            eVar.c = query.getLong(0);
                            eVar.d = query.getString(3);
                            eVar.f = Long.valueOf(query.getLong(4)).longValue();
                            eVar.e = Long.valueOf(query.getLong(5)).longValue();
                            aVar.f1400b.add(eVar);
                        }
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
            e.this.x.put(l, aVar);
            e.this.z.add(l);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r5) {
            super.onPostExecute(r5);
            if (e.this.d) {
                e.this.d = false;
                e.this.notifyDataSetChanged();
                if (e.this.e) {
                    e.this.e = false;
                    e.this.notifyDataSetChanged();
                    e.this.u.remove(Long.valueOf(this.f1413a));
                    this.f1414b = null;
                    this.c = null;
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            e.this.u.add(Long.valueOf(this.f1413a));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/e$i.class */
    public final class i extends AsyncTask<Long, Integer, Void> {

        /* renamed from: a  reason: collision with root package name */
        int f1415a;

        /* renamed from: b  reason: collision with root package name */
        long f1416b;
        int c = 0;
        Context d;
        d e;
        com.android.contacts.airview.e[] f;
        String g;

        public i(Context context, int i, long j, d dVar, String str) {
            this.d = context;
            this.f1415a = i;
            this.e = dVar;
            this.g = str;
            this.f1416b = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Long... lArr) {
            Cursor cursor;
            Throwable th;
            Cursor cursor2 = null;
            if (this.f1416b != this.e.h) {
                return null;
            }
            Long l = lArr[0];
            if (!(this.d == null || this.d.getContentResolver() == null)) {
                String str = com.android.contacts.group.f.c(this.g) ? "name_raw_contact_id" : "raw_contact_id";
                String str2 = com.android.contacts.group.f.c(this.g) ? "order_favorite" : "data14";
                String[] strArr = {"_id", "name_raw_contact_id", "display_name", "has_phone_number"};
                String a2 = e.a(this.g);
                ArrayList<String> a3 = e.a(this.g, l.longValue());
                Uri build = e.b(this.g).buildUpon().appendQueryParameter("directory", "0").build();
                try {
                    ContentResolver contentResolver = this.d.getContentResolver();
                    String[] strArr2 = com.android.contacts.group.f.b(this.g) ? strArr : new String[]{"_id", str, "display_name", "has_phone_number", str2, "starred"};
                    String str3 = a2;
                    if (a2 == null) {
                        str3 = null;
                    }
                    Cursor query = contentResolver.query(build, strArr2, str3, a3 == null ? null : (String[]) a3.toArray(new String[a3.size()]), e.c(this.g));
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                this.c = query.getCount();
                                this.f = new com.android.contacts.airview.e[this.c];
                                for (int i = 0; i < this.c; i++) {
                                    query.moveToPosition(i);
                                    this.f[i] = new com.android.contacts.airview.e();
                                    this.f[i].f555a = query.getString(2);
                                    if (query.getInt(3) == 1) {
                                        try {
                                            Cursor query2 = this.d.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", CoverUtils.CoverData.COVER_URI}, "raw_contact_id='" + query.getLong(1) + "' AND mimetype='vnd.android.cursor.item/phone_v2'", null, null);
                                            if (query2 != null) {
                                                try {
                                                    if (query2.getCount() > 0 && query2.moveToFirst()) {
                                                        this.f[i].f556b = query2.getString(1);
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    cursor = query2;
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    throw th;
                                                }
                                            }
                                            if (query2 != null) {
                                                query2.close();
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursor = null;
                                        }
                                    }
                                }
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
                } catch (Throwable th5) {
                    th = th5;
                }
            }
            e.this.A.put(Long.valueOf(this.f1416b), this.f);
            e.this.B.add(Long.valueOf(this.f1416b));
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            super.onPostExecute(r6);
            e.this.C.remove(Long.valueOf(this.f1416b));
            if (this.f1416b == this.e.h && e.this.s) {
                this.e.f1405a.setTag(2131296921, Integer.valueOf(this.f1415a));
                AsusAirViewUtils.setOnHoverListenerForView(this.e.f1405a, e.this.r, this.f, 3);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            e.this.C.add(Long.valueOf(this.f1416b));
        }
    }

    public e(Context context) {
        this.s = false;
        this.h = 0;
        this.K = !com.android.contacts.skin.a.b() ? com.android.contacts.skin.a.c() : true;
        this.n = false;
        this.o = context;
        this.p = LayoutInflater.from(context);
        this.q = com.android.contacts.model.a.a(this.o);
        this.s = AsusAirViewUtils.hasPenFeature(this.o);
        if (this.s) {
            this.r = new com.android.contacts.airview.f(context);
            this.C = new ArrayList<>();
            this.A = new HashMap();
            this.B = new HashSet();
        }
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        D = IsAsusDevice;
        if (IsAsusDevice) {
            t = this.o.getResources().getInteger(2131361821);
            this.u = new ArrayList<>();
            if (this.v == null) {
                this.v = k.a(this.o);
            }
            this.w = new HashMap();
            this.x = new HashMap();
            this.z = new HashSet();
        }
        if (!D) {
            this.y = new HashMap();
            if (this.v == null) {
                this.v = k.a(this.o);
            }
        }
        if (com.android.contacts.skin.a.b()) {
            this.G = this.o.getResources().getColor(2131034197);
            this.H = this.o.getResources().getColor(2131034149);
            this.I = this.o.getResources().getColor(2131034148);
            this.J = this.o.getResources().getColor(2131034120);
        } else if (com.android.contacts.skin.a.c()) {
            this.G = com.android.contacts.skin.a.a(2);
            this.H = com.android.contacts.skin.a.a(2);
            this.I = com.android.contacts.skin.a.a(2);
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) this.o).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.h = (int) (((displayMetrics.widthPixels - (this.o.getResources().getDimensionPixelSize(2131100193) * 4)) - (this.o.getResources().getDimensionPixelSize(2131099965) * 2)) / 3.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Uri a(long j) {
        return !D ? ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, j) : ContentUris.withAppendedId(com.android.contacts.c.a(), j);
    }

    public static String a(String str) {
        return com.android.contacts.group.f.b(str) ? null : com.android.contacts.group.f.c(str) ? "starred=?" : "mimetype=? AND data2=?";
    }

    public static ArrayList<String> a(String str, long j) {
        ArrayList<String> arrayList;
        if (com.android.contacts.group.f.b(str)) {
            arrayList = null;
        } else {
            ArrayList<String> arrayList2 = new ArrayList<>();
            if (com.android.contacts.group.f.c(str)) {
                arrayList2.add("1");
                arrayList = arrayList2;
            } else {
                arrayList2.add("vnd.android.cursor.item/group_membership");
                arrayList2.add(String.valueOf(j));
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    private void a(a aVar, ImageView imageView, int i2, Long l) {
        if (aVar != null) {
            long j = aVar.f1400b.get(i2).f1407a;
            k.d dVar = j == 0 ? new k.d(aVar.f1400b.get(i2).f1408b, null, true) : null;
            if (l.longValue() == 1) {
                j = -1;
            } else if (l.longValue() == 2) {
                j = -2;
            }
            this.v.a(imageView, j, this.K, dVar);
        }
    }

    private void a(d dVar, b bVar) {
        int i2 = 8;
        if (bVar == null) {
            dVar.e.setText("0");
            int i3 = 0;
            while (true) {
                dVar.getClass();
                if (i3 < 3) {
                    dVar.j[i3].setVisibility(8);
                    i3++;
                } else {
                    dVar.i.setText(this.o.getResources().getQuantityString(2131623936, 0, 0));
                    return;
                }
            }
        } else {
            dVar.e.setText(String.valueOf(bVar.e));
            if (bVar.d > 0) {
                this.v.a(dVar.j[0], bVar.d, false);
                this.v.a(dVar.j[1], bVar.c, false);
                this.v.a(dVar.j[2], bVar.f1402b, false);
            } else if (bVar.c > 0) {
                this.v.a(dVar.j[0], bVar.c, false);
                this.v.a(dVar.j[1], bVar.f1402b, false);
            } else if (bVar.f1402b > 0) {
                this.v.a(dVar.j[0], bVar.f1402b, false);
            }
            dVar.j[0].setVisibility(bVar.f1402b > 0 ? 0 : 8);
            dVar.j[1].setVisibility(bVar.c > 0 ? 0 : 8);
            ImageView imageView = dVar.j[2];
            if (bVar.d > 0) {
                i2 = 0;
            }
            imageView.setVisibility(i2);
            if (bVar.f1401a.length() != 0) {
                dVar.i.setText(bVar.f1401a);
            } else {
                dVar.i.setText(this.o.getResources().getQuantityString(2131623936, 0, 0));
            }
        }
    }

    private void a(com.android.contacts.group.h hVar, d dVar) {
        CharSequence a2 = this.q.a(hVar.f1422b, hVar.c).a(this.o);
        if (!(a2 == null || dVar.m == null)) {
            dVar.m.setText(a2.toString());
            if (com.android.contacts.skin.a.b()) {
                dVar.m.setTextColor(this.G);
            } else if (com.android.contacts.skin.a.c()) {
                dVar.m.setTextColor(this.G);
            }
        }
        if (!b.a.f611a.equals(hVar.f1421a) || !b.a.f612b.equals(hVar.f1422b)) {
            dVar.n.setText(hVar.f1421a);
        } else {
            dVar.n.setText(2131755550);
        }
        if (com.android.contacts.skin.a.b()) {
            if (dVar.n != null) {
                dVar.n.setTextColor(this.G);
            }
        } else if (com.android.contacts.skin.a.c()) {
            dVar.n.setTextColor(this.G);
        }
    }

    public static Uri b(String str) {
        return D ? com.android.contacts.group.f.a(str) ? Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups_emergency_data") : com.android.contacts.group.f.b(str) ? Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, "frequent") : com.android.contacts.group.f.c(str) ? ContactsContract.Contacts.CONTENT_URI : ContactsContract.Data.CONTENT_URI : ContactsContract.Data.CONTENT_URI;
    }

    public static String c(String str) {
        String str2 = null;
        if (!D) {
            str2 = com.android.contacts.group.f.c();
        } else if (!com.android.contacts.group.f.b(str) && com.android.contacts.group.f.c(str)) {
            str2 = com.android.contacts.group.f.d();
        }
        return str2;
    }

    private boolean c(Uri uri) {
        return this.c != null && this.c.equals(uri);
    }

    public final int a() {
        int i2;
        if (this.c != null && this.f1377a != null && this.f1377a.getCount() != 0) {
            int i3 = 0;
            this.f1377a.moveToPosition(-1);
            while (true) {
                if (!this.f1377a.moveToNext()) {
                    i2 = -1;
                    break;
                }
                i2 = i3;
                if (this.c.equals(a(this.f1377a.getLong(3)))) {
                    break;
                }
                i3++;
            }
        } else {
            i2 = -1;
        }
        return i2;
    }

    public final int a(Uri uri) {
        int i2;
        if (this.c != null && this.f1377a != null && this.f1377a.getCount() != 0) {
            this.f1377a.moveToPosition(-1);
            int i3 = 0;
            while (true) {
                if (!this.f1377a.moveToNext()) {
                    i2 = -1;
                    break;
                }
                if (uri.equals(a(!D ? this.f1377a.getLong(3) : this.f1377a.getLong(0)))) {
                    i2 = this.f1377a.isFirst() ? i3 + 1 : i3 - 1;
                } else {
                    i3++;
                }
            }
        } else {
            i2 = -1;
        }
        return i2;
    }

    public final void a(Cursor cursor) {
        long longValue;
        Long valueOf = null;
        this.f1377a = cursor;
        if ((this.c == null && cursor != null && cursor.getCount() > 0) || this.n) {
            Object item = getItem(0);
            if (!D) {
                longValue = (item == null ? null : Long.valueOf(((com.android.contacts.group.h) item).d)).longValue();
            } else {
                if (item != null) {
                    valueOf = Long.valueOf(((com.android.contacts.group.a) item).f1359a);
                }
                longValue = valueOf.longValue();
            }
            this.c = a(longValue);
        }
        if (!D) {
            this.F = true;
        } else if (this.z != null) {
            this.z.clear();
        }
        if (this.s && this.B != null) {
            this.B.clear();
        }
        notifyDataSetChanged();
    }

    public final int b(Uri uri) {
        int i2;
        if (this.c != null && this.f1377a != null && this.f1377a.getCount() != 0) {
            this.f1377a.moveToPosition(-1);
            int i3 = 0;
            while (true) {
                if (!this.f1377a.moveToNext()) {
                    i2 = -1;
                    break;
                }
                i2 = i3;
                if (uri.equals(a(!D ? this.f1377a.getLong(3) : this.f1377a.getLong(0)))) {
                    break;
                }
                i3++;
            }
        } else {
            i2 = -1;
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return !D ? this.f1377a == null ? 1 : this.f1377a.getCount() + 1 : this.f1377a == null ? 0 : this.f1377a.getCount();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        Object obj;
        if (!D) {
            if (this.f1377a == null || this.f1377a.isClosed() || !this.f1377a.moveToPosition(i2)) {
                obj = null;
            } else {
                String string = this.f1377a.getString(0);
                String string2 = this.f1377a.getString(1);
                String string3 = this.f1377a.getString(2);
                long j = this.f1377a.getLong(3);
                String string4 = this.f1377a.getString(4);
                int i3 = this.f1377a.getInt(5);
                boolean z = this.f1377a.getInt(6) == 1;
                String string5 = !D ? null : this.f1377a.getString(7);
                String string6 = this.f1377a.getString(r.f2124b);
                int i4 = i2 - 1;
                boolean z2 = true;
                if (i4 >= 0) {
                    z2 = true;
                    if (this.f1377a.moveToPosition(i4)) {
                        String string7 = this.f1377a.getString(0);
                        String string8 = this.f1377a.getString(1);
                        String string9 = this.f1377a.getString(2);
                        z2 = true;
                        if (string.equals(string7)) {
                            z2 = true;
                            if (string2.equals(string8)) {
                                z2 = true;
                                if (com.google.a.a.c.a(string3, string9)) {
                                    z2 = false;
                                }
                            }
                        }
                    }
                }
                obj = new com.android.contacts.group.h(string, string2, string3, j, string4, z2, i3, z, string5, string6);
            }
        } else if (this.f1377a == null || this.f1377a.isClosed() || !this.f1377a.moveToPosition(i2)) {
            obj = null;
        } else {
            long j2 = this.f1377a.getLong(0);
            String string10 = this.f1377a.getString(1);
            int i5 = this.f1377a.getInt(2);
            boolean z3 = this.f1377a.getInt(3) == 1;
            String string11 = this.f1377a.getString(4);
            String string12 = this.f1377a.getString(5);
            String str = null;
            int columnIndex = this.f1377a.getColumnIndex("global_group_message_ringtone");
            if (columnIndex > 0) {
                str = this.f1377a.getString(columnIndex);
            }
            obj = new com.android.contacts.group.a(j2, string10, i5, z3, string11, string12, str);
        }
        return obj;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:480:0x1649 -> B:444:0x14b1). Please submit an issue!!! */
    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        String str;
        long j;
        d dVar;
        String str2;
        long j2;
        int i3;
        String str3;
        final long j3;
        String str4;
        final long j4;
        if (!D || PhoneCapabilityTester.isUsingTwoPanes(this.o)) {
            if (D || PhoneCapabilityTester.isUsingTwoPanes(this.o)) {
                if (D || !PhoneCapabilityTester.isUsingTwoPanes(this.o)) {
                    Object item = getItem(i2);
                    if (!D) {
                        str = ((com.android.contacts.group.h) item).e;
                        j = ((com.android.contacts.group.h) item).d;
                    } else {
                        str = ((com.android.contacts.group.a) item).f1360b;
                        j = ((com.android.contacts.group.a) item).f1359a;
                    }
                    if (view != null) {
                        dVar = (d) view.getTag();
                    } else {
                        view = D ? this.p.inflate(2131427566, viewGroup, false) : this.p.inflate(2131427567, viewGroup, false);
                        dVar = new d(view);
                        view.setTag(dVar);
                    }
                    dVar.h = j;
                    if (!D) {
                        com.android.contacts.group.h hVar = (com.android.contacts.group.h) item;
                        if (hVar.f) {
                            a(hVar, dVar);
                            dVar.o.setVisibility(0);
                            dVar.f.setVisibility(8);
                            if (i2 == 0) {
                            }
                        } else {
                            dVar.o.setVisibility(8);
                        }
                    }
                    Uri a2 = a(j);
                    dVar.g = a2;
                    String a3 = com.android.contacts.group.f.a(this.o, str);
                    if (dVar.d != null) {
                        dVar.d.setText(a3);
                        if (com.android.contacts.skin.a.b()) {
                            dVar.d.setTextColor(this.H);
                        } else if (com.android.contacts.skin.a.c()) {
                            dVar.d.setTextColor(this.H);
                        }
                    }
                    if (this.f1378b) {
                        view.setActivated(c(a2));
                    }
                    if (D) {
                        try {
                            if (this.w.containsKey(Long.valueOf(j)) && this.z.contains(Long.valueOf(j))) {
                                a(dVar, this.w.get(Long.valueOf(j)));
                            } else if (this.u.contains(Long.valueOf(j)) || this.u.size() >= 128) {
                                Log.i("GroupBrowseListAdapter", j + " is already in queue or queued tasks more than 128 (" + this.u.size() + ")");
                            } else {
                                if (!this.w.containsKey(Long.valueOf(j))) {
                                    a(dVar, (b) null);
                                }
                                new g(this.o, j, dVar, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j));
                            }
                        } catch (Exception e) {
                            Log.i("GroupBrowseListAdapter", e.toString());
                        }
                    }
                    if (this.s) {
                        try {
                            if (this.A.containsKey(Long.valueOf(j)) && this.B.contains(Long.valueOf(j))) {
                                dVar.f1405a.setTag(2131296921, Integer.valueOf(i2));
                                AsusAirViewUtils.setOnHoverListenerForView(dVar.f1405a, this.r, this.A.get(Long.valueOf(j)), 3);
                            } else if (this.C.contains(Long.valueOf(j)) || this.C.size() >= 128) {
                                Log.i("GroupBrowseListAdapter", "Pen " + j + " is already in queue or queued tasks more than 128 (" + this.C.size() + ")");
                            } else {
                                new i(this.o, i2, j, dVar, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j));
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (D && PhoneCapabilityTester.isUsingTwoPanes(this.o)) {
                        if (!dVar.g.equals(this.c)) {
                            dVar.k.setVisibility(0);
                            dVar.l.setVisibility(0);
                        } else {
                            dVar.k.setVisibility(4);
                            dVar.l.setVisibility(8);
                        }
                    }
                    view.findViewById(2131296969).setBackgroundResource(2131165375);
                } else if (i2 == 0) {
                    this.o.getString(2131755454);
                    d dVar2 = null;
                    View view2 = null;
                    if (view != null) {
                        dVar2 = null;
                        view2 = null;
                        if (view.getTag() instanceof d) {
                            dVar2 = (d) view.getTag();
                            view2 = view;
                        }
                    }
                    if (view2 == null) {
                        view2 = this.p.inflate(2131427567, viewGroup, false);
                        dVar2 = new d(view2);
                        view2.setTag(dVar2);
                    }
                    String string = this.o.getString(2131755454);
                    if (GroupBrowseListFragment.c) {
                        view2.setActivated(true);
                    } else {
                        view2.setActivated(false);
                    }
                    if (this.d) {
                        try {
                            new f(this.o).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                        } catch (Exception e3) {
                            Log.i("GroupBrowseListAdapter", e3.toString());
                        }
                    } else {
                        try {
                            this.d = true;
                            dVar2.d.setText(string);
                            dVar2.i.setText(this.o.getResources().getQuantityString(2131623936, this.y.get(1L).f1399a, Integer.valueOf(this.y.get(1L).f1399a)));
                        } catch (Exception e4) {
                            Log.i("GroupBrowseListAdapter", e4.toString());
                        }
                    }
                    view = view2;
                } else {
                    Object item2 = getItem(i2 - 1);
                    String str5 = ((com.android.contacts.group.h) item2).e;
                    long j5 = ((com.android.contacts.group.h) item2).d;
                    int i4 = ((com.android.contacts.group.h) item2).g;
                    View view3 = null;
                    d dVar3 = null;
                    if (view != null) {
                        view3 = null;
                        dVar3 = null;
                        if (view.getTag() instanceof d) {
                            dVar3 = (d) view.getTag();
                            view3 = view;
                        }
                    }
                    if (view3 == null) {
                        view = this.p.inflate(2131427567, viewGroup, false);
                        dVar3 = new d(view);
                        view.setTag(dVar3);
                    } else {
                        view = view3;
                    }
                    dVar3.h = j5;
                    com.android.contacts.group.h hVar2 = (com.android.contacts.group.h) item2;
                    if (hVar2.f) {
                        a(hVar2, dVar3);
                        dVar3.o.setVisibility(0);
                        dVar3.f.setVisibility(8);
                    } else {
                        dVar3.o.setVisibility(8);
                    }
                    Uri a4 = a(j5);
                    dVar3.g = a4;
                    dVar3.d.setText(com.android.contacts.group.f.a(this.o, str5));
                    dVar3.i.setText(this.o.getResources().getQuantityString(2131623936, i4, Integer.valueOf(i4)));
                    if (GroupBrowseListFragment.c) {
                        view.setActivated(false);
                    }
                    if (this.f1378b && !GroupBrowseListFragment.c) {
                        view.setActivated(c(a4));
                    }
                    if (this.s) {
                        try {
                            if (this.A.containsKey(Long.valueOf(j5)) && this.B.contains(Long.valueOf(j5))) {
                                dVar3.f1405a.setTag(2131296921, Integer.valueOf(i2));
                                AsusAirViewUtils.setOnHoverListenerForView(dVar3.f1405a, this.r, this.A.get(Long.valueOf(j5)), 3);
                            } else if (this.C.contains(Long.valueOf(j5)) || this.C.size() >= 128) {
                                Log.i("GroupBrowseListAdapter", "Pen " + j5 + " is already in queue or queued tasks more than 128 (" + this.C.size() + ")");
                            } else {
                                new i(this.o, i2, j5, dVar3, str5).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j5));
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    view.findViewById(2131296969).setBackgroundResource(2131165375);
                }
            } else if (i2 == 0) {
                this.o.getString(2131755454);
                c cVar = null;
                View view4 = null;
                if (view != null) {
                    cVar = null;
                    view4 = null;
                    if (view.getTag() instanceof c) {
                        cVar = (c) view.getTag();
                        view4 = view;
                    }
                }
                if (view4 == null) {
                    view = this.p.inflate(2131427576, viewGroup, false);
                    cVar = new c(view);
                    view.setTag(cVar);
                } else {
                    view = view4;
                }
                String string2 = this.o.getString(2131755454);
                cVar.f1403a.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        Intent intent = new Intent(e.this.o, OdmGroupDetailActivity.class);
                        intent.putExtra("number", ((a) e.this.y.get(1L)).f1399a);
                        ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                    }
                });
                cVar.f1403a.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.contacts.group.e.2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view5) {
                        return false;
                    }
                });
                if (this.d) {
                    new f(this.o).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                } else {
                    try {
                        this.d = true;
                        int i5 = this.y.get(1L).f1399a > 20 ? 20 : this.y.get(1L).f1399a;
                        cVar.n.removeAllViews();
                        if (i5 <= 4) {
                            cVar.e.setVisibility(8);
                            cVar.f.setVisibility(8);
                        } else {
                            cVar.e.setVisibility(0);
                            cVar.f.setVisibility(0);
                        }
                        if (com.android.contacts.skin.a.b()) {
                            if (cVar.d != null) {
                                cVar.d.setTextColor(this.H);
                            }
                            if (cVar.e != null) {
                                cVar.e.setTextColor(this.H);
                            }
                            com.android.contacts.skin.a.a(cVar.f, this.H);
                            cVar.p.setBackgroundColor(this.J);
                        } else if (com.android.contacts.skin.a.c()) {
                            if (cVar.d != null) {
                                cVar.d.setTextColor(this.H);
                            }
                            if (cVar.e != null) {
                                cVar.e.setTextColor(this.H);
                            }
                            com.android.contacts.skin.a.a(cVar.f, this.H);
                        }
                        for (final int i6 = 0; i6 < i5; i6++) {
                            View inflate = this.p.inflate(2131427584, viewGroup, false);
                            ImageView imageView = (ImageView) inflate.findViewById(2131296973);
                            TextView textView = (TextView) inflate.findViewById(2131296972);
                            ImageButton imageButton = (ImageButton) inflate.findViewById(2131296944);
                            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131296863);
                            try {
                                a aVar = this.y.get(1L);
                                if (aVar != null) {
                                    k.d dVar4 = null;
                                    long j6 = this.y.get(1L).f1400b.get(i6).f1407a;
                                    if (j6 == 0) {
                                        dVar4 = new k.d(aVar.f1400b.get(i6).f1408b, null, true);
                                    }
                                    this.v.a(imageView, j6, this.K, dVar4);
                                }
                            } catch (Exception e6) {
                                Log.i("GroupBrowseListAdapter", e6.toString());
                            }
                            imageView.setClickable(true);
                            final Uri lookupUri = ContactsContract.Contacts.getLookupUri(this.y.get(1L).f1400b.get(i6).c, this.y.get(1L).f1400b.get(i6).d);
                            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view5) {
                                    Intent intent = new Intent(e.this.o, ContactDetailActivity.class);
                                    intent.setAction("android.intent.action.VIEW");
                                    intent.setData(lookupUri);
                                    ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                                }
                            });
                            if (this.y.get(1L).f1400b.get(i6).f == 0) {
                                imageButton.setVisibility(8);
                            }
                            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.4
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view5) {
                                    String phoneNumber = PhoneCapabilityTester.getPhoneNumber((Activity) e.this.o, ((a) e.this.y.get(1L)).f1400b.get(i6).c);
                                    if (!TextUtils.isEmpty(phoneNumber)) {
                                        ImplicitIntentsUtil.startActivityOutsideApp(e.this.o, PhoneCapabilityTester.newDialNumberIntent(e.this.o, ((a) e.this.y.get(1L)).f1400b.get(i6).f1408b, phoneNumber, ((a) e.this.y.get(1L)).f1400b.get(i6).c, null, false, 0, -1));
                                    }
                                }
                            });
                            if (textView != null) {
                                try {
                                    textView.setText(this.y.get(1L).f1400b.get(i6).f1408b);
                                    if (com.android.contacts.skin.a.b()) {
                                        textView.setTextColor(this.I);
                                    } else if (com.android.contacts.skin.a.c()) {
                                        textView.setTextColor(this.I);
                                    }
                                } catch (Exception e7) {
                                    Log.i("GroupBrowseListAdapter", e7.toString());
                                }
                            }
                            if (i5 <= 4 && i6 < 3) {
                                linearLayout.setPadding(0, 0, this.h, 0);
                            }
                            cVar.n.addView(inflate);
                        }
                        cVar.d.setText(string2 + " (" + Integer.toString(this.y.get(1L).f1399a) + ")");
                        if (i5 == 0) {
                            cVar.d.setTextSize(2, this.o.getResources().getInteger(2131361823));
                        } else {
                            cVar.d.setTextSize(2, this.o.getResources().getInteger(2131361822));
                        }
                    } catch (Exception e8) {
                        Log.i("GroupBrowseListAdapter", e8.toString());
                    }
                }
            } else {
                Object item3 = getItem(i2 - 1);
                String str6 = ((com.android.contacts.group.h) item3).e;
                long j7 = ((com.android.contacts.group.h) item3).d;
                int i7 = ((com.android.contacts.group.h) item3).g;
                View view5 = null;
                d dVar5 = null;
                if (view != null) {
                    view5 = null;
                    dVar5 = null;
                    if (view.getTag() instanceof d) {
                        dVar5 = (d) view.getTag();
                        view5 = view;
                    }
                }
                if (view5 == null) {
                    view = this.p.inflate(2131427567, viewGroup, false);
                    dVar5 = new d(view);
                    view.setTag(dVar5);
                } else {
                    view = view5;
                }
                dVar5.h = j7;
                com.android.contacts.group.h hVar3 = (com.android.contacts.group.h) item3;
                if (hVar3.f) {
                    a(hVar3, dVar5);
                    dVar5.o.setVisibility(0);
                    dVar5.f.setVisibility(8);
                    if (i2 == 0) {
                    }
                } else {
                    dVar5.o.setVisibility(8);
                }
                Uri a5 = a(j7);
                dVar5.g = a5;
                String a6 = com.android.contacts.group.f.a(this.o, str6);
                if (dVar5.d != null) {
                    dVar5.d.setText(a6);
                    if (com.android.contacts.skin.a.b()) {
                        dVar5.d.setTextColor(this.H);
                        dVar5.q.setBackgroundColor(this.J);
                    } else if (com.android.contacts.skin.a.c()) {
                        dVar5.d.setTextColor(this.H);
                    }
                }
                dVar5.i.setText(this.o.getResources().getQuantityString(2131623936, i7, Integer.valueOf(i7)));
                if (com.android.contacts.skin.a.b()) {
                    dVar5.r.setBackgroundColor(this.G);
                } else if (com.android.contacts.skin.a.c()) {
                    dVar5.i.setTextColor(this.H);
                    dVar5.r.setBackgroundColor(this.G);
                }
                if (this.f1378b) {
                    view.setActivated(c(a5));
                }
                if (this.s) {
                    try {
                        if (this.A.containsKey(Long.valueOf(j7)) && this.B.contains(Long.valueOf(j7))) {
                            dVar5.f1405a.setTag(2131296921, Integer.valueOf(i2));
                            AsusAirViewUtils.setOnHoverListenerForView(dVar5.f1405a, this.r, this.A.get(Long.valueOf(j7)), 3);
                        } else if (this.C.contains(Long.valueOf(j7)) || this.C.size() >= 128) {
                            Log.i("GroupBrowseListAdapter", "Pen " + j7 + " is already in queue or queued tasks more than 128 (" + this.C.size() + ")");
                        } else {
                            new i(this.o, i2, j7, dVar5, str6).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j7));
                        }
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                }
                view.findViewById(2131296969).setBackgroundResource(2131165375);
            }
        } else if (i2 == 0) {
            Object item4 = getItem(i2);
            if (!D) {
                str4 = ((com.android.contacts.group.h) item4).e;
                j4 = ((com.android.contacts.group.h) item4).d;
            } else {
                str4 = ((com.android.contacts.group.a) item4).f1360b;
                j4 = ((com.android.contacts.group.a) item4).f1359a;
            }
            View view6 = null;
            c cVar2 = null;
            if (view != null) {
                view6 = null;
                cVar2 = null;
                if (view.getTag() instanceof c) {
                    cVar2 = (c) view.getTag();
                    view6 = view;
                }
            }
            if (view6 == null) {
                view = this.p.inflate(2131427576, viewGroup, false);
                cVar2 = new c(view);
            } else {
                view = view6;
            }
            view.setTag(cVar2);
            final Uri a7 = a(j4);
            cVar2.h = a7;
            String a8 = com.android.contacts.group.f.a(this.o, str4);
            cVar2.f1403a.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view7) {
                    Intent intent = new Intent(e.this.o, GroupDetailActivity.class);
                    intent.setData(a7);
                    intent.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                    ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                }
            });
            cVar2.f1403a.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.contacts.group.e.5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view7) {
                    return false;
                }
            });
            cVar2.i = j4;
            if (this.d) {
                new h(this.o, j4, cVar2, str4).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j4));
            } else {
                try {
                    this.d = true;
                    int i8 = this.x.get(Long.valueOf(j4)).f1399a > 20 ? 20 : this.x.get(Long.valueOf(j4)).f1399a;
                    cVar2.n.removeAllViews();
                    if (i8 <= 4) {
                        cVar2.e.setVisibility(8);
                        cVar2.f.setVisibility(8);
                    } else {
                        cVar2.e.setVisibility(0);
                        cVar2.f.setVisibility(0);
                    }
                    if (com.android.contacts.skin.a.b()) {
                        if (cVar2.d != null) {
                            cVar2.d.setTextColor(this.H);
                            cVar2.p.setBackgroundColor(this.J);
                        }
                        if (cVar2.e != null) {
                            cVar2.e.setTextColor(this.H);
                        }
                        com.android.contacts.skin.a.a(cVar2.f, this.H);
                        cVar2.p.setBackgroundColor(this.J);
                    } else if (com.android.contacts.skin.a.c()) {
                        if (cVar2.d != null) {
                            cVar2.d.setTextColor(this.H);
                        }
                        if (cVar2.e != null) {
                            cVar2.e.setTextColor(this.H);
                        }
                        com.android.contacts.skin.a.a(cVar2.f, this.H);
                    }
                    for (final int i9 = 0; i9 < i8; i9++) {
                        View inflate2 = this.p.inflate(2131427584, viewGroup, false);
                        ImageView imageView2 = (ImageView) inflate2.findViewById(2131296973);
                        TextView textView2 = (TextView) inflate2.findViewById(2131296972);
                        ImageButton imageButton2 = (ImageButton) inflate2.findViewById(2131296944);
                        LinearLayout linearLayout2 = (LinearLayout) inflate2.findViewById(2131296863);
                        try {
                            a(this.x.get(Long.valueOf(j4)), imageView2, i9, Long.valueOf(this.x.get(Long.valueOf(j4)).f1400b.get(i9).e));
                        } catch (Exception e10) {
                            Log.i("GroupBrowseListAdapter", e10.toString());
                        }
                        imageView2.setClickable(true);
                        final Uri lookupUri2 = ContactsContract.Contacts.getLookupUri(this.x.get(Long.valueOf(j4)).f1400b.get(i9).c, this.x.get(Long.valueOf(j4)).f1400b.get(i9).d);
                        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view7) {
                                Intent intent = new Intent(e.this.o, ContactDetailActivity.class);
                                intent.setAction("android.intent.action.VIEW");
                                intent.setData(lookupUri2);
                                ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                            }
                        });
                        if (this.x.get(Long.valueOf(j4)).f1400b.get(i9).f == 0) {
                            imageButton2.setVisibility(8);
                        }
                        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view7) {
                                if (!TextUtils.isEmpty(PhoneCapabilityTester.getPhoneNumber((Activity) e.this.o, ((a) e.this.x.get(Long.valueOf(j4))).f1400b.get(i9).c))) {
                                    PhoneNumberInteraction.a((TransactionSafeActivity) e.this.o, ContactsContract.Contacts.getLookupUri(((a) e.this.x.get(Long.valueOf(j4))).f1400b.get(i9).c, ((a) e.this.x.get(Long.valueOf(j4))).f1400b.get(i9).d), CallUtil.getCallOrigin(((Activity) e.this.o).getIntent()), ((a) e.this.x.get(Long.valueOf(j4))).f1400b.get(i9).f1408b);
                                }
                            }
                        });
                        if (textView2 != null) {
                            try {
                                textView2.setText(this.x.get(Long.valueOf(j4)).f1400b.get(i9).f1408b);
                                if (com.android.contacts.skin.a.b()) {
                                    textView2.setTextColor(this.I);
                                } else if (com.android.contacts.skin.a.c()) {
                                    textView2.setTextColor(this.I);
                                }
                            } catch (Exception e11) {
                                Log.i("GroupBrowseListAdapter", e11.toString());
                            }
                        }
                        if (i8 <= 4 && i9 < 3) {
                            linearLayout2.setPadding(0, 0, this.h, 0);
                        }
                        cVar2.n.addView(inflate2);
                    }
                    cVar2.d.setText(a8 + " (" + Integer.toString(this.x.get(Long.valueOf(j4)).f1400b.size()) + ")");
                    if (i8 == 0) {
                        cVar2.d.setTextSize(2, this.o.getResources().getInteger(2131361823));
                    } else {
                        cVar2.d.setTextSize(2, this.o.getResources().getInteger(2131361822));
                    }
                } catch (Exception e12) {
                    Log.i("GroupBrowseListAdapter", e12.toString());
                }
            }
        } else if (i2 == 1) {
            Object item5 = getItem(i2);
            if (!D) {
                str3 = ((com.android.contacts.group.h) item5).e;
                j3 = ((com.android.contacts.group.h) item5).d;
            } else {
                str3 = ((com.android.contacts.group.a) item5).f1360b;
                j3 = ((com.android.contacts.group.a) item5).f1359a;
            }
            View view7 = null;
            c cVar3 = null;
            if (view != null) {
                view7 = null;
                cVar3 = null;
                if (view.getTag() instanceof c) {
                    cVar3 = (c) view.getTag();
                    view7 = view;
                }
            }
            if (view7 == null) {
                view = this.p.inflate(2131427576, viewGroup, false);
                cVar3 = new c(view);
            } else {
                view = view7;
            }
            view.setTag(cVar3);
            final Uri a9 = a(j3);
            cVar3.h = a9;
            String a10 = com.android.contacts.group.f.a(this.o, str3);
            cVar3.f1403a.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view8) {
                    Intent intent = new Intent(e.this.o, GroupDetailActivity.class);
                    intent.setData(a9);
                    intent.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                    ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                }
            });
            cVar3.f1403a.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.contacts.group.e.9
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view8) {
                    return false;
                }
            });
            cVar3.i = j3;
            if (this.e) {
                new h(this.o, j3, cVar3, str3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j3));
            } else {
                try {
                    this.e = true;
                    int i10 = this.x.get(Long.valueOf(j3)).f1399a > 20 ? 20 : this.x.get(Long.valueOf(j3)).f1399a;
                    cVar3.n.removeAllViews();
                    if (i10 <= 4) {
                        cVar3.e.setVisibility(8);
                        cVar3.f.setVisibility(8);
                    } else {
                        cVar3.e.setVisibility(0);
                        cVar3.f.setVisibility(0);
                    }
                    if (com.android.contacts.skin.a.b()) {
                        if (cVar3.d != null) {
                            cVar3.d.setTextColor(this.H);
                        }
                        if (cVar3.e != null) {
                            cVar3.e.setTextColor(this.H);
                        }
                        com.android.contacts.skin.a.a(cVar3.f, this.H);
                        cVar3.p.setBackgroundColor(this.J);
                    } else if (com.android.contacts.skin.a.c()) {
                        if (cVar3.d != null) {
                            cVar3.d.setTextColor(this.H);
                        }
                        if (cVar3.e != null) {
                            cVar3.e.setTextColor(this.H);
                        }
                        com.android.contacts.skin.a.a(cVar3.f, this.H);
                    }
                    for (final int i11 = 0; i11 < i10; i11++) {
                        View inflate3 = this.p.inflate(2131427584, viewGroup, false);
                        ImageView imageView3 = (ImageView) inflate3.findViewById(2131296973);
                        TextView textView3 = (TextView) inflate3.findViewById(2131296972);
                        ImageButton imageButton3 = (ImageButton) inflate3.findViewById(2131296944);
                        LinearLayout linearLayout3 = (LinearLayout) inflate3.findViewById(2131296863);
                        try {
                            a(this.x.get(Long.valueOf(j3)), imageView3, i11, Long.valueOf(this.x.get(Long.valueOf(j3)).f1400b.get(i11).e));
                        } catch (Exception e13) {
                            Log.i("GroupBrowseListAdapter", e13.toString());
                        }
                        imageView3.setClickable(true);
                        final Uri lookupUri3 = ContactsContract.Contacts.getLookupUri(this.x.get(Long.valueOf(j3)).f1400b.get(i11).c, this.x.get(Long.valueOf(j3)).f1400b.get(i11).d);
                        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view8) {
                                Intent intent = new Intent(e.this.o, ContactDetailActivity.class);
                                intent.setAction("android.intent.action.VIEW");
                                intent.setData(lookupUri3);
                                ImplicitIntentsUtil.startActivityInApp(e.this.o, intent);
                            }
                        });
                        if (this.x.get(Long.valueOf(j3)).f1400b.get(i11).f == 0) {
                            imageButton3.setVisibility(8);
                        }
                        imageButton3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.e.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view8) {
                                if (!TextUtils.isEmpty(PhoneCapabilityTester.getPhoneNumber((Activity) e.this.o, ((a) e.this.x.get(Long.valueOf(j3))).f1400b.get(i11).c))) {
                                    PhoneNumberInteraction.a((TransactionSafeActivity) e.this.o, ContactsContract.Contacts.getLookupUri(((a) e.this.x.get(Long.valueOf(j3))).f1400b.get(i11).c, ((a) e.this.x.get(Long.valueOf(j3))).f1400b.get(i11).d), CallUtil.getCallOrigin(((Activity) e.this.o).getIntent()), ((a) e.this.x.get(Long.valueOf(j3))).f1400b.get(i11).f1408b);
                                }
                            }
                        });
                        if (textView3 != null) {
                            try {
                                textView3.setText(this.x.get(Long.valueOf(j3)).f1400b.get(i11).f1408b);
                                if (com.android.contacts.skin.a.b()) {
                                    textView3.setTextColor(this.I);
                                } else if (com.android.contacts.skin.a.c()) {
                                    textView3.setTextColor(this.I);
                                }
                            } catch (Exception e14) {
                                Log.i("GroupBrowseListAdapter", e14.toString());
                            }
                        }
                        if (i10 <= 4 && i11 < 3) {
                            linearLayout3.setPadding(0, 0, this.h, 0);
                        }
                        cVar3.n.addView(inflate3);
                    }
                    cVar3.d.setText(a10 + " (" + Integer.toString(this.x.get(Long.valueOf(j3)).f1399a) + ")");
                    if (i10 == 0) {
                        cVar3.d.setTextSize(2, this.o.getResources().getInteger(2131361823));
                    } else {
                        cVar3.d.setTextSize(2, this.o.getResources().getInteger(2131361822));
                    }
                } catch (Exception e15) {
                    Log.i("GroupBrowseListAdapter", e15.toString());
                }
            }
        } else {
            Object item6 = getItem(i2);
            if (!D) {
                str2 = ((com.android.contacts.group.h) item6).e;
                j2 = ((com.android.contacts.group.h) item6).d;
                i3 = ((com.android.contacts.group.h) item6).g;
            } else {
                str2 = ((com.android.contacts.group.a) item6).f1360b;
                j2 = ((com.android.contacts.group.a) item6).f1359a;
                i3 = ((com.android.contacts.group.a) item6).c;
            }
            d dVar6 = null;
            View view8 = null;
            if (view != null) {
                dVar6 = null;
                view8 = null;
                if (view.getTag() instanceof d) {
                    dVar6 = (d) view.getTag();
                    view8 = view;
                }
            }
            view = view8;
            if (view8 == null) {
                view = this.p.inflate(2131427581, viewGroup, false);
                dVar6 = new d(view);
            }
            view.setTag(dVar6);
            dVar6.h = j2;
            dVar6.g = a(j2);
            String a11 = com.android.contacts.group.f.a(this.o, str2);
            if (dVar6.d != null) {
                dVar6.d.setText(a11 + " (" + Integer.toString(i3) + ")");
                if (com.android.contacts.skin.a.b()) {
                    dVar6.d.setTextColor(this.H);
                    dVar6.q.setBackgroundColor(this.J);
                } else if (com.android.contacts.skin.a.c()) {
                    dVar6.d.setTextColor(this.H);
                }
            }
        }
        return view;
    }
}

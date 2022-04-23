package com.android.contacts.calllog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.Toast;
import com.android.contacts.ae;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.calllog.f;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.ExpirableCache;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.z;
import com.asus.a.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e.class */
public class e extends com.android.a.b.b implements ViewTreeObserver.OnPreDrawListener, d.a, f.a {
    private static final LinkedList<b> S = new LinkedList<>();
    public static ExpirableCache<String, o> y;
    public com.android.contacts.calllog.g A;
    public t B;
    final com.android.contacts.c.a D;
    private final p E;
    private final a F;
    private final c G;
    private View K;
    private int L;
    private com.android.contacts.airview.f Q;
    private boolean R;
    private k T;
    private final com.android.contacts.k U;
    private Resources ad;
    public boolean e;
    public boolean f;
    public final Context g;
    public SharedPreferences s;
    public Map<Long, Boolean> d = new HashMap();
    private ViewTreeObserver H = null;
    private boolean I = false;
    private int J = -1;
    public d h = null;
    private String M = null;
    public boolean i = false;
    public boolean j = false;
    private boolean N = false;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q = false;
    private boolean O = true;
    public f r = null;
    public boolean t = false;
    public ae.b u = null;
    public AbstractC0028e v = null;
    public String w = null;
    public String x = null;
    private String P = null;
    public boolean z = true;
    private volatile boolean W = false;
    private Map<String, Bitmap> X = new HashMap();
    private Set<String> Y = new HashSet();
    private Map<String, Boolean> Z = new HashMap();
    private Set<String> aa = new HashSet();
    public j C = null;
    private final View.OnClickListener ab = new View.OnClickListener() { // from class: com.android.contacts.calllog.e.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(5, e.this.g, "Dialer", "Call Log", "Call Log: press item", null);
            if (e.this.g instanceof Activity) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, (Activity) e.this.g, "Make a Call", true);
            }
            Log.d("CallLogAdapter", "make call from callLog");
            s sVar = (s) view.getTag();
            if (sVar == null) {
                Toast.makeText(e.this.g, e.this.g.getResources().getString(2131755636), 0).show();
            } else if (com.android.contacts.ipcall.b.b(e.this.g)) {
                ImplicitIntentsUtil.startActivityOutsideApp(e.this.g, new Intent("android.intent.action.DIAL", sVar.a(e.this.g).getData()), false);
            } else {
                boolean c2 = e.this.r.c(sVar);
                Log.d("CallLogAdapter", "isSucess = " + c2);
                if (c2 && e.this.G != null) {
                    e.this.G.c();
                }
            }
        }
    };
    private Handler ac = new Handler() { // from class: com.android.contacts.calllog.e.2
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (!e.this.n) {
                        e.this.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 2:
                    e.this.g();
                    return;
                default:
                    return;
            }
        }
    };
    private final com.android.contacts.calllog.f V = new com.android.contacts.calllog.f(this);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$a.class */
    public interface a {
        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f690a;

        /* renamed from: b  reason: collision with root package name */
        public final String f691b;
        public final o c;
        public final int d;

        public b(String str, String str2, o oVar, int i) {
            this.f690a = str;
            this.f691b = str2;
            this.c = oVar;
            this.d = i;
        }

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (obj == null) {
                    z = false;
                } else if (!(obj instanceof b)) {
                    z = false;
                } else {
                    b bVar = (b) obj;
                    if (!TextUtils.equals(this.f690a, bVar.f690a)) {
                        z = false;
                    } else if (!TextUtils.equals(this.f691b, bVar.f691b)) {
                        z = false;
                    } else if (!com.google.a.a.c.a(this.c, bVar.c)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = this.c == null ? 0 : this.c.hashCode();
            int hashCode2 = this.f691b == null ? 0 : this.f691b.hashCode();
            if (this.f690a != null) {
                i = this.f690a.hashCode();
            }
            return ((hashCode2 + ((hashCode + 31) * 31)) * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$c.class */
    public interface c {
        void c();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$d.class */
    public interface d {
        int b(int i);
    }

    /* renamed from: com.android.contacts.calllog.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$e.class */
    public interface AbstractC0028e {
        boolean a(int i, View view, o oVar, String str, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$f.class */
    public interface f {
        boolean c(s sVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$g.class */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final String f692a;

        /* renamed from: b  reason: collision with root package name */
        public final String f693b;

        public g(String str, String str2) {
            this.f692a = str;
            this.f693b = str2;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == null) {
                z = false;
            } else {
                z = false;
                if (obj instanceof g) {
                    g gVar = (g) obj;
                    z = false;
                    if (TextUtils.equals(this.f692a, gVar.f692a)) {
                        z = false;
                        if (TextUtils.equals(this.f693b, gVar.f693b)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = this.f692a == null ? 0 : this.f692a.hashCode();
            if (this.f693b != null) {
                i = this.f693b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$h.class */
    public final class h implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f695b;
        private View c;
        private com.android.contacts.calllog.h d;

        h(int i, View view, com.android.contacts.calllog.h hVar) {
            this.f695b = i;
            this.c = view;
            this.d = hVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            s sVar = (s) view.getTag();
            if (sVar == null) {
                return;
            }
            if (e.this.C != null) {
                e.this.C.a(sVar.a(e.this.g));
                if (this.c instanceof AbsListView) {
                    ((AbsListView) this.c).setItemChecked(this.f695b, true);
                    e.this.h.b(this.f695b);
                    e.this.L = this.f695b;
                    return;
                }
                return;
            }
            e.this.h.b(this.f695b);
            ImplicitIntentsUtil.startActivityInAppIfPossible(e.this.g, sVar.a(e.this.g));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$i.class */
    public final class i implements View.OnLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f697b;
        private View c;
        private o d;
        private String e;
        private long f;
        private int g;

        i(int i, View view, o oVar, String str, long j, int i2) {
            this.f697b = i;
            this.c = view;
            this.d = oVar;
            this.e = str;
            this.f = j;
            this.g = i2;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            e.this.v.a(this.f697b, this.c, this.d, this.e, this.f);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$j.class */
    public interface j {
        void a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$k.class */
    public static final class k extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f698a = false;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<Context> f699b;
        WeakReference<Handler> c;
        WeakReference<p> d;

        public k(Context context, Handler handler, p pVar) {
            super("CallLogAdapter.QueryThread");
            this.f699b = new WeakReference<>(context);
            this.c = new WeakReference<>(handler);
            this.d = new WeakReference<>(pVar);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            b bVar;
            boolean z = false;
            while (!this.f698a) {
                synchronized (e.S) {
                    bVar = !e.S.isEmpty() ? (b) e.S.removeFirst() : null;
                }
                if (bVar == null) {
                    if (z) {
                        if (this.c.get() != null) {
                            this.c.get().sendEmptyMessage(1);
                        }
                        z = false;
                    }
                    try {
                        synchronized (e.S) {
                            e.S.wait(1000L);
                        }
                    } catch (InterruptedException e) {
                    }
                } else if (!(this.f699b.get() == null || this.d.get() == null)) {
                    z = e.a(this.d.get(), this.f699b.get(), bVar.f690a, bVar.f691b, bVar.c, bVar.d) | z;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/e$l.class */
    public final class l extends AsyncTask<a.c, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private com.android.contacts.calllog.h f701b;
        private a.c c;

        l(com.android.contacts.calllog.h hVar) {
            this.f701b = hVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(a.c[] cVarArr) {
            Bitmap bitmap;
            a.c[] cVarArr2 = cVarArr;
            if (e.this.g != null) {
                this.c = cVarArr2[0];
                bitmap = com.asus.a.a.a(e.this.g, this.c);
                e.this.aa.remove(this.c.f2355a);
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
                if (this.f701b != null) {
                    e.this.X.put(this.c.f2355a, bitmap2);
                }
                e.this.notifyDataSetChanged();
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public e(Context context, a aVar, p pVar, c cVar) {
        super(context);
        this.R = false;
        this.g = context;
        this.F = aVar;
        this.G = cVar;
        this.E = pVar;
        y = ExpirableCache.create(100);
        Resources resources = this.g.getResources();
        n nVar = new n(resources);
        this.U = com.android.contacts.k.a(this.g);
        this.B = new t(this.g);
        this.A = new com.android.contacts.calllog.g(new z(context, resources, nVar, this.B), this.B, resources);
        this.ad = context.getResources();
        this.D = new com.android.contacts.c.a(this.g.getContentResolver());
        this.R = AsusAirViewUtils.hasPenFeature(this.g);
        if (this.R) {
            this.Q = new com.android.contacts.airview.f(context);
        }
        this.s = PreferenceManager.getDefaultSharedPreferences(this.g);
        Log.d("CallLogAdapter", "Ecc List0 = " + com.asus.contacts.a.a("ril.ecclist"));
        Log.d("CallLogAdapter", "Ecc List1 = " + com.asus.contacts.a.a("ril.ecclist1"));
        Log.d("CallLogAdapter", "Ecc List = " + com.asus.contacts.a.a("ro.ril.ecclist"));
    }

    private void a(String str, String str2, o oVar, boolean z, int i2) {
        b bVar = new b(str, str2, oVar, i2);
        synchronized (S) {
            if (!S.contains(bVar)) {
                S.add(bVar);
                S.notifyAll();
            }
        }
        if (z) {
            g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0270  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ boolean a(com.android.contacts.calllog.p r9, android.content.Context r10, java.lang.String r11, java.lang.String r12, com.android.contacts.calllog.o r13, int r14) {
        /*
            Method dump skipped, instructions count: 1075
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.e.a(com.android.contacts.calllog.p, android.content.Context, java.lang.String, java.lang.String, com.android.contacts.calllog.o, int):boolean");
    }

    private static int[] a(Cursor cursor, int i2) {
        int position = cursor.getPosition();
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = cursor.getInt(4);
            cursor.moveToNext();
        }
        cursor.moveToPosition(position);
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.airview.c[] a(android.database.Cursor r8, int r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.e.a(android.database.Cursor, int, java.lang.String):com.android.contacts.airview.c[]");
    }

    public static void e() {
        y.clearCache();
        S.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        synchronized (this) {
            if (!this.W && this.T == null) {
                this.T = new k(this.g, this.ac, this.E);
                this.T.setPriority(1);
                this.T.start();
            }
        }
    }

    @Override // com.android.a.b.b
    public View a(Context context, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        View inflate = this.q ? layoutInflater.inflate(2131427426, viewGroup, false) : layoutInflater.inflate(2131427424, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a() {
        this.F.b();
    }

    @Override // com.android.a.b.b, com.android.contacts.calllog.f.a
    public final void a(int i2, int i3, boolean z) {
        super.a(i2, i3, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(Cursor cursor) {
        this.V.a(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(View view, Cursor cursor) {
        b(view, cursor, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(View view, Cursor cursor, int i2) {
        b(view, cursor, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(View view, View view2) {
        com.android.contacts.calllog.h a2 = com.android.contacts.calllog.h.a(view);
        this.K = view2;
        if (!this.t) {
            a2.f706b.setOnClickListener(this.ab);
        }
        view.setTag(a2);
    }

    @Override // com.android.contacts.asuscallerid.d.a
    public final void a(d.c cVar) {
        if ("3".equals(cVar.d) && cVar.a() != null && ((Integer) cVar.a().getTag(2131296500)).intValue() == cVar.f606b) {
            if (!this.n) {
                notifyDataSetChanged();
            } else {
                this.o = true;
            }
        }
    }

    @Override // com.android.a.b.b
    public View b(Context context, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        View inflate = this.q ? layoutInflater.inflate(2131427426, viewGroup, false) : layoutInflater.inflate(2131427424, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    public final void b() {
        this.Y.clear();
        this.aa.clear();
        this.Z.clear();
        this.X.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void b(View view, Cursor cursor) {
        b(view, cursor, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0796  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x08ac  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0937  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0a8d  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0b85  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0b9c  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0bda  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0bf8  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x12f0  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x14de  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x14ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.view.View r26, android.database.Cursor r27, final int r28) {
        /*
            Method dump skipped, instructions count: 5476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.e.b(android.view.View, android.database.Cursor, int):void");
    }

    @Override // com.android.a.b.b
    public View c(Context context, ViewGroup viewGroup) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        View inflate = this.q ? layoutInflater.inflate(2131427426, viewGroup, false) : layoutInflater.inflate(2131427424, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    public final s c(int i2) {
        Cursor cursor = (Cursor) getItem(i2);
        return cursor != null ? s.a(this, cursor.getPosition(), cursor.getLong(0), a(i2) ? b(i2) : 1) : null;
    }

    public final void c() {
        synchronized (this) {
            this.ac.removeMessages(2);
            if (this.T != null) {
                this.T.f698a = true;
                this.T.interrupt();
                this.T = null;
            }
        }
    }

    public final void d() {
        if (this.H != null && this.H.isAlive()) {
            this.H.removeOnPreDrawListener(this);
        }
        this.H = null;
    }

    @Override // com.android.a.b.b, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        this.J = i2;
        if (i2 == ((AbsListView) viewGroup).getCheckedItemPosition()) {
            this.I = true;
        } else {
            this.I = false;
        }
        return super.getView(i2, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.z ? false : super.isEmpty();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        d();
        if (this.T != null) {
            return true;
        }
        this.ac.sendEmptyMessageDelayed(2, 1000L);
        return true;
    }
}

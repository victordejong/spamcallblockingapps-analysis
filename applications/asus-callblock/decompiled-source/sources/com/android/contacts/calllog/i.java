package com.android.contacts.calllog;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.CallLog;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.calllog.f;
import com.android.contacts.ezmode.h;
import com.android.contacts.k;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ExpirableCache;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.util.UriUtils;
import com.android.contacts.z;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i.class */
public class i extends com.android.a.b.b implements ViewTreeObserver.OnPreDrawListener, d.a, f.a {
    private static final String l = i.class.getSimpleName();
    private e A;
    private final g B;
    private final k C;
    private t D;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private final Context r;
    private final p s;
    private final a t;
    private View w;
    private boolean x;
    private boolean y;
    public Map<Integer, Integer> d = new HashMap();
    private SimpleDateFormat m = new SimpleDateFormat("M/dd,E");
    String e = null;
    String f = null;
    f g = null;
    private ViewTreeObserver u = null;
    private int v = -1;
    ArrayList<Integer> h = new ArrayList<>();
    boolean i = false;
    boolean k = true;
    private volatile boolean F = false;
    private Handler G = new Handler() { // from class: com.android.contacts.calllog.i.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    i.this.notifyDataSetChanged();
                    return;
                case 2:
                    i.this.d();
                    return;
                default:
                    return;
            }
        }
    };
    ExpirableCache<String, o> j = ExpirableCache.create(100);
    private final LinkedList<b> z = new LinkedList<>();
    private final com.android.contacts.calllog.f E = new com.android.contacts.calllog.f(this);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$a.class */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f708a;

        /* renamed from: b  reason: collision with root package name */
        public final String f709b;
        public final o c;
        public final int d;

        public b(String str, String str2, o oVar, int i) {
            this.f708a = str;
            this.f709b = str2;
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
                    if (!TextUtils.equals(this.f708a, bVar.f708a)) {
                        z = false;
                    } else if (!TextUtils.equals(this.f709b, bVar.f709b)) {
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
            int hashCode2 = this.f709b == null ? 0 : this.f709b.hashCode();
            if (this.f708a != null) {
                i = this.f708a.hashCode();
            }
            return ((hashCode2 + ((hashCode + 31) * 31)) * 31) + i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f710a;

        /* renamed from: b  reason: collision with root package name */
        public final String f711b;

        public c(String str, String str2) {
            this.f710a = str;
            this.f711b = str2;
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == null) {
                z = false;
            } else {
                z = false;
                if (obj instanceof c) {
                    c cVar = (c) obj;
                    z = false;
                    if (TextUtils.equals(this.f710a, cVar.f710a)) {
                        z = false;
                        if (TextUtils.equals(this.f711b, cVar.f711b)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = this.f710a == null ? 0 : this.f710a.hashCode();
            if (this.f711b != null) {
                i = this.f711b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$d.class */
    public final class d implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f713b;
        private h c;

        d(int i, h hVar) {
            this.f713b = i;
            this.c = hVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (i.this.d.get(Integer.valueOf(this.f713b)) == null || i.this.d.get(Integer.valueOf(this.f713b)).intValue() == 0) {
                i.this.d.put(Integer.valueOf(this.f713b), 1);
                this.c.m.setChecked(true);
            } else if (i.this.d.get(Integer.valueOf(this.f713b)).intValue() == 1) {
                i.this.d.put(Integer.valueOf(this.f713b), 0);
                this.c.m.setChecked(false);
            }
            i.this.g.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$e.class */
    public final class e extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f714a = false;

        public e() {
            super("CallLogAdapter.QueryThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean z = false;
            while (!this.f714a) {
                b bVar = null;
                synchronized (i.this.z) {
                    if (!i.this.z.isEmpty()) {
                        bVar = (b) i.this.z.removeFirst();
                    }
                }
                if (bVar != null) {
                    z = i.a(i.this, bVar.f708a, bVar.f709b, bVar.c, bVar.d) | z;
                } else {
                    if (z) {
                        i.this.G.sendEmptyMessage(1);
                        z = false;
                    }
                    try {
                        synchronized (i.this.z) {
                            i.this.z.wait(1000L);
                        }
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/i$f.class */
    public interface f {
        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, a aVar, p pVar) {
        super(context);
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = context;
        this.t = aVar;
        this.s = pVar;
        Resources resources = this.r.getResources();
        n nVar = new n(resources);
        this.C = k.a(this.r);
        this.D = new t(this.r);
        this.B = new g(new z(context, resources, nVar, this.D), this.D, resources);
        this.n = com.asus.a.a.h(this.r);
        this.p = h.a(this.r);
        this.o = com.asus.a.a.d(this.r);
        if (this.o) {
            com.android.contacts.asuscallerid.d.a().a(this);
        }
        this.x = PhoneCapabilityTester.isSimActive(this.r, 1);
        this.y = PhoneCapabilityTester.isSimActive(this.r, 2);
        this.q = com.android.contacts.simcardmanage.b.a(this.r);
    }

    private void a(View view, View view2) {
        h a2 = h.a(view);
        this.w = view2;
        view.setTag(a2);
    }

    private void a(String str, String str2, o oVar, boolean z, int i) {
        b bVar = new b(str, str2, oVar, i);
        synchronized (this.z) {
            if (!this.z.contains(bVar)) {
                this.z.add(bVar);
                this.z.notifyAll();
            }
        }
        if (z) {
            d();
        }
    }

    static /* synthetic */ boolean a(i iVar, String str, String str2, o oVar, int i) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        o a2 = iVar.s.a(str, str2, i);
        if (a2 == null) {
            a2 = iVar.s.a(str, str2, 0);
        }
        if (a2 != null) {
            String str3 = String.valueOf(i) + "&" + String.valueOf(new c(str, str2));
            o possiblyExpired = iVar.j.getPossiblyExpired(str3);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                z3 = (possiblyExpired != null && possiblyExpired != o.w && possiblyExpired.f != null && !a2.equals(possiblyExpired)) || (!a2.equals(possiblyExpired) && (a2.t || a2.u));
            } else {
                z3 = possiblyExpired != null && !a2.equals(possiblyExpired);
            }
            iVar.j.put(str3, a2);
            ContentValues contentValues = new ContentValues();
            if (oVar != null) {
                if (!TextUtils.equals(a2.f738b, oVar.f738b)) {
                    contentValues.put(ContactDetailCallogActivity.EXTRA_NAME, a2.f738b);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (a2.c != oVar.c) {
                    contentValues.put("numbertype", Integer.valueOf(a2.c));
                    z2 = true;
                }
                if (!TextUtils.equals(a2.d, oVar.d)) {
                    contentValues.put("numberlabel", a2.d);
                    z2 = true;
                }
                if (!UriUtils.areEqual(a2.f737a, oVar.f737a)) {
                    contentValues.put(PhotoSelectionActivity.LOOKUP_URI, UriUtils.uriToString(a2.f737a));
                    z2 = true;
                }
                if (!TextUtils.equals(a2.g, oVar.g)) {
                    contentValues.put("normalized_number", a2.g);
                    z2 = true;
                }
                if (!TextUtils.equals(a2.e, oVar.e)) {
                    contentValues.put("matched_number", a2.e);
                    z2 = true;
                }
                if (a2.h != oVar.h) {
                    contentValues.put("photo_id", Long.valueOf(a2.h));
                    z2 = true;
                }
                boolean z4 = z2;
                if (CompatUtils.isMarshmallowCompatible()) {
                    Uri nullForNonContactsUri = UriUtils.nullForNonContactsUri(a2.i);
                    z4 = z2;
                    if (!UriUtils.areEqual(nullForNonContactsUri, oVar.i)) {
                        contentValues.put(PhotoSelectionActivity.PHOTO_URI, UriUtils.uriToString(nullForNonContactsUri));
                        z4 = true;
                    }
                }
                if (!TextUtils.equals(a2.f, oVar.f)) {
                    contentValues.put("formatted_number", a2.f);
                    z4 = true;
                }
                z = z4;
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    z = z4;
                    if (a2.j != oVar.j) {
                        contentValues.put(SpeedDialList.Columns.ISSIM, Integer.valueOf(a2.j));
                        z = true;
                    }
                }
            } else {
                contentValues.put(ContactDetailCallogActivity.EXTRA_NAME, a2.f738b);
                contentValues.put("numbertype", Integer.valueOf(a2.c));
                contentValues.put("numberlabel", a2.d);
                contentValues.put(PhotoSelectionActivity.LOOKUP_URI, UriUtils.uriToString(a2.f737a));
                contentValues.put("matched_number", a2.e);
                contentValues.put("normalized_number", a2.g);
                contentValues.put("photo_id", Long.valueOf(a2.h));
                if (CompatUtils.isMarshmallowCompatible()) {
                    contentValues.put(PhotoSelectionActivity.PHOTO_URI, UriUtils.uriToString(UriUtils.nullForNonContactsUri(a2.i)));
                }
                contentValues.put("formatted_number", a2.f);
                z = true;
            }
            if (z) {
                Uri uri = PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL;
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (oVar.l != 0) {
                        if (str2 == null) {
                            iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso IS NULL AND block = ? ", new String[]{str, String.valueOf(oVar.l)});
                        } else {
                            iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso = ? AND block = ? ", new String[]{str, str2, String.valueOf(oVar.l)});
                        }
                    } else if (str2 == null) {
                        iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso IS NULL AND block IS NULL ", new String[]{str});
                    } else {
                        iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso = ? AND block IS NULL ", new String[]{str, str2});
                    }
                } else if (oVar.l != 0) {
                    if (str2 == null) {
                        iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso IS NULL", new String[]{str});
                    } else {
                        iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso = ?", new String[]{str, str2});
                    }
                } else if (str2 == null) {
                    iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso IS NULL", new String[]{str});
                } else {
                    iVar.r.getContentResolver().update(uri, contentValues, "number = ? AND countryiso = ?", new String[]{str, str2});
                }
            }
        }
        return z3;
    }

    private static int[] a(Cursor cursor, int i) {
        int position = cursor.getPosition();
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = cursor.getInt(4);
            cursor.moveToNext();
        }
        cursor.moveToPosition(position);
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0ac3  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0b1e  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0b3b  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0b71  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0ba5  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.view.View r21, android.database.Cursor r22, int r23) {
        /*
            Method dump skipped, instructions count: 3035
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.i.b(android.view.View, android.database.Cursor, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        synchronized (this) {
            if (!this.F && this.A == null) {
                this.A = new e();
                this.A.setPriority(1);
                this.A.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final View a(Context context, ViewGroup viewGroup) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427428, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a() {
        this.t.a();
    }

    @Override // com.android.a.b.b, com.android.contacts.calllog.f.a
    public final void a(int i, int i2, boolean z) {
        super.a(i, i2, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(Cursor cursor) {
        this.E.a(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(View view, Cursor cursor) {
        b(view, cursor, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void a(View view, Cursor cursor, int i) {
        b(view, cursor, i);
    }

    @Override // com.android.contacts.asuscallerid.d.a
    public final void a(d.c cVar) {
        if ("8".equals(cVar.d) && cVar.a() != null && ((Integer) cVar.a().getTag(2131296500)).intValue() == cVar.f606b) {
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final View b(Context context, ViewGroup viewGroup) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427428, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    public final void b() {
        synchronized (this) {
            this.G.removeMessages(2);
            if (this.A != null) {
                this.A.f714a = true;
                this.A.interrupt();
                this.A = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final void b(View view, Cursor cursor) {
        b(view, cursor, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.b
    public final View c(Context context, ViewGroup viewGroup) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427428, viewGroup, false);
        a(inflate, viewGroup);
        return inflate;
    }

    public final s c(int i) {
        getItem(i);
        b(i);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.u != null && this.u.isAlive()) {
            this.u.removeOnPreDrawListener(this);
        }
        this.u = null;
    }

    @Override // com.android.a.b.b, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        this.v = i;
        return super.getView(i, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.k ? false : super.isEmpty();
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        c();
        if (this.A != null) {
            return true;
        }
        this.G.sendEmptyMessageDelayed(2, 1000L);
        return true;
    }
}

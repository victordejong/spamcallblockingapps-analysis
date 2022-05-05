package com.android.contacts.link;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.k;
import com.android.contacts.link.LinkedContactsActivity;
import com.asus.updatesdk.BuildConfig;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/c.class */
public class c extends BaseAdapter {
    private static final String e = c.class.getSimpleName();
    public View.OnClickListener c;
    private Context f;
    private LayoutInflater g;
    private LoaderManager h;
    private com.android.contacts.model.a j;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<a> f1654a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    ArrayList<LinkedContactsActivity.a> f1655b = new ArrayList<>();
    private boolean i = false;
    private Set<Long> k = new HashSet();
    public View.OnClickListener d = new View.OnClickListener() { // from class: com.android.contacts.link.c.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Toast.makeText(c.this.f, c.this.f.getResources().getString(2131755748), 0).show();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/c$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f1657a;

        /* renamed from: b  reason: collision with root package name */
        Long f1658b;
        Long c;
        Long d;
        String e;
        String f;
        String g;
        String h;
        boolean i = false;
        Long j;
        private String l;

        public a(boolean z, Long l, Long l2, String str, String str2, String str3, String str4, String str5) {
            this.f1657a = z;
            this.f1658b = l;
            this.c = l2;
            this.e = str;
            this.l = str2;
            this.f = str3;
            this.g = str4;
            this.h = str5;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/c$b.class */
    final class b {

        /* renamed from: a  reason: collision with root package name */
        public final View f1659a;

        /* renamed from: b  reason: collision with root package name */
        public final ImageView f1660b;
        public final TextView c;
        public final View d;
        public final View e;
        public final ImageView f;
        public final TextView g;
        public final TextView h;
        public final View i;
        public final ImageView j;
        int k;

        public b(View view) {
            this.f1659a = view.findViewById(2131296926);
            this.f1660b = (ImageView) view.findViewById(2131297014);
            this.c = (TextView) view.findViewById(2131297013);
            this.d = view.findViewById(2131296757);
            this.e = view.findViewById(2131297219);
            this.f = (ImageView) view.findViewById(2131297220);
            this.g = (TextView) view.findViewById(d.b.g);
            this.h = (TextView) view.findViewById(2131296263);
            this.i = view.findViewById(2131297342);
            this.j = (ImageView) view.findViewById(2131297343);
        }
    }

    /* renamed from: com.android.contacts.link.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/c$c.class */
    final class AsyncTaskC0047c extends AsyncTask<Long, Integer, Void> {

        /* renamed from: b  reason: collision with root package name */
        private b f1662b;
        private a c;
        private int d;
        private boolean e;

        public AsyncTaskC0047c(b bVar, a aVar, boolean z) {
            this.f1662b = bVar;
            this.c = aVar;
            this.e = z;
            this.d = this.f1662b.k;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Long[] lArr) {
            if (this.d != this.f1662b.k || this.c == null) {
                return null;
            }
            long a2 = c.this.a(this.c.f1658b.longValue());
            a aVar = this.c;
            aVar.d = Long.valueOf(a2);
            aVar.i = true;
            if (!this.c.f1657a) {
                return null;
            }
            long b2 = c.this.b(this.c.c.longValue());
            this.c.j = Long.valueOf(b2);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            c.this.k.remove(Long.valueOf(this.c.f1658b.longValue()));
            if (this.d == this.f1662b.k && this.c != null && this.f1662b != null) {
                if (this.e) {
                    c.this.a(this.f1662b.f1660b, this.c, true);
                }
                c.this.a(this.f1662b.f, this.c, false);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            c.this.k.add(Long.valueOf(this.c.f1658b.longValue()));
        }
    }

    public c(Context context) {
        this.f = context;
        this.g = LayoutInflater.from(context);
        this.h = ((Activity) this.f).getLoaderManager();
        this.j = com.android.contacts.model.a.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public a getItem(int i) {
        return (this.f1654a == null || i >= this.f1654a.size()) ? null : this.f1654a.get(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype='vnd.android.cursor.item/photo') AND raw_contact_id="
            r1.<init>(r2)
            r1 = r8
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r10 = r0
            r0 = r7
            android.content.Context r0 = r0.f     // Catch: all -> 0x004f
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x004f
            android.net.Uri r1 = android.provider.ContactsContract.Data.CONTENT_URI     // Catch: all -> 0x004f
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x004f
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_id"
            r3[r4] = r5     // Catch: all -> 0x004f
            r3 = r10
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x004f
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x006d
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0065
            if (r0 == 0) goto L_0x006d
            r0 = r10
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0065
            r8 = r0
        L_0x0043:
            r0 = r10
            if (r0 == 0) goto L_0x004d
            r0 = r10
            r0.close()
        L_0x004d:
            r0 = r8
            return r0
        L_0x004f:
            r10 = move-exception
            r0 = 0
            r11 = r0
            r0 = r10
            r12 = r0
        L_0x0056:
            r0 = r11
            if (r0 == 0) goto L_0x0062
            r0 = r11
            r0.close()
        L_0x0062:
            r0 = r12
            throw r0
        L_0x0065:
            r12 = move-exception
            r0 = r10
            r11 = r0
            goto L_0x0056
        L_0x006d:
            r0 = 0
            r8 = r0
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.c.a(long):long");
    }

    public final void a(ImageView imageView, a aVar, boolean z) {
        long longValue;
        if (aVar != null) {
            k a2 = k.a(this.f);
            if (z) {
                longValue = Long.valueOf(aVar.j == null ? 0L : aVar.j.longValue()).longValue();
            } else {
                longValue = Long.valueOf(aVar.d == null ? 0L : aVar.d.longValue()).longValue();
            }
            if (longValue != 0) {
                a2.a(imageView, longValue, false, (k.d) null);
                return;
            }
            Uri parse = "Sim card".equals(aVar.f) && "asus.local.simcard".equals(aVar.g) ? Uri.parse("content://sim/true") : null;
            a2.a(imageView, parse, imageView.getWidth(), false, true, parse == null ? new k.d(aVar.e, null, true) : null);
        }
    }

    public final void a(ArrayList<LinkedContactsActivity.a> arrayList, ArrayList<a> arrayList2) {
        if (arrayList != null) {
            if (this.f1655b != null) {
                this.f1655b.clear();
            } else {
                this.f1655b = new ArrayList<>();
            }
            this.f1655b.addAll(arrayList);
        }
        if (arrayList2 != null) {
            if (this.f1654a != null) {
                this.f1654a.clear();
            } else {
                this.f1654a = new ArrayList<>();
            }
            this.f1654a.addAll(arrayList2);
        }
        notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(long r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x004e
            r10 = r0
            r0 = r10
            java.lang.String r1 = "_id="
            r0.<init>(r1)     // Catch: all -> 0x004e
            r0 = r10
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x004e
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x004e
            r10 = r0
            r0 = r7
            android.content.Context r0 = r0.f     // Catch: all -> 0x004e
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x004e
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI     // Catch: all -> 0x004e
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x004e
            r3 = r2
            r4 = 0
            java.lang.String r5 = "photo_id"
            r3[r4] = r5     // Catch: all -> 0x004e
            r3 = r10
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x004e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x006c
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0064
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0064
            r8 = r0
        L_0x0042:
            r0 = r10
            if (r0 == 0) goto L_0x004c
            r0 = r10
            r0.close()
        L_0x004c:
            r0 = r8
            return r0
        L_0x004e:
            r10 = move-exception
            r0 = 0
            r11 = r0
            r0 = r10
            r12 = r0
        L_0x0055:
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r11
            r0.close()
        L_0x0061:
            r0 = r12
            throw r0
        L_0x0064:
            r12 = move-exception
            r0 = r10
            r11 = r0
            goto L_0x0055
        L_0x006c:
            r0 = 0
            r8 = r0
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.link.c.b(long):long");
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1654a == null ? 0 : this.f1654a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate;
        b bVar;
        boolean z;
        long j;
        String str;
        a a2 = getItem(i);
        if (view != null) {
            bVar = (b) view.getTag();
            inflate = view;
        } else {
            inflate = this.g.inflate(2131427598, viewGroup, false);
            bVar = new b(inflate);
            inflate.setTag(bVar);
        }
        bVar.k = i;
        boolean z2 = a2.f1657a;
        if (bVar.f1659a != null) {
            if (z2) {
                bVar.f1659a.setVisibility(0);
                bVar.d.setVisibility(0);
            } else {
                bVar.f1659a.setVisibility(8);
                bVar.d.setVisibility(8);
            }
        }
        if (a2.f1657a) {
            long longValue = a2.c.longValue();
            if (this.f1655b != null) {
                Iterator<LinkedContactsActivity.a> it = this.f1655b.iterator();
                while (it.hasNext()) {
                    LinkedContactsActivity.a next = it.next();
                    if (next.f1632a == longValue) {
                        j = next.f1633b;
                        break;
                    }
                }
            }
            j = -1;
            if (j != -1) {
                Iterator<a> it2 = this.f1654a.iterator();
                while (it2.hasNext()) {
                    a next2 = it2.next();
                    if (next2.f1658b.longValue() == j) {
                        str = next2.e;
                        break;
                    }
                }
            }
            str = null;
            TextView textView = bVar.c;
            String str2 = str;
            if (str == null) {
                str2 = BuildConfig.FLAVOR;
            }
            textView.setText(str2);
        }
        bVar.g.setText(a2.e);
        bVar.h.setText(this.j.a(a2.g, a2.h).a(this.f));
        long longValue2 = a2.c.longValue();
        long longValue3 = a2.f1658b.longValue();
        if (this.f1655b != null) {
            Iterator<LinkedContactsActivity.a> it3 = this.f1655b.iterator();
            while (it3.hasNext()) {
                LinkedContactsActivity.a next3 = it3.next();
                if (next3.f1632a == longValue2 && next3.f1633b == longValue3) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            bVar.j.setImageResource(2131165328);
            bVar.i.setOnClickListener(this.d);
            bVar.i.setTag(a2);
        } else {
            bVar.j.setImageResource(2131165329);
            bVar.i.setOnClickListener(this.c);
            bVar.i.setTag(a2);
        }
        if (a2.i) {
            if (a2.f1657a) {
                a(bVar.f1660b, a2, true);
            }
            a(bVar.f, a2, false);
        } else if (!this.k.contains(Long.valueOf(a2.f1658b.longValue()))) {
            try {
                new AsyncTaskC0047c(bVar, a2, a2.f1657a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            Log.i(e, a2.f1658b.longValue() + " is loading");
        }
        inflate.setOnClickListener(null);
        return inflate;
    }
}

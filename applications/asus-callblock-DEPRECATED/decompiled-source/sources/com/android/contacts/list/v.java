package com.android.contacts.list;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.TextView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.group.f;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/v.class */
public class v implements PopupWindow.OnDismissListener {
    public static int m = 0;

    /* renamed from: a  reason: collision with root package name */
    public final String f1881a;

    /* renamed from: b  reason: collision with root package name */
    public Context f1882b;
    public PopupWindow c;
    public ListView d;
    public b e;
    public ArrayList<a> f;
    public d g;
    public View h;
    public Long i;
    public int j;
    public c k;
    public Map<Long, Integer> l;
    public Long n;
    public AdapterView.OnItemClickListener o;
    private ArrayList<String> p;
    private String q;
    private boolean r;
    private int s;
    private final String[] t;
    private final String u;
    private long v;
    private String w;
    private int x;
    private int y;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/v$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f1884a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        public String f1885b = BuildConfig.FLAVOR;
        public int c = -1;
        public long d = 0;

        public a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/v$b.class */
    public final class b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<a> f1886a;
        private Context c;

        public b(Context context, ArrayList<a> arrayList) {
            this.c = context;
            this.f1886a = arrayList;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1886a.size() + 1;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return this.f1886a.get(i - 1);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            boolean z = true;
            View inflate = ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(2131427359, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(16908308);
            TextView textView2 = (TextView) inflate.findViewById(2131296612);
            RadioButton radioButton = (RadioButton) inflate.findViewById(2131297211);
            if (i == v.m) {
                textView.setText(2131756095);
                textView2.setText(v.this.j == -1 ? BuildConfig.FLAVOR : "(" + v.this.j + ")");
                radioButton.setChecked(v.this.i.longValue() == 0);
            } else {
                a aVar = (a) getItem(i);
                if (aVar.f1885b == null) {
                    textView.setText(BuildConfig.FLAVOR);
                } else {
                    textView.setText(aVar.f1885b);
                }
                textView2.setText(aVar.c == -1 ? BuildConfig.FLAVOR : "(" + aVar.c + ")");
                if (v.this.i.longValue() != aVar.d) {
                    z = false;
                }
                radioButton.setChecked(z);
            }
            return inflate;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/v$c.class */
    public final class c extends AsyncQueryHandler {

        /* renamed from: b  reason: collision with root package name */
        private final int f1889b = 0;

        public c(ContentResolver contentResolver) {
            super(contentResolver);
        }

        /* JADX WARN: Type inference failed for: r0v30, types: [com.android.contacts.list.v$c$1] */
        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            Log.d(v.this.f1881a, "onQueryComplete ");
            super.onQueryComplete(i, obj, cursor);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        do {
                            long j = cursor.getLong(0);
                            String string = cursor.getString(1);
                            if (!"Frequent".equals(string)) {
                                v.a(v.this, f.a(v.this.f1882b, string), j);
                            }
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            if (v.this.f1882b != null) {
                int dimensionPixelSize = v.this.f1882b.getResources().getDimensionPixelSize(2131099796);
                if (!(v.this.c == null || v.this.h == null || v.this.f1882b == null || v.this.h.getWindowToken() == null)) {
                    v.this.c.showAsDropDown(v.this.h, -dimensionPixelSize, -dimensionPixelSize);
                }
            }
            new AsyncTask<Void, Void, Boolean>() { // from class: com.android.contacts.list.v.c.1
                @Override // android.os.AsyncTask
                protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
                    boolean valueOf;
                    v.i(v.this);
                    Iterator it = v.this.f.iterator();
                    boolean z = false;
                    while (it.hasNext()) {
                        a aVar = (a) it.next();
                        if (!v.this.c.isShowing()) {
                            break;
                        }
                        aVar.c = v.this.a(aVar);
                        if (!v.this.l.containsKey(Long.valueOf(aVar.d)) || ((Integer) v.this.l.get(Long.valueOf(aVar.d))).intValue() != aVar.c) {
                            v.this.l.put(Long.valueOf(aVar.d), Integer.valueOf(aVar.c));
                            z = true;
                        }
                    }
                    if (!v.this.c.isShowing()) {
                        valueOf = false;
                    } else {
                        v.this.j = v.this.a();
                        if (!v.this.l.containsKey(v.this.n) || ((Integer) v.this.l.get(v.this.n)).intValue() != v.this.j) {
                            v.this.l.put(v.this.n, Integer.valueOf(v.this.j));
                            z = true;
                        }
                        valueOf = Boolean.valueOf(z);
                    }
                    return valueOf;
                }

                @Override // android.os.AsyncTask
                protected final /* synthetic */ void onPostExecute(Boolean bool) {
                    Boolean bool2 = bool;
                    if (v.this.c.isShowing() && bool2.booleanValue()) {
                        b bVar = v.this.e;
                        bVar.f1886a = v.this.f;
                        bVar.notifyDataSetChanged();
                    }
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/v$d.class */
    public interface d {
        void a(long j, String str, int i, Map<Long, Integer> map);
    }

    public v(int i) {
        this.f1881a = v.class.getName();
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = new ArrayList<>();
        this.g = null;
        this.h = null;
        this.j = -1;
        this.l = new HashMap();
        this.p = new ArrayList<>();
        this.r = false;
        this.s = -1;
        this.t = new String[]{"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE};
        this.u = "Frequent";
        this.n = 0L;
        this.v = m;
        this.w = BuildConfig.FLAVOR;
        this.x = 0;
        this.y = 0;
        this.o = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.list.v.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 == v.m) {
                    v.this.v = v.m;
                    v.this.w = v.this.f1882b.getResources().getString(2131756095);
                    v.this.x = v.this.a();
                } else {
                    a aVar = (a) v.this.f.get(i2 - 1);
                    v.this.v = aVar.d;
                    v.this.w = aVar.f1885b;
                    v.this.x = aVar.c;
                }
                v.this.c.dismiss();
            }
        };
        this.y = i;
    }

    public v(int i, boolean z, int i2) {
        this.f1881a = v.class.getName();
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = new ArrayList<>();
        this.g = null;
        this.h = null;
        this.j = -1;
        this.l = new HashMap();
        this.p = new ArrayList<>();
        this.r = false;
        this.s = -1;
        this.t = new String[]{"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE};
        this.u = "Frequent";
        this.n = 0L;
        this.v = m;
        this.w = BuildConfig.FLAVOR;
        this.x = 0;
        this.y = 0;
        this.o = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.list.v.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i22, long j) {
                if (i22 == v.m) {
                    v.this.v = v.m;
                    v.this.w = v.this.f1882b.getResources().getString(2131756095);
                    v.this.x = v.this.a();
                } else {
                    a aVar = (a) v.this.f.get(i22 - 1);
                    v.this.v = aVar.d;
                    v.this.w = aVar.f1885b;
                    v.this.x = aVar.c;
                }
                v.this.c.dismiss();
            }
        };
        this.y = i;
        this.r = z;
        this.s = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a() {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.v.a():int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b3 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.android.contacts.list.v.a r8) {
        /*
            Method dump skipped, instructions count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.v.a(com.android.contacts.list.v$a):int");
    }

    static /* synthetic */ void a(v vVar, String str, long j) {
        int size = vVar.f.size();
        a aVar = new a();
        aVar.f1884a = String.valueOf(size + 1);
        aVar.f1885b = str;
        aVar.d = j;
        if (vVar.l.get(Long.valueOf(j)) != null) {
            aVar.c = vVar.l.get(Long.valueOf(j)).intValue();
        }
        vVar.f.add(aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void i(com.android.contacts.list.v r7) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.v.i(com.android.contacts.list.v):void");
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.g.a(this.v, this.w, this.x, this.l);
    }
}

package com.android.contacts.group;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.FavoriteEditorActivity;
import com.android.contacts.activities.GroupDetailActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.b;
import com.android.contacts.c.b;
import com.android.contacts.editor.g;
import com.android.contacts.group.d;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.k;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.list.w;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.o;
import com.android.contacts.q;
import com.android.contacts.s;
import com.android.contacts.u;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.AsusCopySingleContactAyncTask;
import com.android.contacts.util.BitmapUtil;
import com.android.contacts.util.FavoriteDataUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.b.h;
import com.asus.contacts.materialui.FloatingActionButton;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment.class */
public class GroupDetailFragment extends Fragment implements SharedPreferences.OnSharedPreferenceChangeListener, AbsListView.OnScrollListener, b.a, g.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private String D;
    private String E;
    private boolean G;
    private boolean H;
    private com.android.contacts.simcardmanage.d I;
    private String J;
    private boolean K;
    private c L;
    private w.a N;
    private ImageView P;
    private View Q;
    private PopupWindow U;
    private TextView V;
    private TextView W;
    private com.android.contacts.d Z;

    /* renamed from: a  reason: collision with root package name */
    public d f1325a;
    private CursorLoader aa;
    private SharedPreferences ad;
    private FloatingActionButton af;

    /* renamed from: b  reason: collision with root package name */
    Uri f1326b;
    public long c;
    public boolean d;
    public ProgressDialog e;
    public boolean f;
    private Context k;
    private View l;
    private ViewGroup m;
    private View n;
    private TextView o;
    private TextView p;
    private ListView q;
    private View r;
    private w s;
    private k t;
    private com.android.contacts.model.a u;
    private String v;
    private String w;
    private String x;
    private boolean y;
    private boolean z;
    public static final Uri g = Uri.parse("content://blocklist/blocklist");
    private static final String[] M = {"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup"};
    private boolean F = false;
    private boolean O = true;
    private ArrayList<AccountWithDataSet> R = new ArrayList<>();
    Map<AccountWithDataSet, ArrayList<String>> h = new HashMap();
    Map<AccountWithDataSet, ArrayList<String>> i = new HashMap();
    private final int S = 0;
    private int T = 0;
    private View.OnClickListener X = new a(this, (byte) 0);
    private AdapterView.OnItemClickListener Y = new b(this, (byte) 0);
    private AccountWithDataSet ab = null;
    private ArrayList<String> ac = null;
    private ArrayList<String> ae = null;
    boolean j = false;
    private boolean ag = false;
    private boolean ah = false;
    private final ContactTileView.a ai = new ContactTileView.a() { // from class: com.android.contacts.group.GroupDetailFragment.5
        @Override // com.android.contacts.list.ContactTileView.a
        public final void a() {
            Log.w("GroupDetailFragment", "unexpected invocation of onCallNumberDirectly()");
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri) {
            GroupDetailFragment.this.f1325a.onContactSelected(uri);
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri, String str) {
            GroupDetailFragment.this.f1325a.onContactSelected(uri);
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(w.a aVar) {
            GroupDetailFragment.this.N = aVar;
            GroupDetailFragment.this.q.setTag(aVar);
            GroupDetailFragment.this.q.showContextMenu();
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int b() {
            return GroupDetailFragment.this.getView().getWidth() / GroupDetailFragment.this.s.d;
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int c() {
            return 1;
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> aj = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupDetailFragment.6
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return new u(GroupDetailFragment.this.k, GroupDetailFragment.this.f1326b);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            boolean z = true;
            Cursor cursor2 = cursor;
            cursor2.moveToPosition(-1);
            if (cursor2.moveToNext()) {
                if (cursor2.getInt(8) != 1) {
                    z = false;
                }
                if (!z) {
                    GroupDetailFragment.a(GroupDetailFragment.this, cursor2);
                    GroupDetailFragment.n(GroupDetailFragment.this);
                    return;
                }
            }
            GroupDetailFragment.b(GroupDetailFragment.this, -1);
            GroupDetailFragment.this.a((String) null);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> ak = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupDetailFragment.7
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            TextView textView = (TextView) GroupDetailFragment.this.r.findViewById(16908308);
            TextView textView2 = (TextView) GroupDetailFragment.this.r.findViewById(16908309);
            TextView textView3 = (TextView) GroupDetailFragment.this.r.findViewById(2131297389);
            if (GroupDetailFragment.this.r != null) {
                textView.setVisibility(0);
                textView.setTextColor(-16777216);
                textView2.setVisibility(0);
                textView2.setTextColor(-16777216);
                textView3.setVisibility(8);
            }
            return s.b(GroupDetailFragment.this.k, GroupDetailFragment.this.c);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            if (cursor2 != null) {
                GroupDetailFragment.b(GroupDetailFragment.this, cursor2.getCount());
                GroupDetailFragment.this.s.a(cursor2);
                GroupDetailFragment.this.q.setEmptyView(GroupDetailFragment.this.r);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> al = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupDetailFragment.9
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return new com.android.contacts.e(GroupDetailFragment.this.k, GroupDetailFragment.this.f1326b, GroupDetailFragment.this.F);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            if (cursor2 == null || !cursor2.moveToFirst()) {
                GroupDetailFragment.b(GroupDetailFragment.this, -1);
                GroupDetailFragment.this.a((String) null);
                GroupDetailFragment.this.ah = false;
                return;
            }
            GroupDetailFragment.b(GroupDetailFragment.this, cursor2);
            GroupDetailFragment.t(GroupDetailFragment.this);
            GroupDetailFragment.this.a(false, false);
            GroupDetailFragment.this.L = new c(GroupDetailFragment.this.getActivity(), cursor2);
            GroupDetailFragment.this.L.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> am = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupDetailFragment.10
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            int i2 = com.android.contacts.group.f.a(GroupDetailFragment.this.v) ? 0 : com.android.contacts.group.f.b(GroupDetailFragment.this.v) ? 1 : 2;
            if (!com.android.contacts.group.f.d(GroupDetailFragment.this.v) || GroupDetailFragment.this.r == null) {
                ((TextView) GroupDetailFragment.this.r.findViewById(16908308)).setVisibility(0);
                ((TextView) GroupDetailFragment.this.r.findViewById(16908309)).setVisibility(0);
                ((TextView) GroupDetailFragment.this.r.findViewById(2131297389)).setVisibility(8);
            } else {
                ((TextView) GroupDetailFragment.this.r.findViewById(16908308)).setVisibility(8);
                ((TextView) GroupDetailFragment.this.r.findViewById(16908309)).setVisibility(8);
                ((TextView) GroupDetailFragment.this.r.findViewById(2131297389)).setVisibility(0);
            }
            GroupDetailFragment.this.Z = com.android.contacts.d.b(GroupDetailFragment.this.k, GroupDetailFragment.this.c, i2);
            if (GroupDetailFragment.this.ab != null) {
                if (!com.android.contacts.group.f.b(GroupDetailFragment.this.v)) {
                    GroupDetailFragment.this.Z.a(GroupDetailFragment.this.ab);
                } else if (GroupDetailFragment.this.ac != null) {
                    GroupDetailFragment.this.Z.a(GroupDetailFragment.this.ac);
                }
            }
            return GroupDetailFragment.this.Z;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            int count = cursor2.getCount();
            Log.d("GroupDetailFragment", "Loader group detail count:" + count);
            GroupDetailFragment.b(GroupDetailFragment.this, count);
            GroupDetailFragment.this.s.a(cursor2);
            GroupDetailFragment.this.q.setEmptyView(GroupDetailFragment.this.r);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> an = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupDetailFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            Iterator it;
            String str = new String(BuildConfig.FLAVOR);
            String str2 = str;
            if (GroupDetailFragment.this.ab != null) {
                str2 = str;
                if (com.android.contacts.group.f.c(GroupDetailFragment.this.v)) {
                    str2 = str;
                    if (GroupDetailFragment.this.ae != null) {
                        str2 = str;
                        while (GroupDetailFragment.this.ae.iterator().hasNext()) {
                            str2 = str2 + ((String) it.next()) + ", ";
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            str2 = "_id IN (" + str2.substring(0, str2.lastIndexOf(", ")) + ")";
                        }
                    }
                }
            }
            GroupDetailFragment.this.aa = o.e(GroupDetailFragment.this.getActivity());
            if (!TextUtils.isEmpty(str2)) {
                GroupDetailFragment.this.aa.setSelection(str2);
                GroupDetailFragment.this.aa.setSelectionArgs(null);
            }
            if (GroupDetailFragment.this.r != null) {
                ((TextView) GroupDetailFragment.this.r.findViewById(16908308)).setVisibility(0);
                ((TextView) GroupDetailFragment.this.r.findViewById(16908309)).setVisibility(0);
                ((TextView) GroupDetailFragment.this.r.findViewById(2131297389)).setVisibility(8);
            }
            return GroupDetailFragment.this.aa;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            GroupDetailFragment.b(GroupDetailFragment.this, cursor2 == null ? -1 : cursor2.getCount());
            GroupDetailFragment.this.s.a(cursor2);
            GroupDetailFragment.this.q.setEmptyView(GroupDetailFragment.this.r);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$a.class */
    private final class a implements View.OnClickListener {
        private a() {
        }

        /* synthetic */ a(GroupDetailFragment groupDetailFragment, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean equals;
            boolean equals2;
            boolean equals3;
            if (GroupDetailFragment.this.k == null) {
                return;
            }
            if (GroupDetailFragment.this.ag) {
                GroupDetailFragment.this.U = new PopupWindow(GroupDetailFragment.this.k);
                Resources resources = GroupDetailFragment.this.getResources();
                View inflate = ((LayoutInflater) GroupDetailFragment.this.k.getSystemService("layout_inflater")).inflate(2131427446, (ViewGroup) null, false);
                String[] strArr = new String[GroupDetailFragment.this.R.size() + 1];
                String[] strArr2 = new String[GroupDetailFragment.this.R.size() + 1];
                Boolean[] boolArr = new Boolean[GroupDetailFragment.this.R.size() + 1];
                strArr[0] = GroupDetailFragment.this.k.getString(2131755675);
                strArr2[0] = BuildConfig.FLAVOR;
                boolArr[0] = Boolean.valueOf(GroupDetailFragment.this.T == 0);
                if (GroupDetailFragment.this.R.size() > 0) {
                    Iterator it = GroupDetailFragment.this.R.iterator();
                    int i = 1;
                    while (it.hasNext()) {
                        AccountWithDataSet accountWithDataSet = (AccountWithDataSet) it.next();
                        com.android.contacts.model.account.a a2 = GroupDetailFragment.this.u.a(accountWithDataSet.type, accountWithDataSet.f1998a);
                        strArr[i] = (String) a2.a(GroupDetailFragment.this.k);
                        if (a2.g) {
                            strArr2[i] = BuildConfig.FLAVOR;
                        } else {
                            if (PhoneCapabilityTester.IsAsusDevice()) {
                                equals = b.a.d.equals(accountWithDataSet.type);
                                equals2 = "asus.local.simcard2".equals(accountWithDataSet.type);
                                equals3 = b.a.c.equals(accountWithDataSet.name);
                            } else {
                                equals = b.a.c.equals(accountWithDataSet.name);
                                equals2 = "SIM2".equals(accountWithDataSet.name);
                                equals3 = b.a.d.equals(accountWithDataSet.type);
                            }
                            if (equals3) {
                                String str = null;
                                if (com.android.contacts.simcardmanage.b.a(GroupDetailFragment.this.k)) {
                                    if (equals) {
                                        str = PhoneCapabilityTester.getSimSlotName(GroupDetailFragment.this.getActivity(), 1);
                                    } else {
                                        str = null;
                                        if (equals2) {
                                            str = PhoneCapabilityTester.getSimSlotName(GroupDetailFragment.this.getActivity(), 2);
                                        }
                                    }
                                }
                                String str2 = str;
                                if (str == null) {
                                    str2 = "SIM card";
                                }
                                strArr2[i] = str2;
                            } else {
                                strArr2[i] = accountWithDataSet.name;
                            }
                        }
                        boolArr[i] = Boolean.valueOf(GroupDetailFragment.this.T == i);
                        i++;
                    }
                }
                ArrayList arrayList = new ArrayList();
                arrayList.clear();
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("accountType", strArr[i2]);
                    hashMap.put("accountName", strArr2[i2]);
                    hashMap.put("checked", boolArr[i2]);
                    arrayList.add(hashMap);
                }
                ListView listView = (ListView) inflate.findViewById(2131296856);
                listView.setAdapter((ListAdapter) new SimpleAdapter(GroupDetailFragment.this.k, arrayList, 2131427379, new String[]{"accountType", "accountName", "checked"}, new int[]{16908308, 16908309, 2131296264}));
                listView.setChoiceMode(1);
                listView.setOnItemClickListener(GroupDetailFragment.this.Y);
                GroupDetailFragment.this.U.setHeight(-2);
                GroupDetailFragment.this.U.setWidth(-2);
                inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                Drawable drawable = resources.getDrawable(2131165482);
                int dimensionPixelSize = GroupDetailFragment.this.k.getResources().getDimensionPixelSize(2131099796);
                int dimensionPixelSize2 = GroupDetailFragment.this.k.getResources().getDimensionPixelSize(2131099752);
                GroupDetailFragment.this.U.setBackgroundDrawable(drawable);
                GroupDetailFragment.this.U.setWidth(resources.getDimensionPixelSize(2131099725));
                GroupDetailFragment.this.U.setContentView(inflate);
                GroupDetailFragment.this.U.setOutsideTouchable(true);
                GroupDetailFragment.this.U.setFocusable(true);
                GroupDetailFragment.this.U.setTouchable(true);
                GroupDetailFragment.this.U.showAsDropDown(view, dimensionPixelSize2, -dimensionPixelSize);
                return;
            }
            Log.d("GroupDetailFragment", "InitAccountFilterTask is not finished");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$b.class */
    private final class b implements AdapterView.OnItemClickListener {
        private b() {
        }

        /* synthetic */ b(GroupDetailFragment groupDetailFragment, byte b2) {
            this();
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            GroupDetailFragment.a(GroupDetailFragment.this, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$c.class */
    final class c extends AsyncTask<Long, Integer, Boolean> {

        /* renamed from: b  reason: collision with root package name */
        private Context f1341b;
        private Cursor c;

        public c(Context context, Cursor cursor) {
            this.f1341b = context;
            this.c = cursor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:180:0x051f A[Catch: all -> 0x058e, TRY_ENTER, TryCatch #6 {all -> 0x058e, blocks: (B:166:0x049d, B:169:0x04a7, B:171:0x04b2, B:180:0x051f, B:187:0x0535, B:189:0x0554, B:192:0x0564, B:194:0x056d, B:202:0x0584, B:204:0x058d), top: B:219:0x049d }] */
        /* JADX WARN: Removed duplicated region for block: B:189:0x0554 A[Catch: all -> 0x058e, TryCatch #6 {all -> 0x058e, blocks: (B:166:0x049d, B:169:0x04a7, B:171:0x04b2, B:180:0x051f, B:187:0x0535, B:189:0x0554, B:192:0x0564, B:194:0x056d, B:202:0x0584, B:204:0x058d), top: B:219:0x049d }] */
        /* JADX WARN: Removed duplicated region for block: B:222:0x014e A[EDGE_INSN: B:222:0x014e->B:55:0x014e ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0144  */
        /* JADX WARN: Type inference failed for: r13v2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Boolean a() {
            /*
                Method dump skipped, instructions count: 1457
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.GroupDetailFragment.c.a():java.lang.Boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Long[] lArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (bool2 != null) {
                if (GroupDetailFragment.this.L != null) {
                    GroupDetailFragment.this.L = null;
                }
                if (bool2.booleanValue()) {
                    GroupDetailFragment.a(GroupDetailFragment.this, 0);
                }
                GroupDetailFragment.this.ag = true;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            GroupDetailFragment.this.ag = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$d.class */
    public interface d {
        void onAccountTypeUpdated(String str, String str2);

        void onAddFavoritesRequested(long[] jArr);

        void onAddRequested(Uri uri);

        void onContactSelected(Uri uri);

        void onDeleteGroupRequested(Uri uri, long j, boolean z);

        void onEditRequested(Uri uri, String str);

        void onGroupTitleUpdated(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$e.class */
    public final class e extends AsyncTask<Void, Integer, Void> {
        public e() {
        }

        private Void a() {
            Cursor query = GroupDetailFragment.this.getActivity().getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id=?", new String[]{String.valueOf(GroupDetailFragment.this.N.k)}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        do {
                            long j = query.getLong(0);
                            if (!GroupDetailFragment.this.z) {
                                GroupDetailFragment.this.getActivity().getContentResolver().delete(ContactsContract.Data.CONTENT_URI, "raw_contact_id=? AND mimetype=? AND data1=?", new String[]{String.valueOf(j), "vnd.android.cursor.item/group_membership", String.valueOf(GroupDetailFragment.this.c)});
                            } else if (com.android.contacts.group.f.b(GroupDetailFragment.this.v)) {
                                GroupDetailFragment.this.getActivity().getContentResolver().delete(Uri.withAppendedPath(ContactsContract.DataUsageFeedback.DELETE_USAGE_URI, Long.toString(GroupDetailFragment.this.N.k)), null, null);
                            } else {
                                GroupDetailFragment.this.getActivity().getContentResolver().delete(ContactsContract.Data.CONTENT_URI, "raw_contact_id=? AND mimetype=? AND data2=?", new String[]{String.valueOf(j), "vnd.android.cursor.item/group_membership", String.valueOf(GroupDetailFragment.this.c)});
                            }
                        } while (query.moveToNext());
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupDetailFragment$f.class */
    final class f extends AsyncTask<Integer, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        String f1343a;

        /* renamed from: b  reason: collision with root package name */
        long f1344b;
        Uri c;
        Context d;

        public f(Context context, String str, long j, Uri uri) {
            this.f1344b = 0L;
            this.d = context;
            this.f1343a = str;
            this.f1344b = j;
            this.c = uri;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            if (this.f1344b == 0) {
                Log.e("GroupDetailFragment", "Invalid arguments for setGroupRingtone");
                return null;
            }
            com.android.contacts.group.d.a(this.d, this.f1343a, this.c, this.f1344b, numArr2[0].intValue());
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            if (GroupDetailFragment.this.e != null) {
                GroupDetailFragment.this.e.cancel();
                GroupDetailFragment.this.e.dismiss();
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            if (GroupDetailFragment.this.e != null && !GroupDetailFragment.this.e.isShowing()) {
                GroupDetailFragment.this.e.show();
            }
        }
    }

    private void a() {
        boolean equals;
        boolean equals2;
        boolean equals3;
        if (this.W != null && this.V != null) {
            if (this.ab != null) {
                com.android.contacts.model.account.a a2 = this.u.a(this.ab.type, this.ab.f1998a);
                this.W.setText(a2.a(this.k));
                if (a2.g) {
                    this.V.setVisibility(8);
                    return;
                }
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    equals = b.a.d.equals(this.ab.type);
                    equals2 = "asus.local.simcard2".equals(this.ab.type);
                    equals3 = b.a.c.equals(this.ab.name);
                } else {
                    equals = b.a.c.equals(this.ab.name);
                    equals2 = "SIM2".equals(this.ab.name);
                    equals3 = b.a.d.equals(this.ab.type);
                }
                if (equals3) {
                    String str = null;
                    if (com.android.contacts.simcardmanage.b.a(this.k)) {
                        if (this.k == null || !equals) {
                            str = null;
                            if (this.k != null) {
                                str = null;
                                if (equals2) {
                                    str = PhoneCapabilityTester.getSimSlotName(getActivity(), 2);
                                }
                            }
                        } else {
                            str = PhoneCapabilityTester.getSimSlotName(getActivity(), 1);
                        }
                    }
                    String str2 = str;
                    if (str == null) {
                        str2 = "SIM card";
                    }
                    this.V.setText("(" + str2 + ")");
                } else {
                    this.V.setText("(" + this.ab.name + ")");
                }
                this.V.setVisibility(0);
                return;
            }
            this.W.setText(2131755675);
            this.V.setVisibility(8);
        }
    }

    static /* synthetic */ void a(GroupDetailFragment groupDetailFragment, int i) {
        Iterator<String> it;
        groupDetailFragment.T = i;
        if (groupDetailFragment.U != null) {
            groupDetailFragment.U.dismiss();
        }
        if (groupDetailFragment.Z != null && !com.android.contacts.group.f.c(groupDetailFragment.v)) {
            if (groupDetailFragment.T <= 0 || groupDetailFragment.R.size() < groupDetailFragment.T) {
                if (com.android.contacts.group.f.b(groupDetailFragment.v)) {
                    groupDetailFragment.Z.a((ArrayList<String>) null);
                } else {
                    groupDetailFragment.Z.a((AccountWithDataSet) null);
                }
                groupDetailFragment.ab = null;
            } else {
                groupDetailFragment.ab = groupDetailFragment.R.get(groupDetailFragment.T - 1);
                if (com.android.contacts.group.f.b(groupDetailFragment.v)) {
                    groupDetailFragment.ac = groupDetailFragment.h.get(groupDetailFragment.ab);
                    groupDetailFragment.Z.a(groupDetailFragment.ac);
                } else {
                    groupDetailFragment.Z.a(groupDetailFragment.ab);
                }
            }
            groupDetailFragment.a();
            groupDetailFragment.Z.forceLoad();
        }
        if (groupDetailFragment.aa != null && com.android.contacts.group.f.c(groupDetailFragment.v)) {
            if (groupDetailFragment.T <= 0 || groupDetailFragment.R.size() < groupDetailFragment.T) {
                groupDetailFragment.aa.setSelection("starred=?");
                groupDetailFragment.aa.setSelectionArgs(new String[]{"1"});
                groupDetailFragment.ab = null;
            } else {
                groupDetailFragment.ab = groupDetailFragment.R.get(groupDetailFragment.T - 1);
                String str = new String(BuildConfig.FLAVOR);
                groupDetailFragment.ae = groupDetailFragment.i.get(groupDetailFragment.ab);
                String str2 = str;
                if (groupDetailFragment.ae != null) {
                    while (groupDetailFragment.ae.iterator().hasNext()) {
                        str = str + it.next() + ", ";
                    }
                    str2 = str;
                    if (!TextUtils.isEmpty(str)) {
                        str2 = "_id IN (" + str.substring(0, str.lastIndexOf(", ")) + ")";
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    groupDetailFragment.aa.setSelection(str2);
                    groupDetailFragment.aa.setSelectionArgs(null);
                } else {
                    groupDetailFragment.aa.setSelection("starred=?");
                    groupDetailFragment.aa.setSelectionArgs(new String[]{"1"});
                }
            }
            groupDetailFragment.a();
            groupDetailFragment.aa.forceLoad();
        }
    }

    static /* synthetic */ void a(GroupDetailFragment groupDetailFragment, Cursor cursor) {
        int i = 0;
        cursor.moveToPosition(-1);
        if (cursor.moveToNext()) {
            groupDetailFragment.w = cursor.getString(1);
            groupDetailFragment.x = cursor.getString(2);
            groupDetailFragment.c = cursor.getLong(3);
            groupDetailFragment.v = cursor.getString(4);
            groupDetailFragment.y = cursor.getInt(7) == 1;
            if (groupDetailFragment.z) {
                groupDetailFragment.D = cursor.getString(10);
            }
            groupDetailFragment.J = cursor.getString(9);
            int columnIndex = cursor.getColumnIndex("group_message_ringtone");
            if (columnIndex > 0) {
                groupDetailFragment.E = cursor.getString(columnIndex);
            }
            groupDetailFragment.a(groupDetailFragment.v);
            groupDetailFragment.getActivity().invalidateOptionsMenu();
            String string = cursor.getString(1);
            String string2 = cursor.getString(2);
            if (groupDetailFragment.d) {
                groupDetailFragment.f1325a.onAccountTypeUpdated(string, string2);
            } else {
                final com.android.contacts.model.account.a a2 = com.android.contacts.model.a.a(groupDetailFragment.getActivity()).a(string, string2);
                if (!TextUtils.isEmpty(a2.j())) {
                    if (groupDetailFragment.n == null) {
                        groupDetailFragment.n = com.android.contacts.group.f.a(groupDetailFragment.k);
                        if (groupDetailFragment.m != null) {
                            groupDetailFragment.m.addView(groupDetailFragment.n);
                        }
                    }
                    groupDetailFragment.n.setVisibility(0);
                    com.android.contacts.group.f.a(groupDetailFragment.k, groupDetailFragment.n, string, string2);
                    groupDetailFragment.n.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.GroupDetailFragment.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Intent intent = new Intent("android.intent.action.VIEW", ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, GroupDetailFragment.this.c));
                            intent.setClassName(a2.d, a2.j());
                            ImplicitIntentsUtil.startActivityInApp(GroupDetailFragment.this.k, intent);
                        }
                    });
                } else if (groupDetailFragment.n != null) {
                    groupDetailFragment.n.setVisibility(8);
                }
            }
        }
        if (groupDetailFragment.af == null) {
            return;
        }
        if (!com.asus.contacts.b.e.a().a(groupDetailFragment.getActivity(), "FloatingActionButton") || com.android.contacts.group.f.b(groupDetailFragment.v)) {
            groupDetailFragment.af.setVisibility(8);
            return;
        }
        if (!groupDetailFragment.b()) {
            i = 8;
        }
        groupDetailFragment.af.setVisibility(i);
        if (groupDetailFragment.q != null) {
            groupDetailFragment.q.setOnScrollListener(groupDetailFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String a2 = com.android.contacts.group.f.a(this.k, str);
        if (this.o != null) {
            this.o.setText(a2);
        } else {
            this.f1325a.onGroupTitleUpdated(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        if (!z) {
            this.R.clear();
            this.h.clear();
            this.i.clear();
            if (z2) {
                this.T = 0;
                this.ab = null;
            }
            a();
        }
    }

    static /* synthetic */ void b(GroupDetailFragment groupDetailFragment, int i) {
        if (groupDetailFragment.isAdded()) {
            String format = i == -1 ? null : String.format(groupDetailFragment.getResources().getQuantityString(2131623936, i), Integer.valueOf(i));
            if (groupDetailFragment.p != null) {
                groupDetailFragment.p.setText(format);
            }
        }
    }

    static /* synthetic */ void b(GroupDetailFragment groupDetailFragment, Cursor cursor) {
        boolean z = true;
        int i = 0;
        if (cursor != null && cursor.moveToFirst()) {
            groupDetailFragment.c = cursor.getLong(0);
            groupDetailFragment.v = cursor.getString(1);
            if (cursor.getInt(2) != 1) {
                z = false;
            }
            groupDetailFragment.y = z;
            groupDetailFragment.D = cursor.getString(3);
            groupDetailFragment.J = cursor.getString(4);
            int columnIndex = cursor.getColumnIndex("global_group_message_ringtone");
            if (columnIndex > 0) {
                groupDetailFragment.E = cursor.getString(columnIndex);
            }
            groupDetailFragment.a(groupDetailFragment.v);
            if (groupDetailFragment.getActivity() != null) {
                groupDetailFragment.getActivity().invalidateOptionsMenu();
            }
            if (groupDetailFragment.af == null) {
                return;
            }
            if (!com.asus.contacts.b.e.a().a(groupDetailFragment.getActivity(), "FloatingActionButton") || com.android.contacts.group.f.b(groupDetailFragment.v)) {
                groupDetailFragment.af.setVisibility(8);
                return;
            }
            if (!groupDetailFragment.b()) {
                i = 8;
            }
            groupDetailFragment.af.setVisibility(i);
            if (groupDetailFragment.q != null) {
                groupDetailFragment.q.setOnScrollListener(groupDetailFragment);
            }
        }
    }

    private boolean b() {
        boolean z;
        boolean z2 = this.y && this.J != null;
        if (this.f1326b != null) {
            z = true;
            if (this.y) {
                if (z2) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private boolean c() {
        return this.f1326b != null;
    }

    static /* synthetic */ void n(GroupDetailFragment groupDetailFragment) {
        groupDetailFragment.getLoaderManager().restartLoader(1, null, groupDetailFragment.ak);
    }

    static /* synthetic */ void t(GroupDetailFragment groupDetailFragment) {
        if (com.android.contacts.group.f.c(groupDetailFragment.v)) {
            groupDetailFragment.getLoaderManager().restartLoader(1, null, groupDetailFragment.an);
        } else {
            groupDetailFragment.getLoaderManager().restartLoader(1, null, groupDetailFragment.am);
        }
    }

    public final void a(Uri uri) {
        boolean z = this.c == ContentUris.parseId(uri);
        if (!this.ah || !z) {
            this.ah = true;
            this.f1326b = uri;
            if (this.z) {
                getLoaderManager().restartLoader(0, null, this.al);
            } else {
                getLoaderManager().restartLoader(0, null, this.aj);
            }
            this.c = ContentUris.parseId(uri);
            a(z, true);
        }
    }

    public final void a(boolean z) {
        if (this.O != z) {
            this.O = z;
            setHasOptionsMenu(true);
            getFragmentManager().invalidateOptionsMenu();
        }
    }

    @Override // com.android.contacts.c.b.a
    public final void d() {
        this.s.notifyDataSetChanged();
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        if (this.N != null) {
            Log.d("GroupDetailFragment", "group mEntry.isSim:" + this.N.j);
            boolean z = this.N.j > 0;
            if (!com.asus.contacts.b.d.a(accountWithDataSet)) {
                com.asus.contacts.b.d.a(getFragmentManager(), accountWithDataSet, this.N.k, z);
            } else {
                new AsusCopySingleContactAyncTask(accountWithDataSet, (Context) getActivity(), this.N.k, z, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        } else {
            Log.d("GroupDetailFragment", "onAccountChosen mEntry = null");
        }
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountSelectorCancelled() {
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 1:
                    Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
                    if (uri == null || RingtoneManager.isDefault(uri)) {
                        this.D = null;
                    } else {
                        this.D = uri.toString();
                    }
                    new f(this.k, this.D, this.c, this.f1326b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 1);
                    return;
                case 2:
                    this.E = intent.getStringExtra("ringtone_uri");
                    new f(this.k, this.E, this.c, this.f1326b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 2);
                    return;
                case 20:
                    if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice()) {
                        FavoriteDataUtil.addFavoriteData(getActivity(), intent);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.k = activity;
        this.u = com.android.contacts.model.a.a(this.k);
        this.s = new w(activity, this.ai, getResources().getInteger(2131361811), w.d.GROUP_MEMBERS, "GroupDetailFragment");
        this.G = PhoneCapabilityTester.isPhone(this.k);
        this.H = PhoneCapabilityTester.isSmsIntentRegistered(this.k);
        this.z = PhoneCapabilityTester.IsAsusDevice();
        this.I = com.android.contacts.simcardmanage.e.a(this.k);
        this.ad = this.k.getSharedPreferences("asus_sim_setting", 0);
        this.ad.registerOnSharedPreferenceChangeListener(this);
        if (this.k != null) {
            if (this.t == null) {
                this.t = k.a(this.k);
            }
            if (this.q != null) {
                this.q.setOnScrollListener(this);
            }
            if (this.s != null) {
                this.s.f1892b = this.t;
            }
        }
        this.e = new ProgressDialog(getActivity());
        this.e.setCancelable(false);
        this.e.setMessage(this.k.getString(2131755350));
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0426 -> B:65:0x0405). Please submit an issue!!! */
    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.N != null) {
            switch (menuItem.getItemId()) {
                case 2131296608:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Copy_contact", null, null);
                    }
                    if (this.N.k >= 0) {
                        if (com.android.contacts.model.a.a(getActivity()).a(true).size() != 1) {
                            g.a(getFragmentManager(), this, 2131755097, AccountsListAdapter.AccountListFilter.ACCOUNTS_CONTACT_WRITABLE, null);
                            z = true;
                            break;
                        } else {
                            Toast.makeText(getActivity(), getString(2131755093), 0).show();
                            z = true;
                            break;
                        }
                    } else {
                        Toast.makeText(getActivity(), 2131755076, 1).show();
                        z = true;
                        break;
                    }
                case 2131296885:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Add_to_block_list", null, null);
                    }
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755783)).setMessage(getActivity().getResources().getString(com.asus.blocklist.a.b(getActivity()) ? 2131755202 : 2131755203)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.group.GroupDetailFragment.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (com.asus.blocklist.g.h(GroupDetailFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.b(GroupDetailFragment.this.getActivity(), GroupDetailFragment.this.N.k);
                            } else {
                                com.asus.blocklist.g.a(GroupDetailFragment.this.getActivity(), GroupDetailFragment.this.N.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, GroupDetailFragment.this.getActivity(), "Behavior - Block", "Block by group detail", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
                case 2131296886:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Call_contact", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.N.g, (String) null, this.N.f1895b, this.N.k);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Group Detail", "Group Detail: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296889:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Delete_contact", null, null);
                    }
                    com.android.contacts.interactions.d.a(getActivity(), this.N.g, false);
                    try {
                        new com.asus.prefersim.a(7).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, getActivity(), Long.valueOf(this.N.k));
                    } catch (Exception e2) {
                        Log.d("GroupDetailFragment", "Delete Prefer Sim when Group Detail Delete Contact task error: " + e2.toString());
                    }
                    z = true;
                    break;
                case 2131296894:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Dial_from_sim1", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.N.g, this.N.f1895b, this.N.k, 1);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Group Detail", "Group Detail: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296895:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Dial_from_sim2", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.N.g, this.N.f1895b, this.N.k, 2);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Group Detail", "Group Detail: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296896:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Edit_contact", null, null);
                    }
                    Intent intent = new Intent("android.intent.action.EDIT", this.N.g);
                    intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(this.k, intent);
                    z = true;
                    break;
                case 2131296901:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Link_contact", null, null);
                    }
                    Intent intent2 = new Intent("com.android.contacts.action.LINK_CONTACT");
                    if (this.N.k >= 0) {
                        intent2.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, this.N.k);
                        ImplicitIntentsUtil.startActivityInApp(this.k, intent2);
                        z = true;
                        break;
                    } else {
                        Toast.makeText(getActivity(), 2131755931, 1).show();
                        z = true;
                        break;
                    }
                case 2131296912:
                    try {
                        new e().executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                    } catch (Exception e3) {
                        Log.i("GroupDetailFragment", e3.toString());
                    }
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Remove_from_group", null, null);
                    }
                    z = true;
                    break;
                case 2131296913:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Send_text_message", null, null);
                    }
                    PhoneNumberInteraction.b((TransactionSafeActivity) getActivity(), this.N.g);
                    z = true;
                    break;
                case 2131296914:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Share_contact", null, null);
                    }
                    Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, this.N.h);
                    Intent intent3 = new Intent("android.intent.action.SEND");
                    intent3.setType("text/x-vcard");
                    intent3.putExtra("android.intent.extra.STREAM", withAppendedPath);
                    try {
                        ImplicitIntentsUtil.startActivityOutsideApp(this.k, Intent.createChooser(intent3, getActivity().getText(2131756121)));
                    } catch (ActivityNotFoundException e4) {
                        Toast.makeText(getActivity(), 2131756119, 0).show();
                    }
                    z = true;
                    break;
                case 2131296920:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "GroupDetail_LongPress", "GroupDetail_LongPress- Remove_from_block_list", null, null);
                    }
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755798)).setMessage(getActivity().getResources().getString(2131756059)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.group.GroupDetailFragment.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (com.asus.blocklist.g.h(GroupDetailFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.c(GroupDetailFragment.this.getActivity(), GroupDetailFragment.this.N.k);
                            } else {
                                com.asus.blocklist.g.b(GroupDetailFragment.this.getActivity(), GroupDetailFragment.this.N.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, GroupDetailFragment.this.getActivity(), "Behavior - UnBlock", "Unblock by group detail", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
                default:
                    z = super.onContextItemSelected(menuItem);
                    break;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        w.a aVar = (w.a) view.getTag();
        if (aVar != null) {
            if (!(aVar.f1894a == 0)) {
                getActivity().getMenuInflater().inflate(2131492895, contextMenu);
                MenuItem findItem = contextMenu.findItem(2131296886);
                MenuItem findItem2 = contextMenu.findItem(2131296885);
                MenuItem findItem3 = contextMenu.findItem(2131296920);
                MenuItem findItem4 = contextMenu.findItem(2131296913);
                MenuItem findItem5 = contextMenu.findItem(2131296901);
                contextMenu.findItem(2131296608);
                MenuItem findItem6 = contextMenu.findItem(2131296896);
                MenuItem findItem7 = contextMenu.findItem(2131296889);
                contextMenu.findItem(2131296912);
                if (aVar.n == 0 && PhoneCapabilityTester.getSipAddress(getActivity(), aVar.k) == null) {
                    findItem.setVisible(false);
                    findItem4.setVisible(false);
                } else {
                    if (!this.G) {
                        findItem.setVisible(false);
                    }
                    if (!this.H || aVar.n == 0) {
                        findItem4.setVisible(false);
                    }
                }
                if (aVar.j > 0) {
                    findItem5.setVisible(false);
                    if (!this.I.a(aVar.j)) {
                        findItem6.setVisible(false);
                        findItem7.setVisible(false);
                    }
                }
                if (!this.G) {
                    findItem2.setVisible(false);
                    findItem3.setVisible(false);
                } else {
                    com.asus.blocklist.g.a(getActivity(), findItem2, findItem3, this.N.k);
                }
                MenuItem findItem8 = contextMenu.findItem(2131296894);
                MenuItem findItem9 = contextMenu.findItem(2131296895);
                if (aVar.n != 0) {
                    findItem8.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
                    findItem9.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
                    if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2)) {
                        findItem8.setVisible(false);
                        findItem9.setVisible(false);
                    } else {
                        findItem8.setVisible(true);
                        findItem9.setVisible(true);
                        if (com.asus.prefersim.c.a(getActivity())) {
                            com.asus.prefersim.c.a(getActivity(), findItem8, findItem9, aVar.k);
                        }
                        findItem.setVisible(false);
                    }
                    if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                        findItem9.setVisible(false);
                    }
                    if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                        findItem8.setVisible(false);
                    }
                } else {
                    findItem8.setVisible(false);
                    findItem9.setVisible(false);
                }
                contextMenu.setHeaderTitle(aVar.f1895b);
            }
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492908, menu);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.c = bundle.getLong("group_id");
            this.T = bundle.getInt("account_choosed_pos");
            String string = bundle.getString("account_name_choosed");
            String string2 = bundle.getString("account_type_choosed");
            String string3 = bundle.getString("account_dataset_choosed");
            if (!(string == null || string2 == null)) {
                this.ab = new AccountWithDataSet(string, string2, string3);
            }
            this.ac = bundle.getStringArrayList("account_frequent_id_choosed");
            this.ae = bundle.getStringArrayList("account_favorite_id_choosed");
        }
        setHasOptionsMenu(true);
        this.l = layoutInflater.inflate(2131427571, viewGroup, false);
        this.o = (TextView) this.l.findViewById(2131296919);
        this.p = (TextView) this.l.findViewById(2131296915);
        this.m = (ViewGroup) this.l.findViewById(2131296917);
        this.r = this.l.findViewById(16908292);
        this.q = (ListView) this.l.findViewById(16908298);
        this.q.setItemsCanFocus(true);
        this.q.setAdapter((ListAdapter) this.s);
        Activity activity = getActivity();
        if (activity instanceof MainDialtactsActivity) {
            this.Q = this.l.findViewById(2131297341);
            this.V = (TextView) this.Q.findViewById(2131296349);
            this.W = (TextView) this.Q.findViewById(2131296348);
        } else if (activity instanceof GroupDetailActivity) {
            this.Q = ((GroupDetailActivity) activity).getAccontFilterView();
            this.V = ((GroupDetailActivity) activity).getFilterAccountNameView();
            this.W = ((GroupDetailActivity) activity).getFilterAccountTypeView();
        }
        if (this.Q != null && this.z) {
            this.Q.setOnClickListener(this.X);
            this.Q.setVisibility(0);
        }
        a();
        this.q.setVerticalScrollBarEnabled(false);
        registerForContextMenu(this.q);
        this.P = (ImageView) this.l.findViewById(2131296888);
        this.F = h.a(getActivity());
        this.P.setBackgroundColor(getResources().getColor(2131034116));
        this.af = (FloatingActionButton) this.l.findViewById(2131296825);
        if (this.af != null) {
            this.af.setVisibility(8);
            this.af.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.GroupDetailFragment.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (GroupDetailFragment.this.f1325a == null) {
                        return;
                    }
                    if (com.android.contacts.group.f.c(GroupDetailFragment.this.v)) {
                        GroupDetailFragment.this.f1325a.onAddFavoritesRequested(GroupDetailFragment.this.s.b());
                    } else {
                        GroupDetailFragment.this.f1325a.onAddRequested(GroupDetailFragment.this.f1326b);
                    }
                }
            });
        }
        return this.l;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.android.contacts.c.b.a(7);
        if (this.L != null) {
            this.L.cancel(true);
        }
        Log.d("GroupDetailFragment", "GroupDetailFragment >>> recycleCoverBitmap [onDestroy]");
        BitmapUtil.recycleImageViewBitmap(this.P);
        this.e = null;
        k.a(getActivity()).e();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.k = null;
        if (this.ad != null) {
            this.ad.unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131297034:
                if (GroupBrowseListFragment.c && PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice()) {
                    getActivity().startActivityForResult(new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER"), 20);
                } else if (this.f1325a != null) {
                    if (com.android.contacts.group.f.c(this.v)) {
                        this.f1325a.onAddFavoritesRequested(this.s.b());
                    } else {
                        this.f1325a.onAddRequested(this.f1326b);
                    }
                }
                z = false;
                break;
            case 2131297047:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "GroupDetail", "GroupDetail- Delete group", null, null);
                }
                if (getActivity() instanceof GroupDetailActivity) {
                    com.android.contacts.interactions.f.a(getFragmentManager(), this.c, this.v, this.f);
                } else if (this.f1325a != null) {
                    this.f1325a.onDeleteGroupRequested(this.f1326b, this.c, this.f);
                }
                z = true;
                break;
            case 2131297050:
                Intent intent = new Intent(getActivity(), FavoriteEditorActivity.class);
                intent.setAction("android.intent.action.INSERT");
                startActivityForResult(intent, 30);
                z = true;
                break;
            case 2131297051:
                if (this.f1325a != null) {
                    this.f1325a.onEditRequested(this.f1326b, this.v);
                }
                z = false;
                break;
            case 2131297052:
                this.j = true;
                ImplicitIntentsUtil.startActivityInApp(this.k, new Intent(getActivity(), AsusGlobalGroupEditorActivity.class));
                z = true;
                break;
            case 2131297065:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "GroupDetail", "GroupDetail- Send group message", null, null);
                }
                new d.c(getActivity(), this.c, this.v).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
                z = true;
                break;
            case 2131297066:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "GroupDetail", "GroupDetail- Send group e-mail", null, null);
                }
                com.android.contacts.group.d.a(getActivity(), this.c, this.v);
                z = true;
                break;
            case 2131297070:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "GroupDetail", "GroupDetail- Set group ringtone", null, null);
                }
                com.android.contacts.group.d.a(this, this.D);
                z = true;
                break;
            case 2131297072:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "GroupDetail", "GroupDetail- Set group message notification", null, null);
                }
                com.android.contacts.group.d.b(this, this.E);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z = true;
        this.K = b();
        this.A = this.f1326b != null && !this.y;
        this.B = c();
        this.C = c();
        boolean b2 = q.b(this.k);
        MenuItem findItem = menu.findItem(2131297051);
        if (findItem != null) {
            if (findItem.getIcon() != null) {
                Drawable b3 = android.support.v4.a.a.a.b(findItem.getIcon().mutate());
                android.support.v4.a.a.a.a(b3, getActivity().getResources().getColor(2131034157));
                findItem.setIcon(b3);
            }
            if (com.android.contacts.group.f.b(this.v)) {
                findItem.setTitle(getActivity().getResources().getString(2131756064));
            }
            if (this.z || b2) {
                findItem.setVisible(this.K && this.O);
            } else {
                findItem.setVisible(false);
            }
            if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice() && GroupBrowseListFragment.c) {
                findItem.setVisible(false);
            }
        }
        MenuItem findItem2 = menu.findItem(2131297047);
        if (findItem2 != null) {
            if (this.z || b2) {
                findItem2.setVisible(this.A && this.O);
            } else {
                findItem2.setVisible(false);
            }
            if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice() && GroupBrowseListFragment.c) {
                findItem2.setVisible(false);
            }
        }
        MenuItem findItem3 = menu.findItem(2131297065);
        if (findItem3 != null) {
            if (this.z || b2) {
                findItem3.setVisible(this.C && this.O && this.H);
            } else {
                findItem3.setVisible(false);
            }
            if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice() && GroupBrowseListFragment.c) {
                findItem3.setVisible(false);
            }
        }
        MenuItem findItem4 = menu.findItem(2131297066);
        if (findItem4 != null) {
            if (this.z || b2) {
                findItem4.setVisible(this.C && this.O);
            } else {
                findItem4.setVisible(false);
            }
            if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice() && GroupBrowseListFragment.c) {
                findItem4.setVisible(false);
            }
        }
        MenuItem findItem5 = menu.findItem(2131297070);
        if (findItem5 != null) {
            if (com.android.contacts.group.f.b(this.v)) {
                findItem5.setVisible(false);
            } else {
                findItem5.setVisible(this.C && this.O && this.G && this.z && PhoneCapabilityTester.isInOwnerMode(getActivity()));
            }
        }
        MenuItem findItem6 = menu.findItem(2131297072);
        if (findItem6 != null) {
            if (com.android.contacts.group.f.b(this.v)) {
                findItem6.setVisible(false);
            } else {
                findItem6.setVisible(this.C && this.O && this.H && this.F && this.z);
            }
        }
        MenuItem findItem7 = menu.findItem(2131297034);
        if (findItem7 != null) {
            if (com.android.contacts.group.f.b(this.v)) {
                findItem7.setVisible(false);
            } else {
                findItem7.setVisible(this.K && this.O);
            }
            com.android.contacts.skin.a.a(getActivity(), findItem7);
            if (!this.z) {
                findItem7.setIcon(2131165295);
                if (!b2) {
                    findItem7.setVisible(false);
                }
                if (GroupBrowseListFragment.c && PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !PhoneCapabilityTester.IsAsusDevice()) {
                    findItem7.setVisible(this.K && this.O);
                }
            }
            if (!PhoneCapabilityTester.isUsingTwoPanes(this.k)) {
                com.asus.contacts.b.b.a();
                findItem7.setVisible(false);
            }
        }
        MenuItem findItem8 = menu.findItem(2131297052);
        if (findItem8 != null) {
            findItem8.setVisible(this.O && PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && this.z);
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            MenuItem findItem9 = menu.findItem(2131297050);
            if (findItem9 != null) {
                findItem9.setVisible(false);
            }
            if (!PhoneCapabilityTester.IsAsusDevice() && findItem9 != null) {
                if (!this.O || !GroupBrowseListFragment.c) {
                    z = false;
                }
                findItem9.setVisible(z);
            }
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            bundle.putLong("group_id", this.c);
            bundle.putInt("account_choosed_pos", this.T);
            if (this.ab != null) {
                bundle.putString("account_name_choosed", this.ab.name);
                bundle.putString("account_type_choosed", this.ab.type);
                bundle.putString("account_dataset_choosed", this.ab.f1998a);
            }
            bundle.putStringArrayList("account_frequent_id_choosed", this.ac);
            bundle.putStringArrayList("account_favorite_id_choosed", this.ae);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 2) {
            this.t.a();
        } else {
            this.t.b();
        }
        if (absListView != null && this.af != null && com.asus.contacts.b.e.a().a(getActivity(), "FloatingActionButton")) {
            if (i == 2 || i == 1) {
                this.af.b();
            } else if (i == 0) {
                this.af.a();
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Log.d("GroupDetailFragment", "SharedPreferences: " + str);
        if (str.startsWith("asushadIccCard") || str.startsWith("asusIccCardLoaded")) {
            if (this.aa != null) {
                this.aa.forceLoad();
            }
            if (this.Z != null) {
                this.Z.forceLoad();
            }
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        com.android.contacts.c.b.a(7, this);
        this.F = h.a(getActivity());
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        com.android.contacts.c.b.a(7);
        if (this.U != null && this.U.isShowing()) {
            this.U.dismiss();
        }
        this.U = null;
    }
}

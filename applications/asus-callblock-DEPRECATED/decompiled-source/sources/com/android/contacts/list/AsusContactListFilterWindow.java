package com.android.contacts.list;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.AsyncTaskLoader;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Entity;
import android.content.EntityIterator;
import android.content.Intent;
import android.content.Loader;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.b;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.EmptyService;
import com.android.contacts.util.LocalizedNameResolver;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.WeakAsyncTask;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow.class */
public final class AsusContactListFilterWindow implements View.OnCreateContextMenuListener, ExpandableListView.OnChildClickListener, PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    static Context f1664a;
    static h c;
    private static int q;
    private static int r;

    /* renamed from: b  reason: collision with root package name */
    Context f1665b;
    i d;
    ExpandableListView e;
    View f;
    View g;
    d h;
    public PopupWindow i;
    View k;
    long l;
    long m;
    private static boolean p = false;
    private static boolean s = false;
    private static boolean t = false;
    private static Comparator<AsusGroupDelta> u = new Comparator<AsusGroupDelta>() { // from class: com.android.contacts.list.AsusContactListFilterWindow.3
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(AsusGroupDelta asusGroupDelta, AsusGroupDelta asusGroupDelta2) {
            int i2 = -1;
            Long a2 = asusGroupDelta.a();
            Long a3 = asusGroupDelta2.a();
            if (!(a2 == null && a3 == null)) {
                if (a2 != null) {
                    if (a3 == null) {
                        i2 = 1;
                    } else if (a2.longValue() >= a3.longValue()) {
                        if (a2.longValue() > a3.longValue()) {
                            i2 = 1;
                        }
                    }
                }
                return i2;
            }
            i2 = 0;
            return i2;
        }
    };
    int j = 0;
    ExpandableListView.OnGroupClickListener n = new ExpandableListView.OnGroupClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.1
        @Override // android.widget.ExpandableListView.OnGroupClickListener
        public final boolean onGroupClick(ExpandableListView expandableListView, View view, int i2, long j) {
            return true;
        }
    };
    public final LoaderManager.LoaderCallbacks<b> o = new LoaderManager.LoaderCallbacks<b>() { // from class: com.android.contacts.list.AsusContactListFilterWindow.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<b> onCreateLoader(int i2, Bundle bundle) {
            c cVar;
            if (AsusContactListFilterWindow.f1664a != null) {
                Log.i("AsusContactListFilterWindow", "mAsusLoaderCallbacks: onCreateLoader");
                cVar = new c(AsusContactListFilterWindow.f1664a);
            } else {
                Log.i("AsusContactListFilterWindow", "mAsusLoaderCallbacks: onCreateLoader mContext is null");
                cVar = null;
            }
            return cVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<b> loader, b bVar) {
            b bVar2 = bVar;
            if (AsusContactListFilterWindow.this.h != null && AsusContactListFilterWindow.this.i != null) {
                if (bVar2.size() == 0) {
                    if (AsusContactListFilterWindow.this.i != null) {
                        AsusContactListFilterWindow.this.i.setHeight(-2);
                    }
                    AsusContactListFilterWindow.this.f.setVisibility(8);
                    AsusContactListFilterWindow.this.e.setVisibility(8);
                    AsusContactListFilterWindow.this.g.setVisibility(0);
                } else {
                    AsusContactListFilterWindow.this.h.a(bVar2);
                    int unused = AsusContactListFilterWindow.q = AsusContactListFilterWindow.r = bVar2.size();
                    Log.d("AsusContactListFilterWindow", "LimitCount: " + AsusContactListFilterWindow.this.j + ", CurrentNumber: " + AsusContactListFilterWindow.q);
                    if (AsusContactListFilterWindow.this.j <= 0 || AsusContactListFilterWindow.q <= AsusContactListFilterWindow.this.j) {
                        if (AsusContactListFilterWindow.this.i != null) {
                            AsusContactListFilterWindow.this.i.setHeight(-2);
                        }
                    } else if (AsusContactListFilterWindow.this.i != null) {
                        AsusContactListFilterWindow.this.i.setHeight(AsusContactListFilterWindow.f1664a.getResources().getDimensionPixelSize(2131099791));
                    }
                    new f(bVar2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    AsusContactListFilterWindow.this.f.setVisibility(8);
                    AsusContactListFilterWindow.this.e.setVisibility(0);
                    AsusContactListFilterWindow.this.g.setVisibility(8);
                    AsusContactListFilterWindow.this.m = System.currentTimeMillis();
                }
                Log.d("AsusContactListFilterWindow", "total all time: " + (AsusContactListFilterWindow.this.m - AsusContactListFilterWindow.this.l));
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<b> loader) {
            if (AsusContactListFilterWindow.this.h != null) {
                AsusContactListFilterWindow.this.h.a((b) null);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$AsusGroupDelta.class */
    public static class AsusGroupDelta extends RawContactDelta.ValuesDelta {

        /* renamed from: a  reason: collision with root package name */
        boolean f1674a = false;
        private boolean g;

        private AsusGroupDelta() {
        }

        /* JADX WARN: Finally extract failed */
        public static AsusGroupDelta a(ContentResolver contentResolver, String str, String str2, String str3, boolean z) {
            AsusGroupDelta asusGroupDelta;
            Uri.Builder appendQueryParameter = ContactsContract.Settings.CONTENT_URI.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, str).appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, str2);
            if (str3 != null) {
                appendQueryParameter.appendQueryParameter(SelectAccountActivity.DATA_SET, str3);
            }
            Cursor query = contentResolver.query(appendQueryParameter.build(), new String[]{"should_sync", "ungrouped_visible"}, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(SelectAccountActivity.ACCOUNT_NAME, str);
                contentValues.put(SelectAccountActivity.ACCOUNT_TYPE, str2);
                contentValues.put(SelectAccountActivity.DATA_SET, str3);
                contentValues.put("summ_count", (Integer) (-1));
                if (query == null || !query.moveToFirst()) {
                    contentValues.put("should_sync", (Integer) 1);
                    contentValues.put("ungrouped_visible", (Integer) 0);
                    AsusGroupDelta asusGroupDelta2 = new AsusGroupDelta();
                    asusGroupDelta2.f1989b = null;
                    asusGroupDelta2.c = contentValues;
                    AsusGroupDelta b2 = asusGroupDelta2.b(z);
                    asusGroupDelta = b2;
                    if (query != null) {
                        query.close();
                        asusGroupDelta = b2;
                    }
                } else {
                    contentValues.put("should_sync", Integer.valueOf(query.getInt(0)));
                    contentValues.put("ungrouped_visible", Integer.valueOf(query.getInt(1)));
                    AsusGroupDelta b3 = a(contentValues).b(z);
                    asusGroupDelta = b3;
                    if (query != null) {
                        query.close();
                        asusGroupDelta = b3;
                    }
                }
                return asusGroupDelta;
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }

        public static AsusGroupDelta a(ContentValues contentValues) {
            AsusGroupDelta asusGroupDelta = new AsusGroupDelta();
            asusGroupDelta.f1989b = contentValues;
            asusGroupDelta.c = new ContentValues();
            return asusGroupDelta;
        }

        public static void a(ContentResolver contentResolver, Map<AccountWithDataSet, a> map, Map<AccountWithDataSet, Boolean> map2) {
            Cursor query = contentResolver.query(ContactsContract.Settings.CONTENT_URI.buildUpon().build(), new String[]{"should_sync", "ungrouped_visible", SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        do {
                            String string = query.getString(2);
                            String string2 = query.getString(3);
                            String string3 = query.getString(4);
                            AccountWithDataSet accountWithDataSet = new AccountWithDataSet(string, string2, string3);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(SelectAccountActivity.ACCOUNT_NAME, string);
                            contentValues.put(SelectAccountActivity.ACCOUNT_TYPE, string2);
                            contentValues.put(SelectAccountActivity.DATA_SET, string3);
                            contentValues.put("summ_count", (Integer) (-1));
                            contentValues.put("should_sync", Integer.valueOf(query.getInt(0)));
                            contentValues.put("ungrouped_visible", Integer.valueOf(query.getInt(1)));
                            a aVar = map.get(accountWithDataSet);
                            if (aVar != null) {
                                aVar.d = a(contentValues).b(map2.get(accountWithDataSet) == null ? false : map2.get(accountWithDataSet).booleanValue());
                                a.a(aVar, aVar.d);
                            } else {
                                Log.d("AsusContactListFilterWindow", "No account setting: " + string2);
                                if (PhoneCapabilityTester.IsUnbundled()) {
                                    boolean b2 = AsusContactListFilterWindow.b(accountWithDataSet);
                                    Log.d("AsusContactListFilterWindow", string2 + ": hasContact ? " + b2);
                                    if (b2) {
                                        a aVar2 = new a(accountWithDataSet.name, accountWithDataSet.type, accountWithDataSet.f1998a);
                                        aVar2.d = a(contentValues).b(map2.get(accountWithDataSet) == null ? false : map2.get(accountWithDataSet).booleanValue());
                                        a.a(aVar2, aVar2.d);
                                        map.put(accountWithDataSet, aVar2);
                                        com.android.contacts.model.a.a(AsusContactListFilterWindow.f1664a).b(accountWithDataSet.name, accountWithDataSet.type, accountWithDataSet.f1998a);
                                    }
                                }
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
            if (query != null) {
                query.close();
            }
        }

        private AsusGroupDelta b(boolean z) {
            this.f1674a = true;
            this.g = z;
            return this;
        }

        static /* synthetic */ String b(AsusGroupDelta asusGroupDelta) {
            return (asusGroupDelta.f1989b == null ? asusGroupDelta.c : asusGroupDelta.f1989b).getAsString(SelectAccountActivity.ACCOUNT_NAME);
        }

        static /* synthetic */ String c(AsusGroupDelta asusGroupDelta) {
            return (asusGroupDelta.f1989b == null ? asusGroupDelta.c : asusGroupDelta.f1989b).getAsString(SelectAccountActivity.DATA_SET);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String v() {
            return (this.f1989b == null ? this.c : this.f1989b).getAsString(SelectAccountActivity.ACCOUNT_TYPE);
        }

        public final CharSequence a(Context context) {
            CharSequence text;
            if (this.f1674a) {
                String allContactsName = LocalizedNameResolver.getAllContactsName(context, v());
                text = allContactsName != null ? allContactsName : this.g ? context.getText(2131755590) : context.getText(2131755581);
            } else {
                Integer e = e("title_res");
                text = e != null ? context.getPackageManager().getText(a("res_package"), e.intValue(), null) : a(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE);
            }
            return text;
        }

        public final void a(boolean z) {
            a(this.f1674a ? "ungrouped_visible" : "group_visible", z ? 1 : 0);
        }

        @Override // com.android.contacts.model.RawContactDelta.ValuesDelta
        public final boolean c() {
            return this.f1989b != null;
        }

        public final boolean d() {
            boolean z = true;
            if (PhoneCapabilityTester.IsUnbundled()) {
                if (!this.f1674a && a("should_sync", (Integer) 1).intValue() == 0) {
                    z = false;
                }
            } else if (a("should_sync", (Integer) 1).intValue() == 0) {
                z = false;
            }
            return z;
        }

        public final boolean e() {
            return a(this.f1674a ? "ungrouped_visible" : "group_visible", (Integer) 0).intValue() != 0;
        }

        public final ContentProviderOperation f() {
            String[] strArr;
            ContentProviderOperation contentProviderOperation = null;
            this.c.remove("summ_count");
            if (n()) {
                if (this.f1674a) {
                    this.c.remove(this.d);
                    contentProviderOperation = ContentProviderOperation.newInsert(ContactsContract.Settings.CONTENT_URI).withValues(this.c).build();
                } else {
                    throw new IllegalStateException("Unexpected diff");
                }
            } else if (l()) {
                if (this.f1674a) {
                    String a2 = a(SelectAccountActivity.ACCOUNT_NAME);
                    String a3 = a(SelectAccountActivity.ACCOUNT_TYPE);
                    String a4 = a(SelectAccountActivity.DATA_SET);
                    StringBuilder sb = new StringBuilder("account_name=? AND account_type=?");
                    if (a4 == null) {
                        sb.append(" AND data_set IS NULL");
                        strArr = new String[]{a2, a3};
                    } else {
                        sb.append(" AND data_set=?");
                        strArr = new String[]{a2, a3, a4};
                    }
                    contentProviderOperation = ContentProviderOperation.newUpdate(ContactsContract.Settings.CONTENT_URI).withSelection(sb.toString(), strArr).withValues(this.c).build();
                } else {
                    contentProviderOperation = ContentProviderOperation.newUpdate(AsusContactListFilterWindow.a(ContactsContract.Groups.CONTENT_URI)).withSelection("_id=" + a(), null).withValues(this.c).build();
                }
            }
            return contentProviderOperation;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f1675a;

        /* renamed from: b  reason: collision with root package name */
        public final String f1676b;
        public final String c;
        public AsusGroupDelta d;
        public ArrayList<AsusGroupDelta> e = new ArrayList<>();
        public ArrayList<AsusGroupDelta> f = new ArrayList<>();
        public int g = -1;

        public a(String str, String str2, String str3) {
            this.f1675a = str;
            this.f1676b = str2;
            this.c = str3;
        }

        static /* synthetic */ void a(a aVar, AsusGroupDelta asusGroupDelta) {
            if (asusGroupDelta.d()) {
                aVar.e.add(asusGroupDelta);
            } else {
                aVar.f.add(asusGroupDelta);
            }
        }

        public final void a(AsusGroupDelta asusGroupDelta, boolean z, boolean z2) {
            boolean z3 = asusGroupDelta.f1674a;
            asusGroupDelta.a("should_sync", z ? 1 : 0);
            if (z) {
                if (z2) {
                    this.f.remove(asusGroupDelta);
                }
                this.e.add(asusGroupDelta);
                Collections.sort(this.e, AsusContactListFilterWindow.u);
                return;
            }
            if (z2) {
                this.e.remove(asusGroupDelta);
            }
            this.f.add(asusGroupDelta);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$b.class */
    public static final class b extends ArrayList<a> {
        protected b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$c.class */
    public static final class c extends AsyncTaskLoader<b> {

        /* renamed from: a  reason: collision with root package name */
        private b f1677a;

        public c(Context context) {
            super(context);
        }

        /* JADX WARN: Finally extract failed */
        private static b a() {
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            long currentTimeMillis2 = System.currentTimeMillis();
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(AsusContactListFilterWindow.f1664a);
            ContentResolver contentResolver = AsusContactListFilterWindow.f1664a.getContentResolver();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = PhoneCapabilityTester.IsUnbundled() ? new HashMap() : null;
            b bVar = new b();
            for (AccountWithDataSet accountWithDataSet : a2.a(false)) {
                if (!a2.a(accountWithDataSet.f1999b).c() || accountWithDataSet.a(AsusContactListFilterWindow.f1664a)) {
                    hashMap.put(accountWithDataSet, new a(accountWithDataSet.name, accountWithDataSet.type, accountWithDataSet.f1998a));
                }
            }
            long currentTimeMillis3 = System.currentTimeMillis();
            long currentTimeMillis4 = System.currentTimeMillis();
            Cursor query = contentResolver.query(ContactsContract.Groups.CONTENT_URI.buildUpon().build(), null, "deleted != 1", null, null);
            long j2 = -1;
            String str = null;
            if (query != null) {
                EntityIterator newEntityIterator = ContactsContract.Groups.newEntityIterator(query);
                long currentTimeMillis5 = System.currentTimeMillis();
                try {
                    if (!query.isAfterLast()) {
                        j2 = query.getLong(query.getColumnIndex("_id"));
                        str = query.getString(query.getColumnIndex(SelectAccountActivity.DATA_SET));
                    }
                    while (newEntityIterator.hasNext()) {
                        ContentValues entityValues = ((Entity) newEntityIterator.next()).getEntityValues();
                        entityValues.put("summ_count", (Integer) (-1));
                        AsusGroupDelta a3 = AsusGroupDelta.a(entityValues);
                        String v = a3.v();
                        String b2 = AsusGroupDelta.b(a3);
                        String c = AsusGroupDelta.c(a3);
                        if (j2 == a3.a().longValue()) {
                            c = str;
                        }
                        if (!TextUtils.isEmpty(b2) && !TextUtils.isEmpty(v)) {
                            AccountWithDataSet accountWithDataSet2 = new AccountWithDataSet(b2, v, c);
                            if (hashMap.get(accountWithDataSet2) != null) {
                                a.a((a) hashMap.get(accountWithDataSet2), a3);
                            } else {
                                Log.d("AsusContactListFilterWindow", "No account: " + v);
                                if (PhoneCapabilityTester.IsUnbundled() && !hashMap3.containsKey(accountWithDataSet2)) {
                                    boolean b3 = AsusContactListFilterWindow.b(accountWithDataSet2);
                                    if (hashMap3 != null) {
                                        hashMap3.put(accountWithDataSet2, Boolean.valueOf(b3));
                                    }
                                    Log.d("AsusContactListFilterWindow", v + ": hasContact ? " + b3);
                                    if (b3) {
                                        a aVar = new a(accountWithDataSet2.name, accountWithDataSet2.type, accountWithDataSet2.f1998a);
                                        a.a(aVar, a3);
                                        hashMap.put(accountWithDataSet2, aVar);
                                        a2.b(accountWithDataSet2.name, accountWithDataSet2.type, accountWithDataSet2.f1998a);
                                    }
                                }
                            }
                            hashMap2.put(accountWithDataSet2, true);
                            if (!query.isAfterLast()) {
                                j2 = query.getLong(query.getColumnIndex("_id"));
                                str = query.getString(query.getColumnIndex(SelectAccountActivity.DATA_SET));
                            }
                        }
                    }
                    newEntityIterator.close();
                    j = currentTimeMillis5 - currentTimeMillis4;
                } catch (Throwable th) {
                    newEntityIterator.close();
                    throw th;
                }
            } else {
                j = 0;
            }
            long currentTimeMillis6 = System.currentTimeMillis();
            AsusGroupDelta.a(contentResolver, hashMap, hashMap2);
            long currentTimeMillis7 = System.currentTimeMillis();
            long currentTimeMillis8 = System.currentTimeMillis();
            for (Map.Entry entry : hashMap.entrySet()) {
                a aVar2 = (a) entry.getValue();
                AccountWithDataSet accountWithDataSet3 = (AccountWithDataSet) entry.getKey();
                boolean booleanValue = hashMap2.get(accountWithDataSet3) == null ? false : ((Boolean) hashMap2.get(accountWithDataSet3)).booleanValue();
                if (aVar2.d == null) {
                    aVar2.d = AsusGroupDelta.a(contentResolver, accountWithDataSet3.name, accountWithDataSet3.type, accountWithDataSet3.f1998a, booleanValue);
                    a.a(aVar2, aVar2.d);
                    Log.d("AsusContactListFilterWindow", "accountType = " + accountWithDataSet3.type + " need to load again");
                }
                bVar.add(entry.getValue());
            }
            long currentTimeMillis9 = System.currentTimeMillis();
            Log.d("AsusContactListFilterWindow", "load account time: " + (currentTimeMillis3 - currentTimeMillis2));
            Log.d("AsusContactListFilterWindow", "load Group time: " + j);
            Log.d("AsusContactListFilterWindow", "load Setting time: " + (0 + (currentTimeMillis7 - currentTimeMillis6)));
            Log.d("AsusContactListFilterWindow", "load another Setting time: " + (currentTimeMillis9 - currentTimeMillis8));
            Log.d("AsusContactListFilterWindow", "all time: " + (System.currentTimeMillis() - currentTimeMillis));
            return bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void deliverResult(b bVar) {
            if (!isReset()) {
                this.f1677a = bVar;
                if (isStarted()) {
                    super.deliverResult(bVar);
                }
            }
        }

        @Override // android.content.AsyncTaskLoader
        public final /* synthetic */ b loadInBackground() {
            return a();
        }

        @Override // android.content.Loader
        protected final void onReset() {
            super.onReset();
            onStopLoading();
            this.f1677a = null;
        }

        @Override // android.content.Loader
        protected final void onStartLoading() {
            if (this.f1677a != null) {
                deliverResult(this.f1677a);
            }
            if (takeContentChanged() || this.f1677a == null) {
                forceLoad();
            }
        }

        @Override // android.content.Loader
        protected final void onStopLoading() {
            cancelLoad();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$d.class */
    protected final class d extends BaseExpandableListAdapter {

        /* renamed from: b  reason: collision with root package name */
        private Context f1679b;
        private LayoutInflater c;
        private com.android.contacts.model.a d;
        private b e;
        private Map<Integer, Integer> f = new HashMap();
        private View.OnClickListener g = new View.OnClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.d.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = (g) view.getTag();
                if (gVar.f1689b != null && gVar.f1688a >= 0) {
                    if (((ExpandableListView) gVar.f1689b).isGroupExpanded(gVar.f1688a)) {
                        AsusContactListFilterWindow.r -= d.this.getChildrenCount(gVar.f1688a);
                    } else {
                        AsusContactListFilterWindow.r += d.this.getChildrenCount(gVar.f1688a);
                    }
                    if (AsusContactListFilterWindow.r != AsusContactListFilterWindow.q) {
                        if (AsusContactListFilterWindow.r > AsusContactListFilterWindow.this.j) {
                            AsusContactListFilterWindow.a(AsusContactListFilterWindow.this, false);
                        } else {
                            AsusContactListFilterWindow.a(AsusContactListFilterWindow.this, true);
                        }
                        int unused = AsusContactListFilterWindow.q = AsusContactListFilterWindow.r;
                    }
                    if (((ExpandableListView) gVar.f1689b).isGroupExpanded(gVar.f1688a)) {
                        ((ExpandableListView) gVar.f1689b).collapseGroup(gVar.f1688a);
                    } else {
                        ((ExpandableListView) gVar.f1689b).expandGroup(gVar.f1688a);
                    }
                }
                if (com.android.contacts.b.f607a.booleanValue()) {
                    Log.d("AsusContactListFilterWindow", "info.list = " + gVar.f1689b + " info.position = " + gVar.f1688a);
                }
            }
        };

        public d(Context context) {
            this.f1679b = context;
            this.c = (LayoutInflater) context.getSystemService("layout_inflater");
            this.d = com.android.contacts.model.a.a(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            a aVar = (a) getGroup(i);
            int childrenCount = getChildrenCount(i);
            boolean z = false;
            int i2 = 0;
            int i3 = childrenCount;
            for (int i4 = 0; i4 < childrenCount; i4++) {
                AsusGroupDelta asusGroupDelta = (AsusGroupDelta) getChild(i, i4);
                if (asusGroupDelta == null || !asusGroupDelta.e()) {
                    i2 = i2;
                    if (asusGroupDelta == null) {
                        i3--;
                    }
                } else {
                    i2++;
                    i2 = i2;
                    if (aVar.f1676b.equals("com.google")) {
                        i2 = i2;
                        if (asusGroupDelta.f1674a) {
                            z = true;
                        }
                    }
                }
            }
            if (i3 == 0) {
                this.f.put(Integer.valueOf(i), 3);
            } else if (i2 == 0) {
                this.f.put(Integer.valueOf(i), 0);
            } else if (i2 == i3) {
                this.f.put(Integer.valueOf(i), 2);
            } else if (!aVar.f1676b.equals("com.google") || i3 != i2 + 1) {
                this.f.put(Integer.valueOf(i), 1);
            } else if (z) {
                this.f.put(Integer.valueOf(i), 1);
            } else {
                this.f.put(Integer.valueOf(i), 2);
            }
            notifyDataSetChanged();
        }

        public final void a(b bVar) {
            this.e = bVar;
            notifyDataSetChanged();
        }

        @Override // android.widget.ExpandableListAdapter
        public final Object getChild(int i, int i2) {
            a aVar = this.e.get(i);
            return i2 >= 0 && i2 < aVar.e.size() ? aVar.e.get(i2) : null;
        }

        @Override // android.widget.ExpandableListAdapter
        public final long getChildId(int i, int i2) {
            long j;
            AsusGroupDelta asusGroupDelta = (AsusGroupDelta) getChild(i, i2);
            if (asusGroupDelta != null) {
                Long a2 = asusGroupDelta.a();
                j = a2 != null ? a2.longValue() : Long.MIN_VALUE;
            } else {
                j = Long.MIN_VALUE;
            }
            return j;
        }

        @Override // android.widget.ExpandableListAdapter
        public final View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
            int i3 = 0;
            View view2 = view;
            if (view == null) {
                view2 = this.c.inflate(2131427369, viewGroup, false);
            }
            TextView textView = (TextView) view2.findViewById(16908308);
            TextView textView2 = (TextView) view2.findViewById(16908309);
            CheckBox checkBox = (CheckBox) view2.findViewById(16908289);
            TextView textView3 = (TextView) view2.findViewById(2131297361);
            AsusGroupDelta asusGroupDelta = (AsusGroupDelta) getChild(i, i2);
            if (asusGroupDelta != null) {
                boolean e = asusGroupDelta.e();
                checkBox.setVisibility(0);
                checkBox.setChecked(e);
                String a2 = com.android.contacts.group.f.a(this.f1679b, asusGroupDelta.a(this.f1679b) != null ? asusGroupDelta.a(this.f1679b).toString() : null);
                int intValue = asusGroupDelta.b("summ_count") ? asusGroupDelta.e("summ_count").intValue() : 0;
                textView.setText(a2);
                textView2.setVisibility(8);
                textView3.setText("(" + intValue + ")");
                if (intValue == -1) {
                    i3 = 8;
                }
                textView3.setVisibility(i3);
                if (!checkBox.isChecked()) {
                    checkBox.setButtonDrawable(2131165227);
                } else {
                    checkBox.setButtonDrawable(2131165208);
                }
            } else {
                checkBox.setVisibility(8);
                textView.setText(2131755583);
                textView2.setVisibility(8);
                textView3.setVisibility(8);
            }
            return view2;
        }

        @Override // android.widget.ExpandableListAdapter
        public final int getChildrenCount(int i) {
            int i2 = 1;
            a aVar = this.e.get(i);
            boolean z = aVar.f.size() > 0;
            int size = aVar.e.size();
            if (!z) {
                i2 = 0;
            }
            return size + i2;
        }

        @Override // android.widget.ExpandableListAdapter
        public final Object getGroup(int i) {
            return this.e.get(i);
        }

        @Override // android.widget.ExpandableListAdapter
        public final int getGroupCount() {
            return this.e == null ? 0 : this.e.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public final long getGroupId(int i) {
            return i;
        }

        @Override // android.widget.ExpandableListAdapter
        public final View getGroupView(final int i, boolean z, View view, ViewGroup viewGroup) {
            String str;
            boolean z2;
            int i2;
            View view2 = view;
            if (view == null) {
                view2 = this.c.inflate(2131427368, viewGroup, false);
            }
            TextView textView = (TextView) view2.findViewById(16908308);
            TextView textView2 = (TextView) view2.findViewById(16908309);
            final CheckBox checkBox = (CheckBox) view2.findViewById(2131296264);
            ImageView imageView = (ImageView) view2.findViewById(2131296270);
            TextView textView3 = (TextView) view2.findViewById(2131297361);
            view2.findViewById(2131296265).setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.d.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    if (checkBox.isChecked()) {
                        checkBox.setChecked(false);
                    } else {
                        checkBox.setChecked(true);
                    }
                }
            });
            LinearLayout linearLayout = (LinearLayout) view2.findViewById(2131296271);
            g gVar = new g();
            gVar.f1689b = viewGroup;
            gVar.f1688a = i;
            linearLayout.setTag(gVar);
            linearLayout.setOnClickListener(this.g);
            if (this.f.get(Integer.valueOf(i)) != null && this.f.get(Integer.valueOf(i)).intValue() == 0) {
                checkBox.setButtonDrawable(2131165227);
            } else if (this.f.get(Integer.valueOf(i)) != null && this.f.get(Integer.valueOf(i)).intValue() == 2) {
                checkBox.setButtonDrawable(2131165208);
            } else if (this.f.get(Integer.valueOf(i)) != null && this.f.get(Integer.valueOf(i)).intValue() == 1) {
                checkBox.setButtonDrawable(2131165207);
            } else if (this.f.get(Integer.valueOf(i)) == null || this.f.get(Integer.valueOf(i)).intValue() != 3) {
                a(i);
            } else {
                checkBox.setButtonDrawable(2131165225);
            }
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.d.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    boolean z4 = ((Integer) d.this.f.get(Integer.valueOf(i))).intValue() != 2;
                    int childrenCount = d.this.getChildrenCount(i);
                    for (int i3 = 0; i3 < childrenCount; i3++) {
                        AsusGroupDelta asusGroupDelta = (AsusGroupDelta) d.this.getChild(i, i3);
                        if (asusGroupDelta != null) {
                            asusGroupDelta.a(z4);
                        }
                    }
                    d.this.a(i);
                }
            });
            if (getChildrenCount(i) == 0) {
                imageView.setVisibility(8);
            } else if (z) {
                imageView.setBackgroundResource(2131165199);
            } else {
                imageView.setBackgroundResource(2131165198);
            }
            a aVar = (a) getGroup(i);
            com.android.contacts.model.account.a a2 = this.d.a(aVar.f1676b, aVar.c);
            String str2 = aVar.f1675a;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                str = str2;
                z2 = false;
                if (aVar.f1675a != null) {
                    str = str2;
                    z2 = false;
                    if (str2.equals(b.a.c)) {
                        String str3 = null;
                        if (com.android.contacts.simcardmanage.b.a(this.f1679b)) {
                            if (aVar.f1676b.equals(b.a.d)) {
                                str3 = AsusContactListFilterWindow.a(1);
                                Log.d("AsusContactListFilterWindow", "MULTI_SIM_ONE_SLOTNAME = " + PhoneCapabilityTester.privacyLogCheck(str3));
                            } else {
                                str3 = null;
                                if (aVar.f1676b.equals("asus.local.simcard2")) {
                                    str3 = AsusContactListFilterWindow.a(2);
                                    Log.d("AsusContactListFilterWindow", "MULTI_SIM_TWO_SLOTNAME = " + PhoneCapabilityTester.privacyLogCheck(str3));
                                }
                            }
                        }
                        str = str3;
                        z2 = false;
                        if (str3 == null) {
                            str = "SIM card";
                            z2 = false;
                        }
                    }
                }
            } else {
                str = str2;
                z2 = false;
                if (aVar.f1676b != null) {
                    str = str2;
                    z2 = false;
                    if (aVar.f1676b.equals(b.a.d)) {
                        String str4 = null;
                        boolean z3 = false;
                        if (com.android.contacts.simcardmanage.b.a(this.f1679b)) {
                            if (aVar.f1675a.equals(b.a.c)) {
                                str4 = AsusContactListFilterWindow.a(1);
                                z3 = true;
                                Log.d("AsusContactListFilterWindow", "MULTI_SIM_ONE_SLOTNAME = " + PhoneCapabilityTester.privacyLogCheck(str4));
                            } else {
                                str4 = null;
                                z3 = false;
                                if (aVar.f1675a.equals("SIM2")) {
                                    str4 = AsusContactListFilterWindow.a(2);
                                    z3 = true;
                                    Log.d("AsusContactListFilterWindow", "MULTI_SIM_TWO_SLOTNAME = " + PhoneCapabilityTester.privacyLogCheck(str4));
                                }
                            }
                        }
                        str = str4;
                        z2 = z3;
                        if (str4 == null) {
                            str = "SIM card";
                            z2 = z3;
                        }
                    }
                }
            }
            CharSequence a3 = a2.a(this.f1679b);
            if (!PhoneCapabilityTester.IsUnbundled() || !this.f1679b.getString(2131755023).equals(a3)) {
                if (a2.g) {
                    i2 = 8;
                } else {
                    textView2.setText(str);
                    i2 = aVar.f1675a == null ? 8 : 0;
                }
                textView2.setVisibility(i2);
                textView.setText(a3);
                if (z2) {
                    textView.setText(str);
                }
            } else {
                textView2.setText(aVar.f1676b);
                textView.setText(str);
            }
            textView3.setText("(" + aVar.g + ")");
            textView3.setVisibility(aVar.g == -1 ? 8 : 0);
            return view2;
        }

        @Override // android.widget.ExpandableListAdapter
        public final boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public final boolean isChildSelectable(int i, int i2) {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$e.class */
    public static final class e extends WeakAsyncTask<ArrayList<ContentProviderOperation>, Void, Void, Activity> {

        /* renamed from: a  reason: collision with root package name */
        private ProgressDialog f1685a;

        public e(Activity activity) {
            super(activity);
        }

        private static Void a(Activity activity, ArrayList<ContentProviderOperation>... arrayListArr) {
            try {
                ContentProviderResult[] applyBatch = activity.getContentResolver().applyBatch("com.android.contacts", arrayListArr[0]);
                boolean z = false;
                if (applyBatch != null) {
                    z = false;
                    if (applyBatch.length > 0) {
                        z = true;
                    }
                }
                Log.d("AsusContactListFilterWindow", "save result = " + (z ? String.valueOf(applyBatch[0].count) : "null"));
                return null;
            } catch (OperationApplicationException e) {
                Log.e("AsusContactListFilterWindow", "Problem saving display groups", e);
                return null;
            } catch (RemoteException e2) {
                Log.e("AsusContactListFilterWindow", "Problem saving display groups", e2);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public final /* synthetic */ Void doInBackground(Activity activity, ArrayList<ContentProviderOperation>[] arrayListArr) {
            return a(activity, arrayListArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public final /* synthetic */ void onPostExecute(Activity activity, Void r8) {
            Activity activity2 = activity;
            try {
                if (!AsusContactListFilterWindow.s) {
                    this.f1685a.dismiss();
                    boolean unused = AsusContactListFilterWindow.t = false;
                    if (AsusContactListFilterWindow.c != null) {
                        AsusContactListFilterWindow.c.onSingleContactFilterClick();
                        AsusContactListFilterWindow.c.onForceReloadData();
                    }
                } else {
                    Log.d("AsusContactListFilterWindow", "onPostExecute mProgress not dismiss");
                }
                AsusContactListFilterWindow.a();
                activity2.getLoaderManager().destroyLoader(1000);
            } catch (Exception e) {
                Log.e("AsusContactListFilterWindow", "Error dismissing progress dialog", e);
            }
            activity2.stopService(new Intent(activity2, EmptyService.class));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.contacts.util.WeakAsyncTask
        public final /* synthetic */ void onPreExecute(Activity activity) {
            Activity activity2 = activity;
            if (!AsusContactListFilterWindow.t) {
                this.f1685a = ProgressDialog.show(activity2, null, activity2.getText(2131756076));
                boolean unused = AsusContactListFilterWindow.t = true;
            } else {
                Log.d("AsusContactListFilterWindow", "onPreExecute mProgress not dismiss, do not show again");
            }
            activity2.startService(new Intent(activity2, EmptyService.class));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$f.class */
    final class f extends AsyncTask<Void, Boolean, Void> {

        /* renamed from: a  reason: collision with root package name */
        b f1686a;

        public f(b bVar) {
            this.f1686a = bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00a6 A[DONT_GENERATE] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int a(android.content.ContentResolver r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
            /*
                r0 = r8
                java.lang.String r0 = com.android.contacts.util.AccountFilterUtil.handleSqliteEscapeString(r0)
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "SELECT _id FROM accounts WHERE account_name ='"
                r1.<init>(r2)
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "' AND account_type = '"
                java.lang.StringBuilder r0 = r0.append(r1)
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "'"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r9 = r0
                r0 = r9
                r8 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0047
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = " AND data_set = '"
                java.lang.StringBuilder r0 = r0.append(r1)
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "'"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8 = r0
            L_0x0047:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "_id IN ( SELECT contact_id FROM raw_contacts WHERE _id NOT IN ( SELECT raw_contact_id FROM data WHERE mimetype_id = (SELECT _ID FROM mimetypes WHERE mimetype = 'vnd.android.cursor.item/group_membership')) AND account_id IN ( "
                r1.<init>(r2)
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "))"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r9 = r0
                r0 = r9
                r8 = r0
                boolean r0 = com.android.contacts.list.AsusContactListFilterWindow.k()
                if (r0 == 0) goto L_0x0079
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = " AND has_phone_number=1"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8 = r0
            L_0x0079:
                r0 = r7
                android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "_id"
                r3[r4] = r5
                r3 = r8
                r4 = 0
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x00bc
                r0 = r8
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00af
                if (r0 == 0) goto L_0x00bc
                r0 = r8
                int r0 = r0.getCount()     // Catch: all -> 0x00af
                r11 = r0
            L_0x00a2:
                r0 = r8
                if (r0 == 0) goto L_0x00ac
                r0 = r8
                r0.close()
            L_0x00ac:
                r0 = r11
                return r0
            L_0x00af:
                r7 = move-exception
                r0 = r8
                if (r0 == 0) goto L_0x00ba
                r0 = r8
                r0.close()
            L_0x00ba:
                r0 = r7
                throw r0
            L_0x00bc:
                r0 = -1
                r11 = r0
                goto L_0x00a2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.AsusContactListFilterWindow.f.a(android.content.ContentResolver, java.lang.String, java.lang.String, java.lang.String):int");
        }

        private Void a() {
            if (AsusContactListFilterWindow.f1664a == null || this.f1686a == null) {
                return null;
            }
            ContentResolver contentResolver = AsusContactListFilterWindow.f1664a.getContentResolver();
            for (int i = 0; i < this.f1686a.size(); i++) {
                a aVar = this.f1686a.get(i);
                aVar.g = b(contentResolver, aVar.f1675a, aVar.f1676b, aVar.c);
                publishProgress(true);
            }
            Cursor query = contentResolver.query(Uri.parse(PhoneCapabilityTester.IsAsusDevice() ? ContactsContract.Groups.CONTENT_SUMMARY_URI.toString() + "_asus" : ContactsContract.Groups.CONTENT_SUMMARY_URI.toString()), null, "deleted != 1", null, null);
            HashMap hashMap = new HashMap();
            try {
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            do {
                                hashMap.put(Long.valueOf(query.getLong(query.getColumnIndex("_id"))), Integer.valueOf(query.getInt(query.getColumnIndex("summ_count"))));
                            } while (query.moveToNext());
                        }
                    } catch (Exception e) {
                        Log.d("AsusContactListFilterWindow", e.toString());
                        if (query != null) {
                            query.close();
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                for (int i2 = 0; i2 < this.f1686a.size(); i2++) {
                    a aVar2 = this.f1686a.get(i2);
                    if (aVar2 != null) {
                        if (aVar2.e != null) {
                            for (int i3 = 0; i3 < aVar2.e.size(); i3++) {
                                AsusGroupDelta asusGroupDelta = aVar2.e.get(i3);
                                if (asusGroupDelta.b("_id")) {
                                    asusGroupDelta.a("summ_count", ((Integer) hashMap.get(Long.valueOf(asusGroupDelta.d("_id").longValue()))).intValue());
                                }
                            }
                        }
                        if (aVar2.d != null) {
                            aVar2.d.a("summ_count", a(contentResolver, aVar2.f1675a, aVar2.f1676b, aVar2.c));
                        }
                    }
                    publishProgress(true);
                }
                return null;
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x006f A[DONT_GENERATE] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int b(android.content.ContentResolver r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
            /*
                r0 = r8
                java.lang.String r0 = com.android.contacts.util.AccountFilterUtil.handleSqliteEscapeString(r0)
                r8 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0078
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '"
                r1.<init>(r2)
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "' AND account_type = '"
                java.lang.StringBuilder r0 = r0.append(r1)
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "'))"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8 = r0
            L_0x0028:
                boolean r0 = com.android.contacts.list.AsusContactListFilterWindow.k()
                if (r0 == 0) goto L_0x00b6
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = " AND has_phone_number=1"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8 = r0
            L_0x0042:
                r0 = r7
                android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "_id"
                r3[r4] = r5
                r3 = r8
                r4 = 0
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x00b0
                r0 = r8
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00a3
                if (r0 == 0) goto L_0x00b0
                r0 = r8
                int r0 = r0.getCount()     // Catch: all -> 0x00a3
                r11 = r0
            L_0x006b:
                r0 = r8
                if (r0 == 0) goto L_0x0075
                r0 = r8
                r0.close()
            L_0x0075:
                r0 = r11
                return r0
            L_0x0078:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id = (SELECT _ID FROM accounts WHERE account_name = '"
                r1.<init>(r2)
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "' AND account_type = '"
                java.lang.StringBuilder r0 = r0.append(r1)
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "' AND data_set = '"
                java.lang.StringBuilder r0 = r0.append(r1)
                r1 = r10
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r1 = "'))"
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8 = r0
                goto L_0x0028
            L_0x00a3:
                r7 = move-exception
                r0 = r8
                if (r0 == 0) goto L_0x00ae
                r0 = r8
                r0.close()
            L_0x00ae:
                r0 = r7
                throw r0
            L_0x00b0:
                r0 = 0
                r11 = r0
                goto L_0x006b
            L_0x00b6:
                goto L_0x0042
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.AsusContactListFilterWindow.f.b(android.content.ContentResolver, java.lang.String, java.lang.String, java.lang.String):int");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(Boolean[] boolArr) {
            Boolean[] boolArr2 = boolArr;
            super.onProgressUpdate(boolArr2);
            if (boolArr2[0].booleanValue() && AsusContactListFilterWindow.this.h != null) {
                AsusContactListFilterWindow.this.h.notifyDataSetChanged();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$g.class */
    public final class g {

        /* renamed from: b  reason: collision with root package name */
        public ViewGroup f1689b = null;

        /* renamed from: a  reason: collision with root package name */
        public int f1688a = -1;

        public g() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$h.class */
    public interface h {
        void onForceReloadData();

        void onSingleContactFilterClick();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusContactListFilterWindow$i.class */
    public interface i {
        void e();
    }

    static /* synthetic */ Uri a(Uri uri) {
        return uri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
    }

    public static String a(int i2) {
        return f1664a != null ? com.android.contacts.simcardmanage.b.f(f1664a, i2) : null;
    }

    public static void a() {
        if (c != null) {
            c = null;
        }
    }

    public static void a(Context context) {
        if (context != null) {
            f1664a = context.getApplicationContext();
        } else {
            f1664a = context;
        }
    }

    static /* synthetic */ void a(AsusContactListFilterWindow asusContactListFilterWindow, boolean z) {
        if (asusContactListFilterWindow.i != null && f1664a != null) {
            if (!z) {
                asusContactListFilterWindow.i.update(f1664a.getResources().getDimensionPixelSize(2131099725), f1664a.getResources().getDimensionPixelSize(2131099791));
            } else {
                asusContactListFilterWindow.i.update(f1664a.getResources().getDimensionPixelSize(2131099725), -2);
            }
        }
    }

    public static void a(boolean z) {
        s = z;
    }

    public static void b() {
        p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(AccountWithDataSet accountWithDataSet) {
        Throwable th;
        Cursor cursor;
        boolean z;
        try {
            String str = "account_name='" + accountWithDataSet.name + "' AND account_type='" + accountWithDataSet.type + "'";
            String str2 = str;
            if (accountWithDataSet.f1998a != null) {
                str2 = str + " AND data_set='" + accountWithDataSet.f1998a + "'";
            }
            cursor = f1664a.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, null, str2, null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        z = true;
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
            z = false;
            return z;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public static boolean c() {
        return p;
    }

    static /* synthetic */ boolean k() {
        boolean z = false;
        if (f1664a != null) {
            z = PreferenceManager.getDefaultSharedPreferences(f1664a).getBoolean(ContactsPreferences.PREF_DISPLAY_ONLY_PHONES, false);
        }
        return z;
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public final boolean onChildClick(ExpandableListView expandableListView, View view, int i2, int i3, long j) {
        CheckBox checkBox = (CheckBox) view.findViewById(16908289);
        AsusGroupDelta asusGroupDelta = (AsusGroupDelta) this.h.getChild(i2, i3);
        if (asusGroupDelta != null) {
            checkBox.toggle();
            asusGroupDelta.a(checkBox.isChecked());
        } else {
            ((Activity) f1664a).openContextMenu(view);
        }
        this.h.a(i2);
        return true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        if (contextMenuInfo instanceof ExpandableListView.ExpandableListContextMenuInfo) {
            ExpandableListView.ExpandableListContextMenuInfo expandableListContextMenuInfo = (ExpandableListView.ExpandableListContextMenuInfo) contextMenuInfo;
            int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListContextMenuInfo.packedPosition);
            int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListContextMenuInfo.packedPosition);
            if (packedPositionChild != -1) {
                final a aVar = (a) this.h.getGroup(packedPositionGroup);
                final AsusGroupDelta asusGroupDelta = (AsusGroupDelta) this.h.getChild(packedPositionGroup, packedPositionChild);
                if (((!"com.google".equals(aVar.f1676b) || aVar.c != null) ? (char) 0 : (char) 2) == 0) {
                    return;
                }
                if (asusGroupDelta != null) {
                    final CharSequence a2 = asusGroupDelta.a(f1664a);
                    contextMenu.setHeaderTitle(a2);
                    contextMenu.add(2131755850).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.4
                        final /* synthetic */ int c = 2;

                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            final AsusContactListFilterWindow asusContactListFilterWindow = AsusContactListFilterWindow.this;
                            final a aVar2 = aVar;
                            final AsusGroupDelta asusGroupDelta2 = asusGroupDelta;
                            int i2 = this.c;
                            CharSequence charSequence = a2;
                            boolean d2 = aVar2.d.d();
                            if (i2 != 2 || !d2 || asusGroupDelta2.equals(aVar2.d)) {
                                aVar2.a(asusGroupDelta2, false, true);
                                asusContactListFilterWindow.h.notifyDataSetChanged();
                                return true;
                            }
                            AlertDialog.Builder builder = new AlertDialog.Builder(AsusContactListFilterWindow.f1664a);
                            String string = AsusContactListFilterWindow.f1664a.getString(2131755591, charSequence);
                            builder.setTitle(2131755850);
                            builder.setMessage(string);
                            builder.setNegativeButton(17039360, (DialogInterface.OnClickListener) null);
                            builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.5
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i3) {
                                    aVar2.a(aVar2.d, false, true);
                                    aVar2.a(asusGroupDelta2, false, true);
                                    AsusContactListFilterWindow.this.h.notifyDataSetChanged();
                                }
                            });
                            builder.show();
                            return true;
                        }
                    });
                    return;
                }
                contextMenu.setHeaderTitle(2131755573);
                Iterator<AsusGroupDelta> it = aVar.f.iterator();
                while (it.hasNext()) {
                    final AsusGroupDelta next = it.next();
                    if (!next.d()) {
                        contextMenu.add(next.a(f1664a)).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.list.AsusContactListFilterWindow.6

                            /* renamed from: b  reason: collision with root package name */
                            final /* synthetic */ int f1673b = 2;

                            @Override // android.view.MenuItem.OnMenuItemClickListener
                            public final boolean onMenuItemClick(MenuItem menuItem) {
                                if (!next.f1674a || this.f1673b != 2) {
                                    aVar.a(next, true, true);
                                } else {
                                    a aVar2 = aVar;
                                    Iterator<AsusGroupDelta> it2 = aVar2.f.iterator();
                                    while (it2.hasNext()) {
                                        aVar2.a(it2.next(), true, false);
                                        it2.remove();
                                    }
                                }
                                AsusContactListFilterWindow.this.h.notifyDataSetChanged();
                                return true;
                            }
                        });
                    }
                }
            }
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        Log.d("AsusContactListFilterWindow", "dismiss");
        this.d.e();
        if (this.h != null && this.h.e != null) {
            b bVar = this.h.e;
            ArrayList arrayList = new ArrayList();
            Iterator<a> it = bVar.iterator();
            while (it.hasNext()) {
                a next = it.next();
                Iterator<AsusGroupDelta> it2 = next.e.iterator();
                while (it2.hasNext()) {
                    ContentProviderOperation f2 = it2.next().f();
                    if (f2 != null) {
                        arrayList.add(f2);
                    }
                }
                Iterator<AsusGroupDelta> it3 = next.f.iterator();
                while (it3.hasNext()) {
                    ContentProviderOperation f3 = it3.next().f();
                    if (f3 != null) {
                        arrayList.add(f3);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                if (c != null) {
                    c.onSingleContactFilterClick();
                }
                a();
                ((Activity) this.f1665b).getLoaderManager().destroyLoader(1000);
            } else {
                new e((Activity) this.f1665b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList[]{arrayList});
            }
        } else if (c != null) {
            c.onSingleContactFilterClick();
        }
        this.j = 0;
        q = 0;
        r = 0;
        this.e = null;
        this.h = null;
        this.i = null;
        this.k = null;
    }
}

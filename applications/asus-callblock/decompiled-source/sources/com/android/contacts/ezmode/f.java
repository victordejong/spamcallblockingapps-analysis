package com.android.contacts.ezmode;

import android.content.ContentUris;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.SearchView;
import android.widget.SectionIndexer;
import com.android.contacts.fastscroll.AlphabetFastScroll;
import com.android.contacts.list.ai;
import com.android.contacts.list.am;
import com.android.contacts.list.p;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.AddHKQuickIndexUtils;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/f.class */
public class f extends p<e> implements View.OnClickListener, View.OnFocusChangeListener, SearchView.OnQueryTextListener, AlphabetFastScroll.a, ai.a {
    private static final String c = f.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public AlphabetFastScroll f1257a;
    private Boolean d;
    private c e;
    private View f;
    private View g;
    private View h;
    private SearchView i;
    private Loader<Cursor> l;

    /* renamed from: b  reason: collision with root package name */
    public Set<String> f1258b = new HashSet();
    private boolean j = false;
    private Cursor k = null;
    private ai B = null;
    private boolean C = false;
    private AbsListView.OnScrollListener D = new AbsListView.OnScrollListener() { // from class: com.android.contacts.ezmode.f.1

        /* renamed from: b  reason: collision with root package name */
        private boolean f1260b = false;

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0) {
                Set<String> a2 = f.this.a(absListView.getFirstVisiblePosition(), absListView.getLastVisiblePosition());
                if (f.this.f1257a != null) {
                    f.this.f1257a.a(a2);
                }
                this.f1260b = false;
            } else if (!this.f1260b && f.this.f1257a != null) {
                this.f1260b = true;
                f.this.g_();
            }
        }
    };
    private final SearchView.OnCloseListener E = new SearchView.OnCloseListener() { // from class: com.android.contacts.ezmode.f.2
        @Override // android.widget.SearchView.OnCloseListener
        public final boolean onClose() {
            if (TextUtils.isEmpty(f.this.i.getQuery())) {
                return true;
            }
            f.this.i.setQuery(null, true);
            return true;
        }
    };

    public f() {
        this.d = false;
        x();
        f(true);
        Locale locale = Locale.getDefault();
        this.d = Boolean.valueOf(locale.toString().startsWith(Locale.TRADITIONAL_CHINESE.toString()) || locale.toString().startsWith(Locale.SIMPLIFIED_CHINESE.toString()) || locale.toString().startsWith("en") || locale.toString().startsWith("pt") || locale.toString().startsWith("it") || locale.toString().startsWith("fr") || locale.toString().startsWith("es") || locale.toString().startsWith("de") || locale.toString().startsWith("nl"));
        if (this.d.booleanValue()) {
            g(false);
        } else {
            g(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<String> a(int i, int i2) {
        HashSet hashSet = new HashSet();
        int i3 = 0;
        if (i >= 0 && i2 >= 0) {
            ListAdapter adapter = s().getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                i3 = ((HeaderViewListAdapter) adapter).getHeadersCount();
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            if (adapter instanceof SectionIndexer) {
                SectionIndexer sectionIndexer = (SectionIndexer) adapter;
                Object[] sections = sectionIndexer.getSections();
                while (i <= i2) {
                    int sectionForPosition = sectionIndexer.getSectionForPosition(i - i3);
                    if (sectionForPosition >= 0) {
                        hashSet.add((String) sections[sectionForPosition]);
                    }
                    i++;
                }
            }
            Log.d(c, "mVisibleSet.size = " + hashSet.size());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return this.d.booleanValue() ? layoutInflater.inflate(2131427547, (ViewGroup) null) : layoutInflater.inflate(2131427548, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        Uri uri;
        e eVar = (e) this.t;
        String string = ((Cursor) eVar.getItem(i)).getString(7);
        Uri j = eVar.j(i);
        int g = eVar.g(i);
        Cursor cursor = (Cursor) eVar.getItem(i);
        if (cursor == null) {
            uri = null;
        } else if (cursor == null || cursor.isClosed()) {
            uri = null;
        } else {
            uri = ContactsContract.Contacts.getLookupUri(cursor.getLong(4), cursor.getString(5));
            long j2 = ((am) eVar.c(g)).f;
            if (j2 != 0) {
                uri = uri.buildUpon().appendQueryParameter("directory", String.valueOf(j2)).build();
            }
        }
        Log.d(c, "phoneUri = " + j);
        Log.d(c, "contactUri = " + uri);
        Intent intent = new Intent("android.intent.action.EZ_CONTACT_DETAIL", uri);
        intent.putExtra("INDEX_PHONE_URI", j);
        intent.putExtra("INDEX_CONTACT_DETAIL_TITLE", string);
        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
    }

    @Override // com.android.contacts.list.p
    /* renamed from: a */
    public final void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        AsyncTask.Status status;
        if (this.t != 0) {
            this.f1258b.clear();
            ((e) this.t).d = true;
        }
        if (this.j && !CompatUtils.isNCompatible()) {
            super.onLoadFinished(loader, cursor);
        } else if (this.o || !this.d.booleanValue() || cursor == null || cursor.getCount() <= 0) {
            super.onLoadFinished(loader, cursor);
        } else if (this.k == null || !cursor.equals(this.k)) {
            this.l = loader;
            this.k = cursor;
            try {
                if (this.B != null && ((status = this.B.getStatus()) == AsyncTask.Status.RUNNING || status == AsyncTask.Status.FINISHED)) {
                    this.B.cancel(true);
                }
                if (this.C) {
                    Log.d(c, "ez mode create new sort task,data count:" + cursor.getCount());
                }
                this.B = new ai(getActivity(), this);
                this.B.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, cursor);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            a(ai.f1774a);
        }
        if (cursor == null || cursor.getCount() != 0) {
            if (this.g != null) {
                this.g.setVisibility(8);
            }
            if (this.h != null) {
                this.h.setVisibility(0);
                return;
            }
            return;
        }
        if (this.g != null) {
            this.g.setVisibility(0);
        }
        if (this.h != null) {
            this.h.setVisibility(8);
        }
    }

    @Override // com.android.contacts.list.ai.a
    public final void a(Cursor cursor) {
        if (this.C && cursor != null) {
            Log.d(c, "ez mode sort task callback,data count:" + cursor.getCount());
        }
        super.onLoadFinished(this.l, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        if (this.f1257a == null) {
            this.f1257a = (AlphabetFastScroll) getView().findViewById(2131296339);
        }
        if (this.f1257a != null) {
            this.f1257a.setListener(this);
            w();
            a(this.f1257a);
        } else {
            g(true);
        }
        this.g = getView().findViewById(2131296815);
        this.h = getView().findViewById(2131296805);
        this.f = getView().findViewById(2131297109);
        this.f.setOnClickListener(this);
        registerForContextMenu(s());
        this.i = (SearchView) getView().findViewById(2131297252);
        if (this.i != null) {
            this.i.setQueryHint(getResources().getString(2131755688));
            this.i.setOnQueryTextListener(this);
            this.i.setQuery(this.p, false);
            this.i.setOnCloseListener(this.E);
            this.i.setOnQueryTextFocusChangeListener(this);
            this.i.setFocusable(false);
            this.i.setBackgroundColor(getResources().getColor(2131034114));
        }
    }

    @Override // com.android.contacts.fastscroll.AlphabetFastScroll.a
    public final void b(int i) {
        this.f1257a.a(a(i, i + 6));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final /* synthetic */ e c() {
        e eVar = new e(getContext());
        eVar.X = this.m;
        eVar.p = true;
        return eVar;
    }

    @Override // com.android.contacts.fastscroll.AlphabetFastScroll.a
    public final void g_() {
        ((e) this.t).d = false;
        this.f1257a.a(new HashSet());
    }

    @Override // com.android.contacts.list.p
    public final void i_() {
        if (getActivity() != null) {
            super.i_();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131297109) {
            ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.EZ_NEW_CONTACT"));
        }
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z = true;
        if (this.e != null) {
            switch (menuItem.getItemId()) {
                case 2131296658:
                    b.a(getActivity(), this.e.e, false);
                    break;
                case 2131296768:
                    Intent intent = new Intent("android.intent.action.EZ_EDIT_CONTACT", ContactsContract.Contacts.getLookupUri(this.e.f1253a, this.e.d));
                    intent.putExtra("PHONE_ID", this.e.f1254b);
                    intent.putExtra("need_open_detail", true);
                    ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                    break;
            }
            return z;
        }
        z = super.onContextItemSelected(menuItem);
        return z;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Locale.getDefault().toString().equals("zh_HK")) {
            this.d = Boolean.valueOf(AddHKQuickIndexUtils.isSupportHKQuickIndex(getActivity()));
            if (this.d.booleanValue()) {
                Log.d(c, "HK set quick index");
                g(false);
            } else {
                Log.d(c, "HK not set quick index");
                g(true);
            }
        }
        this.j = PhoneCapabilityTester.IsAsusDevice();
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getActivity().getMenuInflater().inflate(2131492888, contextMenu);
        Cursor cursor = (Cursor) ((e) this.t).getItem(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position);
        this.e = new c();
        this.e.f1253a = cursor.getLong(4);
        this.e.f1254b = cursor.getLong(0);
        this.e.c = cursor.getString(7);
        this.e.d = cursor.getString(5);
        this.e.e = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, this.e.f1254b);
        int columnIndex = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
        this.e.f = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
        if (this.e.f > 0 && !e.a(getActivity()).a(this.e.f)) {
            contextMenu.clearHeader();
            contextMenu.clear();
        }
        if (TextUtils.isEmpty(this.e.c)) {
            contextMenu.setHeaderTitle(17039374);
        } else {
            contextMenu.setHeaderTitle(this.e.c);
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(getActivity());
    }

    @Override // com.android.contacts.list.p, android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        switch (view.getId()) {
            case 2131297252:
                if (z) {
                    View findFocus = this.i.findFocus();
                    InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
                    if (inputMethodManager != null && !inputMethodManager.showSoftInput(findFocus, 0)) {
                        Log.w(c, "Failed to show soft input method.");
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        boolean z = false;
        boolean z2 = false;
        if (!str.equals(this.p)) {
            super.a(str, true);
            if (!this.o) {
                z = true;
            }
            g(z);
            this.p = str;
            z2 = true;
        }
        return z2;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (this.i == null) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.i.getWindowToken(), 0);
        }
        this.i.clearFocus();
        return true;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onStart() {
        super.onStart();
        s().setOnScrollListener(this.D);
    }
}

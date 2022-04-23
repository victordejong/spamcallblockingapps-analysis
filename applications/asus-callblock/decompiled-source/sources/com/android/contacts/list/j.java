package com.android.contacts.list;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.ContentUris;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.contacts.detail.DetailDialogFragment;
import com.android.contacts.list.i;
import com.android.contacts.model.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/j.class */
public class j extends p<i> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1840a = j.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public ax f1841b;
    public long c;
    public long[] d;
    public long[] e;
    private Uri h;
    private a i;
    public Bundle f = null;
    private final LoaderManager.LoaderCallbacks<Cursor> j = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.j.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            CursorLoader kVar;
            switch (i) {
                case p.POSITION_NONE /* -2 */:
                    kVar = new CursorLoader(j.this.getActivity(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j.this.c), new String[]{"display_name"}, null, null, null);
                    break;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    throw new IllegalArgumentException("No loader for ID=" + i);
                case 1:
                    kVar = new k(j.this.getActivity());
                    i iVar = (i) j.this.t;
                    if (iVar != null) {
                        iVar.a(kVar, 0L);
                        break;
                    }
                    break;
            }
            return kVar;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            switch (loader.getId()) {
                case p.POSITION_NONE /* -2 */:
                    if (cursor2 != null && cursor2.moveToFirst()) {
                        j.a(j.this, cursor2.getString(0));
                        return;
                    }
                    return;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    return;
                case 1:
                    j.a(j.this, ((k) loader).f1845b, cursor2);
                    return;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    public int g = 0;
    private i.a k = new i.a() { // from class: com.android.contacts.list.j.2
        @Override // com.android.contacts.list.i.a
        public final void a(View view) {
            int positionForView = j.this.u.getPositionForView(view);
            if (positionForView >= 0) {
                DetailDialogFragment.newInstance(((i) j.this.t).m(positionForView)).show(j.this.getFragmentManager(), j.f1840a);
            }
        }

        @Override // com.android.contacts.list.i.a
        public final void b(View view) {
            j.this.a(j.this.u.getPositionForView(view));
        }
    };

    public j() {
        x();
        f(true);
        g(false);
        this.n = false;
    }

    static /* synthetic */ void a(j jVar, Cursor cursor, Cursor cursor2) {
        ((i) jVar.t).a(0, cursor);
        jVar.g(true);
        jVar.a(1, cursor2);
    }

    static /* synthetic */ void a(j jVar, String str) {
        Activity activity = jVar.getActivity();
        ((TextView) activity.findViewById(2131296978)).setText(activity.getString(2131755226, new Object[]{str}));
    }

    /* JADX WARN: Finally extract failed */
    private Uri d() {
        Uri uri;
        Cursor query = getActivity().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"lookup"}, "_id = " + this.c, null, null);
        try {
            if (query.moveToFirst()) {
                Uri lookupUri = ContactsContract.Contacts.getLookupUri(this.c, query.getString(0));
                uri = lookupUri;
                if (query != null) {
                    query.close();
                    uri = lookupUri;
                }
            } else {
                uri = null;
                if (query != null) {
                    query.close();
                    uri = null;
                }
            }
            return uri;
        } catch (Throwable th) {
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427388, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        i iVar = (i) this.t;
        int g = iVar.g(i);
        if (g == 0) {
            if (this.h == null || !iVar.m(i).equals(this.h)) {
                if (iVar.g.get(iVar.m(i)) == null || iVar.g.get(iVar.m(i)).intValue() == 0) {
                    iVar.g.put(iVar.m(i), 1);
                    iVar.f.put(iVar.m(i), 1);
                    this.g++;
                } else if (iVar.g.get(iVar.m(i)).intValue() == 1) {
                    iVar.g.put(iVar.m(i), 0);
                    iVar.f.put(iVar.m(i), 0);
                    this.g--;
                }
            } else if (iVar.h.get(Long.valueOf(iVar.j(i))) == null || iVar.h.get(Long.valueOf(iVar.j(i))).intValue() == 0) {
                iVar.h.put(Long.valueOf(iVar.j(i)), 1);
                this.g++;
            } else if (iVar.h.get(Long.valueOf(iVar.j(i))).intValue() == 1) {
                iVar.h.put(Long.valueOf(iVar.j(i)), 0);
                this.g--;
            }
        } else if (g == 1) {
            if (iVar.f.get(iVar.m(i)) == null || iVar.f.get(iVar.m(i)).intValue() == 0) {
                iVar.f.put(iVar.m(i), 1);
                if (iVar.g.get(iVar.m(i)) != null) {
                    iVar.g.put(iVar.m(i), 1);
                }
                this.g++;
            } else if (iVar.f.get(iVar.m(i)).intValue() == 1) {
                iVar.f.put(iVar.m(i), 0);
                if (iVar.g.get(iVar.m(i)) != null) {
                    iVar.g.put(iVar.m(i), 0);
                }
                this.g--;
            }
        }
        iVar.notifyDataSetChanged();
        if (this.f1841b == null) {
            return;
        }
        if (this.g > 0) {
            this.f1841b.onSelectAContact(true);
        } else {
            this.f1841b.onSelectAContact(false);
        }
    }

    @Override // com.android.contacts.list.p
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.c = bundle.getLong("targetContactId");
        }
    }

    @Override // com.android.contacts.list.p
    public final void a(String str, boolean z) {
        super.b(str);
        ((i) this.t).a(str);
        f();
        getLoaderManager().restartLoader(1, null, this.j);
    }

    @Override // com.android.contacts.list.p
    public final /* synthetic */ i c() {
        return new i(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void d_() {
        f();
        getLoaderManager().initLoader(-2, null, this.j);
        getLoaderManager().initLoader(1, null, this.j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        i iVar = (i) this.t;
        iVar.e = this.c;
        iVar.i = this.d;
        iVar.j = this.e;
        this.i = a.a(getActivity());
        iVar.l = this.i;
        if (this.e != null && this.e[0] > 0) {
            this.h = d();
            iVar.k = this.h;
        }
        iVar.m = this.k;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.f != null) {
            i iVar = (i) this.t;
            ArrayList<String> stringArrayList = this.f.getStringArrayList("mapSuggestAsusJoin");
            if (!(iVar == null || stringArrayList == null)) {
                for (int i = 0; i < stringArrayList.size(); i++) {
                    iVar.g.put(Uri.parse(stringArrayList.get(i)), 1);
                }
                iVar.notifyDataSetChanged();
            }
            ArrayList<String> stringArrayList2 = this.f.getStringArrayList("mapAllAsusJoin");
            if (!(iVar == null || stringArrayList2 == null)) {
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    iVar.f.put(Uri.parse(stringArrayList2.get(i2)), 1);
                }
                iVar.notifyDataSetChanged();
            }
            ArrayList<String> stringArrayList3 = this.f.getStringArrayList("mapUnlinkSuggestAsusJoin");
            if (!(iVar == null || stringArrayList3 == null)) {
                for (int i3 = 0; i3 < stringArrayList3.size(); i3++) {
                    iVar.h.put(Long.valueOf(Long.parseLong(stringArrayList3.get(i3))), 1);
                }
                iVar.notifyDataSetChanged();
            }
            this.g = this.f.getInt("to_join_count");
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("targetContactId", this.c);
    }
}

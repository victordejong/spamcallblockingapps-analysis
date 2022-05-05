package com.android.contacts.list;

import android.app.Activity;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.GroupDetailActivity;
import com.android.contacts.group.GroupEditorFragment;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/f.class */
public class f extends p<e> {
    private ProgressDialog B;

    /* renamed from: a  reason: collision with root package name */
    public ax f1821a;
    public String f;
    public String h;
    private Uri j;
    private long k;
    private String i = f.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public String f1822b = null;
    public String c = null;
    public Bundle d = null;
    public boolean e = false;
    public int g = 0;
    private final String[] l = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, SelectAccountActivity.ACCOUNT_TYPE};
    private boolean C = false;
    private final LoaderManager.LoaderCallbacks<Cursor> D = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.f.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            switch (i) {
                case 1:
                    CursorLoader cursorLoader = new CursorLoader(f.this.getActivity());
                    e eVar = (e) f.this.t;
                    if (eVar != null) {
                        eVar.d = f.this.f1822b;
                        eVar.e = f.this.c;
                        eVar.a(cursorLoader, 0L);
                    }
                    return cursorLoader;
                default:
                    throw new IllegalArgumentException("No loader for ID=" + i);
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            switch (loader.getId()) {
                case 1:
                    f.this.g(true);
                    f.this.a(1, cursor2);
                    return;
                default:
                    return;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    public f() {
        x();
        f(true);
        g(false);
        this.n = false;
    }

    /* JADX WARN: Finally extract failed */
    private long[] a(ArrayList<Long> arrayList) {
        long[] jArr;
        Cursor cursor = null;
        String str = BuildConfig.FLAVOR;
        int i = 0;
        while (i < arrayList.size()) {
            str = i == 0 ? str.concat("contact_id=?") : str.concat(" OR contact_id=?");
            i++;
        }
        if (!str.equals(BuildConfig.FLAVOR)) {
            int size = arrayList.size();
            String[] strArr = new String[size];
            for (int i2 = 0; i2 < size; i2++) {
                strArr[i2] = String.valueOf(arrayList.get(i2));
            }
            cursor = getActivity().getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, this.l, str, strArr, null);
        }
        ArrayList arrayList2 = new ArrayList();
        if (cursor == null) {
            jArr = new long[0];
        } else {
            try {
                cursor.moveToPosition(-1);
                while (cursor.moveToNext()) {
                    arrayList2.add(Long.valueOf(cursor.getLong(0)));
                }
                cursor.close();
                jArr = new long[arrayList2.size()];
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    jArr[i3] = ((Long) arrayList2.get(i3)).longValue();
                }
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427388, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        e eVar = (e) this.t;
        if (eVar.g.get(eVar.j(i)) == null || eVar.g.get(eVar.j(i)).intValue() == 0) {
            if (com.android.contacts.group.f.a(this.f) ? eVar.f.size() + this.g >= com.android.contacts.group.f.a() : false) {
                Toast.makeText(getActivity(), getActivity().getResources().getString(2131755781, Integer.valueOf(com.android.contacts.group.f.a())), 0).show();
                return;
            } else {
                eVar.g.put(eVar.j(i), 1);
                this.g++;
            }
        } else if (eVar.g.get(eVar.j(i)).intValue() == 1) {
            eVar.g.put(eVar.j(i), 0);
            this.g--;
        }
        eVar.notifyDataSetChanged();
        if (this.f1821a == null) {
            return;
        }
        if (this.g > 0) {
            this.f1821a.onSelectAContact(true);
        } else {
            this.f1821a.onSelectAContact(false);
        }
    }

    public final void a(Uri uri, long j) {
        this.j = uri;
        this.k = j;
    }

    public final void a(String str) {
        this.f = str;
        ((e) this.t).h = this.f;
    }

    @Override // com.android.contacts.list.p
    public final void a(String str, boolean z) {
        super.b(str);
        ((e) this.t).a(str);
        f();
        getLoaderManager().restartLoader(1, null, this.D);
    }

    public final void a(List<GroupEditorFragment.Member> list) {
        e eVar = (e) this.t;
        eVar.f.clear();
        for (GroupEditorFragment.Member member : list) {
            eVar.f.add(Long.valueOf(member.f1354a));
        }
        eVar.notifyDataSetChanged();
        f();
        getLoaderManager().restartLoader(1, null, this.D);
    }

    public final void a(boolean z, Uri uri) {
        Intent intent;
        int i;
        boolean z2 = uri != null;
        Log.d(this.i, "onSaveCompleted(" + uri + ")");
        if (z) {
            Toast.makeText(getActivity(), z2 ? 2131755674 : 2131755673, 0).show();
        }
        if (!z2 || uri == null) {
            intent = null;
            i = 0;
        } else {
            String authority = uri.getAuthority();
            Intent intent2 = new Intent();
            if ("contacts".equals(authority)) {
                intent2.setData(ContentUris.withAppendedId(Uri.parse("content://contacts/groups"), ContentUris.parseId(uri)));
            } else {
                intent2.setData(uri);
            }
            i = -1;
            intent = intent2;
        }
        if (getActivity().getIntent().getBooleanExtra("direct_close", false)) {
            getActivity().setResult(i, intent);
        } else if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            getActivity().setResult(i, intent);
        } else if (intent != null && this.h == null) {
            Intent intent3 = new Intent(getActivity(), GroupDetailActivity.class);
            intent3.setData(intent.getData());
            intent3.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
            ImplicitIntentsUtil.startActivityInApp(getActivity(), intent3);
        }
        this.C = false;
        getActivity().finish();
    }

    public final void b(List<Long> list) {
        e eVar = (e) this.t;
        eVar.f.clear();
        for (int i = 0; i < list.size(); i++) {
            eVar.f.add(list.get(i));
        }
    }

    @Override // com.android.contacts.list.p
    public final /* synthetic */ e c() {
        return new e(getActivity());
    }

    public final void d() {
        this.C = true;
        if (this.B != null) {
            this.B.show();
        }
        e eVar = (e) this.t;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (eVar.g.size() > 0) {
            for (Map.Entry<Uri, Integer> entry : eVar.g.entrySet()) {
                if (entry.getValue().intValue() == 1) {
                    arrayList.add(entry.getKey());
                }
            }
        }
        if (this.e) {
            ArrayList<Long> arrayList2 = new ArrayList<>();
            Iterator<? extends Parcelable> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(Long.valueOf(ContentUris.parseId((Uri) it.next())));
            }
            long[] a2 = a(arrayList2);
            if (!TextUtils.isEmpty(this.f)) {
                getActivity().getLoaderManager().destroyLoader(2);
                if (a2.length == 0) {
                    a(false, this.j);
                } else {
                    Activity activity = getActivity();
                    if (activity != null) {
                        activity.startService(ContactSaveService.a((Context) activity, this.k, this.f, a2, new long[0], (Class<? extends Activity>) activity.getClass(), "saveCompleted"));
                    }
                }
            }
        } else {
            Intent intent = new Intent();
            intent.putParcelableArrayListExtra("uri_array", arrayList);
            getActivity().setResult(-1, intent);
            getActivity().finish();
        }
        this.C = false;
    }

    @Override // com.android.contacts.list.p
    protected final void d_() {
        f();
        getLoaderManager().initLoader(1, null, this.D);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.d != null) {
            e eVar = (e) this.t;
            ArrayList<String> stringArrayList = this.d.getStringArrayList("mapAsusAllMemberList");
            if (!(eVar == null || stringArrayList == null)) {
                for (int i = 0; i < stringArrayList.size(); i++) {
                    eVar.g.put(Uri.parse(stringArrayList.get(i)), 1);
                }
                eVar.notifyDataSetChanged();
            }
            this.g = this.d.getInt("to_add_count");
        }
        this.B = new ProgressDialog(getActivity());
        this.B.setCancelable(false);
        this.B.setMessage(getString(2131755350));
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i2) {
            case p.POSITION_UNCHANGED /* -1 */:
                if (i == 1) {
                    d();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onDestroy() {
        if (this.B != null) {
            this.B.cancel();
            this.B.dismiss();
        }
        this.C = false;
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.C) {
            this.B.show();
        }
    }
}

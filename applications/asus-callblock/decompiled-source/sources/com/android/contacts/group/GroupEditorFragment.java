package com.android.contacts.group;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.LoaderManager;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.d;
import com.android.contacts.e;
import com.android.contacts.editor.g;
import com.android.contacts.k;
import com.android.contacts.list.TouchListView;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.s;
import com.android.contacts.u;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupEditorFragment.class */
public class GroupEditorFragment extends Fragment implements g.a {

    /* renamed from: a  reason: collision with root package name */
    protected static final String[] f1345a = {"_id", "display_name", "display_name_alt", "sort_key", "starred", "photo_id", "photo_thumb_uri", "lookup", "phonetic_name", "has_phone_number", "is_user_profile"};
    private int B;
    private k C;
    private String G;

    /* renamed from: b  reason: collision with root package name */
    public String f1346b;
    public Bundle c;
    public Uri d;
    public long e;
    public b f;
    public c g;
    public ContentResolver h;
    private TouchListView l;
    private com.android.contacts.group.b m;
    private Context n;
    private ViewGroup o;
    private TextView p;
    private long[] q;
    private long[] r;
    private long[] s;
    private long[] t;
    private LayoutInflater u;
    private TextView v;
    private String w;
    private String x;
    private String y;
    private boolean z;
    private final int j = 1;
    private String k = null;
    private String A = BuildConfig.FLAVOR;
    private ArrayList<Member> D = new ArrayList<>();
    private ArrayList<Member> E = new ArrayList<>();
    private ArrayList<Member> F = new ArrayList<>();
    ArrayList<Long> i = new ArrayList<>();
    private boolean H = false;
    private boolean I = false;
    private final String[] J = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, SelectAccountActivity.ACCOUNT_TYPE};
    private final LoaderManager.LoaderCallbacks<Cursor> K = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupEditorFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return new u(GroupEditorFragment.this.n, GroupEditorFragment.this.d);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            GroupEditorFragment.a(GroupEditorFragment.this, cursor);
            GroupEditorFragment.this.getLoaderManager().initLoader(2, null, GroupEditorFragment.this.L);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> L = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupEditorFragment.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return s.a(GroupEditorFragment.this.n, GroupEditorFragment.this.e);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            ArrayList arrayList = new ArrayList();
            cursor2.moveToPosition(-1);
            while (cursor2.moveToNext()) {
                arrayList.add(new Member(cursor2.getString(3), cursor2.getLong(0), cursor2.getString(1), cursor2.getString(2)));
            }
            GroupEditorFragment.a(GroupEditorFragment.this, arrayList);
            GroupEditorFragment.this.getLoaderManager().destroyLoader(2);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> M = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupEditorFragment.3

        /* renamed from: b  reason: collision with root package name */
        private long f1350b;

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            String string = bundle.getString("memberLookupUri");
            this.f1350b = bundle.getLong("rawContactId");
            return new CursorLoader(GroupEditorFragment.this.n, Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, string), GroupEditorFragment.f1345a, null, null, null);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            if (cursor2.moveToFirst()) {
                long j = cursor2.getLong(0);
                String string = cursor2.getString(1);
                String string2 = cursor2.getString(7);
                String string3 = cursor2.getString(6);
                GroupEditorFragment.this.getLoaderManager().destroyLoader(3);
                GroupEditorFragment.a(GroupEditorFragment.this, new Member(string2, j, string, string3));
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> N = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupEditorFragment.4
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return new e(GroupEditorFragment.this.n, GroupEditorFragment.this.d, false);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            GroupEditorFragment.b(GroupEditorFragment.this, cursor);
            GroupEditorFragment.this.getLoaderManager().initLoader(2, null, GroupEditorFragment.this.O);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> O = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.GroupEditorFragment.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return d.a(GroupEditorFragment.this.n, GroupEditorFragment.this.e, f.a(GroupEditorFragment.this.A) ? 0 : f.b(GroupEditorFragment.this.A) ? 1 : 2);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            ArrayList arrayList = new ArrayList();
            cursor2.moveToPosition(-1);
            while (cursor2.moveToNext()) {
                arrayList.add(new Member(cursor2.getString(3), cursor2.getLong(0), cursor2.getString(1), cursor2.getString(2)));
            }
            GroupEditorFragment.a(GroupEditorFragment.this, arrayList);
            GroupEditorFragment.this.getLoaderManager().destroyLoader(2);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupEditorFragment$Member.class */
    public static class Member implements Parcelable, Comparable {
        public static final Parcelable.Creator<Member> CREATOR = new Parcelable.Creator<Member>() { // from class: com.android.contacts.group.GroupEditorFragment.Member.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Member createFromParcel(Parcel parcel) {
                return new Member(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Member[] newArray(int i) {
                return new Member[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f1354a;

        /* renamed from: b  reason: collision with root package name */
        final String f1355b;
        final Uri c;
        boolean d;
        public int e;
        long f;
        int g;
        private final Uri h;

        private Member(Parcel parcel) {
            this.d = false;
            this.e = -1;
            this.f1354a = parcel.readLong();
            this.h = (Uri) parcel.readParcelable(getClass().getClassLoader());
            this.f1355b = parcel.readString();
            this.c = (Uri) parcel.readParcelable(getClass().getClassLoader());
            this.d = parcel.readInt() != 0;
            this.e = parcel.readInt();
        }

        /* synthetic */ Member(Parcel parcel, byte b2) {
            this(parcel);
        }

        public Member(String str, long j, String str2, String str3) {
            this.d = false;
            this.e = -1;
            this.f1354a = j;
            this.h = ContactsContract.Contacts.getLookupUri(j, str);
            this.f1355b = str2;
            this.c = str3 != null ? Uri.parse(str3) : null;
        }

        public Member(String str, long j, String str2, String str3, long j2, int i) {
            this.d = false;
            this.e = -1;
            this.f1354a = j;
            this.h = ContactsContract.Contacts.getLookupUri(j, str);
            this.f1355b = str2;
            this.c = str3 != null ? Uri.parse(str3) : null;
            this.f = j2;
            this.g = i;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            int i = ((Member) obj).e;
            return this.e > i ? 1 : this.e < i ? -1 : 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            return obj instanceof Member ? com.google.a.a.c.a(this.h, ((Member) obj).h) : false;
        }

        public int hashCode() {
            return this.h == null ? 0 : this.h.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1354a);
            parcel.writeParcelable(this.h, i);
            parcel.writeString(this.f1355b);
            parcel.writeParcelable(this.c, i);
            parcel.writeInt(this.d ? 1 : 0);
            parcel.writeInt(this.e);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupEditorFragment$a.class */
    public static final class a extends DialogFragment {
        public static void a(GroupEditorFragment groupEditorFragment) {
            a aVar = new a();
            aVar.setTargetFragment(groupEditorFragment, 0);
            aVar.show(groupEditorFragment.getFragmentManager(), "cancelEditor");
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setIconAttribute(16843605).setMessage(2131755347).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.group.GroupEditorFragment.a.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ((GroupEditorFragment) a.this.getTargetFragment()).d();
                }
            }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupEditorFragment$b.class */
    public interface b {
        void onAccountsNotFound();

        void onGroupNotFound();

        void onReverted();

        void onSaveFinished(int i, Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupEditorFragment$c.class */
    public enum c {
        SELECTING_ACCOUNT,
        LOADING,
        EDITING,
        SAVING,
        CLOSING
    }

    private static ArrayList<Long> a(long[] jArr) {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    static /* synthetic */ void a(GroupEditorFragment groupEditorFragment, Cursor cursor) {
        boolean z = true;
        if (!cursor.moveToFirst()) {
            Log.i("GroupEditorFragment", "Group not found with URI: " + groupEditorFragment.d + " Closing activity now.");
            if (groupEditorFragment.f != null) {
                groupEditorFragment.f.onGroupNotFound();
                return;
            }
            return;
        }
        groupEditorFragment.A = cursor.getString(4);
        groupEditorFragment.w = cursor.getString(0);
        groupEditorFragment.x = cursor.getString(1);
        groupEditorFragment.y = cursor.getString(2);
        if (cursor.getInt(7) != 1) {
            z = false;
        }
        groupEditorFragment.z = z;
        groupEditorFragment.G = cursor.getString(9);
        groupEditorFragment.c();
        groupEditorFragment.v.setText(f.a(groupEditorFragment.getActivity(), groupEditorFragment.A));
        if (groupEditorFragment.m != null && !groupEditorFragment.I) {
            groupEditorFragment.m.f = groupEditorFragment.e;
        }
    }

    static /* synthetic */ void a(GroupEditorFragment groupEditorFragment, Member member) {
        groupEditorFragment.D.add(member);
        groupEditorFragment.F.add(member);
    }

    static /* synthetic */ void a(GroupEditorFragment groupEditorFragment, List list) {
        if (groupEditorFragment.m != null) {
            com.android.contacts.group.b bVar = groupEditorFragment.m;
            bVar.c.clear();
            bVar.d.clear();
            bVar.e.clear();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Member member = (Member) it.next();
                if (!bVar.c.contains(Long.valueOf(member.f1354a))) {
                    bVar.c.add(Long.valueOf(member.f1354a));
                }
            }
            Loader loader = bVar.f1361a.getLoader(1);
            if (loader == null ? false : loader.isStarted()) {
                bVar.b();
            } else {
                bVar.a();
            }
        }
    }

    private void a(boolean z) {
        if (this.p == null) {
            return;
        }
        if (z) {
            this.p.setVisibility(8);
        } else {
            this.p.setVisibility(0);
        }
    }

    private static boolean a(boolean z, String str) {
        boolean z2 = false;
        boolean z3 = z && str != null;
        Log.d("GroupEditorFragment", "!isReadOnly:" + (!z) + " isReadOnlyButEditable:" + z3);
        if (!z || z3) {
            z2 = true;
        }
        return z2;
    }

    private static long[] a(ArrayList<Long> arrayList) {
        long[] jArr = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        return jArr;
    }

    private void b() {
        this.g = c.LOADING;
        if (!this.I) {
            getLoaderManager().initLoader(1, null, this.K);
        } else {
            getLoaderManager().initLoader(1, null, this.N);
        }
    }

    static /* synthetic */ void b(GroupEditorFragment groupEditorFragment, Cursor cursor) {
        int i = 0;
        if (!cursor.moveToFirst()) {
            Log.i("GroupEditorFragment", "Group not found with URI: " + groupEditorFragment.d + " Closing activity now.");
            if (groupEditorFragment.f != null) {
                groupEditorFragment.f.onGroupNotFound();
                return;
            }
            return;
        }
        groupEditorFragment.A = cursor.getString(1);
        groupEditorFragment.z = cursor.getInt(2) == 1;
        groupEditorFragment.G = cursor.getString(4);
        groupEditorFragment.c();
        groupEditorFragment.v.setText(f.a(groupEditorFragment.getActivity(), groupEditorFragment.A));
        if (!f.a(groupEditorFragment.A)) {
            i = f.b(groupEditorFragment.A) ? 1 : 2;
        }
        if (groupEditorFragment.m != null) {
            groupEditorFragment.m.f = groupEditorFragment.e;
            groupEditorFragment.m.g = i;
        }
    }

    private static String[] b(ArrayList<Long> arrayList) {
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = String.valueOf(arrayList.get(i));
        }
        return strArr;
    }

    private void c() {
        View findViewWithTag;
        boolean z;
        boolean z2 = true;
        com.android.contacts.model.account.a a2 = com.android.contacts.model.a.a(this.n).a(this.x, this.y);
        int i = a(this.z, this.G) ? 2131427575 : 2131427544;
        if (i != this.B) {
            View findViewWithTag2 = this.o.findViewWithTag("currentEditorForAccount");
            if (findViewWithTag2 != null) {
                this.o.removeView(findViewWithTag2);
            }
            findViewWithTag = this.u.inflate(i, this.o, false);
            findViewWithTag.setTag("currentEditorForAccount");
            this.B = i;
            z = true;
        } else {
            findViewWithTag = this.o.findViewWithTag("currentEditorForAccount");
            if (findViewWithTag == null) {
                throw new IllegalStateException("Group editor view not found");
            }
            z = false;
        }
        if (this.I) {
            ((TextView) findViewWithTag.findViewById(R.id.title)).setText(getActivity().getResources().getString(2131755677));
            View findViewById = findViewWithTag.findViewById(2131296267);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
        }
        this.v = (TextView) findViewWithTag.findViewById(2131296910);
        View findViewById2 = findViewWithTag.findViewById(2131296908);
        if (findViewById2 != null) {
            findViewById2.setBackgroundColor(getActivity().getResources().getColor(2131034116));
        }
        this.l = (TouchListView) findViewWithTag.findViewById(2131296907);
        if (this.l != null) {
            this.l.setAdapter((ListAdapter) this.m);
            this.l.setDropListener(new TouchListView.b() { // from class: com.android.contacts.group.GroupEditorFragment.6
                @Override // com.android.contacts.list.TouchListView.b
                public final void drop(int i2, int i3) {
                    if (GroupEditorFragment.this.m != null) {
                        Member a3 = GroupEditorFragment.this.m.getItem(i2);
                        GroupEditorFragment.this.m.remove(a3);
                        GroupEditorFragment.this.m.insert(a3, i3);
                        GroupEditorFragment.this.m.h = true;
                    }
                }
            });
        }
        this.p = (TextView) findViewWithTag.findViewById(2131297123);
        if (findViewWithTag.findViewById(2131296267) != null && !this.I) {
            CharSequence a3 = a2.a(this.n);
            ImageView imageView = (ImageView) findViewWithTag.findViewById(2131296268);
            TextView textView = (TextView) findViewWithTag.findViewById(2131296274);
            TextView textView2 = (TextView) findViewWithTag.findViewById(2131296273);
            if (!TextUtils.isEmpty(this.w)) {
                if (this.x.equals(b.a.f612b)) {
                    textView2.setText(this.n.getString(2131755550));
                } else {
                    textView2.setText(this.n.getString(2131755661, this.w));
                }
            }
            textView.setText(a3);
            imageView.setImageDrawable(a2.d(this.n));
        }
        this.v.setFocusable(!this.z);
        TextView textView3 = this.v;
        if (this.z) {
            z2 = false;
        }
        textView3.setEnabled(z2);
        if (z) {
            this.o.addView(findViewWithTag);
        }
        this.g = c.EDITING;
    }

    /* JADX WARN: Finally extract failed */
    private long[] c(ArrayList<Long> arrayList) {
        Cursor cursor;
        long[] jArr;
        if (this.h == null) {
            cursor = null;
        } else {
            String str = BuildConfig.FLAVOR;
            int i = 0;
            while (i < arrayList.size()) {
                str = i == 0 ? str.concat("contact_id=?") : str.concat(" OR contact_id=?");
                i++;
            }
            Log.e("Anthony", "GroupEditorFragment selection=" + PhoneCapabilityTester.privacyLogCheck(str));
            cursor = null;
            if (!str.equals(BuildConfig.FLAVOR)) {
                String[] b2 = b(arrayList);
                Log.e("Anthony", "GroupEditorFragment args=" + b2);
                cursor = this.h.query(ContactsContract.RawContacts.CONTENT_URI, this.J, str, b2, null);
            }
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
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    jArr[i2] = ((Long) arrayList2.get(i2)).longValue();
                }
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.g = c.CLOSING;
        if (this.f != null) {
            this.f.onReverted();
        }
    }

    private boolean e() {
        return this.v != null && !TextUtils.isEmpty(this.v.getText());
    }

    private boolean f() {
        return this.v != null && !this.v.getText().toString().equals(this.A);
    }

    private boolean g() {
        return this.m.d.size() > 0 || this.m.e.size() > 0;
    }

    public final void a(boolean z, Uri uri) {
        Intent intent;
        int i = 0;
        boolean z2 = uri != null;
        Log.d("GroupEditorFragment", "onSaveCompleted(" + uri + ")");
        if (z) {
            Toast.makeText(this.n, z2 ? 2131755674 : 2131755673, 0).show();
        }
        if (!z2 || uri == null) {
            intent = null;
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
        this.g = c.CLOSING;
        if (this.f != null) {
            this.f.onSaveFinished(i, intent);
        }
    }

    public final boolean a() {
        String str;
        Intent a2;
        boolean z = false;
        if (e()) {
            if (this.g != c.EDITING) {
                z = false;
            } else {
                if (this.m != null) {
                    com.android.contacts.group.b bVar = this.m;
                    int size = bVar.f1362b.size();
                    int i = 1;
                    for (int i2 = 0; i2 < size; i2++) {
                        Member member = bVar.f1362b.get(i2);
                        if (!member.d) {
                            member.e = i;
                            i++;
                        }
                    }
                    com.android.contacts.group.b bVar2 = this.m;
                    Iterator<Long> it = bVar2.i.iterator();
                    char c2 = 0;
                    while (it.hasNext()) {
                        long longValue = it.next().longValue();
                        if (bVar2.c.contains(Long.valueOf(longValue))) {
                            bVar2.c.remove(Long.valueOf(longValue));
                        }
                        if (bVar2.d.contains(Long.valueOf(longValue))) {
                            bVar2.d.remove(Long.valueOf(longValue));
                        } else {
                            bVar2.e.add(Long.valueOf(longValue));
                        }
                        c2 = bVar2.c.size() == 0 ? (char) 65535 : (char) 0;
                    }
                    if (bVar2.i != null) {
                        bVar2.i.clear();
                    }
                    if (c2 == 65535) {
                        a(false);
                    }
                }
                getLoaderManager().destroyLoader(2);
                if (f() || g() || this.m.h) {
                    this.g = c.SAVING;
                    Activity activity = getActivity();
                    z = false;
                    if (activity != null) {
                        if (activity instanceof AsusGroupEditorActivity) {
                            ((AsusGroupEditorActivity) activity).showProgressDialog();
                            ((AsusGroupEditorActivity) activity).setIsSaving(true);
                        }
                        ArrayList<Long> arrayList = (ArrayList) this.m.d;
                        ArrayList<Long> arrayList2 = (ArrayList) this.m.e;
                        this.q = c(arrayList);
                        if (f.b(this.A)) {
                            this.r = new long[arrayList2.size()];
                            for (int i3 = 0; i3 < this.r.length; i3++) {
                                this.r[i3] = arrayList2.get(i3).longValue();
                            }
                        } else {
                            this.r = c(arrayList2);
                        }
                        if ("android.intent.action.INSERT".equals(this.f1346b)) {
                            a2 = !this.I ? ContactSaveService.a((Context) activity, new AccountWithDataSet(this.w, this.x, this.y), this.v.getText().toString(), this.q, (Class<? extends Activity>) activity.getClass(), "saveCompleted") : ContactSaveService.a((Context) activity, this.v.getText().toString(), this.q, (Class<? extends Activity>) activity.getClass(), "saveCompleted");
                        } else if ("android.intent.action.EDIT".equals(this.f1346b)) {
                            if (f.b(this.A)) {
                                str = this.A;
                            } else {
                                String charSequence = this.v.getText().toString();
                                if (this.G != null) {
                                    str = null;
                                } else {
                                    str = charSequence;
                                    if (charSequence.equals(this.A)) {
                                        str = null;
                                    }
                                }
                            }
                            a2 = ContactSaveService.a((Context) activity, this.e, str, this.q, this.r, (Class<? extends Activity>) activity.getClass(), "saveCompleted");
                        } else {
                            throw new IllegalStateException("Invalid intent action type " + this.f1346b);
                        }
                        ArrayList<Member> c3 = this.m.c();
                        Bundle extras = a2.getExtras();
                        extras.putParcelableArrayList("savingMembers", c3);
                        a2.putExtras(extras);
                        activity.startService(a2);
                        z = true;
                    }
                } else {
                    a(false, this.d);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        this.w = accountWithDataSet.name;
        this.x = accountWithDataSet.type;
        this.y = accountWithDataSet.f1998a;
        c();
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountSelectorCancelled() {
        if (this.f != null) {
            this.f.onGroupNotFound();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.m == null) {
            this.m = new com.android.contacts.group.b(this.n, getLoaderManager(), this.F);
        }
        if (bundle != null) {
            this.f1346b = bundle.getString("action");
            this.d = (Uri) bundle.getParcelable("groupUri");
            this.e = bundle.getLong("groupId");
            this.g = (c) bundle.getSerializable("status");
            this.w = bundle.getString("accountName");
            this.x = bundle.getString("accountType");
            this.y = bundle.getString("dataSet");
            this.z = bundle.getBoolean("groupNameIsReadOnly");
            this.A = bundle.getString("originalGroupName");
            this.D = bundle.getParcelableArrayList("membersToAdd");
            this.E = bundle.getParcelableArrayList("membersToRemove");
            this.F = bundle.getParcelableArrayList("membersToDisplay");
            this.q = bundle.getLongArray("backupMembersToAdd");
            this.r = bundle.getLongArray("backupMembersToRemove");
            this.s = bundle.getLongArray("backupMembersToDisplay");
            this.t = bundle.getLongArray("pickerIds");
            this.G = bundle.getString("system_id");
            if (this.g != c.SELECTING_ACCOUNT) {
                if (this.g == c.LOADING) {
                    b();
                } else {
                    c();
                }
            }
        } else if ("android.intent.action.EDIT".equals(this.f1346b)) {
            b();
        } else if ("android.intent.action.INSERT".equals(this.f1346b)) {
            Account account = this.c == null ? null : (Account) this.c.getParcelable("com.android.contacts.extra.ACCOUNT");
            String string = this.c == null ? null : this.c.getString("com.android.contacts.extra.DATA_SET");
            if (account != null) {
                this.w = account.name;
                this.x = account.type;
                this.y = string;
            } else if (!this.I) {
                List<AccountWithDataSet> a2 = com.android.contacts.model.a.a(this.n).a(true);
                if (a2.isEmpty()) {
                    Log.e("GroupEditorFragment", "No accounts were found.");
                    if (this.f != null) {
                        this.f.onAccountsNotFound();
                    }
                } else if (a2.size() == 1) {
                    this.w = a2.get(0).name;
                    this.x = a2.get(0).type;
                    this.y = a2.get(0).f1998a;
                    c();
                } else {
                    this.g = c.SELECTING_ACCOUNT;
                    g.a(getFragmentManager(), this, 2131755571, AccountsListAdapter.AccountListFilter.ACCOUNTS_GROUP_WRITABLE_NOSIM, null);
                }
            }
            c();
        } else {
            throw new IllegalArgumentException("Unknown Action String " + this.f1346b + ". Only support android.intent.action.EDIT or android.intent.action.INSERT");
        }
        if (this.n instanceof AsusGroupEditorActivity) {
            this.H = ((AsusGroupEditorActivity) this.n).isRemoveFrequentMember();
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i2) {
            case p.POSITION_UNCHANGED /* -1 */:
                Iterator it = intent.getParcelableArrayListExtra("uri_array").iterator();
                while (it.hasNext()) {
                    this.i.add(Long.valueOf(ContentUris.parseId((Uri) it.next())));
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.n = activity;
        this.C = k.a(this.n);
        this.I = PhoneCapabilityTester.IsAsusDevice();
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492866, menu);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        this.u = layoutInflater;
        this.o = (ViewGroup) layoutInflater.inflate(2131427574, viewGroup, false);
        return this.o;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        if (this.m != null) {
            this.m.d();
        }
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 2131297031:
                ArrayList arrayList = (ArrayList) this.m.c;
                Intent intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_GROUP_EDIT");
                intent.putExtra("group_member", a(arrayList));
                intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, this.w);
                intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, this.x);
                intent.putExtra("group_name", this.A);
                startActivityForResult(intent, 1);
                z = true;
                break;
            case 2131297041:
                if (f() || g()) {
                    a.a(this);
                } else {
                    d();
                }
                z = true;
                break;
            case 2131297048:
                if (a(this.z, this.G)) {
                    if (!e()) {
                        Toast.makeText(getActivity(), 2131755860, 0).show();
                    }
                    a();
                } else {
                    d();
                }
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131297029);
        MenuItem findItem2 = menu.findItem(2131296299);
        MenuItem findItem3 = menu.findItem(2131297031);
        MenuItem findItem4 = menu.findItem(2131297041);
        MenuItem findItem5 = menu.findItem(2131297048);
        if (findItem4 != null) {
            com.android.contacts.skin.a.a(getActivity(), findItem4);
        }
        if (findItem5 != null) {
            com.android.contacts.skin.a.a(getActivity(), findItem5);
        }
        if (findItem != null) {
            findItem.setVisible(false);
        }
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        if (findItem3 != null) {
            Drawable b2 = android.support.v4.a.a.a.b(findItem3.getIcon().mutate());
            android.support.v4.a.a.a.a(b2, getActivity().getResources().getColor(2131034157));
            findItem3.setIcon(b2);
            if (this.H) {
                findItem3.setVisible(false);
            } else {
                findItem3.setVisible(true);
            }
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        if (this.s != null) {
            int i = f.a(this.A) ? 0 : f.b(this.A) ? 1 : 2;
            this.m.f = this.e;
            this.m.g = i;
            com.android.contacts.group.b bVar = this.m;
            ArrayList<Long> a2 = a(this.q);
            ArrayList<Long> a3 = a(this.r);
            ArrayList<Long> a4 = a(this.s);
            bVar.d.clear();
            bVar.e.clear();
            bVar.c.clear();
            for (int i2 = 0; i2 < a2.size(); i2++) {
                bVar.d.add(a2.get(i2));
            }
            for (int i3 = 0; i3 < a3.size(); i3++) {
                bVar.e.add(a3.get(i3));
            }
            for (int i4 = 0; i4 < a4.size(); i4++) {
                bVar.c.add(a4.get(i4));
            }
            Loader loader = bVar.f1361a.getLoader(1);
            if (loader == null ? false : loader.isStarted()) {
                bVar.b();
            } else {
                bVar.a();
            }
            if (this.i.size() > 0) {
                com.android.contacts.group.b bVar2 = this.m;
                ArrayList<Long> arrayList = this.i;
                Iterator<Long> it = arrayList.iterator();
                int i5 = 0;
                while (it.hasNext()) {
                    long longValue = it.next().longValue();
                    int size = bVar2.c.size();
                    bVar2.c.add(Long.valueOf(longValue));
                    if (bVar2.e.contains(Long.valueOf(longValue))) {
                        bVar2.e.remove(Long.valueOf(longValue));
                    } else if (!bVar2.d.contains(Long.valueOf(longValue))) {
                        bVar2.d.add(Long.valueOf(longValue));
                    }
                    i5 = (size == 0 ? 1 : 0) + i5;
                }
                if (arrayList.size() != 0) {
                    bVar2.b();
                }
                if (i5 > 0) {
                    a(true);
                }
                this.i.clear();
            }
        }
        super.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("action", this.f1346b);
        bundle.putParcelable("groupUri", this.d);
        bundle.putLong("groupId", this.e);
        bundle.putSerializable("status", this.g);
        bundle.putString("accountName", this.w);
        bundle.putString("accountType", this.x);
        bundle.putString("dataSet", this.y);
        bundle.putBoolean("groupNameIsReadOnly", this.z);
        bundle.putString("originalGroupName", this.A);
        bundle.putParcelableArrayList("membersToAdd", this.D);
        bundle.putParcelableArrayList("membersToRemove", this.E);
        bundle.putParcelableArrayList("membersToDisplay", this.F);
        if (this.m != null) {
            ArrayList arrayList = (ArrayList) this.m.d;
            ArrayList arrayList2 = (ArrayList) this.m.e;
            this.q = a(arrayList);
            this.r = a(arrayList2);
            this.s = a((ArrayList) this.m.c);
            bundle.putLongArray("backupMembersToAdd", this.q);
            bundle.putLongArray("backupMembersToRemove", this.r);
            bundle.putLongArray("backupMembersToDisplay", this.s);
        }
        this.t = a(this.i);
        bundle.putLongArray("pickerIds", this.q);
        bundle.putString("system_id", this.G);
    }
}

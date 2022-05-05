package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.android.contacts.activities.MultiSelecetDialogContactActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.list.bi;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/u.class */
public final class u extends p<o> implements bi.c {

    /* renamed from: a  reason: collision with root package name */
    public ax f1879a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1880b;
    public boolean c;
    public SimCardContact d;
    private boolean h;
    private static Boolean j = false;
    private static int k = -1;
    private static long l = -1;
    private static int B = 1;
    private int i = -1;
    public Uri e = null;
    private final String C = "DialogIndex";
    private final String D = "SimContactId";
    private final String E = "SimContactIndex";
    private final String F = "DialogIsShow";
    private final String G = "ChoosePosition";
    private final String H = "ChooseUri";
    public boolean f = false;
    public boolean g = false;

    public u() {
        x();
        f(true);
        g(true);
        this.n = false;
        this.q = 2;
    }

    public static void a(Boolean bool) {
        if (!bool.booleanValue()) {
            j = bool;
            k = -1;
            l = -1L;
            B = -1;
            return;
        }
        j = bool;
    }

    private boolean b(int i) {
        int i2;
        boolean z = false;
        boolean z2 = false;
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(getActivity())) {
            e a2 = e.a(getActivity());
            Cursor cursor = (Cursor) ((q) this.t).getItem(i);
            if (cursor != null) {
                int columnIndex = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
                i2 = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
            } else {
                i2 = -1;
            }
            if (i2 > 0) {
                if (a2.a(i2)) {
                    Log.d("ContactPickerFragment", "Add phone to Sim Contact!");
                    boolean z3 = e.a(getActivity()).a(i2, 8) > 0;
                    Cursor query = getActivity().getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "sync1"}, "contact_id = " + ((q) this.t).n(i), null, null);
                    this.i = i;
                    this.e = ((q) this.t).m(i);
                    try {
                        if (query.moveToFirst()) {
                            long j2 = query.getLong(query.getColumnIndex("_id"));
                            long j3 = query.getLong(query.getColumnIndex("sync1"));
                            SimCardContact b2 = a2.b(j2);
                            b2.h = j3;
                            b2.i = i2;
                            if (Boolean.valueOf(z3).booleanValue()) {
                                if (!TextUtils.isEmpty(b2.c) && !TextUtils.isEmpty(b2.g)) {
                                    this.d = b2;
                                    a((Boolean) true);
                                    k = 1;
                                    l = j3;
                                    B = i2;
                                    MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(1, this, this.e).show(getFragmentManager(), (String) null);
                                } else if (!TextUtils.isEmpty(b2.c) || !TextUtils.isEmpty(b2.g)) {
                                    this.d = b2;
                                    a((Boolean) true);
                                    if (TextUtils.isEmpty(b2.g)) {
                                        e a3 = e.a(getActivity());
                                        if (a3.a(i2, 3) <= a3.b(i2, 5)) {
                                            z = true;
                                        }
                                        if (z) {
                                            k = 0;
                                            l = j3;
                                            B = i2;
                                            MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(0, this, this.e).show(getFragmentManager(), (String) null);
                                        }
                                    }
                                    k = 2;
                                    l = j3;
                                    B = i2;
                                    MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(2, this, this.e).show(getFragmentManager(), (String) null);
                                } else {
                                    a(j3);
                                }
                            } else if (!TextUtils.isEmpty(b2.c)) {
                                this.d = b2;
                                a((Boolean) true);
                                k = 0;
                                l = j3;
                                B = i2;
                                MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(0, this, this.e).show(getFragmentManager(), (String) null);
                            } else {
                                a(j3);
                            }
                        }
                        if (query != null) {
                            query.close();
                        }
                    } catch (Throwable th) {
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                } else {
                    k = 3;
                    MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(3, this, this.e).show(getFragmentManager(), (String) null);
                }
                z2 = true;
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427481, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        Uri m;
        if (this.s) {
            m = ContentUris.withAppendedId(Contacts.People.CONTENT_URI, ((Cursor) ((at) this.t).getItem(i)).getLong(0));
        } else {
            m = ((q) this.t).m(i);
        }
        if (this.f1880b) {
            if (!b(i)) {
                a((Boolean) false);
                this.f1879a.onEditContactAction(m);
            }
        } else if (this.c) {
            new bi(getActivity(), this).a(m);
        } else {
            this.f1879a.onPickContactAction(m);
        }
    }

    public final void a(long j2) {
        a((Boolean) false);
        Uri m = ((q) this.t).m(this.i);
        if (this.f1880b) {
            this.f1879a.onEditContactAction(m, j2);
        }
        this.i = 0;
    }

    @Override // com.android.contacts.list.p
    /* renamed from: a */
    public final void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        boolean z = false;
        super.onLoadFinished(loader, cursor);
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                z = true;
            }
            g(z);
            return;
        }
        g(false);
    }

    @Override // com.android.contacts.list.p
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.f1880b = bundle.getBoolean("editMode");
            this.h = bundle.getBoolean("createContactEnabled");
            this.c = bundle.getBoolean("shortcutRequested");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0126  */
    @Override // com.android.contacts.list.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.list.o c() {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.u.c():com.android.contacts.list.o");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        this.t.z = !this.h;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            j = Boolean.valueOf(bundle.getBoolean("DialogIsShow"));
        }
        if (!j.booleanValue() || bundle == null) {
            l = -1L;
            B = 1;
            k = -1;
            this.i = -1;
            this.e = null;
            return;
        }
        l = bundle.getLong("SimContactId");
        k = bundle.getInt("DialogIndex");
        B = bundle.getInt("SimContactIndex");
        this.i = bundle.getInt("ChoosePosition");
        this.e = Uri.parse(bundle.getString("ChooseUri"));
    }

    @Override // com.android.contacts.list.p, android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j2) {
        if (i != 0 || !this.h) {
            super.onItemClick(adapterView, view, i, j2);
        } else {
            this.f1879a.onCreateNewContactAction();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        if (j.booleanValue() && l > 0 && k >= 0 && !NecessaryPermissionDenyActivity.startPermissionActivity(getActivity())) {
            this.d = e.a(getActivity()).b(B, l);
            MultiSelecetDialogContactActivity.OverrideDialogFragment.newInstance(k, this, this.e).show(getFragmentManager(), (String) null);
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("editMode", this.f1880b);
        bundle.putBoolean("createContactEnabled", this.h);
        bundle.putBoolean("shortcutRequested", this.c);
        bundle.putBoolean("DialogIsShow", j.booleanValue());
        if (j.booleanValue()) {
            bundle.putLong("SimContactId", l);
            bundle.putInt("SimContactIndex", B);
            bundle.putInt("DialogIndex", k);
            bundle.putInt("ChoosePosition", this.i);
            bundle.putString("ChooseUri", String.valueOf(this.e));
        }
    }

    @Override // com.android.contacts.list.bi.c
    public final void onShortcutIntentCreated(Uri uri, Intent intent) {
        this.f1879a.onShortcutIntentCreated(intent);
    }
}

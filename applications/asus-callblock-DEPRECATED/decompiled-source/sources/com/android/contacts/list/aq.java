package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.android.contacts.list.bi;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/aq.class */
public final class aq extends p<o> implements bi.c {

    /* renamed from: a  reason: collision with root package name */
    public ax f1787a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<String> f1788b = null;
    Bundle c = null;
    private boolean d;
    private boolean e;
    private boolean f;

    public aq() {
        x();
        f(true);
        g(true);
        this.n = false;
        this.q = 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427481, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        Uri uri;
        ap apVar = (ap) this.t;
        Cursor cursor = (Cursor) apVar.getItem(i);
        if (cursor != null) {
            uri = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, cursor.getLong(0));
        } else {
            Log.w(apVar.d, "Cursor was null in getDataUri() call. Returning null instead.");
            uri = null;
        }
        if (apVar.e.get(uri) == null || apVar.e.get(uri).intValue() == 0) {
            apVar.e.put(uri, 1);
        } else if (apVar.e.get(uri).intValue() == 1) {
            apVar.e.put(uri, 0);
        }
        apVar.notifyDataSetChanged();
        if (this.f1787a != null) {
            this.f1787a.onSelectAContact(apVar.e.containsValue(1));
        }
    }

    @Override // com.android.contacts.list.p
    /* renamed from: a */
    public final void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        super.onLoadFinished(loader, cursor);
        if (this.c != null) {
            this.f1788b = this.c.getStringArrayList("userselected");
            ap apVar = (ap) this.t;
            if (!(apVar == null || this.f1788b == null)) {
                for (int i = 0; i < this.f1788b.size(); i++) {
                    apVar.e.put(Uri.parse(this.f1788b.get(i).toString()), 1);
                }
                apVar.notifyDataSetChanged();
            }
            if (this.f1787a != null) {
                this.f1787a.onSelectAContact(apVar.e.containsValue(1));
            }
        }
    }

    @Override // com.android.contacts.list.p
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.e = bundle.getBoolean("editMode");
            this.d = bundle.getBoolean("createContactEnabled");
            this.f = bundle.getBoolean("shortcutRequested");
            this.c = bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final o c() {
        o atVar;
        if (!this.s) {
            atVar = new ap(getActivity());
            if (PhoneCapabilityTester.IsAsusDevice()) {
                atVar.B = ContactListFilter.a(-2);
            } else {
                atVar.B = ContactListFilter.a(-7);
            }
            atVar.X = true;
            atVar.p = true;
            atVar.q = false;
        } else {
            atVar = new at(getActivity());
            atVar.X = false;
            atVar.p = false;
        }
        return atVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        this.t.z = !this.d;
    }

    @Override // com.android.contacts.list.p, android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i != 0 || !this.d) {
            super.onItemClick(adapterView, view, i, j);
        } else {
            this.f1787a.onCreateNewContactAction();
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("editMode", this.e);
        bundle.putBoolean("createContactEnabled", this.d);
        bundle.putBoolean("shortcutRequested", this.f);
        ap apVar = (ap) this.t;
        if (apVar != null) {
            ArrayList<String> arrayList = new ArrayList<>();
            for (Map.Entry<Uri, Integer> entry : apVar.e.entrySet()) {
                Uri key = entry.getKey();
                if (entry.getValue().intValue() == 1) {
                    arrayList.add(key.toString());
                }
            }
            bundle.putStringArrayList("userselected", arrayList);
        }
    }

    @Override // com.android.contacts.list.bi.c
    public final void onShortcutIntentCreated(Uri uri, Intent intent) {
        this.f1787a.onShortcutIntentCreated(intent);
    }
}

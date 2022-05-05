package com.android.contacts.list;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Contacts;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.bi;
import com.android.contacts.util.AccountFilterUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bd.class */
public class bd extends p<o> implements bi.c {
    private static final String c = bd.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public ba f1797a;

    /* renamed from: b  reason: collision with root package name */
    public String f1798b;
    private ContactListFilter d;
    private View e;
    private View f;
    private boolean g;
    private boolean h;
    private ContactListItemView.a i = ContactListItemView.f1714b;

    public bd() {
        this.n = false;
        x();
        f(true);
        this.q = 3;
        setHasOptionsMenu(true);
    }

    private void d() {
        ContactListFilter contactListFilter = this.d;
        if (this.e != null && contactListFilter != null) {
            if (!this.o && AccountFilterUtil.updateAccountFilterTitleForPhone(this.e, contactListFilter, false)) {
                this.f.setVisibility(8);
                this.e.setVisibility(0);
                return;
            }
            this.f.setVisibility(0);
            this.e.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427478, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        Uri withAppendedId;
        String str = null;
        if (!this.s) {
            bc bcVar = (bc) this.t;
            withAppendedId = bcVar.j(i);
            str = bcVar.m(i);
        } else {
            withAppendedId = ContentUris.withAppendedId(Contacts.Phones.CONTENT_URI, ((Cursor) ((au) this.t).getItem(i)).getLong(0));
        }
        if (withAppendedId != null) {
            int intExtra = (getActivity() == null || getActivity().getIntent() == null) ? 0 : getActivity().getIntent().getIntExtra("shortcutCallIntentNumber", 0);
            if (this.f1798b == null) {
                this.f1797a.onPickPhoneNumberAction(withAppendedId, str);
            } else if (this.s) {
                throw new UnsupportedOperationException();
            } else {
                bi biVar = new bi(getActivity(), this);
                new bi.d(withAppendedId, this.f1798b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                biVar.f1813a = intExtra;
            }
        } else {
            Log.w(c, "Item at " + i + " was clicked before adapter is ready. Ignoring");
        }
    }

    @Override // com.android.contacts.list.p
    /* renamed from: a */
    public final void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        super.onLoadFinished(loader, cursor);
        boolean z = false;
        if (cursor != null) {
            z = false;
            if (cursor.getCount() > 0) {
                z = true;
            }
        }
        g(z);
    }

    @Override // com.android.contacts.list.p
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.d = (ContactListFilter) bundle.getParcelable("filter");
            this.f1798b = bundle.getString("shortcutAction");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        boolean z = false;
        super.a(layoutInflater, viewGroup);
        View inflate = layoutInflater.inflate(2131427464, (ViewGroup) null, false);
        this.f = inflate.findViewById(2131296558);
        s().addHeaderView(inflate);
        this.e = getView().findViewById(2131296350);
        d();
        if (!this.s) {
            z = true;
        }
        g(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void b_(boolean z) {
        super.b_(z);
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final o c() {
        bc bcVar;
        if (!this.s) {
            bc bcVar2 = "android.intent.action.SENDTO".equals(this.f1798b) ? new bc(getActivity(), true, 0L) : new bc(getActivity());
            bcVar2.p = true;
            bcVar2.h = this.h;
            bcVar = bcVar2;
        } else {
            au auVar = new au(getActivity());
            auVar.p = true;
            bcVar = auVar;
        }
        return bcVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void d_() {
        this.g = true;
        super.d_();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        T t = this.t;
        if (t != 0) {
            if (!this.o && this.d != null) {
                t.B = this.d;
            }
            if (!this.s) {
                ((bc) t).g = this.i;
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (getActivity() != null) {
            AccountFilterUtil.handleAccountFilterResult(r.a(getActivity()), i2, intent);
        } else {
            Log.e(c, "getActivity() returns null during Fragment#onActivityResult()");
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == 16908332) {
            if (this.f1797a != null) {
                this.f1797a.onHomeInActionBarSelected();
            }
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("filter", this.d);
        bundle.putString("shortcutAction", this.f1798b);
    }

    @Override // com.android.contacts.list.bi.c
    public void onShortcutIntentCreated(Uri uri, Intent intent) {
        this.f1797a.onShortcutIntentCreated(intent);
    }
}

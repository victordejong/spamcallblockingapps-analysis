package com.android.contacts.list;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Loader;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.a.b.a;
import com.android.contacts.widget.AutoScrollListView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/n.class */
public abstract class n extends p<q> {
    private long B;
    private boolean C;
    private boolean E;
    private a G;
    private boolean H;

    /* renamed from: a  reason: collision with root package name */
    public boolean f1862a;

    /* renamed from: b  reason: collision with root package name */
    public Uri f1863b;
    public ContactListFilter c;
    protected aw d;
    private SharedPreferences e;
    private Handler f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private String l;
    private int D = -1;
    private String F = "defaultContactBrowserSelection";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/n$a.class */
    public final class a extends AsyncTask<Void, Void, Uri> {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f1866b;
        private boolean c;

        public a(Uri uri) {
            this.f1866b = uri;
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x0120  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private android.net.Uri b() {
            /*
                Method dump skipped, instructions count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.n.a.b():android.net.Uri");
        }

        public final void a() {
            super.cancel(true);
            this.c = true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Uri doInBackground(Void[] voidArr) {
            return b();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Uri uri) {
            Uri uri2 = uri;
            if (!this.c && n.this.isAdded()) {
                n.this.b(uri2);
            }
        }
    }

    private void a(Uri uri) {
        if (!this.o) {
            ContactListFilter.a(this.e, this.c);
            SharedPreferences.Editor edit = this.e.edit();
            if (uri == null) {
                edit.remove(this.F);
            } else {
                edit.putString(this.F, uri.toString());
            }
            edit.apply();
        }
    }

    private void a(Uri uri, boolean z, boolean z2, boolean z3, boolean z4) {
        q qVar;
        this.i = z2;
        this.h = true;
        if ((this.f1863b == null && uri != null) || (this.f1863b != null && !this.f1863b.equals(uri))) {
            this.C = false;
            this.f1862a = z;
            this.j = z3;
            this.f1863b = uri;
            e();
            if (!z4 && (qVar = (q) this.t) != null) {
                qVar.a(this.k, this.l, this.B);
                s().invalidateViews();
            }
            d();
        }
    }

    private void a(boolean z) {
        if (!this.f1862a) {
            String string = this.e.getString(this.F, null);
            if (string == null) {
                a(null, false, false, false, z);
            } else {
                a(Uri.parse(string), false, false, false, z);
            }
        }
    }

    private void d() {
        if (this.G != null) {
            this.G.a();
        }
        if (this.r) {
            this.E = true;
            if (this.f1863b == null) {
                b((Uri) null);
            } else if (this.k == 0 || this.k == 1) {
                this.G = new a(this.f1863b);
                this.G.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            } else {
                b(this.f1863b);
            }
        }
    }

    private void e() {
        if (this.f1863b != null) {
            String queryParameter = this.f1863b.getQueryParameter("directory");
            this.k = TextUtils.isEmpty(queryParameter) ? 0L : Long.parseLong(queryParameter);
            if (this.f1863b.toString().startsWith(ContactsContract.Contacts.CONTENT_LOOKUP_URI.toString())) {
                List<String> pathSegments = this.f1863b.getPathSegments();
                this.l = Uri.encode(pathSegments.get(2));
                if (pathSegments.size() == 4) {
                    this.B = ContentUris.parseId(this.f1863b);
                }
            } else if (!this.f1863b.toString().startsWith(ContactsContract.Contacts.CONTENT_URI.toString()) || this.f1863b.getPathSegments().size() < 2) {
                Log.e("ContactList", "Unsupported contact URI: " + this.f1863b);
                this.l = null;
                this.B = 0L;
            } else {
                this.l = null;
                this.B = ContentUris.parseId(this.f1863b);
            }
        } else {
            this.k = 0L;
            this.l = null;
            this.B = 0L;
        }
    }

    private void i() {
        if (this.d != null) {
            this.d.onInvalidSelection();
        }
    }

    @Override // com.android.contacts.list.p
    /* renamed from: a */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        super.onLoadFinished(loader, cursor);
        this.C = false;
        d();
    }

    public final void a(Uri uri, boolean z) {
        a(uri, false, false, true, false);
        if (this.d != null) {
            this.d.onViewContactAction(uri, z);
        }
    }

    @Override // com.android.contacts.list.p
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.c = (ContactListFilter) bundle.getParcelable("filter");
            this.f1863b = (Uri) bundle.getParcelable("selectedUri");
            this.C = bundle.getBoolean("selectionVerified");
            this.D = bundle.getInt("lastSelected");
            e();
        }
    }

    public void a(ContactListFilter contactListFilter) {
        a(contactListFilter, true);
    }

    public final void a(ContactListFilter contactListFilter, boolean z) {
        if (this.c != null || contactListFilter != null) {
            if (this.c == null || !this.c.equals(contactListFilter)) {
                Log.v("ContactList", "New filter: " + contactListFilter);
                this.c = contactListFilter;
                this.D = -1;
                ContactListFilter.a(this.e, this.c);
                if (z) {
                    this.f1863b = null;
                    a(true);
                }
                i_();
            }
        }
    }

    public final void a(aw awVar) {
        this.d = awVar;
    }

    @Override // com.android.contacts.list.p
    public final void a(String str, boolean z) {
        this.H = z;
        super.a(str, z);
    }

    protected final void b(Uri uri) {
        q qVar;
        boolean z;
        int i;
        int i2;
        int i3;
        this.E = false;
        this.f1863b = uri;
        e();
        if (!this.C && !this.E && !u() && (qVar = (q) this.t) != null) {
            int size = qVar.f408b.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    z = true;
                    break;
                }
                a.C0018a c = qVar.c(i4);
                if (c instanceof am) {
                    am amVar = (am) c;
                    if (amVar.f == this.k) {
                        z = amVar.a();
                        break;
                    }
                }
                i4++;
            }
            if (!z) {
                qVar.a(this.k, this.l, this.B);
                if (this.D == -1 && this.o) {
                    this.D = 0;
                    i3 = -1;
                } else if (qVar.P == null && qVar.Q == 0) {
                    i3 = -1;
                } else {
                    int size2 = qVar.f408b.size();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size2) {
                            i = -1;
                            break;
                        } else if (((am) qVar.c(i5)).f == qVar.O) {
                            i = i5;
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (i == -1) {
                        i3 = -1;
                    } else {
                        Cursor e = qVar.e(i);
                        if (e == null) {
                            i3 = -1;
                        } else {
                            e.moveToPosition(-1);
                            while (true) {
                                if (!e.moveToNext()) {
                                    i2 = -1;
                                    break;
                                }
                                if (qVar.P != null) {
                                    if (qVar.P.equals(e.getString(4))) {
                                        i2 = e.getPosition();
                                        break;
                                    }
                                }
                                if (qVar.Q != 0 && (qVar.O == 0 || qVar.O == 1)) {
                                    if (e.getLong(0) == qVar.Q) {
                                        i2 = e.getPosition();
                                        break;
                                    }
                                }
                            }
                            if (i2 == -1) {
                                i3 = -1;
                            } else {
                                i3 = i2 + qVar.i(i);
                                if (qVar.d(i)) {
                                    i3++;
                                }
                            }
                        }
                    }
                }
                if (i3 != -1) {
                    this.D = i3;
                } else {
                    if (this.o) {
                        if (this.H) {
                            if (this.f == null) {
                                this.f = new Handler() { // from class: com.android.contacts.list.n.1
                                    @Override // android.os.Handler
                                    public final void handleMessage(Message message) {
                                        switch (message.what) {
                                            case 1:
                                                n.this.g();
                                                return;
                                            default:
                                                return;
                                        }
                                    }
                                };
                            }
                            Handler handler = this.f;
                            handler.removeMessages(1);
                            String y = y();
                            if (y == null || y.length() <= 0) {
                                a(null, false, false, false, false);
                            } else {
                                handler.sendEmptyMessage(1);
                            }
                            if (this.d != null) {
                                this.d.onSelectionChange();
                                return;
                            }
                            return;
                        }
                    } else if (this.f1862a) {
                        this.f1862a = false;
                        if (this.c == null || !(this.c.f1712a == -6 || this.c.f1712a == -2)) {
                            i();
                            return;
                        } else {
                            i_();
                            return;
                        }
                    } else if (this.c != null && this.c.f1712a == -6) {
                        i();
                        return;
                    }
                    a((Uri) null);
                    g();
                }
                this.f1862a = false;
                this.C = true;
                if (this.j) {
                    a(this.f1863b);
                    this.j = false;
                }
                if (this.h && i3 != -1) {
                    AutoScrollListView autoScrollListView = (AutoScrollListView) s();
                    autoScrollListView.a(i3 + autoScrollListView.getHeaderViewsCount(), this.i);
                    this.h = false;
                }
                s().invalidateViews();
                if (this.d != null) {
                    this.d.onSelectionChange();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public void b_(boolean z) {
        if (this.o != z) {
            if (!z) {
                a(true);
            }
            super.b_(z);
        }
    }

    public final void c(Uri uri) {
        a(uri, true, false, true, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void d_() {
        this.g = true;
        this.C = false;
        super.d_();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        q qVar = (q) this.t;
        if (qVar != null) {
            boolean z = this.o;
            if (!z && this.c != null) {
                qVar.B = this.c;
                if (this.f1862a || this.c.f1712a == -6) {
                    qVar.a(this.k, this.l, this.B);
                }
            }
            qVar.r = !z;
        }
    }

    @Override // com.android.contacts.list.p
    public final boolean f_() {
        return this.E || super.f_();
    }

    protected final void g() {
        Uri uri;
        Cursor e;
        q qVar = (q) this.t;
        if (this.D != -1) {
            int count = qVar.getCount();
            int i = this.D;
            int i2 = i;
            if (i >= count) {
                i2 = i;
                if (count > 0) {
                    i2 = count - 1;
                }
            }
            uri = qVar.m(i2);
        } else {
            uri = null;
        }
        Uri uri2 = uri;
        if (uri == null) {
            int size = qVar.f408b.size();
            int i3 = 0;
            while (true) {
                if (i3 < size) {
                    if (!((am) qVar.c(i3)).a() && (e = qVar.e(i3)) != null && e.moveToFirst()) {
                        uri2 = qVar.b(i3, e);
                        break;
                    }
                    i3++;
                } else {
                    uri2 = null;
                    break;
                }
            }
        }
        a(uri2, false, this.i, false, false);
    }

    @Override // com.android.contacts.list.p
    public final void i_() {
        if (getActivity() != null && this.g) {
            this.C = false;
            if (!this.o) {
                this.D = -1;
            }
            super.i_();
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.e = PreferenceManager.getDefaultSharedPreferences(activity);
        this.c = ContactListFilter.a(this.e);
        a(false);
    }

    @Override // com.android.contacts.list.p, android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("filter", this.c);
        bundle.putParcelable("selectedUri", this.f1863b);
        bundle.putBoolean("selectionVerified", this.C);
        bundle.putInt("lastSelected", this.D);
    }
}

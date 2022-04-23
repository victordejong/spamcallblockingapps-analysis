package com.android.contacts.list;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.LoaderManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Loader;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import com.android.contacts.contactpicker.ContactsPickerActivity;
import com.android.contacts.interactions.a;
import com.android.contacts.list.h;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ab.class */
public class ab extends h implements ContactsPickerActivity.b {
    public int B;
    public boolean C;
    private String D;
    private Context E;
    private aa F;
    private long G;
    private boolean H;
    private final LoaderManager.LoaderCallbacks<Cursor> I;

    public ab() {
        this.D = ab.class.getName();
        this.F = null;
        this.B = 30;
        this.G = 0L;
        this.C = true;
        this.H = false;
        this.I = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ab.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            @TargetApi(11)
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(ab.this.E);
                    ab.this.F.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = ab.this.t();
                    ab.this.F.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                ((g) ab.this.t).a(cursor);
                ab.this.g();
                ab.this.j();
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(Loader<Cursor> loader) {
            }
        };
        x();
        f(true);
        g(false);
        this.n = false;
    }

    public ab(Context context, long j) {
        this.D = ab.class.getName();
        this.F = null;
        this.B = 30;
        this.G = 0L;
        this.C = true;
        this.H = false;
        this.I = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ab.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            @TargetApi(11)
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(ab.this.E);
                    ab.this.F.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = ab.this.t();
                    ab.this.F.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                ((g) ab.this.t).a(cursor);
                ab.this.g();
                ab.this.j();
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(Loader<Cursor> loader) {
            }
        };
        this.E = context;
        ((h) this).l = false;
        this.G = j;
    }

    public ab(Context context, long j, byte b2) {
        this.D = ab.class.getName();
        this.F = null;
        this.B = 30;
        this.G = 0L;
        this.C = true;
        this.H = false;
        this.I = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ab.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            @TargetApi(11)
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(ab.this.E);
                    ab.this.F.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = ab.this.t();
                    ab.this.F.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                ((g) ab.this.t).a(cursor);
                ab.this.g();
                ab.this.j();
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(Loader<Cursor> loader) {
            }
        };
        this.E = context;
        ((h) this).l = false;
        this.G = j;
        this.H = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public aa e() {
        this.F = new aa(getActivity(), this.G);
        this.F.S = this.B;
        this.F.R.h = this.H;
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.F.p = true;
        }
        return this.F;
    }

    @Override // com.android.contacts.contactpicker.ContactsPickerActivity.b
    public final void a(long j) {
        this.F.R.i = j;
        getLoaderManager().restartLoader(1, null, this.I);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.h, com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        this.c = (CheckedTextView) getView().findViewById(2131297270);
        this.c.setVisibility(this.C ? 0 : 8);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.c.setPadding(getResources().getDimensionPixelOffset(2131099769), 0, getResources().getDimensionPixelOffset(2131099782), 0);
        }
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.ab.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = (g) ab.this.t;
                int count = gVar.getCount();
                int size = gVar.e.size();
                if (ab.this.i) {
                    return;
                }
                if (h.e) {
                    gVar.c();
                    h.e = false;
                    ab.this.j.a(false);
                    ab.this.c.setChecked(false);
                    gVar.notifyDataSetChanged();
                } else if ((size + count) - 1 <= ab.this.B || h.e) {
                    h.e = true;
                    ab.this.i = true;
                    DialogFragment a2 = a.a();
                    a2.show(ab.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                    new h.d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    AlertDialog.Builder builder = new AlertDialog.Builder(ab.this.getActivity());
                    builder.setTitle(ab.this.getResources().getString(2131755464));
                    builder.setMessage(ab.this.getString(2131755463, new Object[]{Integer.valueOf(ab.this.B)}));
                    builder.setPositiveButton(ab.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ab.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.create().show();
                }
            }
        });
    }

    @Override // com.android.contacts.list.h, com.android.contacts.list.p
    public final void a(String str, boolean z) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        if (!TextUtils.equals(this.p, str2)) {
            this.p = str2;
            b_(!TextUtils.isEmpty(this.p));
            if (this.F != null) {
                this.F.a(str2);
                i_();
            }
        }
    }

    @Override // com.android.contacts.list.h
    public final void d() {
        getLoaderManager().destroyLoader(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.h, com.android.contacts.list.p
    public final void d_() {
        Log.d(this.D, "ContactsPhonePickerFragment.startLoading");
        f();
        getLoaderManager().restartLoader(1, null, this.I);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.h
    public final void g() {
        super.g();
        g gVar = (g) this.t;
        int size = gVar.e.size();
        int count = gVar.getCount();
        if (size >= this.B) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getResources().getString(2131755464));
            builder.setMessage(getString(2131755463, new Object[]{Integer.valueOf(this.B)}));
            builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ab.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
        if (count <= 0) {
            this.c.setEnabled(false);
        } else {
            this.c.setEnabled(true);
        }
    }
}

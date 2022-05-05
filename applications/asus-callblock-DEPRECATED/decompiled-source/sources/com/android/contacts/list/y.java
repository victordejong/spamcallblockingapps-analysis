package com.android.contacts.list;

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
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/y.class */
public class y extends h implements ContactsPickerActivity.b {
    public static final String B = y.class.getSimpleName();
    public int C;
    private Context D;
    private x E;
    private long F;
    private final LoaderManager.LoaderCallbacks<Cursor> G;

    public y() {
        this.E = null;
        this.F = 0L;
        this.C = Integer.MAX_VALUE;
        this.G = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.y.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(y.this.D);
                    y.this.E.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = y.this.t();
                    y.this.E.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                Cursor cursor2 = cursor;
                ((g) y.this.t).a(cursor2);
                y.this.g();
                y.this.j();
                if (cursor2 != null && cursor2.getCount() > 0) {
                    y.this.g(true);
                }
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

    public y(Context context, long j) {
        this.E = null;
        this.F = 0L;
        this.C = Integer.MAX_VALUE;
        this.G = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.y.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(y.this.D);
                    y.this.E.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = y.this.t();
                    y.this.E.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                Cursor cursor2 = cursor;
                ((g) y.this.t).a(cursor2);
                y.this.g();
                y.this.j();
                if (cursor2 != null && cursor2.getCount() > 0) {
                    y.this.g(true);
                }
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(Loader<Cursor> loader) {
            }
        };
        this.D = context;
        ((h) this).l = false;
        this.F = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public x e() {
        this.E = new x(getActivity(), this.F);
        this.E.S = this.C;
        return this.E;
    }

    @Override // com.android.contacts.contactpicker.ContactsPickerActivity.b
    public final void a(long j) {
        this.E.R.d = j;
        getLoaderManager().restartLoader(1, null, this.G);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.h, com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        this.c = (CheckedTextView) getView().findViewById(2131297270);
        this.c.setVisibility(0);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.c.setPadding(getResources().getDimensionPixelOffset(2131099769), 0, getResources().getDimensionPixelOffset(2131099782), 0);
        }
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.y.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = (g) y.this.t;
                int count = gVar.getCount();
                int size = gVar.e.size();
                if (y.this.i) {
                    return;
                }
                if (h.e) {
                    gVar.c();
                    h.e = false;
                    y.this.j.a(false);
                    y.this.c.setChecked(false);
                    gVar.notifyDataSetChanged();
                } else if ((size + count) - 1 <= y.this.C || h.e) {
                    h.e = true;
                    y.this.i = true;
                    DialogFragment a2 = a.a();
                    a2.show(y.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                    new h.d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    Log.d(y.B, "selectCount=" + size + " totalCount=" + count);
                    AlertDialog.Builder builder = new AlertDialog.Builder(y.this.getActivity());
                    builder.setTitle(y.this.getResources().getString(2131755464));
                    builder.setMessage(y.this.getString(2131755463, new Object[]{Integer.valueOf(y.this.C)}));
                    builder.setPositiveButton(y.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.y.2.1
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
        Log.d(B, B + ", setQueryString = " + str2);
        if (!TextUtils.equals(this.p, str2)) {
            this.p = str2;
            b_(!TextUtils.isEmpty(this.p));
            if (this.E != null) {
                this.E.a(str2);
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
        f();
        getLoaderManager().restartLoader(1, null, this.G);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.h
    public final void g() {
        super.g();
        g gVar = (g) this.t;
        int size = gVar.e.size();
        int count = gVar.getCount();
        if (size >= this.C) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getResources().getString(2131755464));
            builder.setMessage(getString(2131755463, new Object[]{Integer.valueOf(this.C)}));
            builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.y.3
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

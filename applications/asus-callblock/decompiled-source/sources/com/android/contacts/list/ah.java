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
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ah.class */
public class ah extends h implements ContactsPickerActivity.b {
    public int B;
    private String C;
    private Context D;
    private ag E;
    private int F;
    private boolean G;
    private long H;
    private final LoaderManager.LoaderCallbacks<Cursor> I;

    public ah() {
        this.C = ah.class.getName();
        this.E = null;
        this.B = 100;
        this.F = -1;
        this.G = false;
        this.H = 0L;
        this.I = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ah.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            @TargetApi(11)
            public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
                al alVar;
                if (i == -1) {
                    al alVar2 = new al(ah.this.D);
                    ah.this.E.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = ah.this.t();
                    ah.this.E.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                ah.this.g(true);
                ((g) ah.this.t).a(cursor);
                ah.this.g();
                ah.this.j();
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

    public ah(Context context, boolean z, int i, long j) {
        this.C = ah.class.getName();
        this.E = null;
        this.B = 100;
        this.F = -1;
        this.G = false;
        this.H = 0L;
        this.I = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ah.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.app.LoaderManager.LoaderCallbacks
            @TargetApi(11)
            public final Loader<Cursor> onCreateLoader(int i2, Bundle bundle) {
                al alVar;
                if (i2 == -1) {
                    al alVar2 = new al(ah.this.D);
                    ah.this.E.a(alVar2);
                    alVar = alVar2;
                } else {
                    CursorLoader t = ah.this.t();
                    ah.this.E.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
                    alVar = t;
                }
                return alVar;
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
                ah.this.g(true);
                ((g) ah.this.t).a(cursor);
                ah.this.g();
                ah.this.j();
            }

            @Override // android.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(Loader<Cursor> loader) {
            }
        };
        this.D = context;
        ((h) this).l = false;
        this.F = i;
        this.G = z;
        this.H = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public ag e() {
        this.E = new ag(getActivity(), this.G, this.F, this.H);
        this.E.R = this.B;
        return this.E;
    }

    @Override // com.android.contacts.contactpicker.ContactsPickerActivity.b
    public final void a(long j) {
        this.E.S = j;
        getLoaderManager().restartLoader(1, null, this.I);
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
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.ah.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = (g) ah.this.t;
                int count = gVar.getCount();
                int size = gVar.e.size();
                if (ah.this.i) {
                    return;
                }
                if (h.e) {
                    gVar.c();
                    h.e = false;
                    ah.this.j.a(false);
                    ah.this.c.setChecked(false);
                    gVar.notifyDataSetChanged();
                } else if ((count - 1) + ah.this.E.T <= ah.this.B || h.e) {
                    h.e = true;
                    ah.this.i = true;
                    DialogFragment a2 = a.a();
                    a2.show(ah.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                    new h.d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    Log.d(ah.this.C, "selectCount=" + size + " totalCount=" + count + " mExistedNumber" + ah.this.E.T);
                    AlertDialog.Builder builder = new AlertDialog.Builder(ah.this.getActivity());
                    builder.setTitle(ah.this.getResources().getString(2131755466));
                    builder.setMessage(ah.this.getString(2131755465, new Object[]{Integer.valueOf(ah.this.B)}));
                    builder.setPositiveButton(ah.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ah.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.cancel();
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
        Log.d(this.C, "ContactsWidgetPickerFragment.startLoading");
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
        if (this.E.T + size >= this.B) {
            Log.d(this.C, "update selectCount=" + size + " totalCount=" + count + " mExistedNumber" + this.E.T);
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getResources().getString(2131755466));
            builder.setMessage(getString(2131755465, new Object[]{Integer.valueOf(this.B)}));
            builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ah.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
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

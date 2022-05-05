package com.android.contacts.ezmode;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.interactions.i;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/b.class */
public final class b extends Fragment implements LoaderManager.LoaderCallbacks<Cursor>, DialogInterface.OnDismissListener {
    private static final String[] c;

    /* renamed from: a  reason: collision with root package name */
    boolean f1249a;

    /* renamed from: b  reason: collision with root package name */
    Context f1250b;
    private boolean d;
    private Uri e;
    private AlertDialog f;
    private i g;

    static {
        c = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "display_name", SpeedDialList.Columns.ISSIM} : new String[]{"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "display_name"};
    }

    public static b a(Activity activity, Uri uri, boolean z) {
        b bVar;
        if (uri == null) {
            bVar = null;
        } else {
            FragmentManager fragmentManager = activity.getFragmentManager();
            bVar = (b) fragmentManager.findFragmentByTag("deleteContact");
            if (bVar == null) {
                bVar = new b();
                bVar.g = null;
                bVar.a(uri);
                bVar.f1249a = z;
                fragmentManager.beginTransaction().add(bVar, "deleteContact").commitAllowingStateLoss();
            } else {
                bVar.g = null;
                bVar.a(uri);
                bVar.f1249a = z;
            }
        }
        return bVar;
    }

    private void a(Uri uri) {
        this.e = uri;
        this.d = true;
        if (isAdded()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("dataUri", this.e);
            getLoaderManager().restartLoader(2131296706, bundle, this);
        }
    }

    @Override // android.app.Fragment
    public final LoaderManager getLoaderManager() {
        LoaderManager loaderManager = super.getLoaderManager();
        if (this.g != null) {
            loaderManager = this.g;
        }
        return loaderManager;
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.d = bundle.getBoolean("active");
            this.e = (Uri) bundle.getParcelable("contactUri");
            this.f1249a = bundle.getBoolean("finishWhenDone");
        }
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f1250b = activity;
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new CursorLoader(this.f1250b, (Uri) bundle.getParcelable("dataUri"), c, null, null, null);
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        if (this.f != null && this.f.isShowing()) {
            this.f.setOnDismissListener(null);
            this.f.dismiss();
            this.f = null;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.d = false;
        this.f = null;
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        Cursor cursor2;
        Throwable th;
        final boolean z;
        Cursor cursor3 = cursor;
        if (this.f != null) {
            this.f.dismiss();
            this.f = null;
        }
        if (this.d) {
            long j = 0;
            long j2 = 0;
            String str = null;
            String str2 = null;
            new HashSet();
            new HashSet();
            if (cursor3 != null) {
                cursor3.moveToPosition(-1);
                while (cursor3.moveToNext()) {
                    j2 = cursor3.getLong(0);
                    j = cursor3.getLong(4);
                    str = cursor3.getString(6);
                    str2 = cursor3.getString(5);
                }
            } else {
                j2 = 0;
                j = 0;
                str2 = null;
                str = null;
            }
            try {
                cursor2 = getActivity().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, c, "contact_id = " + j, null, null);
                if (cursor2 != null) {
                    try {
                        z = cursor2.getCount() > 1;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th;
                    }
                } else {
                    z = false;
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                final Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, j2);
                final Uri lookupUri = ContactsContract.Contacts.getLookupUri(j, str2);
                String str3 = str;
                if (TextUtils.isEmpty(str)) {
                    str3 = getString(2131755855);
                }
                this.f = new AlertDialog.Builder(getActivity()).setMessage(getString(2131755637, str3)).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.ezmode.b.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        b bVar = b.this;
                        bVar.f1250b.startService(ContactSaveService.a(bVar.f1250b, lookupUri, withAppendedId, z));
                        if (bVar.isAdded() && bVar.f1249a) {
                            bVar.getActivity().finish();
                        }
                    }
                }).create();
                this.f.setOnDismissListener(this);
                this.f.show();
                getLoaderManager().destroyLoader(2131296706);
            } catch (Throwable th3) {
                th = th3;
                cursor2 = null;
            }
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("active", this.d);
        bundle.putParcelable("contactUri", this.e);
        bundle.putBoolean("finishWhenDone", this.f1249a);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        if (this.d) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("dataUri", this.e);
            getLoaderManager().initLoader(2131296706, bundle, this);
        }
        super.onStart();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        if (this.f != null) {
            this.f.hide();
        }
    }
}

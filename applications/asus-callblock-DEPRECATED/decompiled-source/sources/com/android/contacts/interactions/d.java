package com.android.contacts.interactions;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.model.a;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/d.class */
public final class d extends Fragment implements LoaderManager.LoaderCallbacks<Cursor>, DialogInterface.OnDismissListener {
    private static final String[] d = {"raw_contact_id", SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup", "is_user_profile"};

    /* renamed from: a  reason: collision with root package name */
    boolean f1460a;

    /* renamed from: b  reason: collision with root package name */
    Context f1461b;
    int c;
    private boolean e;
    private Uri f;
    private AlertDialog g;
    private i h;

    public static d a(Activity activity, Uri uri, boolean z) {
        d dVar;
        if (uri == null) {
            dVar = null;
        } else {
            FragmentManager fragmentManager = activity.getFragmentManager();
            dVar = (d) fragmentManager.findFragmentByTag("deleteContact");
            if (dVar == null) {
                dVar = new d();
                dVar.h = null;
                dVar.a(uri);
                dVar.f1460a = z;
                fragmentManager.beginTransaction().add(dVar, "deleteContact").commitAllowingStateLoss();
            } else {
                dVar.h = null;
                dVar.a(uri);
                dVar.f1460a = z;
            }
        }
        return dVar;
    }

    private void a(Uri uri) {
        this.f = uri;
        this.e = true;
        if (isAdded()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("contactUri", this.f);
            getLoaderManager().restartLoader(2131296706, bundle, this);
        }
    }

    @Override // android.app.Fragment
    public final LoaderManager getLoaderManager() {
        LoaderManager loaderManager = super.getLoaderManager();
        if (this.h != null) {
            loaderManager = this.h;
        }
        return loaderManager;
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.e = bundle.getBoolean("active");
            this.f = (Uri) bundle.getParcelable("contactUri");
            this.f1460a = bundle.getBoolean("finishWhenDone");
        }
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f1461b = activity;
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new CursorLoader(this.f1461b, Uri.withAppendedPath((Uri) bundle.getParcelable("contactUri"), "entities"), d, null, null, null);
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        if (this.g != null && this.g.isShowing()) {
            this.g.setOnDismissListener(null);
            this.g.dismiss();
            this.g = null;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.e = false;
        this.g = null;
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        int i;
        String str;
        Cursor cursor2 = cursor;
        if (this.g != null) {
            this.g.dismiss();
            this.g = null;
        }
        if (this.e) {
            long j = 0;
            String str2 = null;
            str2 = null;
            boolean z = false;
            z = false;
            boolean z2 = false;
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            a a2 = a.a(getActivity());
            if (cursor2 != null) {
                cursor2.moveToPosition(-1);
                int i2 = 0;
                while (cursor2.moveToNext()) {
                    long j2 = cursor2.getLong(0);
                    String string = cursor2.getString(1);
                    String string2 = cursor2.getString(2);
                    j = cursor2.getLong(3);
                    str2 = cursor2.getString(4);
                    z = cursor2.getInt(5) == 1;
                    com.android.contacts.model.account.a a3 = a2.a(string, string2);
                    i2 = i2;
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        i2 = i2;
                        if (string != null) {
                            i2 = i2;
                            if (b.a.d.equals(string)) {
                                i2 = 1;
                            }
                        }
                    }
                    if (a3 == null || a3.d()) {
                        hashSet2.add(Long.valueOf(j2));
                    } else {
                        hashSet.add(Long.valueOf(j2));
                    }
                    z2 = a3 == null || b.a.f612b.equals(a3.f2000a);
                }
                i = i2;
            } else {
                i = 0;
                z2 = false;
                j = 0;
            }
            Cursor query = this.f1461b.getContentResolver().query(z ? ContactsContract.Profile.CONTENT_URI : ContactsContract.Contacts.CONTENT_URI, null, "_id=" + j, null, null);
            String str3 = BuildConfig.FLAVOR;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            int columnIndex = query.getColumnIndex(SpeedDialList.Columns.ISSIM);
                            i = columnIndex >= 0 ? query.getInt(columnIndex) : 0;
                        }
                        str3 = query.getString(query.getColumnIndex("display_name"));
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            int size = hashSet.size();
            int size2 = hashSet2.size();
            if (size > 0 && size2 > 0) {
                this.c = 2131755094;
            } else if (size > 0 && size2 == 0) {
                this.c = 2131755095;
            } else if (size == 0 && size2 > 1) {
                this.c = 2131755090;
            } else if (i == 1 || i == 2) {
                this.c = 2131755083;
            } else if (size2 != 1 || !z2) {
                this.c = 2131755084;
            } else {
                this.c = 2131755081;
            }
            final Uri lookupUri = ContactsContract.Contacts.getLookupUri(j, str2);
            String str4 = str3;
            if (TextUtils.isEmpty(str3)) {
                str4 = getString(2131755855);
            }
            try {
                str = getString(this.c, str4);
            } catch (Exception e) {
                Log.d("ContactDeletionInteraction", "Strange displayName: " + e.getMessage());
                str = BuildConfig.FLAVOR;
            }
            this.g = new AlertDialog.Builder(getActivity()).setTitle(2131755789).setMessage(str).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.d.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    d dVar = d.this;
                    dVar.f1461b.startService(ContactSaveService.a(dVar.f1461b, lookupUri));
                    if (dVar.isAdded() && dVar.f1460a) {
                        dVar.getActivity().finish();
                    }
                }
            }).create();
            this.g.setOnDismissListener(this);
            this.g.show();
            getLoaderManager().destroyLoader(2131296706);
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public final void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("active", this.e);
        bundle.putParcelable("contactUri", this.f);
        bundle.putBoolean("finishWhenDone", this.f1460a);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        if (this.e) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("contactUri", this.f);
            getLoaderManager().initLoader(2131296706, bundle, this);
        }
        super.onStart();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        if (this.g != null) {
            this.g.hide();
        }
    }
}

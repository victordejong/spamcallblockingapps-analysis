package com.android.contacts.list;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.LoaderManager;
import android.content.ActivityNotFoundException;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.ac;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.c.b;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.interactions.d;
import com.android.contacts.k;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.list.w;
import com.android.contacts.o;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileListFragment.class */
public class ContactTileListFragment extends Fragment implements b.a {
    private static w.a j;
    private a c;
    private w d;
    private w.d e;
    private TextView f;
    private ListView g;
    private boolean h;
    private final LoaderManager.LoaderCallbacks<Cursor> k = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.ContactTileListFragment.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ Loader<Cursor> onCreateLoader(int i2, Bundle bundle) {
            CursorLoader d;
            switch (AnonymousClass7.f1731a[ContactTileListFragment.this.e.ordinal()]) {
                case 1:
                    d = o.c(ContactTileListFragment.this.getActivity());
                    break;
                case 2:
                    d = o.a(ContactTileListFragment.this.getActivity());
                    break;
                case 3:
                    d = o.b(ContactTileListFragment.this.getActivity());
                    break;
                case 4:
                    d = o.d(ContactTileListFragment.this.getActivity());
                    break;
                default:
                    throw new IllegalStateException("Unrecognized DisplayType " + ContactTileListFragment.this.e);
            }
            return d;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ContactTileListFragment.this.d.a(cursor);
            ContactTileListFragment.this.f.setText(ContactTileListFragment.c(ContactTileListFragment.this));
            ContactTileListFragment.this.g.setEmptyView(ContactTileListFragment.this.f);
            ContactTileListFragment.f(ContactTileListFragment.this);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private ContactTileView.a l = new ContactTileView.a() { // from class: com.android.contacts.list.ContactTileListFragment.6
        @Override // com.android.contacts.list.ContactTileView.a
        public final void a() {
            if (ContactTileListFragment.this.c != null) {
                a unused = ContactTileListFragment.this.c;
            }
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri) {
            if (ContactTileListFragment.this.c != null) {
                a unused = ContactTileListFragment.this.c;
            }
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri, String str) {
            if (ContactTileListFragment.this.c != null) {
                a unused = ContactTileListFragment.this.c;
                Log.d("peopleFavorite", "make call from people favorite");
            }
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(w.a aVar) {
            w.a unused = ContactTileListFragment.j = aVar;
            ContactTileListFragment.this.g.setTag(ContactTileListFragment.j);
            ContactTileListFragment.this.g.showContextMenu();
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int b() {
            return ContactTileListFragment.this.getView().getWidth() / ContactTileListFragment.this.d.d;
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int c() {
            return -1;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final String f1724b = ContactTileListFragment.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1723a = Uri.parse("content://blocklist/blocklist");
    private static final String[] i = {"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.contacts.list.ContactTileListFragment$7  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileListFragment$7.class */
    public static final /* synthetic */ class AnonymousClass7 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1731a = new int[w.d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:24:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:22:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0051 -> B:18:0x0014). Please submit an issue!!! */
        static {
            try {
                f1731a[w.d.STARRED_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1731a[w.d.STREQUENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1731a[w.d.STREQUENT_PHONE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1731a[w.d.FREQUENT_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1731a[w.d.GROUP_MEMBERS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileListFragment$a.class */
    public interface a {
    }

    private boolean a(long j2) {
        boolean z;
        Cursor query = getActivity().getContentResolver().query(f1723a, null, "(numbertype <> 2 or numbertype IS NULL) AND contactid = " + String.valueOf(j2), null, null);
        if (query != null) {
            try {
                if (query.getCount() > 0) {
                    if (query != null) {
                        query.close();
                    }
                    z = true;
                    return z;
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
        z = false;
        return z;
    }

    static /* synthetic */ String c(ContactTileListFragment contactTileListFragment) {
        String string;
        switch (AnonymousClass7.f1731a[contactTileListFragment.e.ordinal()]) {
            case 1:
            case 2:
            case 3:
                string = contactTileListFragment.getString(2131755756);
                break;
            case 4:
            case 5:
                string = contactTileListFragment.getString(2131755886);
                break;
            default:
                throw new IllegalArgumentException("Unrecognized DisplayType " + contactTileListFragment.e);
        }
        return string;
    }

    static /* synthetic */ void f(ContactTileListFragment contactTileListFragment) {
        boolean z = true;
        if (contactTileListFragment.h == (contactTileListFragment.d.c > 0)) {
            z = false;
        }
        if (z) {
            contactTileListFragment.getActivity().invalidateOptionsMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, int i2) {
        View inflate = layoutInflater.inflate(i2, viewGroup, false);
        this.f = (TextView) inflate.findViewById(2131296591);
        this.g = (ListView) inflate.findViewById(2131296590);
        this.g.setItemsCanFocus(true);
        this.g.setAdapter((ListAdapter) this.d);
        registerForContextMenu(this.g);
        return inflate;
    }

    @Override // com.android.contacts.c.b.a
    public final void d() {
        this.d.notifyDataSetChanged();
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.d = new w(activity, this.l, getResources().getInteger(2131361812), this.e, f1724b);
        this.d.f1892b = k.a(activity);
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131296384:
                new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755783)).setMessage(getActivity().getResources().getString(2131755202)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ContactTileListFragment.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("displayname", ContactTileListFragment.j.f1895b);
                        contentValues.put("incontacts", (Integer) 1);
                        contentValues.put("contactid", Long.valueOf(ContactTileListFragment.j.k));
                        contentValues.put("contactlookup", ContactTileListFragment.j.h);
                        ac acVar = new ac();
                        acVar.getClass();
                        new ac.b(ContactTileListFragment.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(ContactTileListFragment.j.k));
                        Toast.makeText(ContactTileListFragment.this.getActivity(), String.format(ContactTileListFragment.this.getString(2131755008), ContactTileListFragment.j.f1895b), 0).show();
                    }
                }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ContactTileListFragment.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Log.d("AlertDialog", "Negative");
                    }
                }).show();
                z = true;
                break;
            case 2131296420:
                PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), j.g, (String) null, j.f1895b, j.k);
                z = true;
                break;
            case 2131296563:
                boolean z2 = j.f != null;
                String phoneNumber = PhoneCapabilityTester.getPhoneNumber(getActivity(), j.k);
                z = true;
                if (phoneNumber != null) {
                    ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), j.f1895b, phoneNumber, j.k, j.d, z2, j.l, 0));
                    z = true;
                    break;
                }
                break;
            case 2131296564:
                boolean z3 = j.f != null;
                String phoneNumber2 = PhoneCapabilityTester.getPhoneNumber(getActivity(), j.k);
                z = true;
                if (phoneNumber2 != null) {
                    ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), j.f1895b, phoneNumber2, j.k, j.d, z3, j.l, 1));
                    z = true;
                    break;
                }
                break;
            case 2131296659:
                d.a(getActivity(), j.g, false);
                z = true;
                break;
            case 2131296769:
                Intent intent = new Intent("android.intent.action.EDIT", j.g);
                intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), intent);
                z = true;
                break;
            case 2131296993:
                Intent intent2 = new Intent("com.android.contacts.action.LINK_CONTACT");
                if (j.k >= 0) {
                    intent2.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, j.k);
                    ImplicitIntentsUtil.startActivityInApp(getActivity(), intent2);
                    z = true;
                    break;
                } else {
                    Toast.makeText(getActivity(), 2131755931, 1).show();
                    z = true;
                    break;
                }
            case 2131297229:
                getActivity().startService(ContactSaveService.a((Context) getActivity(), j.g, false));
                z = true;
                break;
            case 2131297272:
                PhoneNumberInteraction.b((TransactionSafeActivity) getActivity(), j.g);
                z = true;
                break;
            case 2131297283:
                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, j.h);
                Intent intent3 = new Intent("android.intent.action.SEND");
                intent3.setType("text/x-vcard");
                intent3.putExtra("android.intent.extra.STREAM", withAppendedPath);
                try {
                    ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), Intent.createChooser(intent3, getActivity().getText(2131756121)));
                    z = true;
                    break;
                } catch (ActivityNotFoundException e) {
                    Toast.makeText(getActivity(), 2131756119, 0).show();
                    z = true;
                    break;
                }
            case 2131297459:
                new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755798)).setMessage(getActivity().getResources().getString(2131756059)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ContactTileListFragment.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ContactTileListFragment.this.getActivity().getContentResolver().delete(ContactTileListFragment.f1723a, "contactid=" + String.valueOf(ContactTileListFragment.j.k), null);
                        ac acVar = new ac();
                        acVar.getClass();
                        new ac.a(ContactTileListFragment.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(ContactTileListFragment.j.k));
                        Toast.makeText(ContactTileListFragment.this.getActivity(), String.format(ContactTileListFragment.this.getString(2131755014), ContactTileListFragment.j.f1895b), 0).show();
                    }
                }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.ContactTileListFragment.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Log.d("AlertDialog", "Negative");
                    }
                }).show();
                z = true;
                break;
            default:
                z = super.onContextItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getActivity().getMenuInflater().inflate(2131492882, contextMenu);
        MenuItem findItem = contextMenu.findItem(2131296420);
        MenuItem findItem2 = contextMenu.findItem(2131297272);
        MenuItem findItem3 = contextMenu.findItem(2131296993);
        contextMenu.findItem(2131296313).setVisible(false);
        MenuItem findItem4 = contextMenu.findItem(2131296384);
        MenuItem findItem5 = contextMenu.findItem(2131297459);
        w.a aVar = (w.a) view.getTag();
        if (aVar.n == 0) {
            findItem.setVisible(false);
            findItem2.setVisible(false);
            findItem4.setVisible(false);
            findItem5.setVisible(false);
        }
        if (aVar.j > 0) {
            findItem3.setVisible(false);
        }
        if (a(j.k)) {
            findItem4.setVisible(false);
        } else {
            findItem5.setVisible(false);
        }
        MenuItem findItem6 = contextMenu.findItem(2131296563);
        MenuItem findItem7 = contextMenu.findItem(2131296564);
        if (aVar.n != 0) {
            findItem6.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
            findItem7.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
            if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2)) {
                findItem6.setVisible(false);
                findItem7.setVisible(false);
            } else {
                findItem6.setVisible(true);
                findItem7.setVisible(true);
                findItem.setVisible(false);
            }
            if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                findItem7.setVisible(false);
            }
            if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                findItem6.setVisible(false);
            }
        } else {
            findItem6.setVisible(false);
            findItem7.setVisible(false);
        }
        contextMenu.setHeaderTitle(aVar.f1895b);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return a(layoutInflater, viewGroup, 2131427485);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b.a(2);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.e != null) {
            w.d[] values = w.d.values();
            for (int i2 = 0; i2 < values.length; i2++) {
                if (values[i2] == this.e) {
                    getLoaderManager().initLoader(this.e.ordinal(), null, this.k);
                } else {
                    getLoaderManager().destroyLoader(values[i2].ordinal());
                }
            }
        }
        b.a(2, this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        b.a(2);
    }
}

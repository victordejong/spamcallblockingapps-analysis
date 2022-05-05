package com.android.contacts.list;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.FavoriteEditorActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.ag;
import com.android.contacts.c.b;
import com.android.contacts.k;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.ContactTileView;
import com.android.contacts.list.ar;
import com.android.contacts.list.w;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import com.asus.blocklist.g;
import com.asus.contacts.materialui.FloatingActionButton;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment.class */
public class AsusPhoneFavoriteFragment extends Fragment implements AdapterView.OnItemClickListener, PopupMenu.OnMenuItemClickListener, ag, b.a {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1694a = Uri.parse("content://blocklist/blocklist");
    private static final String[] i = {"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup"};

    /* renamed from: b  reason: collision with root package name */
    PopupMenu f1695b;
    public d c;
    View d;
    private b e;
    private ar f;
    private w.a j;
    private w l;
    private w m;
    private bc n;
    private ContactsPreferences o;
    private ContactListFilter p;
    private View q;
    private ListView r;
    private View v;
    private ViewGroup w;
    private LayoutInflater x;
    private View y;
    private FloatingActionButton z;
    private ContentResolver g = null;
    private boolean h = false;
    private int k = 0;
    private final ContactTileView.a s = new a(this, (byte) 0);
    private final c t = new c(this, (byte) 0);
    private final f u = new f(this, (byte) 0);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$a.class */
    private final class a implements ContactTileView.a {
        private a() {
        }

        /* synthetic */ a(AsusPhoneFavoriteFragment asusPhoneFavoriteFragment, byte b2) {
            this();
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a() {
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri) {
            if (AsusPhoneFavoriteFragment.this.c != null) {
                AsusPhoneFavoriteFragment.this.c.onContactSelected(uri);
            }
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(Uri uri, String str) {
            if (AsusPhoneFavoriteFragment.this.c != null) {
                AsusPhoneFavoriteFragment.this.c.onContactSelected(uri, str);
                Log.d("AsusPhoneFavoriteFragment", "make call from phoneFavorite");
            }
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final void a(w.a aVar) {
            AsusPhoneFavoriteFragment.this.j = aVar;
            AsusPhoneFavoriteFragment.this.r.setTag(AsusPhoneFavoriteFragment.this.j);
            AsusPhoneFavoriteFragment.this.r.showContextMenu();
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int b() {
            return 0;
        }

        @Override // com.android.contacts.list.ContactTileView.a
        public final int c() {
            return 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$b.class */
    private final class b extends ContentObserver {
        public b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (PhoneCapabilityTester.isUsingTwoPanes(AsusPhoneFavoriteFragment.this.getActivity()) && !PhoneCapabilityTester.IsAsusDevice()) {
                try {
                    new e(AsusPhoneFavoriteFragment.this.getActivity()).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    Log.i("AsusPhoneFavoriteFragment", e.toString());
                }
            }
            if (AsusPhoneFavoriteFragment.this.f != null) {
                AsusPhoneFavoriteFragment.this.f.a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$c.class */
    private final class c implements ContactsPreferences.ChangeListener {
        private c() {
        }

        /* synthetic */ c(AsusPhoneFavoriteFragment asusPhoneFavoriteFragment, byte b2) {
            this();
        }

        @Override // com.android.contacts.preference.ContactsPreferences.ChangeListener
        public final void onChange() {
            AsusPhoneFavoriteFragment.d(AsusPhoneFavoriteFragment.this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$d.class */
    public interface d {
        void onContactSelected(Uri uri);

        void onContactSelected(Uri uri, String str);

        void onContactSelected(Uri uri, String str, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$e.class */
    public final class e extends AsyncTask<Void, Integer, Void> {

        /* renamed from: a  reason: collision with root package name */
        Context f1705a;

        public e(Context context) {
            this.f1705a = context;
        }

        private Void a() {
            Uri uri = ContactsContract.Contacts.CONTENT_URI;
            AsusPhoneFavoriteFragment.this.k = 0;
            Cursor query = this.f1705a.getContentResolver().query(uri, new String[]{"_id", "photo_id", "display_name", "lookup", "has_phone_number", "starred"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        for (int i = 0; i < query.getCount(); i++) {
                            query.moveToPosition(i);
                            if (query.getString(5).equals("1")) {
                                AsusPhoneFavoriteFragment.this.k++;
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r10) {
            super.onPostExecute(r10);
            if (AsusPhoneFavoriteFragment.this.getActivity() != null) {
                if (!PhoneCapabilityTester.isUsingTwoPanes(AsusPhoneFavoriteFragment.this.getActivity()) || PhoneCapabilityTester.IsAsusDevice()) {
                    ((TextView) AsusPhoneFavoriteFragment.this.getActivity().findViewById(2131297129)).setText(AsusPhoneFavoriteFragment.this.getResources().getQuantityString(2131623936, AsusPhoneFavoriteFragment.this.k, Integer.valueOf(AsusPhoneFavoriteFragment.this.k)));
                } else {
                    TextView textView = (TextView) AsusPhoneFavoriteFragment.this.getActivity().findViewById(2131297130);
                    TextView textView2 = (TextView) AsusPhoneFavoriteFragment.this.getActivity().findViewById(2131297129);
                    String quantityString = AsusPhoneFavoriteFragment.this.getResources().getQuantityString(2131623936, AsusPhoneFavoriteFragment.this.k, Integer.valueOf(AsusPhoneFavoriteFragment.this.k));
                    textView.setText(AsusPhoneFavoriteFragment.this.getResources().getString(2131755454));
                    textView2.setText(quantityString);
                }
                this.f1705a = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPhoneFavoriteFragment$f.class */
    private final class f implements AbsListView.OnScrollListener {
        private f() {
        }

        /* synthetic */ f(AsusPhoneFavoriteFragment asusPhoneFavoriteFragment, byte b2) {
            this();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (AsusPhoneFavoriteFragment.this.r != null) {
                AsusPhoneFavoriteFragment.this.r.setVerticalScrollBarEnabled(false);
                AsusPhoneFavoriteFragment.this.r.setFastScrollEnabled(false);
                AsusPhoneFavoriteFragment.this.r.setFastScrollAlwaysVisible(false);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (absListView != null && AsusPhoneFavoriteFragment.this.z != null && com.asus.contacts.b.e.a().a(AsusPhoneFavoriteFragment.this.getActivity(), "FloatingActionButton")) {
                if (i == 2 || i == 1) {
                    AsusPhoneFavoriteFragment.this.z.b();
                } else if (i == 0) {
                    AsusPhoneFavoriteFragment.this.z.a();
                }
            }
        }
    }

    private void a(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i2 = 0; i2 < ((ViewGroup) view).getChildCount(); i2++) {
                    a(((ViewGroup) view).getChildAt(i2));
                }
            }
        }
    }

    static /* synthetic */ void a(AsusPhoneFavoriteFragment asusPhoneFavoriteFragment, int i2) {
        if (i2 == 0 && asusPhoneFavoriteFragment.q != null && !PhoneCapabilityTester.IsAsusDevice()) {
            View findViewById = asusPhoneFavoriteFragment.q.findViewById(2131296845);
            View findViewById2 = asusPhoneFavoriteFragment.q.findViewById(2131297389);
            findViewById.setVisibility(8);
            findViewById2.setVisibility(8);
            asusPhoneFavoriteFragment.q.findViewById(2131296846).setVisibility(0);
        }
    }

    static /* synthetic */ boolean d(AsusPhoneFavoriteFragment asusPhoneFavoriteFragment) {
        r5 = true;
        boolean z = false;
        if (asusPhoneFavoriteFragment.o == null || asusPhoneFavoriteFragment.n == null) {
            z = false;
        } else {
            int displayOrder = asusPhoneFavoriteFragment.o.getDisplayOrder();
            if (asusPhoneFavoriteFragment.n.n != displayOrder) {
                asusPhoneFavoriteFragment.n.n = displayOrder;
                z = true;
            }
            int sortOrder = asusPhoneFavoriteFragment.o.getSortOrder();
            if (asusPhoneFavoriteFragment.n.o != sortOrder) {
                asusPhoneFavoriteFragment.n.o = sortOrder;
            }
        }
        return z;
    }

    @Override // com.android.contacts.ag
    public final void a(boolean z) {
        if (this.f == null) {
            return;
        }
        if (z) {
            this.f.a();
        } else {
            this.f.cancelOperation(0);
        }
    }

    @Override // com.android.contacts.c.b.a
    public final void d() {
        this.l.notifyDataSetChanged();
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.g = getActivity().getContentResolver();
        this.g.registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.e);
        this.f = new ar(this.g, new ar.a() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.1
            @Override // com.android.contacts.list.ar.a
            public final void a(Cursor cursor) {
                if (cursor != null && !cursor.isClosed()) {
                    AsusPhoneFavoriteFragment.this.m.a(cursor);
                    AsusPhoneFavoriteFragment.a(AsusPhoneFavoriteFragment.this, cursor.getCount());
                }
            }
        });
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 != 1) {
            return;
        }
        if (getActivity() != null) {
            AccountFilterUtil.handleAccountFilterResult(r.a(getActivity()), i3, intent);
        } else {
            Log.e("AsusPhoneFavoriteFragment", "getActivity() returns null during Fragment#onActivityResult()");
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.o = new ContactsPreferences(activity);
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.j != null) {
            switch (menuItem.getItemId()) {
                case 2131296831:
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755783)).setMessage(getActivity().getResources().getString(com.asus.blocklist.a.b(getActivity()) ? 2131755202 : 2131755203)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.5
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (g.h(AsusPhoneFavoriteFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.b(AsusPhoneFavoriteFragment.this.getActivity(), AsusPhoneFavoriteFragment.this.j.k);
                            } else {
                                g.a(AsusPhoneFavoriteFragment.this.getActivity(), AsusPhoneFavoriteFragment.this.j.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, AsusPhoneFavoriteFragment.this.getActivity(), "Behavior - Block", "Block by favorite", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
                case 2131296832:
                    z = true;
                    if (this.c != null) {
                        this.c.onContactSelected(this.j.g, this.j.f1895b, this.j.k);
                        z = true;
                        break;
                    }
                    break;
                case 2131296833:
                    com.android.contacts.interactions.d.a(getActivity(), this.j.g, false);
                    z = true;
                    break;
                case 2131296834:
                case 2131296835:
                case 2131296840:
                case 2131296841:
                case 2131296842:
                case 2131296843:
                case 2131296844:
                case 2131296845:
                case 2131296846:
                case 2131296850:
                case 2131296851:
                default:
                    z = super.onContextItemSelected(menuItem);
                    break;
                case 2131296836:
                    boolean z2 = this.j.f != null;
                    String phoneNumber = PhoneCapabilityTester.getPhoneNumber(getActivity(), this.j.k);
                    z = true;
                    if (phoneNumber != null) {
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.j.f1895b, phoneNumber, this.j.k, this.j.d, z2, this.j.l, 0));
                        z = true;
                        break;
                    }
                    break;
                case 2131296837:
                    boolean z3 = this.j.f != null;
                    String phoneNumber2 = PhoneCapabilityTester.getPhoneNumber(getActivity(), this.j.k);
                    z = true;
                    if (phoneNumber2 != null) {
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.j.f1895b, phoneNumber2, this.j.k, this.j.d, z3, this.j.l, 1));
                        z = true;
                        break;
                    }
                    break;
                case 2131296838:
                    Intent intent = new Intent("android.intent.action.EDIT", this.j.g);
                    intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), intent);
                    z = true;
                    break;
                case 2131296839:
                    Intent intent2 = new Intent("com.android.contacts.action.LINK_CONTACT");
                    if (this.j.k >= 0) {
                        intent2.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, this.j.k);
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent2);
                        z = true;
                        break;
                    } else {
                        Toast.makeText(getActivity(), 2131755931, 1).show();
                        z = true;
                        break;
                    }
                case 2131296847:
                    getActivity().startService(ContactSaveService.a((Context) getActivity(), this.j.g, false));
                    z = true;
                    break;
                case 2131296848:
                    z = true;
                    if (this.c != null) {
                        this.c.onContactSelected(this.j.g);
                        z = true;
                        break;
                    }
                    break;
                case 2131296849:
                    Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, this.j.h);
                    Intent intent3 = new Intent("android.intent.action.SEND");
                    intent3.setType("text/x-vcard");
                    intent3.putExtra("android.intent.extra.STREAM", withAppendedPath);
                    try {
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), Intent.createChooser(intent3, getActivity().getText(2131756121)));
                        z = true;
                        break;
                    } catch (ActivityNotFoundException e2) {
                        Toast.makeText(getActivity(), 2131756119, 0).show();
                        z = true;
                        break;
                    }
                case 2131296852:
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755798)).setMessage(getActivity().getResources().getString(2131756059)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.6
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (g.h(AsusPhoneFavoriteFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.c(AsusPhoneFavoriteFragment.this.getActivity(), AsusPhoneFavoriteFragment.this.j.k);
                            } else {
                                g.b(AsusPhoneFavoriteFragment.this.getActivity(), AsusPhoneFavoriteFragment.this.j.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, AsusPhoneFavoriteFragment.this.getActivity(), "Behavior - UnBlock", "Unblock by favorite", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.p = (ContactListFilter) bundle.getParcelable("filter");
        }
        this.e = new b(new Handler());
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        w.a aVar = (w.a) view.getTag();
        if (aVar != null) {
            boolean isPhone = PhoneCapabilityTester.isPhone(getActivity());
            boolean isSmsIntentRegistered = PhoneCapabilityTester.isSmsIntentRegistered(getActivity());
            getActivity().getMenuInflater().inflate(2131492892, contextMenu);
            MenuItem findItem = contextMenu.findItem(2131296832);
            MenuItem findItem2 = contextMenu.findItem(2131296831);
            MenuItem findItem3 = contextMenu.findItem(2131296852);
            MenuItem findItem4 = contextMenu.findItem(2131296848);
            MenuItem findItem5 = contextMenu.findItem(2131296838);
            MenuItem findItem6 = contextMenu.findItem(2131296833);
            MenuItem findItem7 = contextMenu.findItem(2131296849);
            MenuItem findItem8 = contextMenu.findItem(2131296839);
            MenuItem findItem9 = contextMenu.findItem(2131296828);
            findItem5.setVisible(false);
            findItem6.setVisible(false);
            findItem7.setVisible(false);
            findItem8.setVisible(false);
            findItem9.setVisible(false);
            if (aVar.n == 0 && PhoneCapabilityTester.getSipAddress(getActivity(), aVar.k) == null) {
                findItem.setVisible(false);
                findItem4.setVisible(false);
            } else {
                if (!isPhone) {
                    findItem.setVisible(false);
                }
                if (!isSmsIntentRegistered || aVar.n == 0) {
                    findItem4.setVisible(false);
                }
            }
            if (!isPhone) {
                findItem2.setVisible(false);
                findItem3.setVisible(false);
            } else {
                g.a(getActivity(), findItem2, findItem3, this.j.k);
            }
            MenuItem findItem10 = contextMenu.findItem(2131296836);
            MenuItem findItem11 = contextMenu.findItem(2131296837);
            if (aVar.n != 0) {
                findItem10.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
                findItem11.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
                if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2)) {
                    findItem10.setVisible(false);
                    findItem11.setVisible(false);
                } else {
                    findItem10.setVisible(true);
                    findItem11.setVisible(true);
                    findItem.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                    findItem11.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                    findItem10.setVisible(false);
                }
            } else {
                findItem10.setVisible(false);
                findItem11.setVisible(false);
            }
            contextMenu.setHeaderTitle(aVar.f1895b);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131427556, viewGroup, false);
        this.w = viewGroup;
        this.x = layoutInflater;
        this.r = (ListView) inflate.findViewById(2131296590);
        this.r.setItemsCanFocus(true);
        this.r.setOnItemClickListener(this);
        this.r.setVerticalScrollBarEnabled(false);
        this.r.setVerticalScrollbarPosition(2);
        this.r.setScrollBarStyle(VCardConfig.FLAG_REFRAIN_PHONE_NUMBER_FORMATTING);
        Activity activity = getActivity();
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            if (getResources().getConfiguration().orientation == 2) {
                this.m = new w(activity, this.s, getResources().getInteger(2131361811), w.d.ODM_PAD_FAVORITE_MEMBERS, "pad_landscape_mode");
            } else {
                this.m = new w(activity, this.s, getResources().getInteger(2131361811), w.d.ODM_PAD_FAVORITE_MEMBERS, "pad_portait_mode");
            }
        } else {
            this.m = new w(activity, this.s, getResources().getInteger(2131361812), w.d.STREQUENT_PHONE_ONLY, "phone_mode");
        }
        this.m.f1892b = k.a(activity);
        this.n = new bc(activity);
        this.n.p = true;
        this.n.q = true;
        this.n.b(false);
        this.n.r = false;
        this.n.A = false;
        this.n.D = false;
        this.n.t = k.a(activity);
        this.n.a(0, false);
        this.n.X = true;
        this.n.Y = false;
        this.n.g = ContactListItemView.a.LEFT;
        if (this.p != null) {
            this.n.B = this.p;
        }
        this.l = this.m;
        this.r.setAdapter((ListAdapter) this.l);
        registerForContextMenu(this.r);
        this.r.setOnScrollListener(this.u);
        this.r.setFastScrollEnabled(false);
        this.r.setFastScrollAlwaysVisible(false);
        this.q = inflate.findViewById(2131296591);
        this.r.setEmptyView(this.q);
        this.v = inflate.findViewById(2131296996);
        this.d = inflate.findViewById(2131296842);
        this.y = inflate.findViewById(2131296827);
        if (this.y != null) {
            this.y.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AsusPhoneFavoriteFragment.this.getActivity().startActivityForResult(new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER"), 20);
                }
            });
            AsusAirViewUtils.setActionbarHoverHint(this.y, getResources().getString(2131755802), new com.android.contacts.airview.a(getActivity()));
        }
        this.z = (FloatingActionButton) inflate.findViewById(2131296825);
        if (this.z != null) {
            this.z.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, AsusPhoneFavoriteFragment.this.getActivity(), "Favorite", "Favorite- Add_to_favorite", null, null);
                    AsusPhoneFavoriteFragment.this.getActivity().startActivityForResult(new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER"), 20);
                }
            });
            AsusAirViewUtils.setActionbarHoverHint(this.z, getResources().getString(2131755802), new com.android.contacts.airview.a(getActivity()));
            if (com.asus.contacts.b.e.a().a(getActivity(), "FloatingActionButton")) {
                this.z.setVisibility(0);
                if (this.y != null) {
                    this.y.setVisibility(8);
                }
            } else {
                this.z.setVisibility(8);
                if (this.y != null) {
                    this.y.setVisibility(0);
                }
            }
        }
        if (this.d != null) {
            this.d.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.AsusPhoneFavoriteFragment.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PopupMenu popupMenu;
                    AsusPhoneFavoriteFragment asusPhoneFavoriteFragment = AsusPhoneFavoriteFragment.this;
                    View view2 = view;
                    if (view == null) {
                        view2 = asusPhoneFavoriteFragment.d;
                    }
                    Activity activity2 = asusPhoneFavoriteFragment.getActivity();
                    if (activity2 == null) {
                        popupMenu = null;
                    } else {
                        popupMenu = new PopupMenu(activity2, view2);
                        popupMenu.inflate(2131492893);
                        popupMenu.setOnMenuItemClickListener(asusPhoneFavoriteFragment);
                    }
                    asusPhoneFavoriteFragment.f1695b = popupMenu;
                    if (asusPhoneFavoriteFragment.f1695b != null) {
                        asusPhoneFavoriteFragment.f1695b.show();
                    }
                }
            });
            AsusAirViewUtils.setActionbarHoverHint(this.d, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
        }
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) || PhoneCapabilityTester.IsAsusDevice()) {
            ((TextView) inflate.findViewById(2131297129)).setText(getResources().getQuantityString(2131623936, getActivity().getIntent().getIntExtra("number", 0), Integer.valueOf(getActivity().getIntent().getIntExtra("number", 0))));
        } else {
            try {
                new e(getActivity()).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.i("AsusPhoneFavoriteFragment", e2.toString());
            }
        }
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.g.unregisterContentObserver(this.e);
        com.android.contacts.c.b.a(3);
        a(this.r);
        this.r = null;
        this.f.f1789a = null;
        w wVar = this.m;
        if (wVar.f1891a != null) {
            wVar.f1891a.close();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
        long j2;
        if (i2 == 0) {
            Log.e("AsusPhoneFavoriteFragment", "onItemClick() event for unexpected position.");
            return;
        }
        int i3 = i2 - 1;
        if (this.c != null) {
            String m = this.n.m(i3);
            Cursor cursor = (Cursor) this.n.getItem(i3);
            if (cursor != null) {
                j2 = cursor.getLong(4);
            } else {
                Log.w(bc.e, "Cursor was null in getContactId() call. Returning -1 instead.");
                j2 = -1;
            }
            this.c.onContactSelected(this.n.j(i3), m, j2);
        }
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131296772:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(9, getActivity(), "Favorite", "Favorite- Edit_favorite", null, null);
                Intent intent = new Intent(getActivity(), FavoriteEditorActivity.class);
                intent.setAction("android.intent.action.INSERT");
                startActivityForResult(intent, 30);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f != null) {
            this.f.a();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("filter", this.p);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.o.registerChangeListener(this.t);
        com.android.contacts.c.b.a(3, this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.o.unregisterChangeListener();
        com.android.contacts.c.b.a(3);
        if (this.f1695b != null) {
            this.f1695b.dismiss();
            this.f1695b = null;
        }
    }
}

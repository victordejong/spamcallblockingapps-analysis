package com.android.contacts.list;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.SearchManager;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SearchView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.AsusContactsMultipleSelectionActivity;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AboutContactsAppActivity;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.AsusSelectAccountActivity;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.ManageContactsActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.ae;
import com.android.contacts.ag;
import com.android.contacts.c.b;
import com.android.contacts.detail.AsusContactsSharedEntriesFilterActivity;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.detail.ContactDetailLayoutController;
import com.android.contacts.detail.ContactLoaderFragment;
import com.android.contacts.editor.g;
import com.android.contacts.fastscroll.AlphabetFastScroll;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.interactions.h;
import com.android.contacts.list.AsusContactListFilterWindow;
import com.android.contacts.list.ai;
import com.android.contacts.list.aj;
import com.android.contacts.list.w;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.simcardmanage.d;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.AddHKQuickIndexUtils;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.AsusCopySingleContactAyncTask;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.widget.TransitionAnimationView;
import com.android.contacts.x;
import com.asus.contacts.b.e;
import com.asus.contacts.materialui.FloatingActionButton;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.ZenUiFamily;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/DefaultContactBrowseListFragment.class */
public class DefaultContactBrowseListFragment extends n implements View.OnClickListener, ae.a, ag, b.a, g.a, AlphabetFastScroll.a, AsusContactListFilterWindow.i, ai.a {
    PopupWindow C;
    public ContactLoaderFragment D;
    public ContactDetailLayoutController E;
    public Uri F;
    private TextView G;
    private View H;
    private FrameLayout I;
    private View J;
    private Button K;
    private FrameLayout L;
    private TextView M;
    private View N;
    private TextView O;
    private w.a Q;
    private Loader<Cursor> T;
    private Boolean X;
    private x Y;
    private View Z;
    private SharedPreferences aB;
    private ae aE;
    private FloatingActionButton aa;
    private View ab;
    private View ac;
    private View ad;
    private View ae;
    private View af;
    private View ag;
    private View ah;
    private ListPopupWindow ai;
    private View aj;
    private View ak;
    private ConnectivityManager al;
    private d am;
    private TransitionAnimationView ar;
    private com.android.contacts.model.c as;
    private ImageView at;
    private ListPopupWindow au;
    private int av;
    private boolean aw;
    private int ax;
    private FrameLayout ay;
    private com.android.contacts.skin.a az;
    public AlphabetFastScroll h;
    View i;
    public AsusContactListFilterWindow j;
    public ak k;
    public SearchView l;
    public static final String e = DefaultContactBrowseListFragment.class.getSimpleName();
    public static boolean f = false;
    public static final Uri g = Uri.parse("content://blocklist/blocklist");
    private static final String[] P = {"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", "has_phone_number"};
    private boolean R = false;
    private boolean S = false;
    private ai U = null;
    private boolean V = false;
    private boolean W = false;
    public Set<String> B = new HashSet();
    private long an = 0;
    private boolean ao = false;
    private Cursor ap = null;
    private final Handler aq = new Handler();
    private boolean aA = false;
    private boolean aC = false;
    private boolean aD = false;
    private View.OnClickListener aF = new c(this, (byte) 0);
    private AdapterView.OnItemClickListener aG = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.6
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            Intent intent;
            int i2 = (int) ((aj.a) view.getTag()).f1778a;
            ImageView imageView = ((aj.a) view.getTag()).c;
            if (i2 == 2131755082) {
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Delete_multiple_contacts", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Delete_multiple_contacts", null, null);
                }
                if (PhoneCapabilityTester.isVerizon()) {
                    intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
                } else {
                    intent = new Intent(DefaultContactBrowseListFragment.this.getActivity(), AsusSelectAccountActivity.class);
                    intent.setFlags(2);
                }
                ImplicitIntentsUtil.startActivityInApp(DefaultContactBrowseListFragment.this.getActivity(), intent);
            } else if (i2 == 2131755830) {
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Manage_contacts", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Manage_contacts", null, null);
                }
                ImplicitIntentsUtil.startActivityInApp(DefaultContactBrowseListFragment.this.getActivity(), new Intent(DefaultContactBrowseListFragment.this.getActivity(), ManageContactsActivity.class));
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 2)) {
                    AsusRedPointNotificationHelper.getInstance().disableRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 2);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                }
            } else if (i2 == 2131755800) {
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Accounts", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Accounts", null, null);
                }
                Intent intent2 = new Intent("android.settings.SYNC_SETTINGS");
                intent2.putExtra("authorities", new String[]{"com.android.contacts"});
                intent2.setFlags(524288);
                ImplicitIntentsUtil.startActivityOutsideApp(DefaultContactBrowseListFragment.this.getActivity(), intent2);
            } else if (i2 == 2131756120) {
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Share_multiple_contacts", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Share_multiple_contacts", null, null);
                }
                Intent intent3 = new Intent();
                intent3.setClass(DefaultContactBrowseListFragment.this.getActivity(), AsusContactsMultipleSelectionActivity.class);
                intent3.setAction("send_contacts");
                DefaultContactBrowseListFragment.this.startActivityForResult(intent3, 2);
            } else if (i2 == 2131755717) {
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- KDDI_AU_SERVER_SYNC", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- KDDI_AU_SERVER_SYNC", null, null);
                }
                Activity activity = DefaultContactBrowseListFragment.this.getActivity();
                if (activity instanceof MainDialtactsActivity) {
                    ((MainDialtactsActivity) activity).startAuServerSync();
                } else {
                    Log.d(DefaultContactBrowseListFragment.e, "activity is not an instance of DialtactsActivity!");
                }
            } else if (i2 == 2131755851) {
                AboutContactsAppActivity.gotoGooglePlay(DefaultContactBrowseListFragment.this.getActivity());
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 12)) {
                    AsusRedPointNotificationHelper.getInstance().disableRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 12);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Version update", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- Version update", null, null);
                }
            } else if (i2 == ZenUiFamily.getZenUiFamilyTitle()) {
                MainDialtactsActivity.launchZenUiFamilySdk(DefaultContactBrowseListFragment.this.getActivity());
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 13)) {
                    AsusRedPointNotificationHelper.getInstance().disableRedPoint(DefaultContactBrowseListFragment.this.getActivity(), 13);
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- ZenUI Instant updates", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, DefaultContactBrowseListFragment.this.getActivity(), "AllContacts", "AllContacts- ZenUI Instant updates", null, null);
                }
            }
            if (DefaultContactBrowseListFragment.this.au != null) {
                DefaultContactBrowseListFragment.this.au.dismiss();
                DefaultContactBrowseListFragment.this.au = null;
            }
        }
    };
    private AbsListView.OnScrollListener aH = new AbsListView.OnScrollListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.7

        /* renamed from: b  reason: collision with root package name */
        private boolean f1746b = false;

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 0) {
                Set<String> a2 = DefaultContactBrowseListFragment.this.a(absListView.getFirstVisiblePosition(), absListView.getLastVisiblePosition());
                if (DefaultContactBrowseListFragment.this.h != null) {
                    DefaultContactBrowseListFragment.this.h.a(a2);
                }
                this.f1746b = false;
            } else if (!this.f1746b && DefaultContactBrowseListFragment.this.h != null) {
                this.f1746b = true;
                DefaultContactBrowseListFragment.this.g_();
            }
            if (absListView != null && DefaultContactBrowseListFragment.this.aa != null && e.a().a(DefaultContactBrowseListFragment.this.getActivity(), "FloatingActionButton")) {
                if (i == 2 || i == 1) {
                    DefaultContactBrowseListFragment.this.aa.b();
                } else if (i == 0) {
                    DefaultContactBrowseListFragment.this.aa.a();
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/DefaultContactBrowseListFragment$a.class */
    public final class a implements ContactDetailFragment.Listener {
        public a() {
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onCreateRawContactRequested(String str, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
            Activity activity = DefaultContactBrowseListFragment.this.getActivity();
            Toast.makeText(activity, 2131756234, 1).show();
            Intent a2 = ContactSaveService.a(activity, str, arrayList, accountWithDataSet, MainDialtactsActivity.class, "android.intent.action.VIEW");
            a2.putExtra("Display_Name", str);
            activity.startService(a2);
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onCreateRawContactRequested(ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
            Toast.makeText(DefaultContactBrowseListFragment.this.getActivity(), 2131756234, 1).show();
            DefaultContactBrowseListFragment.this.getActivity().startService(ContactSaveService.a(DefaultContactBrowseListFragment.this.getActivity(), arrayList, accountWithDataSet, MainDialtactsActivity.class, "android.intent.action.VIEW"));
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0180 -> B:32:0x012b). Please submit an issue!!! */
        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public final void onItemClicked(Intent intent) {
            if (intent != null) {
                if (intent.getAction().equals("android.intent.action.SENDTO") && !intent.getBooleanExtra("CANSENDSMS", true)) {
                    new AlertDialog.Builder(DefaultContactBrowseListFragment.this.getActivity()).setMessage(2131756091).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.a.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    }).show();
                } else if (intent.getAction().equals("intent.show.prefersim.dialog")) {
                    MainDialtactsActivity mainDialtactsActivity = (MainDialtactsActivity) DefaultContactBrowseListFragment.this.getActivity();
                    com.asus.prefersim.b.a(DefaultContactBrowseListFragment.this.getFragmentManager(), intent.getStringArrayListExtra("EXTRA_PREFER_SIM_NUMBER_LIST"), intent.getLongExtra("EXTRA_PREFER_SIM_CONTACT_ID", 0L), mainDialtactsActivity.getDefaultContactBrowseListFragment().E.getContactDetailFragment());
                } else {
                    long j = -1;
                    if (!(DefaultContactBrowseListFragment.this.as == null || intent == null || DefaultContactBrowseListFragment.this.as.B)) {
                        long j2 = DefaultContactBrowseListFragment.this.as.d;
                        Uri uri = DefaultContactBrowseListFragment.this.as.c;
                        if (uri == null || j2 != 0) {
                            intent.removeExtra("com.android.phone.AsusDialName");
                            intent.removeExtra("com.android.phone.AsusDialContactId");
                            Log.e(DefaultContactBrowseListFragment.e, "normal mode");
                        } else {
                            Log.e(DefaultContactBrowseListFragment.e, "directid =  " + j2);
                            if (com.asus.contacts.a.d(uri.getLastPathSegment())) {
                                j = Long.valueOf(uri.getLastPathSegment()).longValue();
                            }
                            String str = DefaultContactBrowseListFragment.this.as.k;
                            if (intent != null) {
                                intent.putExtra("com.android.phone.AsusDialName", str);
                                intent.putExtra("com.android.phone.AsusDialContactId", j);
                            }
                        }
                    }
                    try {
                        if (com.asus.prefersim.c.a(DefaultContactBrowseListFragment.this.getActivity())) {
                            com.asus.prefersim.c.a(DefaultContactBrowseListFragment.this.getActivity(), intent);
                        } else {
                            ImplicitIntentsUtil.startActivityOutsideApp(DefaultContactBrowseListFragment.this.getActivity(), intent, false);
                        }
                    } catch (ActivityNotFoundException e) {
                        Log.e(DefaultContactBrowseListFragment.e, "No activity found for intent: " + intent);
                    }
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, DefaultContactBrowseListFragment.this.getActivity(), "Contacts", "Contact Detail", "Contact Detail: press phone number", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, DefaultContactBrowseListFragment.this.getActivity(), "Make a Call", true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/DefaultContactBrowseListFragment$b.class */
    public final class b implements ContactLoaderFragment.ContactLoaderFragmentListener {
        b() {
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public final void onContactNotFound() {
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public final void onDeleteRequested(Uri uri) {
            com.android.contacts.interactions.d.a(DefaultContactBrowseListFragment.this.getActivity(), uri, false);
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public final void onDetailsLoaded(final com.android.contacts.model.c cVar) {
            if (cVar == null) {
                DefaultContactBrowseListFragment.this.E.showEmptyState();
            } else {
                DefaultContactBrowseListFragment.this.aq.post(new Runnable() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (DefaultContactBrowseListFragment.this.getActivity() != null && !DefaultContactBrowseListFragment.this.getActivity().isFinishing()) {
                            DefaultContactBrowseListFragment.this.E.setContactData(cVar);
                            DefaultContactBrowseListFragment.this.as = cVar;
                        }
                    }
                });
            }
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public final void onEditRequested(Uri uri) {
            Intent intent = new Intent("android.intent.action.EDIT", uri);
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
            DefaultContactBrowseListFragment.this.startActivityForResult(intent, 3);
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public final void onLinkRequested(long j) {
            Intent intent = new Intent("com.android.contacts.action.LINK_CONTACT");
            if (j < 0) {
                Toast.makeText(DefaultContactBrowseListFragment.this.getActivity(), 2131755931, 1).show();
                return;
            }
            intent.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, j);
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
            DefaultContactBrowseListFragment.this.startActivityForResult(intent, 7);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/DefaultContactBrowseListFragment$c.class */
    private final class c implements View.OnClickListener {
        private c() {
        }

        /* synthetic */ c(DefaultContactBrowseListFragment defaultContactBrowseListFragment, byte b2) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DefaultContactBrowseListFragment.this.l.setFocusable(false);
            DefaultContactBrowseListFragment.this.l.clearFocus();
            DefaultContactBrowseListFragment defaultContactBrowseListFragment = DefaultContactBrowseListFragment.this;
            if (defaultContactBrowseListFragment.j == null) {
                defaultContactBrowseListFragment.j = new AsusContactListFilterWindow();
            }
            View view2 = view;
            if (view == null) {
                view2 = defaultContactBrowseListFragment.i;
            }
            if (defaultContactBrowseListFragment.C == null) {
                AsusContactListFilterWindow asusContactListFilterWindow = defaultContactBrowseListFragment.j;
                Activity activity = defaultContactBrowseListFragment.getActivity();
                asusContactListFilterWindow.l = System.currentTimeMillis();
                AsusContactListFilterWindow.f1664a = activity.getApplicationContext();
                asusContactListFilterWindow.f1665b = activity;
                if (AsusContactListFilterWindow.f1664a == null) {
                    Log.w("AsusContactListFilterWindow", "makePopupWindow: mContext is null");
                }
                asusContactListFilterWindow.k = view2;
                asusContactListFilterWindow.i = new PopupWindow(asusContactListFilterWindow.f1665b);
                asusContactListFilterWindow.j = AsusContactListFilterWindow.f1664a.getResources().getInteger(2131361797);
                View inflate = ((LayoutInflater) AsusContactListFilterWindow.f1664a.getSystemService("layout_inflater")).inflate(2131427358, (ViewGroup) null, false);
                AsusContactListFilterWindow.c = (AsusContactListFilterWindow.h) asusContactListFilterWindow.f1665b;
                asusContactListFilterWindow.d = defaultContactBrowseListFragment;
                asusContactListFilterWindow.e = (ExpandableListView) inflate.findViewById(Resources.getSystem().getIdentifier("list", "id", "android"));
                asusContactListFilterWindow.f = inflate.findViewById(2131297007);
                asusContactListFilterWindow.g = inflate.findViewById(2131297206);
                asusContactListFilterWindow.e.setOnChildClickListener(asusContactListFilterWindow);
                asusContactListFilterWindow.e.setOnCreateContextMenuListener(asusContactListFilterWindow);
                asusContactListFilterWindow.e.setHeaderDividersEnabled(true);
                asusContactListFilterWindow.f.setVisibility(0);
                asusContactListFilterWindow.e.setVisibility(8);
                asusContactListFilterWindow.g.setVisibility(8);
                asusContactListFilterWindow.h = new AsusContactListFilterWindow.d(AsusContactListFilterWindow.f1664a);
                asusContactListFilterWindow.e.setAdapter(asusContactListFilterWindow.h);
                asusContactListFilterWindow.i.setWidth(AsusContactListFilterWindow.f1664a.getResources().getDimensionPixelSize(2131099725));
                inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                asusContactListFilterWindow.i.setBackgroundDrawable(AsusContactListFilterWindow.f1664a.getResources().getDrawable(2131165482));
                asusContactListFilterWindow.i.setContentView(inflate);
                asusContactListFilterWindow.i.setOutsideTouchable(true);
                asusContactListFilterWindow.i.setFocusable(true);
                asusContactListFilterWindow.i.setTouchable(true);
                asusContactListFilterWindow.i.setOnDismissListener(asusContactListFilterWindow);
                asusContactListFilterWindow.e.setOnGroupClickListener(asusContactListFilterWindow.n);
                AsusContactListFilterWindow.a(false);
                int dimensionPixelSize = AsusContactListFilterWindow.f1664a.getResources().getDimensionPixelSize(2131099796);
                if (asusContactListFilterWindow.i != null) {
                    asusContactListFilterWindow.i.setHeight(-2);
                }
                if (!(asusContactListFilterWindow.i == null || asusContactListFilterWindow.k == null || AsusContactListFilterWindow.f1664a == null || asusContactListFilterWindow.k.getWindowToken() == null)) {
                    asusContactListFilterWindow.i.showAsDropDown(asusContactListFilterWindow.k, -dimensionPixelSize, -dimensionPixelSize);
                }
                defaultContactBrowseListFragment.C = asusContactListFilterWindow.i;
                ((Activity) defaultContactBrowseListFragment.getContext()).getLoaderManager().restartLoader(1000, null, defaultContactBrowseListFragment.j.o);
                AsusContactListFilterWindow.b();
                return;
            }
            Log.d(DefaultContactBrowseListFragment.e, "mFilterWindow is showing");
        }
    }

    public DefaultContactBrowseListFragment() {
        this.X = false;
        x();
        f(true);
        Locale locale = Locale.getDefault();
        this.X = Boolean.valueOf(locale.toString().startsWith(Locale.TRADITIONAL_CHINESE.toString()) || locale.toString().startsWith(Locale.SIMPLIFIED_CHINESE.toString()) || locale.toString().startsWith("en") || locale.toString().startsWith("pt") || locale.toString().startsWith("it") || locale.toString().startsWith("fr") || locale.toString().startsWith("es") || locale.toString().startsWith("de") || locale.toString().startsWith("nl"));
        if (this.X.booleanValue()) {
            g(false);
        } else {
            g(true);
        }
    }

    private int a(ListAdapter listAdapter) {
        int i;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        Resources resources = getResources();
        this.av = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(2131100286));
        int i2 = 0;
        int i3 = 0;
        View view = null;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i2 >= count) {
                break;
            }
            int itemViewType = listAdapter.getItemViewType(i2);
            i3 = i3;
            if (itemViewType != i3) {
                i3 = itemViewType;
                view = null;
            }
            if (this.ay == null) {
                this.ay = new FrameLayout(getActivity());
            }
            view = listAdapter.getView(i2, view, this.ay);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= this.av) {
                i = this.av;
                break;
            }
            if (measuredWidth > i4) {
                i4 = measuredWidth;
            }
            i2++;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<String> a(int i, int i2) {
        HashSet hashSet = new HashSet();
        int i3 = 0;
        if (i >= 0 && i2 >= 0) {
            ListAdapter adapter = s().getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                i3 = ((HeaderViewListAdapter) adapter).getHeadersCount();
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            if (adapter instanceof SectionIndexer) {
                SectionIndexer sectionIndexer = (SectionIndexer) adapter;
                Object[] sections = sectionIndexer.getSections();
                while (i <= i2) {
                    int sectionForPosition = sectionIndexer.getSectionForPosition(i - i3);
                    if (sectionForPosition >= 0) {
                        hashSet.add((String) sections[sectionForPosition]);
                    }
                    i++;
                }
            }
            Log.d(e, "mVisibleSet.size = " + hashSet.size());
        }
        return hashSet;
    }

    private void c(boolean z) {
        this.N.setVisibility(z ? 0 : 8);
        m();
    }

    private void d(boolean z) {
        int i = 0;
        this.I.setVisibility(z ? 0 : 8);
        this.J.setVisibility(z ? 0 : 8);
        this.G.setVisibility(z ? 0 : 8);
        this.M.setVisibility(z ? 0 : 8);
        this.L.setVisibility(z ? 0 : 8);
        Button button = this.K;
        if (!z) {
            i = 8;
        }
        button.setVisibility(i);
    }

    private void k() {
        if (this.G != null) {
            this.G.setVisibility(this.o ? 8 : 0);
        }
        l();
        if (this.H != null) {
            this.H.setVisibility(8);
        }
    }

    private void l() {
        int i = 8;
        if (this.i != null) {
            ContactListFilter contactListFilter = ((n) this).c;
            if (contactListFilter == null || this.o) {
                this.i.setVisibility(8);
                if (this.ac != null) {
                    this.ac.setVisibility(8);
                    return;
                }
                return;
            }
            boolean updateAccountFilterTitleForPeople = AccountFilterUtil.updateAccountFilterTitleForPeople(this.i, contactListFilter, false);
            View view = this.i;
            if (updateAccountFilterTitleForPeople) {
                i = 0;
            }
            view.setVisibility(i);
            if (this.ac != null) {
                this.ac.setVisibility(0);
            }
        }
    }

    private void m() {
        boolean z = true;
        int i = 0;
        if (!this.o || this.z.size() <= 0) {
            if (s().getFooterViewsCount() > 0) {
                s().removeFooterView(this.aj);
            }
            if (this.o && this.A.size() > 0 && !this.ao) {
                for (Map.Entry<Integer, Integer> entry : this.A.entrySet()) {
                    if (entry.getValue().intValue() >= this.k.y) {
                        if (this.k.y < 100) {
                            s().addFooterView(this.ak);
                            this.ao = true;
                            return;
                        }
                        Log.i(e, "Max search count");
                        return;
                    }
                }
            } else if (s().getFooterViewsCount() > 0) {
                s().removeFooterView(this.ak);
                this.ao = false;
            }
        } else {
            if (s().getFooterViewsCount() > 0) {
                s().removeFooterView(this.ak);
                this.ao = false;
            }
            if (s().getFooterViewsCount() == 0 && this.N.getVisibility() == 8 && this.H.getVisibility() == 8) {
                NetworkInfo networkInfo = this.al.getNetworkInfo(0);
                NetworkInfo networkInfo2 = this.al.getNetworkInfo(1);
                if ((networkInfo2 != null && networkInfo2.isConnected()) || (networkInfo != null && networkInfo.isConnected())) {
                    Iterator<Map.Entry<Integer, Integer>> it = this.A.entrySet().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getValue().intValue() > 0) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    TextView textView = (TextView) this.aj.findViewById(2131297249);
                    if (z) {
                        i = 8;
                    }
                    textView.setVisibility(i);
                    if (com.android.contacts.skin.a.b()) {
                        textView.setTextColor(getResources().getColor(2131034197));
                    } else if (com.android.contacts.skin.a.c()) {
                        textView.setTextColor(com.android.contacts.skin.a.a(2));
                    }
                    s().addFooterView(this.aj);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        View inflate;
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            inflate = ac.b(getActivity(), this.X.booleanValue());
        } else if (this.X.booleanValue()) {
            Log.d(e, "needToChangeIndex inflate asus index");
            inflate = layoutInflater.inflate(2131427365, (ViewGroup) null);
        } else {
            Log.d(e, "needToChangeIndex inflate aosp index");
            inflate = layoutInflater.inflate(2131427366, (ViewGroup) null);
        }
        return inflate;
    }

    @Override // com.android.contacts.ae.a
    public final void a() {
        this.aD = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        if (!this.aC || this.aD) {
            Uri m = ((q) this.t).m(i);
            if (m != null) {
                Cursor cursor = (Cursor) ((q) this.t).getItem(i);
                a(m, cursor != null ? com.android.contacts.d.a.a(cursor.getLong(0)) : false);
            }
            this.aD = false;
        }
    }

    @Override // com.android.contacts.list.n, com.android.contacts.list.p
    /* renamed from: a */
    public final void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        AsyncTask.Status status;
        if (this.k != null) {
            this.B.clear();
            if (this.h != null && cursor != null && !cursor.isClosed() && cursor.getCount() == 0) {
                this.h.a(this.B);
            }
            this.k.e = true;
        }
        if (this.V && !CompatUtils.isNCompatible()) {
            super.onLoadFinished(loader, cursor);
        } else if (this.o || !this.X.booleanValue() || cursor == null || cursor.getCount() <= 0) {
            super.onLoadFinished(loader, cursor);
        } else if (this.ap == null || !cursor.equals(this.ap)) {
            this.T = loader;
            this.ap = cursor;
            try {
                if (this.U != null && ((status = this.U.getStatus()) == AsyncTask.Status.RUNNING || status == AsyncTask.Status.FINISHED)) {
                    this.U.cancel(true);
                }
                if (this.W) {
                    Log.d(e, "create new sort task,data count:" + cursor.getCount());
                }
                this.U = new ai(getActivity(), this);
                this.U.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, cursor);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            a(ai.f1774a);
        }
        m();
    }

    @Override // com.android.contacts.list.ai.a
    public final void a(Cursor cursor) {
        if (this.W && cursor != null) {
            Log.d(e, "sort task callback,data count:" + cursor.getCount());
        }
        super.onLoadFinished(this.T, cursor);
    }

    @Override // com.android.contacts.ae.a
    public final void a(Uri uri) {
        Log.d("SwipeToDoAction", "sendMessageFromContacts");
        PhoneNumberInteraction.b((TransactionSafeActivity) getActivity(), uri);
    }

    @Override // com.android.contacts.ae.a
    public final void a(Uri uri, String str, long j) {
        Log.d("SwipeToDoAction", "callFromContacts");
        PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), uri, (String) null, str, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        TextView textView;
        super.a(layoutInflater, viewGroup);
        ac.a();
        this.G = (TextView) getView().findViewById(2131296599);
        this.ab = getView().findViewById(2131296367);
        this.Z = getView().findViewById(2131296366);
        if (this.Z != null) {
            this.Z.setOnClickListener(this);
            this.ab.setOnClickListener(this);
            AsusAirViewUtils.setActionbarHoverHint(this.Z, getResources().getString(2131755707), new com.android.contacts.airview.a(getActivity()));
            AsusAirViewUtils.setActionbarHoverHint(this.ab, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
        }
        this.aa = (FloatingActionButton) getView().findViewById(2131296825);
        if (this.aa != null) {
            this.aa.setOnClickListener(this);
            AsusAirViewUtils.setActionbarHoverHint(this.aa, getResources().getString(2131755707), new com.android.contacts.airview.a(getActivity()));
            if (e.a().a(getActivity(), "FloatingActionButton")) {
                this.aa.setVisibility(0);
                if (this.Z != null) {
                    this.Z.setVisibility(8);
                }
            } else {
                this.aa.setVisibility(8);
                if (this.Z != null) {
                    this.Z.setVisibility(0);
                }
            }
        }
        this.ac = getView().findViewById(2131296351);
        this.ad = getView().findViewById(2131297166);
        this.ae = getView().findViewById(2131296363);
        this.af = getView().findViewById(2131296442);
        this.ag = getView().findViewById(2131296988);
        this.ah = getView().findViewById(2131296527);
        this.al = (ConnectivityManager) getActivity().getApplicationContext().getSystemService("connectivity");
        this.aj = layoutInflater.inflate(2131427393, (ViewGroup) null);
        this.ak = layoutInflater.inflate(2131427392, (ViewGroup) null);
        this.ak.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultContactBrowseListFragment.this.w = DefaultContactBrowseListFragment.this.k.y + 20;
                DefaultContactBrowseListFragment.this.i_();
            }
        });
        if (com.android.contacts.skin.a.b() && this.ak != null) {
            TextView textView2 = (TextView) this.aj.findViewById(2131297253);
            if (textView2 != null) {
                textView2.setTextColor(getResources().getColor(2131034159));
            }
        } else if (!(!com.android.contacts.skin.a.c() || this.ak == null || (textView = (TextView) this.aj.findViewById(2131297253)) == null)) {
            textView.setTextColor(com.android.contacts.skin.a.a(2));
        }
        if (this.ae != null) {
            this.ae.findViewById(2131296615).setOnClickListener(this);
            this.ae.findViewById(2131296293).setOnClickListener(this);
            this.ae.findViewById(2131296948).setOnClickListener(this);
        }
        this.i = getView().findViewById(2131296350);
        this.i.setOnClickListener(this.aF);
        if (this.h == null) {
            this.h = (AlphabetFastScroll) getView().findViewById(2131296339);
        }
        if (this.h != null) {
            Log.d(e, "set mAlphabetFastScroll");
            this.h.setListener(this);
            w();
            a(this.h);
        } else {
            Log.d(e, "set else");
            g(true);
        }
        if (!f) {
            ListView s = s();
            this.I = new FrameLayout(layoutInflater.getContext());
            this.J = layoutInflater.inflate(2131427696, (ViewGroup) null, false);
            this.G = (TextView) this.J.findViewById(2131296599);
            this.M = (TextView) this.J.findViewById(2131297196);
            this.M.setAllCaps(true);
            if (!PhoneCapabilityTester.IsAsusDevice() && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                this.M.setPadding(getResources().getDimensionPixelOffset(2131099965) + getResources().getDimensionPixelOffset(2131100245), 0, 0, 0);
            }
            this.I.addView(this.J);
            s.addHeaderView(this.I, null, false);
            this.L = new FrameLayout(layoutInflater.getContext());
            this.K = (Button) layoutInflater.inflate(2131427695, (ViewGroup) null, false);
            if (!PhoneCapabilityTester.IsAsusDevice() && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                this.K.setPadding(getResources().getDimensionPixelOffset(2131099965) + getResources().getDimensionPixelOffset(2131100245), 0, 0, 0);
            }
            this.L.addView(this.K);
            this.L.setBackgroundResource(2131165481);
            s.addHeaderView(this.L, null, true);
            this.K.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
                    intent.putExtra("newLocalProfile", true);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(DefaultContactBrowseListFragment.this.getActivity(), intent);
                }
            });
            if (com.android.contacts.skin.a.b()) {
                View findViewById = this.J.findViewById(2131297197);
                this.K.setTextColor(getResources().getColor(2131034159));
                int color = getResources().getColor(2131034197);
                this.M.setTextColor(color);
                findViewById.setBackgroundColor(color);
                this.G.setTextColor(color);
            } else if (com.android.contacts.skin.a.c()) {
                View findViewById2 = this.J.findViewById(2131297197);
                this.K.setTextColor(com.android.contacts.skin.a.a(2));
                int a2 = com.android.contacts.skin.a.a(2);
                this.M.setTextColor(a2);
                findViewById2.setBackgroundColor(a2);
                this.G.setTextColor(a2);
            }
            if (!PhoneCapabilityTester.IsAsusDevice() && !this.aA) {
                this.J.findViewById(2131296928).setPadding(0, 0, getResources().getDimensionPixelOffset(2131099965), 0);
            }
            d(false);
        }
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        this.H = layoutInflater.inflate(2131427651, (ViewGroup) null, false);
        frameLayout.addView(this.H);
        if (!f) {
            s().addHeaderView(frameLayout, null, false);
        }
        k();
        this.N = getView().findViewById(2131297251);
        this.O = (TextView) this.H.findViewById(2131297408);
        registerForContextMenu(s());
        this.l = (SearchView) ((ViewStub) getView().findViewById(2131297252)).inflate();
        this.l.setVisibility(0);
        this.l.setFocusable(false);
        try {
            this.l.setSearchableInfo(((SearchManager) getActivity().getSystemService("search")).getSearchableInfo(getActivity().getComponentName()));
            this.l.setQueryRefinementEnabled(true);
        } catch (Exception e2) {
            Log.d(e, e2.toString());
        }
        FrameLayout frameLayout2 = (FrameLayout) getView().findViewById(2131296573);
        if (com.android.contacts.skin.a.b()) {
            getActivity();
            com.asus.contacts.b.b.a();
            com.android.contacts.skin.a.a(this.ac, frameLayout2, (ImageView) getView().findViewById(2131296551), (TextView) getView().findViewById(2131296348), getActivity());
            if (this.l != null) {
                this.l.setBackgroundResource(2131034127);
                try {
                    TextView textView3 = (TextView) this.l.findViewById(getResources().getIdentifier("android:id/search_src_text", null, null));
                    if (textView3 != null) {
                        textView3.setTextColor(getResources().getColor(2131034156));
                    }
                } catch (Exception e3) {
                    Log.d(e, "searchview no Dark Theme resources 2: " + e3.toString());
                }
            }
            View findViewById3 = getView().findViewById(2131296855);
            if (findViewById3 != null) {
                findViewById3.setBackgroundColor(getResources().getColor(2131034120));
            }
        } else if (com.android.contacts.skin.a.c()) {
            getActivity();
            com.asus.contacts.b.b.a();
            ImageView imageView = (ImageView) getView().findViewById(2131296551);
            TextView textView4 = (TextView) getView().findViewById(2131296348);
            com.android.contacts.skin.a.a(this.ac, frameLayout2, imageView, textView4, getActivity());
            if (textView4 != null) {
                textView4.setBackground(com.android.contacts.skin.a.a(getActivity(), 2131165394, com.android.contacts.skin.a.a(2)));
            }
            this.l.setBackgroundColor(com.android.contacts.skin.a.a(3));
            try {
                int a3 = com.android.contacts.skin.a.a(0);
                TextView textView5 = (TextView) this.l.findViewById(getResources().getIdentifier("android:id/search_src_text", null, null));
                if (textView5 != null) {
                    textView5.setTextColor(com.android.contacts.skin.a.a(2));
                    textView5.setHintTextColor(com.android.contacts.skin.a.a(2));
                }
                ImageView imageView2 = (ImageView) this.l.findViewById(getResources().getIdentifier("android:id/search_close_btn", null, null));
                if (imageView2 != null) {
                    com.android.contacts.skin.a.a(imageView2, a3);
                }
                ImageView imageView3 = (ImageView) this.l.findViewById(getResources().getIdentifier("android:id/search_voice_btn", null, null));
                if (imageView3 != null) {
                    com.android.contacts.skin.a.a(imageView3, a3);
                }
                ImageView imageView4 = (ImageView) this.l.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
                if (imageView4 != null) {
                    com.android.contacts.skin.a.a(imageView4, a3);
                }
            } catch (Exception e4) {
                Log.d(e, "searchview no Global Theme resources 2");
            }
        } else {
            this.l.setBackground(getResources().getDrawable(2131165383));
        }
        try {
            ImageView imageView5 = (ImageView) this.l.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
            LinearLayout linearLayout = (LinearLayout) this.l.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
            LinearLayout linearLayout2 = (LinearLayout) this.l.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
            LinearLayout linearLayout3 = (LinearLayout) this.l.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
            if (imageView5 != null) {
                ((ViewGroup.MarginLayoutParams) imageView5.getLayoutParams()).setMargins(0, 0, 0, 0);
                imageView5.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (DefaultContactBrowseListFragment.this.l != null) {
                            EditText editText = (EditText) DefaultContactBrowseListFragment.this.l.findViewById(DefaultContactBrowseListFragment.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                            if (editText != null) {
                                editText.setFocusable(true);
                                editText.requestFocus();
                                ((InputMethodManager) DefaultContactBrowseListFragment.this.getActivity().getSystemService("input_method")).showSoftInput(editText, 1);
                            }
                        }
                    }
                });
                imageView5.requestLayout();
            }
            if (linearLayout2 != null) {
                linearLayout2.setBackground(new ColorDrawable(0));
            }
            if (linearLayout != null) {
                linearLayout.setBackground(new ColorDrawable(0));
            }
            if (linearLayout3 != null) {
                if (com.android.contacts.skin.a.b()) {
                    getActivity();
                    com.android.contacts.skin.a.d();
                    linearLayout3.setBackground(com.android.contacts.skin.a.a(getActivity(), 2131165914, getResources().getColor(2131034120)));
                } else {
                    linearLayout3.setBackground(getResources().getDrawable(2131165914));
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 16;
                layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                linearLayout3.setLayoutParams(layoutParams);
            }
        } catch (Exception e5) {
            Log.d(e, "searchview resource exception: " + e5.toString());
        }
        if (frameLayout2 != null) {
            com.asus.contacts.customize.a.a(getActivity(), frameLayout2, "customized_background_contact_list", "customized_background_contact_list_uri");
            Log.d(e, "set dialpad customized background");
        }
        this.at = (ImageView) getView().findViewById(2131296370);
        if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 0) && this.at != null) {
            this.at.setVisibility(0);
        }
        if (this.Y != null) {
            d(this.Y.getProviderStatus());
        }
        this.aB = PreferenceManager.getDefaultSharedPreferences(getActivity());
    }

    public final void a(View view) {
        ListPopupWindow listPopupWindow;
        View view2 = view;
        if (view == null) {
            view2 = this.ab;
        }
        Activity activity = getActivity();
        if (activity == null) {
            listPopupWindow = null;
        } else {
            this.au = new ListPopupWindow(activity);
            aj ajVar = new aj(activity);
            this.au.setAdapter(new aj(activity));
            this.au.setAnchorView(view2);
            this.au.setModal(true);
            if (!this.aw) {
                this.ax = a(ajVar);
                this.aw = true;
            }
            this.au.setContentWidth(this.ax);
            this.au.setOnItemClickListener(this.aG);
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(16, getActivity(), "Click Contact Option Menu", true);
            this.au.show();
            listPopupWindow = this.au;
        }
        this.ai = listPopupWindow;
        if (this.ai != null) {
            this.ai.show();
            this.l.setFocusable(false);
            this.l.clearFocus();
        }
    }

    @Override // com.android.contacts.list.n
    public final void a(ContactListFilter contactListFilter) {
        super.a(contactListFilter);
        l();
    }

    @Override // com.android.contacts.ag
    public final void a(boolean z) {
        if (z && !this.S) {
            super.onStart();
            this.S = true;
        } else if (!z && (getActivity() instanceof MainDialtactsActivity)) {
            ((MainDialtactsActivity) getActivity()).onSingleContactFilterClick();
        }
    }

    @Override // com.android.contacts.ae.a
    public final void b() {
        Log.d("SwipeToDoAction", "registerForContextMenu");
        registerForContextMenu(s());
    }

    @Override // com.android.contacts.fastscroll.AlphabetFastScroll.a
    public final void b(int i) {
        this.h.a(a(i, i + 6));
    }

    @Override // com.android.contacts.list.p
    protected final void b(Cursor cursor) {
        boolean z;
        if (!isAdded()) {
            return;
        }
        if (this.o || cursor == null) {
            q qVar = (q) this.t;
            if (qVar != null) {
                if (!TextUtils.isEmpty(y())) {
                    int size = qVar.f408b.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            z = true;
                            break;
                        } else if (!qVar.f(i)) {
                            z = false;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (z) {
                        this.H.setVisibility(0);
                        if (qVar.e()) {
                            this.O.setText(2131756082);
                            c(true);
                            if (com.android.contacts.skin.a.c()) {
                                this.O.setTextColor(com.android.contacts.skin.a.a(2));
                            }
                        } else {
                            this.O.setText(2131755751);
                            this.O.sendAccessibilityEvent(4);
                            c(false);
                            if (com.android.contacts.skin.a.c()) {
                                this.O.setTextColor(com.android.contacts.skin.a.a(2));
                            }
                        }
                        d(false);
                        return;
                    }
                }
                this.H.setVisibility(8);
                c(false);
                d(false);
                return;
            }
            return;
        }
        int count = cursor.getCount();
        if (count != 0) {
            int i2 = count - (this.y ? 1 : 0);
            String charSequence = getResources().getQuantityText(2131623937, i2).toString();
            if (this.y) {
                ((q) this.t).C = String.format(charSequence, Integer.valueOf(i2));
            } else {
                this.G.setText(String.format(charSequence, Integer.valueOf(i2)));
            }
        } else {
            ContactListFilter contactListFilter = ((n) this).c;
            switch (contactListFilter != null ? contactListFilter.f1712a : -2) {
                case -5:
                    this.G.setText(2131755757);
                    return;
                case -4:
                    this.G.setText(2131755756);
                    return;
                case -3:
                    this.G.setText(2131755754);
                    return;
                case p.POSITION_NONE /* -2 */:
                case p.POSITION_UNCHANGED /* -1 */:
                default:
                    this.G.setText(2131755753);
                    return;
                case 0:
                    this.G.setText(getString(2131755755, new Object[]{contactListFilter.c}));
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.n, com.android.contacts.list.p
    public final void b_(boolean z) {
        super.b_(z);
        k();
        if (!z) {
            c(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final /* synthetic */ q c() {
        this.k = new ak(getContext(), true);
        this.k.X = this.m;
        this.k.p = getResources().getBoolean(2130968581);
        this.k.f = true;
        return this.k;
    }

    @Override // com.android.contacts.c.b.a
    public final void d() {
        this.k.notifyDataSetChanged();
    }

    public final void d(int i) {
        boolean z = true;
        if (CompatUtils.isMarshmallowCompatible()) {
            if (i != 2) {
                z = false;
            }
        } else if (i != 4) {
            z = false;
        }
        if (z) {
            Log.d(e, "STATUS_NO_ACCOUNTS_NO_CONTACTS");
            if (this.h != null) {
                this.h.setVisibility(8);
            }
            if (this.l != null) {
                this.l.setVisibility(8);
            }
            if (this.ac != null) {
                this.ac.setVisibility(8);
            }
            if (this.ad != null) {
                this.ad.setVisibility(8);
            }
            if (this.af != null) {
                this.af.setVisibility(8);
            }
            if (this.ag != null) {
                this.ag.setVisibility(8);
            }
            if (this.ah != null) {
                this.ah.setVisibility(8);
            }
            if (this.ae != null) {
                this.ae.setVisibility(0);
                return;
            }
            return;
        }
        if (this.o) {
            Log.d(e, "Normal search mode");
            if (this.h != null) {
                this.h.setVisibility(8);
            }
            if (this.l != null) {
                this.l.setVisibility(0);
            }
            if (this.ac != null) {
                this.ac.setVisibility(8);
            }
            if (this.ad != null) {
                this.ad.setVisibility(0);
            }
            if (this.af != null) {
                this.af.setVisibility(0);
            }
            if (this.ag != null) {
                this.ag.setVisibility(0);
            }
            if (this.ah != null) {
                this.ah.setVisibility(0);
            }
            if (this.ae != null) {
                this.ae.setVisibility(8);
            }
        } else {
            Log.d(e, "Normal");
            if (this.h != null) {
                this.h.setVisibility(0);
            }
            if (this.l != null) {
                this.l.setVisibility(0);
            }
            if (this.ac != null) {
                this.ac.setVisibility(0);
            }
            if (this.ad != null) {
                this.ad.setVisibility(0);
            }
            if (this.af != null) {
                this.af.setVisibility(0);
            }
            if (this.ag != null) {
                this.ag.setVisibility(0);
            }
            if (this.ah != null) {
                this.ah.setVisibility(0);
            }
            if (this.ae != null) {
                this.ae.setVisibility(8);
            }
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            this.ar = (TransitionAnimationView) getView().findViewById(2131296562);
            this.D = (ContactLoaderFragment) getChildFragmentManager().findFragmentById(2131296358);
            if (this.D != null) {
                this.D.setListener(new b());
            }
            if (this.E == null) {
                this.E = new ContactDetailLayoutController(getActivity(), null, getFragmentManager(), this.ar, getView().findViewById(2131296557), new a());
            }
        }
    }

    @Override // com.android.contacts.list.AsusContactListFilterWindow.i
    public final void e() {
        this.C = null;
    }

    @Override // com.android.contacts.fastscroll.AlphabetFastScroll.a
    public final void g_() {
        this.k.e = false;
        this.h.a(new HashSet());
    }

    @Override // com.android.contacts.ae.a
    public final void h_() {
        Log.d("SwipeToDoAction", "unregisterForContextMenu");
        unregisterForContextMenu(s());
    }

    public final void i() {
        if (s() != null && (s() instanceof AsusPinnedHeaderListView)) {
            ((AsusPinnedHeaderListView) s()).a(BuildConfig.FLAVOR);
        }
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        if (this.an > 0) {
            boolean z = this.Q.j > 0;
            if (!com.asus.contacts.b.d.a(accountWithDataSet)) {
                com.asus.contacts.b.d.a(getFragmentManager(), accountWithDataSet, this.an, z);
            } else {
                new AsusCopySingleContactAyncTask(accountWithDataSet, (Context) getActivity(), this.an, z, true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        } else {
            Log.d(e, "onAccountChosen mEntry = null");
        }
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountSelectorCancelled() {
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.F = (Uri) bundle.getParcelable(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI);
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
            Log.e(e, "getActivity() returns null during Fragment#onActivityResult()");
        }
    }

    @Override // com.android.contacts.list.n, com.android.contacts.list.p, android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.Y = (x) activity;
        this.am = com.android.contacts.simcardmanage.e.a(activity);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296293:
                Intent intent = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
                intent.setFlags(524288);
                intent.putExtra("authorities", new String[]{"com.android.contacts"});
                ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), intent);
                return;
            case 2131296366:
            case 2131296615:
                break;
            case 2131296367:
                a(view);
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 0)) {
                    AsusRedPointNotificationHelper.getInstance().disableRedPoint(getActivity(), 0);
                    if (this.at != null) {
                        this.at.setVisibility(8);
                        return;
                    }
                    return;
                }
                return;
            case 2131296825:
                if (!PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "AllContacts", "AllContacts- New_contact", null, null);
                    break;
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "AllContacts", "AllContacts- New_contact", null, null);
                    break;
                }
            case 2131296948:
                h.a(getFragmentManager());
                return;
            default:
                return;
        }
        ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI));
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.Q != null) {
            switch (menuItem.getItemId()) {
                case 2131296313:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Add_to_favorite", null, null);
                    }
                    Intent a2 = ContactSaveService.a((Context) getActivity(), this.Q.g, true);
                    if (this.Q != null) {
                        if (this.Q.f1895b != null) {
                            a2.putExtra("contact_name", this.Q.f1895b);
                        } else {
                            a2.putExtra("contact_name", getString(2131755855));
                        }
                    }
                    getActivity().startService(a2);
                    z = true;
                    break;
                case 2131296384:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Add_to_block_list", null, null);
                    }
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755783)).setMessage(getActivity().getResources().getString(com.asus.blocklist.a.b(getActivity()) ? 2131755202 : 2131755203)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (com.asus.blocklist.g.h(DefaultContactBrowseListFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.b(DefaultContactBrowseListFragment.this.getActivity(), DefaultContactBrowseListFragment.this.Q.k);
                            } else {
                                com.asus.blocklist.g.a(DefaultContactBrowseListFragment.this.getActivity(), DefaultContactBrowseListFragment.this.Q.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, DefaultContactBrowseListFragment.this.getActivity(), "Behavior - Block", "Block by contacts list", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
                case 2131296420:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Call_contact", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.Q.g, (String) null, this.Q.f1895b, this.Q.k);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Contact List", "Contact List: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296563:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Dial_from_sim1", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.Q.g, this.Q.f1895b, this.Q.k, 1);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Contact List", "Contact List: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296564:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Dial_from_sim2", null, null);
                    }
                    PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), this.Q.g, this.Q.f1895b, this.Q.k, 2);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(5, getActivity(), "Contacts", "Contact List", "Contact List: long press and call", null);
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                    z = true;
                    break;
                case 2131296608:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Copy_contact", null, null);
                    }
                    if (this.Q.k >= 0) {
                        if (com.android.contacts.model.a.a(getActivity()).a(true).size() != 1) {
                            g.a(getFragmentManager(), this, 2131755097, AccountsListAdapter.AccountListFilter.ACCOUNTS_CONTACT_WRITABLE, null);
                            z = true;
                            break;
                        } else {
                            Toast.makeText(getActivity(), getString(2131755093), 0).show();
                            z = true;
                            break;
                        }
                    } else {
                        Toast.makeText(getActivity(), 2131755076, 1).show();
                        z = true;
                        break;
                    }
                case 2131296659:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Delete_contact", null, null);
                    }
                    try {
                        new com.asus.prefersim.a(7).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, getContext(), Long.valueOf(this.Q.k));
                    } catch (Exception e2) {
                        Log.d(e, "Delete Prefer Sim when Contact List Delete Contact task error: " + e2.toString());
                    }
                    com.android.contacts.interactions.d.a(getActivity(), this.Q.g, false);
                    z = true;
                    break;
                case 2131296769:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Edit_contact", null, null);
                    }
                    Intent intent = new Intent("android.intent.action.EDIT", this.Q.g);
                    intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                    ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), intent);
                    z = true;
                    break;
                case 2131296993:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Link_contact", null, null);
                    }
                    Intent intent2 = new Intent("com.android.contacts.action.LINK_CONTACT");
                    if (this.Q.k >= 0) {
                        intent2.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, this.Q.k);
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent2);
                        z = true;
                        break;
                    } else {
                        Toast.makeText(getActivity(), 2131755931, 1).show();
                        z = true;
                        break;
                    }
                case 2131297229:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Remove_from_favorite", null, null);
                    }
                    Intent a3 = ContactSaveService.a((Context) getActivity(), this.Q.g, false);
                    if (this.Q != null) {
                        if (this.Q.f1895b != null) {
                            a3.putExtra("contact_name", this.Q.f1895b);
                        } else {
                            a3.putExtra("contact_name", getString(2131755855));
                        }
                    }
                    getActivity().startService(a3);
                    z = true;
                    break;
                case 2131297272:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Send_text_message", null, null);
                    }
                    PhoneNumberInteraction.b((TransactionSafeActivity) getActivity(), this.Q.g);
                    z = true;
                    break;
                case 2131297283:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Share_contact", null, null);
                    }
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        Intent intent3 = new Intent();
                        intent3.setClass(getActivity(), AsusContactsSharedEntriesFilterActivity.class);
                        intent3.setData(this.Q.g);
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent3);
                    } else {
                        Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, this.Q.h);
                        Intent intent4 = new Intent("android.intent.action.SEND");
                        intent4.setType("text/x-vcard");
                        intent4.putExtra("android.intent.extra.STREAM", withAppendedPath);
                        try {
                            ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), Intent.createChooser(intent4, getActivity().getText(2131756121)));
                        } catch (ActivityNotFoundException e3) {
                            Toast.makeText(getActivity(), 2131756119, 0).show();
                        }
                    }
                    z = true;
                    break;
                case 2131297459:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "AllContacts_LongPress", "AllContacts_LongPress- Remove_from_block_list", null, null);
                    }
                    new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755798)).setMessage(getActivity().getResources().getString(2131756059)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.list.DefaultContactBrowseListFragment.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (com.asus.blocklist.g.h(DefaultContactBrowseListFragment.this.getActivity())) {
                                com.asus.blocklist.backwardcompatible.a.c(DefaultContactBrowseListFragment.this.getActivity(), DefaultContactBrowseListFragment.this.Q.k);
                            } else {
                                com.asus.blocklist.g.b(DefaultContactBrowseListFragment.this.getActivity(), DefaultContactBrowseListFragment.this.Q.k);
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, DefaultContactBrowseListFragment.this.getActivity(), "Behavior - UnBlock", "Unblock by contacts list", null, null);
                            }
                        }
                    }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                    z = true;
                    break;
                default:
                    z = super.onContextItemSelected(menuItem);
                    break;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.IsUnbundled() && Locale.getDefault().toString().equals("zh_HK")) {
            this.X = Boolean.valueOf(AddHKQuickIndexUtils.isSupportHKQuickIndex(getActivity()));
            if (this.X.booleanValue()) {
                Log.d(e, "HK set quick index");
                g(false);
            } else {
                Log.d(e, "HK not set quick index");
                g(true);
            }
        }
        if (bundle != null) {
            this.an = bundle.getLong("long_press_contact_id", 0L);
        }
        this.aA = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
        this.V = PhoneCapabilityTester.IsAsusDevice();
        this.W = Build.TYPE.equals("userdebug");
        if (com.android.contacts.skin.a.b() || com.android.contacts.skin.a.c()) {
            getActivity();
            this.az = com.android.contacts.skin.a.d();
        }
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        boolean z;
        int i;
        int i2;
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        boolean isPhone = PhoneCapabilityTester.isPhone(getActivity());
        boolean isSmsIntentRegistered = PhoneCapabilityTester.isSmsIntentRegistered(getActivity());
        getActivity().getMenuInflater().inflate(2131492882, contextMenu);
        MenuItem findItem = contextMenu.findItem(2131296420);
        MenuItem findItem2 = contextMenu.findItem(2131297272);
        MenuItem findItem3 = contextMenu.findItem(2131296313);
        MenuItem findItem4 = contextMenu.findItem(2131297229);
        MenuItem findItem5 = contextMenu.findItem(2131296384);
        MenuItem findItem6 = contextMenu.findItem(2131297459);
        MenuItem findItem7 = contextMenu.findItem(2131296993);
        MenuItem findItem8 = contextMenu.findItem(2131296608);
        MenuItem findItem9 = contextMenu.findItem(2131296769);
        MenuItem findItem10 = contextMenu.findItem(2131296659);
        int i3 = ((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position;
        w.a aVar = new w.a();
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        if (i3 <= (this.y ? 3 : 2)) {
            Cursor query = getContext().getContentResolver().query(ContactsContract.Profile.CONTENT_URI, P, null, null, null);
            try {
                if (query.moveToFirst()) {
                    aVar.k = query.getLong(query.getColumnIndex("_id"));
                    aVar.h = query.getString(query.getColumnIndex("lookup"));
                    aVar.g = ContentUris.withAppendedId(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, aVar.h), aVar.k);
                    aVar.n = query.getInt(query.getColumnIndex("has_phone_number"));
                    aVar.o = query.getInt(query.getColumnIndex("starred"));
                    aVar.f1895b = query.getString(query.getColumnIndex("display_name"));
                    this.R = true;
                }
                if (query != null) {
                    query.close();
                    i = -1;
                    i2 = 0;
                    z = false;
                } else {
                    i = -1;
                    i2 = 0;
                    z = false;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } else {
            Cursor cursor = (Cursor) ((q) this.t).getItem(i3 - 3);
            z = cursor == null || cursor.getString(cursor.getColumnIndex("is_user_profile")) == null;
            if (!z) {
                aVar.k = cursor.getLong(cursor.getColumnIndex("_id"));
                aVar.h = cursor.getString(cursor.getColumnIndex("lookup"));
                aVar.g = ContentUris.withAppendedId(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, aVar.h), aVar.k);
                aVar.n = cursor.getInt(cursor.getColumnIndex("has_phone_number"));
                aVar.o = cursor.getInt(cursor.getColumnIndex("starred"));
                aVar.f1895b = cursor.getString(1);
                i = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
                i2 = i >= 0 ? cursor.getInt(i) : 0;
                if (!IsAsusDevice) {
                    i2 = com.android.contacts.simcardmanage.e.a(aVar.k, getContext());
                }
                aVar.j = i2;
                Log.d(e, "simIdx:" + i + " isSim:" + i2);
                this.R = false;
            } else {
                i = -1;
                i2 = 0;
            }
        }
        if (z) {
            contextMenu.clearHeader();
            contextMenu.clear();
            return;
        }
        this.Q = aVar;
        this.an = this.Q.k;
        if (this.R) {
            findItem5.setVisible(false);
            findItem6.setVisible(false);
            findItem4.setVisible(false);
            findItem3.setVisible(false);
            findItem7.setVisible(false);
            findItem8.setVisible(false);
            if (aVar.n == 0) {
                findItem.setVisible(false);
                findItem2.setVisible(false);
            } else {
                if (!isPhone) {
                    findItem.setVisible(false);
                }
                if (!isSmsIntentRegistered) {
                    findItem2.setVisible(false);
                }
            }
        } else {
            Log.d(e, "simIdx:" + i);
            if (aVar.n == 0) {
                findItem.setVisible(false);
                findItem2.setVisible(false);
            } else {
                if (!isPhone) {
                    findItem.setVisible(false);
                }
                if (!isSmsIntentRegistered) {
                    findItem2.setVisible(false);
                }
            }
            if (i2 > 0) {
                findItem7.setVisible(false);
                if (!this.am.a(i2)) {
                    findItem9.setVisible(false);
                    findItem10.setVisible(false);
                }
            }
            if (aVar.o == 0) {
                findItem4.setVisible(false);
            } else {
                findItem3.setVisible(false);
            }
            if (i2 > 0 && !IsAsusDevice) {
                findItem3.setVisible(false);
            }
            MenuItem findItem11 = contextMenu.findItem(2131296563);
            MenuItem findItem12 = contextMenu.findItem(2131296564);
            if (aVar.n != 0) {
                findItem11.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
                findItem12.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
                if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2)) {
                    findItem11.setVisible(false);
                    findItem12.setVisible(false);
                } else {
                    findItem11.setVisible(true);
                    findItem12.setVisible(true);
                    if (com.asus.prefersim.c.a(getActivity())) {
                        com.asus.prefersim.c.a(getActivity(), findItem11, findItem12, aVar.k);
                    }
                    findItem.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                    findItem12.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                    findItem11.setVisible(false);
                }
            } else {
                findItem11.setVisible(false);
                findItem12.setVisible(false);
            }
            if (!isPhone || !com.asus.blocklist.a.a(getActivity())) {
                findItem5.setVisible(false);
                findItem6.setVisible(false);
            } else {
                com.asus.blocklist.g.a(getActivity(), findItem5, findItem6, this.Q.k);
            }
        }
        contextMenu.setHeaderTitle(this.Q.f1895b);
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.android.contacts.c.b.a(1);
        if (this.E != null) {
            Log.d(e, e + " >>> recycleCoverBitmap [onDestroy]");
            this.E.getCoverContainer().recycleCoverBitmap();
            this.E.getCoverContainer().cancelQueryCoverAsyncTask();
            this.E.unbindDetailControler();
            this.E = null;
        }
        f = false;
        if (this.U != null) {
            AsyncTask.Status status = this.U.getStatus();
            if (status == AsyncTask.Status.RUNNING || status == AsyncTask.Status.FINISHED) {
                this.U.cancel(true);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ac.a();
    }

    @Override // com.android.contacts.list.n, com.android.contacts.list.p, android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        this.ap = null;
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onPause() {
        super.onPause();
        i();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.E != null) {
            this.E.getCoverContainer().refreshQuickFavoriteAndBlock();
        }
        if (!this.S && MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
            d_();
        }
    }

    @Override // com.android.contacts.list.n, com.android.contacts.list.p, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!(bundle == null || this.as == null)) {
            bundle.putParcelable(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, this.as.c);
            bundle.putBoolean("is_user_profile", this.as.B);
        }
        if (this.Q != null) {
            bundle.putLong("long_press_contact_id", this.Q.k);
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onStart() {
        if (MainDialtactsActivity.mTabPosition != MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
            this.v = false;
            this.S = false;
        } else {
            this.S = true;
        }
        super.onStart();
        this.v = true;
        com.android.contacts.c.b.a(1, this);
        this.Y.onSearchInit(this.l);
        s().setOnScrollListener(this.aH);
        this.k.e(new ContactsPreferences(getActivity()).getDisplayWithAccountIcon());
        this.aC = this.aB.getBoolean("swipe_to_do_action", false);
        this.k.h = this.aC;
        if (s() == null) {
            return;
        }
        if (this.aC) {
            if (this.aE == null) {
                this.aE = new ae(getActivity(), s());
                this.aE.f534a = this.k;
            }
            this.k.g = this;
            s().setOnTouchListener(this.aE);
            unregisterForContextMenu(s());
            return;
        }
        s().setOnTouchListener(null);
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onStop() {
        super.onStop();
        com.android.contacts.c.b.a(1);
        this.l.setFocusable(false);
        this.l.clearFocus();
        if (this.ai != null) {
            this.ai.dismiss();
            this.ai = null;
        }
        this.k.c();
        if (this.aC) {
            s().setOnTouchListener(null);
            registerForContextMenu(s());
            return;
        }
        s().setOnTouchListener(null);
    }

    @Override // com.android.contacts.list.p
    public final CursorLoader t() {
        return new bg(getContext());
    }

    @Override // com.android.contacts.list.p
    protected final void v() {
        this.y = ((q) this.t).s;
        d(!this.y && !this.o);
    }
}

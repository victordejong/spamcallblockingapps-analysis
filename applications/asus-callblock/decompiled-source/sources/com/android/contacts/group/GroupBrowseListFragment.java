package com.android.contacts.group;

import android.app.ActionBar;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.AsusGroupEditorActivity;
import com.android.contacts.activities.FavoriteEditorActivity;
import com.android.contacts.activities.GroupDetailActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.ag;
import com.android.contacts.group.GroupDetailFragment;
import com.android.contacts.group.d;
import com.android.contacts.group.e;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.interactions.f;
import com.android.contacts.list.AsusPhoneFavoriteFragment;
import com.android.contacts.list.n;
import com.android.contacts.list.w;
import com.android.contacts.q;
import com.android.contacts.r;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.FavoriteDataUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.UriUtils;
import com.android.contacts.widget.AutoScrollListView;
import com.asus.contacts.b.h;
import com.asus.contacts.materialui.FloatingActionButton;
import com.asus.updatesdk.BuildConfig;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment.class */
public class GroupBrowseListFragment extends Fragment implements View.OnFocusChangeListener, View.OnTouchListener, AbsListView.OnScrollListener, ag {
    private static final Uri I;
    public static boolean c = true;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private a G;
    private c H;
    private View.OnLayoutChangeListener K;
    private AsusPhoneFavoriteFragment L;
    private com.android.contacts.skin.a M;
    private View N;
    private FrameLayout O;
    private FrameLayout P;

    /* renamed from: a  reason: collision with root package name */
    public com.android.contacts.group.e f1310a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1311b;
    public d d;
    public ProgressDialog e;
    public GroupDetailFragment f;
    private Context g;
    private Cursor h;
    private boolean i;
    private View j;
    private PopupMenu k;
    private AutoScrollListView m;
    private TextView n;
    private View o;
    private View p;
    private View q;
    private View r;
    private FloatingActionButton s;
    private View t;
    private View u;
    private TextView v;
    private Uri w;
    private View y;
    private boolean l = false;
    private int x = 2;
    private boolean z = false;
    private ContentResolver J = null;
    private View.OnClickListener Q = new View.OnClickListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GroupBrowseListFragment.this.a(view);
        }
    };
    private AsusPhoneFavoriteFragment.d R = new AsusPhoneFavoriteFragment.d() { // from class: com.android.contacts.group.GroupBrowseListFragment.8
        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public final void onContactSelected(Uri uri) {
            PhoneNumberInteraction.b((TransactionSafeActivity) GroupBrowseListFragment.this.g, uri);
        }

        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public final void onContactSelected(Uri uri, String str) {
            if (!str.equals("showContactDetail")) {
                PhoneNumberInteraction.a((TransactionSafeActivity) GroupBrowseListFragment.this.g, uri, CallUtil.getCallOrigin(((Activity) GroupBrowseListFragment.this.g).getIntent()), str);
            } else if (PhoneCapabilityTester.isUsingTwoPanes((TransactionSafeActivity) GroupBrowseListFragment.this.g)) {
                ActionBar actionBar = GroupBrowseListFragment.this.getActivity().getActionBar();
                ActionBar actionBar2 = GroupBrowseListFragment.this.getActivity().getActionBar();
                GroupBrowseListFragment.this.getActivity();
                actionBar.selectTab(actionBar2.getTabAt(MainDialtactsActivity.TAB_INDEX_ALLCONTACTS / 2));
                ((n) ((MainDialtactsActivity) GroupBrowseListFragment.this.getActivity()).getDefaultContactBrowseListFragment()).f1862a = true;
                ((MainDialtactsActivity) GroupBrowseListFragment.this.getActivity()).getDefaultContactBrowseListFragment().c(uri);
            } else {
                ImplicitIntentsUtil.startActivityInApp((TransactionSafeActivity) GroupBrowseListFragment.this.g, new Intent("android.intent.action.VIEW", uri));
            }
        }

        @Override // com.android.contacts.list.AsusPhoneFavoriteFragment.d
        public final void onContactSelected(Uri uri, String str, long j) {
            if (!str.equals("showContactDetail")) {
                PhoneNumberInteraction.a((TransactionSafeActivity) GroupBrowseListFragment.this.g, uri, CallUtil.getCallOrigin(((Activity) GroupBrowseListFragment.this.g).getIntent()), str, j);
            } else if (!PhoneCapabilityTester.isUsingTwoPanes((Activity) GroupBrowseListFragment.this.g)) {
                ImplicitIntentsUtil.startActivityInApp((Activity) GroupBrowseListFragment.this.g, new Intent("android.intent.action.VIEW", uri));
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment$a.class */
    private static final class a extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<c> f1320a;

        public a(Handler handler, c cVar) {
            super(handler);
            this.f1320a = new WeakReference<>(cVar);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_GROUP && this.f1320a.get() != null) {
                this.f1320a.get().a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment$b.class */
    private final class b implements GroupDetailFragment.d {
        b() {
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onAccountTypeUpdated(String str, String str2) {
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onAddFavoritesRequested(long[] jArr) {
            GroupBrowseListFragment.this.startActivityForResult(new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER"), 20);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onAddRequested(Uri uri) {
            Intent intent = new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER");
            intent.putExtra("group_uri", uri.toString());
            GroupBrowseListFragment.this.startActivityForResult(intent, 9);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onContactSelected(Uri uri) {
            if (PhoneCapabilityTester.isUsingTwoPanes(GroupBrowseListFragment.this.getActivity())) {
                ActionBar actionBar = GroupBrowseListFragment.this.getActivity().getActionBar();
                ActionBar actionBar2 = GroupBrowseListFragment.this.getActivity().getActionBar();
                GroupBrowseListFragment.this.getActivity();
                actionBar.selectTab(actionBar2.getTabAt(MainDialtactsActivity.TAB_INDEX_ALLCONTACTS / 2));
                ((n) ((MainDialtactsActivity) GroupBrowseListFragment.this.getActivity()).getDefaultContactBrowseListFragment()).f1862a = true;
                ((MainDialtactsActivity) GroupBrowseListFragment.this.getActivity()).getDefaultContactBrowseListFragment().c(uri);
            }
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onDeleteGroupRequested(Uri uri, long j, boolean z) {
            Uri a2;
            int b2 = GroupBrowseListFragment.this.f1310a.b(uri);
            int a3 = GroupBrowseListFragment.this.f1310a.a(uri);
            long j2 = 0;
            String str = BuildConfig.FLAVOR;
            if (!GroupBrowseListFragment.this.F) {
                h hVar = (h) GroupBrowseListFragment.this.m.getAdapter().getItem(b2);
                h hVar2 = (h) GroupBrowseListFragment.this.m.getAdapter().getItem(a3);
                if (hVar != null) {
                    str = hVar.e;
                    j2 = hVar.d;
                }
                a2 = hVar2 != null ? com.android.contacts.group.e.a(hVar2.d) : null;
            } else {
                j2 = ((com.android.contacts.group.a) GroupBrowseListFragment.this.m.getAdapter().getItem(b2)).f1359a;
                str = ((com.android.contacts.group.a) GroupBrowseListFragment.this.m.getAdapter().getItem(b2)).f1360b;
                a2 = com.android.contacts.group.e.a(((com.android.contacts.group.a) GroupBrowseListFragment.this.m.getAdapter().getItem(a3)).f1359a);
            }
            f.a(GroupBrowseListFragment.this.getFragmentManager(), j2, str, z);
            if (a2 != null) {
                GroupBrowseListFragment.this.f1310a.c = a2;
            }
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onEditRequested(Uri uri, String str) {
            Intent intent = (!f.c(str) || !PhoneCapabilityTester.IsAsusDevice()) ? new Intent(GroupBrowseListFragment.this.getActivity(), AsusGroupEditorActivity.class) : new Intent(GroupBrowseListFragment.this.getActivity(), FavoriteEditorActivity.class);
            intent.setData(uri);
            intent.setAction("android.intent.action.EDIT");
            if (f.b(str)) {
                intent.putExtra("activity_title", GroupBrowseListFragment.this.getActivity().getResources().getString(2131756064));
            }
            GroupBrowseListFragment.this.startActivityForResult(intent, 5);
        }

        @Override // com.android.contacts.group.GroupDetailFragment.d
        public final void onGroupTitleUpdated(String str) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment$c.class */
    public final class c extends AsyncQueryHandler {
        public c(ContentResolver contentResolver) {
            super(contentResolver);
        }

        public final void a() {
            String str = !GroupBrowseListFragment.this.C ? "title NOT LIKE \"" + f.b() + "\"" : null;
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                startQuery(0, null, GroupBrowseListFragment.I, r.f2123a, "account_type NOT NULL AND account_name NOT NULL AND auto_add=0 AND favorites=0 AND deleted=0", null, "account_type, account_name, data_set, title COLLATE LOCALIZED ASC");
            } else {
                startQuery(0, null, com.android.contacts.c.a(), GroupBrowseListFragment.this.l ? com.android.contacts.c.f623b : com.android.contacts.c.f622a, str, null, "title COLLATE LOCALIZED ASC");
            }
            GroupBrowseListFragment.this.z = true;
        }

        public final void b() {
            cancelOperation(0);
            GroupBrowseListFragment.this.z = false;
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            if (GroupBrowseListFragment.this.g != null) {
                Cursor cursor2 = null;
                if (cursor != null) {
                    cursor2 = null;
                    if (!cursor.equals(GroupBrowseListFragment.this.h)) {
                        cursor2 = GroupBrowseListFragment.this.h;
                    }
                }
                GroupBrowseListFragment.this.h = cursor;
                GroupBrowseListFragment.j(GroupBrowseListFragment.this);
                if (cursor2 != null && !cursor2.isClosed()) {
                    cursor2.close();
                }
                GroupBrowseListFragment.b(GroupBrowseListFragment.this, cursor);
                if (PhoneCapabilityTester.isUsingTwoPanes(GroupBrowseListFragment.this.getActivity())) {
                    GroupBrowseListFragment.this.a();
                }
                if (PhoneCapabilityTester.isUsingTwoPanes(GroupBrowseListFragment.this.getActivity()) && !PhoneCapabilityTester.IsAsusDevice() && GroupBrowseListFragment.c) {
                    GroupBrowseListFragment.this.P.setVisibility(8);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment$d.class */
    public interface d {
        void onViewGroupAction(Uri uri);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/GroupBrowseListFragment$e.class */
    final class e extends AsyncTask<Integer, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        String f1323a;

        /* renamed from: b  reason: collision with root package name */
        long f1324b;
        Uri c;
        Context d;

        public e(Context context, String str, long j, Uri uri) {
            this.f1324b = 0L;
            this.d = context;
            this.f1323a = str;
            this.f1324b = j;
            this.c = uri;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            if (this.f1324b == 0) {
                Log.e("GroupBrowseListFragment", "Invalid arguments for setGroupRingtone");
                return null;
            }
            com.android.contacts.group.d.a(this.d, this.f1323a, this.c, this.f1324b, numArr2[0].intValue());
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            if (GroupBrowseListFragment.this.e != null) {
                GroupBrowseListFragment.this.e.cancel();
                GroupBrowseListFragment.this.e.dismiss();
                GroupBrowseListFragment.this.e = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            DialogFragment a2 = com.android.contacts.interactions.a.a();
            a2.show(GroupBrowseListFragment.this.getFragmentManager(), (String) null);
            a2.setCancelable(false);
        }
    }

    static {
        I = !PhoneCapabilityTester.IsAsusDevice() ? ContactsContract.Groups.CONTENT_SUMMARY_URI : Uri.parse(ContactsContract.Groups.CONTENT_SUMMARY_URI + "_asus");
    }

    private void b(View view) {
        if (view != null) {
            view.setVisibility(0);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, GroupBrowseListFragment.this.getActivity(), "Groups", "Groups- New_group", null, null);
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(10, GroupBrowseListFragment.this.getActivity(), "Groups", "Groups- New_group", null, null);
                    }
                    Intent intent = new Intent(GroupBrowseListFragment.this.getActivity(), AsusGroupEditorActivity.class);
                    intent.setAction("android.intent.action.INSERT");
                    GroupBrowseListFragment.this.startActivityForResult(intent, 4);
                }
            });
        }
    }

    static /* synthetic */ void b(GroupBrowseListFragment groupBrowseListFragment, Cursor cursor) {
        if (cursor == null || cursor.getCount() == 0) {
            if (groupBrowseListFragment.y != null) {
                groupBrowseListFragment.y.setVisibility(8);
            }
        } else if (groupBrowseListFragment.y != null) {
            groupBrowseListFragment.y.setVisibility(0);
        }
    }

    private void b(boolean z) {
        if (this.o != null) {
            this.o.setVisibility(z ? 0 : 8);
        }
    }

    private void c() {
        if (this.g != null) {
            ((InputMethodManager) this.g.getSystemService("input_method")).hideSoftInputFromWindow(this.m.getWindowToken(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Uri uri) {
        this.w = uri;
        if (this.f1310a != null) {
            this.f1310a.c = uri;
        }
        if (this.m != null) {
            this.m.invalidateViews();
        }
        if (this.d != null) {
            this.d.onViewGroupAction(uri);
        }
    }

    private void c(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    c(((ViewGroup) view).getChildAt(i));
                }
            }
        }
    }

    static /* synthetic */ void j(GroupBrowseListFragment groupBrowseListFragment) {
        int a2;
        if (groupBrowseListFragment.n != null) {
            groupBrowseListFragment.n.setText(2131755896);
        }
        groupBrowseListFragment.b(!q.b(groupBrowseListFragment.getActivity()));
        if (groupBrowseListFragment.h != null) {
            if (groupBrowseListFragment.v != null) {
                groupBrowseListFragment.v.setText(2131755896);
                groupBrowseListFragment.t.setVisibility(0);
                if (groupBrowseListFragment.h.getCount() == 0) {
                    groupBrowseListFragment.u.setVisibility(8);
                    groupBrowseListFragment.O.setVisibility(0);
                } else {
                    groupBrowseListFragment.u.setVisibility(0);
                    groupBrowseListFragment.v.setVisibility(8);
                }
            }
            if (groupBrowseListFragment.f != null) {
                groupBrowseListFragment.f1310a.n = groupBrowseListFragment.f.j;
                groupBrowseListFragment.f.j = false;
            }
            groupBrowseListFragment.f1310a.a(groupBrowseListFragment.h);
            if (groupBrowseListFragment.i) {
                groupBrowseListFragment.i = false;
                if (groupBrowseListFragment.f1311b && (a2 = groupBrowseListFragment.f1310a.a()) != -1) {
                    groupBrowseListFragment.m.a(a2, true);
                }
            }
            groupBrowseListFragment.w = groupBrowseListFragment.f1310a.c;
            if (groupBrowseListFragment.f1311b && groupBrowseListFragment.w != null) {
                groupBrowseListFragment.c(groupBrowseListFragment.w);
            }
        }
    }

    public final void a() {
        this.m.post(new Runnable() { // from class: com.android.contacts.group.GroupBrowseListFragment.7
            @Override // java.lang.Runnable
            public final void run() {
                float f = 0.0f;
                Activity activity = GroupBrowseListFragment.this.getActivity();
                if (activity == null) {
                    Log.w("GroupBrowseListFragment", "Activity is null");
                    return;
                }
                AutoScrollListView autoScrollListView = GroupBrowseListFragment.this.m;
                if (autoScrollListView == null) {
                    Log.w("GroupBrowseListFragment", "Listview is null");
                } else if (autoScrollListView.getCount() == 0) {
                    View findViewById = activity.findViewById(2131296904);
                    if (findViewById != null) {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        layoutParams.addRule(12, -1);
                        findViewById.setLayoutParams(layoutParams);
                    }
                } else {
                    View childAt = autoScrollListView.getChildAt(autoScrollListView.getCount() - 1);
                    if (childAt == null) {
                        View findViewById2 = activity.findViewById(2131296904);
                        if (findViewById2 != null) {
                            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, 0);
                            layoutParams2.addRule(12, -1);
                            findViewById2.setLayoutParams(layoutParams2);
                            return;
                        }
                        return;
                    }
                    float y = childAt.getY();
                    float height = autoScrollListView.getHeight() - (childAt.getHeight() + y);
                    if (height >= 0.0f) {
                        f = height;
                    }
                    View findViewById3 = activity.findViewById(2131296904);
                    if (findViewById3 != null) {
                        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) f);
                        layoutParams3.addRule(12, -1);
                        findViewById3.setLayoutParams(layoutParams3);
                    }
                }
            }
        });
    }

    public final void a(Uri uri) {
        if (!(this.f == null || this.f.f1326b == null)) {
            UriUtils.areEqual(this.f.f1326b, uri);
        }
        if (this.f != null) {
            this.f.a(uri);
        }
    }

    public final void a(View view) {
        PopupMenu popupMenu;
        View view2 = view;
        if (view == null) {
            view2 = this.q;
        }
        if (this.g == null) {
            popupMenu = null;
        } else {
            PopupMenu popupMenu2 = new PopupMenu(this.g, view2);
            Menu menu = popupMenu2.getMenu();
            popupMenu2.inflate(2131492896);
            MenuItem findItem = menu.findItem(2131297052);
            popupMenu = popupMenu2;
            if (findItem != null) {
                if (this.F) {
                    findItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.5
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, GroupBrowseListFragment.this.getActivity(), "Groups", "Groups- Edit_all_groups", null, null);
                            } else {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(10, GroupBrowseListFragment.this.getActivity(), "Groups", "Groups- Edit_all_groups", null, null);
                            }
                            ImplicitIntentsUtil.startActivityInApp(GroupBrowseListFragment.this.g, new Intent(GroupBrowseListFragment.this.getActivity(), AsusGlobalGroupEditorActivity.class));
                            return true;
                        }
                    });
                    popupMenu = popupMenu2;
                } else {
                    findItem.setVisible(false);
                    popupMenu = popupMenu2;
                }
            }
        }
        this.k = popupMenu;
        if (this.k != null) {
            this.k.show();
        }
    }

    @Override // com.android.contacts.ag
    public final void a(boolean z) {
        if (this.H == null) {
            return;
        }
        if (z) {
            this.H.a();
        } else {
            this.H.b();
        }
    }

    public final void b(Uri uri) {
        c(uri);
        this.i = true;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.J = getActivity().getContentResolver();
        this.H = new c(this.J);
        this.G = new a(new Handler(), this.H);
        this.J.registerContentObserver(!this.F ? I : com.android.contacts.c.a(), true, this.G);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 1:
                    Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
                    SharedPreferences sharedPreferences = getActivity().getSharedPreferences("GroupLongPressed", 0);
                    String string = sharedPreferences.getString("group_uri_long_press", null);
                    new e(this.g, (uri == null || RingtoneManager.isDefault(uri)) ? null : uri.toString(), sharedPreferences.getLong("group_id_long_press", 0L), string != null ? Uri.parse(string) : null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 1);
                    return;
                case 2:
                    String stringExtra = intent.getStringExtra("ringtone_uri");
                    SharedPreferences sharedPreferences2 = getActivity().getSharedPreferences("GroupLongPressed", 0);
                    String string2 = sharedPreferences2.getString("group_uri_long_press", null);
                    new e(this.g, stringExtra, sharedPreferences2.getLong("group_id_long_press", 0L), string2 != null ? Uri.parse(string2) : null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 2);
                    return;
                case 20:
                    FavoriteDataUtil.addFavoriteData(getActivity().getApplicationContext(), intent);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.g = activity;
        this.C = PhoneCapabilityTester.isPhone(this.g);
        this.D = PhoneCapabilityTester.isSmsIntentRegistered(this.g);
        this.F = PhoneCapabilityTester.IsAsusDevice();
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        String str;
        com.android.contacts.group.a aVar;
        long j = -1;
        try {
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
            if (adapterContextMenuInfo != null) {
                if (!this.F) {
                    h hVar = (h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1);
                    if (hVar != null) {
                        j = hVar.d;
                        str = hVar.e;
                    } else {
                        str = null;
                    }
                } else if (this.m == null || this.m.getAdapter() == null || (aVar = (com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)) == null) {
                    str = null;
                    j = -1;
                } else {
                    j = aVar.f1359a;
                    str = aVar.f1360b;
                }
                if (j >= 0) {
                    switch (menuItem.getItemId()) {
                        case 2131297034:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Add_contacts_to_group", null, null);
                            }
                            Uri a2 = com.android.contacts.group.e.a(j);
                            Intent intent = new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER");
                            intent.putExtra("group_uri", a2.toString());
                            intent.putExtra("CallerFragment", GroupBrowseListFragment.class.getSimpleName());
                            startActivityForResult(intent, 9);
                            z = true;
                            break;
                        case 2131297047:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Delete_group", null, null);
                            }
                            if (this.w.equals(com.android.contacts.group.e.a(j))) {
                                this.f1310a.c = adapterContextMenuInfo.position == 0 ? this.F ? com.android.contacts.group.e.a(((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position + 1)).f1359a) : com.android.contacts.group.e.a(((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position + 1)).d) : this.F ? com.android.contacts.group.e.a(((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).f1359a) : com.android.contacts.group.e.a(((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).d);
                            }
                            f.a(getFragmentManager(), j, str, getActivity() instanceof GroupDetailActivity);
                            z = true;
                            break;
                        case 2131297051:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Edit_group", null, null);
                            }
                            Uri a3 = com.android.contacts.group.e.a(j);
                            Intent intent2 = (!f.c(str) || !this.F) ? new Intent(getActivity(), AsusGroupEditorActivity.class) : new Intent(getActivity(), FavoriteEditorActivity.class);
                            intent2.setData(a3);
                            intent2.setAction("android.intent.action.EDIT");
                            intent2.putExtra("CallerFragment", GroupBrowseListFragment.class.getSimpleName());
                            if (f.b(str)) {
                                intent2.putExtra("activity_title", getActivity().getResources().getString(2131756064));
                            }
                            startActivityForResult(intent2, 5);
                            z = true;
                            break;
                        case 2131297065:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Send_group_message", null, null);
                            }
                            new d.c(getActivity(), j, str).execute(new String[0]);
                            z = true;
                            break;
                        case 2131297066:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Send_group_email", null, null);
                            }
                            com.android.contacts.group.d.a(getActivity(), j, str);
                            z = true;
                            break;
                        case 2131297070:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Set_group_ringtone", null, null);
                            }
                            Uri a4 = com.android.contacts.group.e.a(j);
                            String str2 = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).e;
                            SharedPreferences sharedPreferences = getActivity().getSharedPreferences("GroupLongPressed", 0);
                            if (a4 != null) {
                                sharedPreferences.edit().putString("group_uri_long_press", a4.toString()).commit();
                            }
                            sharedPreferences.edit().putLong("group_id_long_press", j).commit();
                            com.android.contacts.group.d.a(this, str2);
                            z = true;
                            break;
                        case 2131297072:
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(9, getActivity(), "Group_LongPress", "Group_LongPress- Set_group_message_notification", null, null);
                            }
                            Uri a5 = com.android.contacts.group.e.a(j);
                            String str3 = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).g;
                            SharedPreferences sharedPreferences2 = getActivity().getSharedPreferences("GroupLongPressed", 0);
                            if (a5 != null) {
                                sharedPreferences2.edit().putString("group_uri_long_press", a5.toString()).commit();
                            }
                            sharedPreferences2.edit().putLong("group_id_long_press", j).commit();
                            com.android.contacts.group.d.b(this, str3);
                            z = true;
                            break;
                        default:
                            z = false;
                            break;
                    }
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } catch (ClassCastException e2) {
            Log.e("GroupBrowseListFragment", "bad menuInfo", e2);
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        String str;
        long j;
        boolean z;
        String str2;
        boolean z2 = true;
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) contextMenuInfo;
        if (!this.F) {
            if (adapterContextMenuInfo.position != 0) {
                str = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).e;
                j = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).d;
                z = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).h;
                str2 = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position - 1)).i;
            } else {
                return;
            }
        } else if (this.F || !PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            str = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).f1360b;
            j = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).f1359a;
            z = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).d;
            str2 = ((com.android.contacts.group.a) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).f;
        } else {
            str = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).e;
            j = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).d;
            z = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).h;
            str2 = ((h) this.m.getAdapter().getItem(adapterContextMenuInfo.position)).i;
        }
        boolean b2 = f.b(str);
        contextMenu.setHeaderTitle(f.a(this.g, str));
        getActivity().getMenuInflater().inflate(2131492908, contextMenu);
        this.E = j > 0 && (!z || (z && str2 != null));
        this.A = j > 0 && !z;
        this.B = j > 0;
        MenuItem findItem = contextMenu.findItem(2131297051);
        if (findItem != null) {
            if (b2) {
                findItem.setTitle(getActivity().getResources().getString(2131756064));
            }
            findItem.setVisible(this.E);
        }
        MenuItem findItem2 = contextMenu.findItem(2131297047);
        if (findItem2 != null) {
            findItem2.setVisible(this.A);
        }
        MenuItem findItem3 = contextMenu.findItem(2131297065);
        if (findItem3 != null) {
            findItem3.setVisible(this.B && this.D);
        }
        MenuItem findItem4 = contextMenu.findItem(2131297066);
        if (findItem4 != null) {
            findItem4.setVisible(this.B);
        }
        MenuItem findItem5 = contextMenu.findItem(2131297070);
        if (findItem5 != null) {
            if (b2) {
                findItem5.setVisible(false);
            } else {
                findItem5.setVisible(this.B && this.C && this.F && PhoneCapabilityTester.isInOwnerMode(getActivity()));
            }
        }
        MenuItem findItem6 = contextMenu.findItem(2131297072);
        if (findItem6 != null) {
            if (b2) {
                findItem6.setVisible(false);
            } else {
                if (!this.B || !this.C || !this.l || !this.F || !PhoneCapabilityTester.isInOwnerMode(getActivity())) {
                    z2 = false;
                }
                findItem6.setVisible(z2);
            }
        }
        MenuItem findItem7 = contextMenu.findItem(2131297034);
        if (findItem7 != null) {
            if (b2) {
                findItem7.setVisible(false);
            } else {
                findItem7.setVisible(this.E);
            }
        }
        MenuItem findItem8 = contextMenu.findItem(2131297052);
        if (findItem8 != null) {
            findItem8.setVisible(false);
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            contextMenu.findItem(2131297050).setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            this.w = (Uri) bundle.getParcelable("groups.groupUri");
            if (this.w != null) {
                this.i = true;
            }
        }
        if (this.j == null) {
            this.j = layoutInflater.inflate(2131427565, viewGroup, false);
        }
        this.n = (TextView) this.j.findViewById(2131296787);
        this.y = this.j.findViewById(2131296891);
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !this.F) {
            this.O = (FrameLayout) this.j.findViewById(2131296834);
            this.P = (FrameLayout) this.j.findViewById(2131296891);
            if (c) {
                this.O.setVisibility(0);
                this.P.setVisibility(8);
                if (this.m != null) {
                    this.m.invalidateViews();
                }
            }
        }
        this.f1310a = new com.android.contacts.group.e(this.g);
        this.f1310a.f1378b = this.f1311b;
        this.f1310a.c = this.w;
        this.m = (AutoScrollListView) this.j.findViewById(2131296995);
        this.m.setOnFocusChangeListener(this);
        this.m.setOnTouchListener(this);
        this.m.setAdapter((ListAdapter) this.f1310a);
        this.m.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (!PhoneCapabilityTester.isUsingTwoPanes(GroupBrowseListFragment.this.getActivity()) || GroupBrowseListFragment.this.F) {
                    e.d dVar = (e.d) view.getTag();
                    if (dVar != null) {
                        GroupBrowseListFragment.this.c(dVar.g);
                    }
                } else if (i == 0) {
                    GroupBrowseListFragment.this.O.setVisibility(0);
                    GroupBrowseListFragment.this.P.setVisibility(8);
                    GroupBrowseListFragment.c = true;
                    if (GroupBrowseListFragment.this.m != null) {
                        GroupBrowseListFragment.this.m.invalidateViews();
                    }
                } else {
                    GroupBrowseListFragment.this.O.setVisibility(8);
                    GroupBrowseListFragment.this.P.setVisibility(0);
                    GroupBrowseListFragment.c = false;
                    e.d dVar2 = (e.d) view.getTag();
                    if (dVar2 != null) {
                        GroupBrowseListFragment.this.c(dVar2.g);
                    }
                }
            }
        });
        registerForContextMenu(this.m);
        this.m.setEmptyView(this.n);
        this.o = this.j.findViewById(2131296294);
        this.p = this.j.findViewById(2131296293);
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Intent intent = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
                intent.setFlags(524288);
                intent.putExtra("authorities", new String[]{"com.android.contacts"});
                ImplicitIntentsUtil.startActivityOutsideApp(GroupBrowseListFragment.this.g, intent);
            }
        });
        b(!q.b(this.g));
        this.t = this.j.findViewById(2131296988);
        this.u = this.j.findViewById(2131296891);
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
        this.N = this.j.findViewById(2131296918);
        if (com.android.contacts.skin.a.b()) {
            getActivity();
            this.M = com.android.contacts.skin.a.d();
            getActivity();
            com.asus.contacts.b.b.a();
            ImageView imageView = (ImageView) this.j.findViewById(2131296884);
            TextView textView = (TextView) this.j.findViewById(2131296906);
            if (isUsingTwoPanes) {
                com.android.contacts.skin.a.a(this.N, this.t, imageView, textView, getActivity());
            } else {
                com.android.contacts.skin.a.a(this.N, this.j, imageView, textView, getActivity());
            }
            this.n.setTextColor(getResources().getColor(2131034161));
            View findViewById = this.j.findViewById(2131296757);
            if (findViewById != null) {
                findViewById.setBackgroundColor(getResources().getColor(2131034120));
            }
        } else if (com.android.contacts.skin.a.c()) {
            getActivity();
            this.M = com.android.contacts.skin.a.d();
            getActivity();
            com.asus.contacts.b.b.a();
            ImageView imageView2 = (ImageView) this.j.findViewById(2131296884);
            TextView textView2 = (TextView) this.j.findViewById(2131296906);
            if (isUsingTwoPanes) {
                com.android.contacts.skin.a.a(this.N, this.t, imageView2, textView2, getActivity());
            } else {
                com.android.contacts.skin.a.a(this.N, this.j, imageView2, textView2, getActivity());
            }
            this.n.setTextColor(com.android.contacts.skin.a.a(2));
        }
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            this.f = (GroupDetailFragment) getChildFragmentManager().findFragmentById(2131296360);
            this.L = (AsusPhoneFavoriteFragment) getChildFragmentManager().findFragmentById(2131296835);
            this.L.c = this.R;
        }
        if (this.f != null) {
            this.f.f1325a = new b();
            w.a();
        }
        this.m.setVerticalScrollBarEnabled(false);
        this.v = (TextView) this.j.findViewById(2131297118);
        this.q = this.j.findViewById(2131296365);
        if (this.q != null) {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                this.q.setOnClickListener(this.Q);
                AsusAirViewUtils.setActionbarHoverHint(this.q, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
            } else {
                this.q.setVisibility(8);
            }
        }
        this.r = this.j.findViewById(2131296364);
        if (this.r != null) {
            if (this.F || q.b(this.g)) {
                b(this.r);
            } else {
                this.r.setVisibility(8);
            }
            AsusAirViewUtils.setActionbarHoverHint(this.r, getResources().getString(2131755708), new com.android.contacts.airview.a(getActivity()));
        }
        this.s = (FloatingActionButton) this.j.findViewById(2131296825);
        if (this.s != null) {
            if (this.F || q.b(this.g)) {
                b(this.s);
            } else {
                this.s.setVisibility(8);
            }
            this.m.setOnScrollListener(this);
            AsusAirViewUtils.setActionbarHoverHint(this.s, getResources().getString(2131755708), new com.android.contacts.airview.a(getActivity()));
            if (com.asus.contacts.b.e.a().a(getActivity(), "FloatingActionButton")) {
                if (this.r != null) {
                    this.r.setVisibility(8);
                }
                this.s.setVisibility(0);
            } else {
                if (this.r != null) {
                    this.r.setVisibility(0);
                }
                this.s.setVisibility(8);
            }
        }
        this.l = h.a(getActivity());
        return this.j;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.J.unregisterContentObserver(this.G);
        c(this.m);
        c(this.n);
        c(this.o);
        c(this.p);
        c(this.q);
        c(this.r);
        c(this.j);
        if (this.v != null) {
            c(this.v);
            this.v = null;
        }
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.j = null;
        MemoryUtils.fixInputMethodManagerLeak(getActivity());
        if (this.f1310a != null) {
            com.android.contacts.group.e eVar = this.f1310a;
            if (eVar.f1377a != null) {
                eVar.f1377a.close();
            }
        }
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.g = null;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view == this.m && z) {
            c();
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        if (!(this.K == null || this.m == null)) {
            this.m.removeOnLayoutChangeListener(this.K);
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            if (this.K == null) {
                this.K = new View.OnLayoutChangeListener() { // from class: com.android.contacts.group.GroupBrowseListFragment.6
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        if (!(i == 0 && i2 == 0 && i3 == 0 && i4 == 0) && PhoneCapabilityTester.isUsingTwoPanes(GroupBrowseListFragment.this.getActivity())) {
                            GroupBrowseListFragment.this.a();
                        }
                    }
                };
            }
            if (this.m != null) {
                this.m.addOnLayoutChangeListener(this.K);
            }
        }
        if (this.H == null) {
            return;
        }
        if (this.z || MainDialtactsActivity.mTabPosition != MainDialtactsActivity.TAB_INDEX_GROUP) {
            this.H.b();
        } else {
            this.H.a();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("groups.groupUri", this.w);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (absListView != null && this.s != null && com.asus.contacts.b.e.a().a(getActivity(), "FloatingActionButton") && q.b(this.g)) {
            if (i == 2 || i == 1) {
                this.s.b();
            } else if (i == 0) {
                this.s.a();
            }
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        View view = com.asus.contacts.b.e.a().a(getActivity(), "FloatingActionButton") ? this.s : this.r;
        if (!this.F && view != null) {
            if (!q.b(this.g)) {
                view.setVisibility(8);
            } else {
                b(view);
            }
        }
        if (this.H != null) {
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_GROUP) {
                this.H.a();
            } else {
                this.H.b();
            }
        }
        this.l = h.a(getActivity());
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.k != null) {
            this.k.dismiss();
            this.k = null;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view != this.m) {
            return false;
        }
        c();
        return false;
    }
}

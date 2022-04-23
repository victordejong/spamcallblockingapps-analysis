package com.android.contacts.activities;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.support.v4.view.ViewPager;
import android.support.v4.view.p;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.SearchView;
import android.widget.Toast;
import com.android.contacts.CallDetailActivity;
import com.android.contacts.ContactSaveService;
import com.android.contacts.a.b;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.DialtactsViewPager;
import com.android.contacts.ag;
import com.android.contacts.calllog.l;
import com.android.contacts.calllog.s;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.dialpad.CallDetailFragment;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.dialpad.e;
import com.android.contacts.dialpad.i;
import com.android.contacts.e.b;
import com.android.contacts.ezmode.d;
import com.android.contacts.ezmode.f;
import com.android.contacts.g.a;
import com.android.contacts.group.GroupBrowseListFragment;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.interactions.a;
import com.android.contacts.interactions.h;
import com.android.contacts.interactions.j;
import com.android.contacts.k;
import com.android.contacts.list.AsusContactListFilterWindow;
import com.android.contacts.list.ContactListFilter;
import com.android.contacts.list.DefaultContactBrowseListFragment;
import com.android.contacts.list.ac;
import com.android.contacts.list.ad;
import com.android.contacts.list.af;
import com.android.contacts.list.as;
import com.android.contacts.list.aw;
import com.android.contacts.list.ay;
import com.android.contacts.list.bh;
import com.android.contacts.list.n;
import com.android.contacts.list.r;
import com.android.contacts.list.z;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.preference.ContactsPreferenceActivity;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.preference.DisplayOptionsPreferenceFragment;
import com.android.contacts.q;
import com.android.contacts.test.EmptyFragment;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.FavoriteDataUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.android.contacts.x;
import com.android.vcard.VCardConfig;
import com.asus.blocklist.g;
import com.asus.contacts.settings.AsusContactsSettingActivity;
import com.asus.contacts.settings.c;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.ZenUiFamily;
import com.uservoice.uservoicesdk.d;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity.class */
public class MainDialtactsActivity extends TransactionSafeActivity implements OnAccountsUpdateListener, SharedPreferences.OnSharedPreferenceChangeListener, DialtactsViewPager.onSwipeLeftListener, e.b, e.c, e.AbstractC0034e, e.g, b.a, a.AbstractC0039a, a.AbstractC0041a, AsusContactListFilterWindow.h, bh.b, x {
    private static final String ACTION_ENTER_ALLCONTACTS = "android.intent.action.ASUS_ENTER_ALLCONTACTS";
    public static final String ACTION_ENTER_CALL_LOG = "android.intent.action.ASUS_ENTER_CALL_LOG";
    private static final String ACTION_ENTER_FAVORITE = "android.intent.action.ASUS_ENTER_FAVORITE";
    private static final String ACTION_ENTER_VIP_GROUP = "android.intent.action.ASUS_ENTER_VIP_GROUP";
    private static final String ACTION_START_IN_CALL_SCREEN = "com.android.phone.START_IN_CALL_SCREEN";
    public static final String ACTION_TO_ASUS_SYSTEMUI_SIMSTATUS1 = "ASUS.SIMSTATUS.SYSTEMUI1";
    public static final String ACTION_TO_ASUS_SYSTEMUI_SIMSTATUS2 = "ASUS.SIMSTATUS.SYSTEMUI2";
    public static final String ADD_CALL_MODE_KEY = "add_call_mode";
    public static final int ADD_TO_FAVORITE = 20;
    private static final String CALL_SETTINGS_CLASS_NAME = "com.android.phone.CallFeaturesSetting";
    public static final boolean DEBUG = false;
    private static final String DIALTACT_NAME = "com.android.contacts.activities.DialtactsActivity";
    public static final int EDIT_FAVORITE = 30;
    public static final String EXTRA_BACK_TO_TOOLPANEL = "isBackToToolPanel";
    private static final int KDDI_AU_SERVER_SYNC_REQUEST_CODE = 1004;
    public static final String KEY_NEED_UPDATE_APP = "need_update_app";
    public static final String KEY_NEED_UPDATE_APP_CONTACTS = "need_update_app_contacts";
    public static final String KEY_NEED_UPDATE_APP_DIALER = "need_update_app_dialer";
    public static final String KEY_PREF_WHATS_NEW = "whats_new_update";
    public static final String KEY_PREF_ZENUI_UPDATE = "zenui_update";
    private static final String KEY_VERSION_CHECK_LAST_TIME = "version_check_last_time";
    private static final String KEY_VERSION_ON_PLAY = "version_on_play";
    public static final String KEY_VERSION_PREV = "previous_version_code";
    public static final String KEY_WHATS_NEW_VERSION = "whats_new_version";
    private static final String LAUNCH_CONTACTS = "launch_contacts";
    private static final String PEOPLE_NAME = "com.android.contacts.activities.PeopleActivity";
    private static final String PHONE_PACKAGE = "com.android.phone";
    private static final String PREF_LAST_MANUALLY_SELECTED_TAB = "DialtactsActivity_last_manually_selected_tab";
    private static final String PREF_ONE_HAND_MODE_ON = "onehand_mode_on";
    private static final int REQUEST_CROP_COVER = 1003;
    private static final int REQUEST_SET_COVER_CAMERA = 1001;
    private static final int REQUEST_SET_COVER_GALLERY = 1002;
    private static final int SUBACTIVITY_ACCOUNT_FILTER = 1;
    private static final int SUBACTIVITY_EDIT_CONTACT = 3;
    private static final int SUBACTIVITY_EDIT_GROUP = 5;
    private static final int SUBACTIVITY_LINK_CONTACT = 7;
    private static final int SUBACTIVITY_NEW_CONTACT = 2;
    private static final int SUBACTIVITY_NEW_GROUP = 4;
    private static final String TAG = "DialtactsActivity";
    private static final String VIP_GROUP_URI = "content://com.android.contacts/asus_global_groups/";
    private boolean isEzDialer;
    private DefaultContactBrowseListFragment mAllFragment;
    private int mAlphaColor;
    private r mContactListFilterController;
    private af mContactsUnavailableFragment;
    private e mDialpadFragment;
    private SharedPreferences mDisplayPhoneOnlyPrefs;
    private d mEzDialerFragment;
    private f mEzPeopleFragment;
    private ContentObserver mEzmodeObserver;
    private String mFilterText;
    private boolean mFragmentInitialized;
    private GroupBrowseListFragment mGroupsFragment;
    private boolean mInSearchUi;
    private boolean mIsRecreatedInstance;
    private int mLastManuallySelectedFragment;
    private SharedPreferences mPrefs;
    private bh.c mProviderStatus;
    private bh mProviderStatusWatcher;
    private String mQueryString;
    private ad mRequest;
    private SharedPreferences mRestorePrefs;
    private SearchView mSearchView;
    private SharedPreferences mSimPrefs;
    private View mTabAllcontacts;
    private View mTabDialer;
    private View mTabGroup;
    private View mTabToolPanel;
    private DialtactsViewPager mViewPager;
    private MenuItem settingMenuItem;
    private static String VIP_GROUP_DEFAULT_ID = "7";
    public static int TAB_INDEX_DIALER = 0;
    public static int TAB_INDEX_ALLCONTACTS = 2;
    public static int TAB_INDEX_GROUP = 4;
    public static int TAB_INDEX_TOOLPANEL = 6;
    public static int TAB_INDEX_COUNT = 7;
    private static final int PREF_LAST_MANUALLY_SELECTED_TAB_DEFAULT = TAB_INDEX_DIALER;
    private static int mInstanceCount = 0;
    public static int mTabPosition = -1;
    public static String KEY = "first_sync";
    public static boolean SWITCH_WHATS_NEW = false;
    private int mScreenPageLimit = 1;
    private boolean mIsCarMode = false;
    private boolean mIsHandwriting = false;
    private boolean mIsScrollable = true;
    private boolean mIsFirstlaunch = false;
    private boolean isNeedShowVipIcon = false;
    private boolean mIsHideOptionsMenu = false;
    private boolean mIsViewPagerScorllStateDrag = false;
    private CharSequence[] mViewByCallTypeItems = null;
    private boolean mIsHasPhone = false;
    private boolean isLastTwoPanes = false;
    private String[] mCallDetailUriString = null;
    private Boolean isPause = true;
    private final String CONTACT_SEARCH_TEXT = "contact_search_text";
    private final String KEY_SHOW_VIP = "showVipOnly";
    private boolean mIsUnboundle = false;
    private boolean mIsUsingTwoPanel = false;
    private boolean isSystemEzmode = false;
    private boolean isEzmode = false;
    private boolean mNeedUpdated = false;
    private boolean mIsNeedCallguardTutorial = false;
    private String themeId = "default";
    public PhoneStateListener mPhoneStateListener = null;
    boolean mDuringSwipe = false;
    boolean mUserTabClick = false;
    private final PageChangeListener mPageChangeListener = new PageChangeListener();
    private final r.a mContactListFilterListener = new r.a() { // from class: com.android.contacts.activities.MainDialtactsActivity.1
        @Override // com.android.contacts.list.r.a
        public void onContactListFilterChanged() {
            boolean z = false;
            if (MainDialtactsActivity.this.mAllFragment != null) {
                z = false;
                if (MainDialtactsActivity.this.mAllFragment.isAdded()) {
                    MainDialtactsActivity.this.mAllFragment.a(MainDialtactsActivity.this.mContactListFilterController.a());
                    z = true;
                }
            }
            if (z) {
                MainDialtactsActivity.this.invalidateOptionsMenu();
            }
        }
    };
    private final ActionBar.TabListener mTabListener = new ActionBar.TabListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.2
        @Override // android.app.ActionBar.TabListener
        public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
            boolean z = true;
            if (!MainDialtactsActivity.this.mDuringSwipe) {
                e unused = MainDialtactsActivity.this.mDialpadFragment;
                MainDialtactsActivity.this.mUserTabClick = true;
            }
            int position = tab.getPosition() * 2;
            if (MainDialtactsActivity.this.mViewPager.getCurrentItem() != position) {
                MainDialtactsActivity.this.setViewpagerScreenPageLimit();
                MainDialtactsActivity.this.sendFragmentVisibilityChange(MainDialtactsActivity.this.mViewPager.getCurrentItem(), false);
                MainDialtactsActivity.this.mViewPager.setCurrentItem(position, false);
                MainDialtactsActivity.this.sendFragmentVisibilityChange(position, true);
                MainDialtactsActivity.this.invalidateOptionsMenu();
            }
            if (!TelecomUtil.isInCall(MainDialtactsActivity.this.getApplicationContext())) {
                MainDialtactsActivity.this.mLastManuallySelectedFragment = position;
            }
            MainDialtactsActivity.mTabPosition = position;
            if (position != MainDialtactsActivity.TAB_INDEX_DIALER) {
                MainDialtactsActivity.this.mIsScrollable = true;
                MainDialtactsActivity.this.enableScroll(MainDialtactsActivity.this.mIsScrollable);
            } else if (MainDialtactsActivity.this.mIsHandwriting) {
                MainDialtactsActivity mainDialtactsActivity = MainDialtactsActivity.this;
                if (MainDialtactsActivity.this.mIsHandwriting) {
                    z = false;
                }
                mainDialtactsActivity.mIsScrollable = z;
                MainDialtactsActivity.this.enableScroll(MainDialtactsActivity.this.mIsScrollable);
            }
            if (MainDialtactsActivity.this.getWindow() != null) {
                if (com.android.contacts.skin.a.b()) {
                    MainDialtactsActivity.this.getWindow().setBackgroundDrawable(MainDialtactsActivity.this.getResources().getDrawable(2131165221));
                } else if (com.android.contacts.skin.a.c()) {
                    MainDialtactsActivity.this.getApplicationContext();
                    com.android.contacts.skin.a.d();
                    MainDialtactsActivity.this.getWindow().setBackgroundDrawable(com.android.contacts.skin.a.a(MainDialtactsActivity.this.getApplicationContext(), 2131165223, com.android.contacts.skin.a.a(3)));
                } else {
                    MainDialtactsActivity.this.getWindow().setBackgroundDrawable(MainDialtactsActivity.this.getResources().getDrawable(2131165223));
                }
            }
            View findViewById = MainDialtactsActivity.this.findViewById(2131296744);
            if (findViewById != null) {
                if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_GROUP || MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_TOOLPANEL) {
                    findViewById.setVisibility(0);
                } else {
                    findViewById.setVisibility(8);
                }
            }
            if (!com.android.contacts.skin.a.c()) {
                return;
            }
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER) {
                MainDialtactsActivity.this.setTabTint(2131165400);
            } else if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
                MainDialtactsActivity.this.setTabTint(2131165398);
            } else if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_GROUP) {
                MainDialtactsActivity.this.setTabTint(2131165404);
            } else if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_TOOLPANEL) {
                MainDialtactsActivity.this.setTabTint(2131165406);
            }
        }

        @Override // android.app.ActionBar.TabListener
        public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        }
    };
    private MenuItem.OnMenuItemClickListener mSearchMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.3
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (MainDialtactsActivity.this.mViewPager == null) {
                return true;
            }
            MainDialtactsActivity.this.mViewPager.getCurrentItem();
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mAddContactItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.4
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
            if (PhoneCapabilityTester.isUsingTwoPanes(MainDialtactsActivity.this)) {
                intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                MainDialtactsActivity.this.startActivityForResult(intent, 2);
                return true;
            }
            ImplicitIntentsUtil.startActivityInAppIfPossible(MainDialtactsActivity.this, intent);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mManageContactOptionMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.5
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, new Intent(MainDialtactsActivity.this, ManageContactsActivity.class));
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mDeleteContactOptionMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.6
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent intent;
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(MainDialtactsActivity.this, "AllContacts", "Settings", "Delete_multiple_contacts");
            if (PhoneCapabilityTester.isVerizon()) {
                intent = new Intent("android.intent.action.ASUS_MULTIPLE_PICKER_DELETEALL");
            } else {
                intent = new Intent(MainDialtactsActivity.this.getApplicationContext(), AsusSelectAccountActivity.class);
                intent.setFlags(2);
            }
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, intent);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mKddiSyncOptionMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.7
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            MainDialtactsActivity.this.startAuServerSync();
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mAccountOptionMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.8
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(MainDialtactsActivity.this, "AllContacts", "Settings", "Accounts");
            Intent intent = new Intent("android.settings.SYNC_SETTINGS");
            intent.putExtra("authorities", new String[]{"com.android.contacts"});
            intent.setFlags(524288);
            ImplicitIntentsUtil.startActivityOutsideApp(MainDialtactsActivity.this, intent);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mCloudClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.9
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent intent = new Intent("com.vcast.mediamanager.ACTION_CONTACTS");
            intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
            MainDialtactsActivity.this.startActivity(intent);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mAsusContactSettingMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.10
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent intent = new Intent(MainDialtactsActivity.this, AsusContactsSettingActivity.class);
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER) {
                intent.putExtra("PREF_LAUNCHED_FROM_DIALPAD", true);
            } else if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
                intent.putExtra("PREF_LAUNCHED_FROM_ALLCONTACTS", true);
            }
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, intent);
            AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 2);
            MainDialtactsActivity.this.finish();
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mMoreMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.11
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            c cVar = new c();
            cVar.d = MainDialtactsActivity.mTabPosition;
            cVar.show(MainDialtactsActivity.this.getFragmentManager(), "MoreMenuItemFragment");
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER) {
                AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 11);
                return true;
            }
            AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 8);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mEnCourageUsMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.12
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(6, MainDialtactsActivity.this, "Dialer", "Dialer: Encourage us", "Dialer: Encourage us", null);
            } else if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(6, MainDialtactsActivity.this, "Contacts", "Contacts: Encourage us", "Contacts: Encourage us", null);
            }
            com.asus.contacts.settings.a.a(new Bundle()).show(MainDialtactsActivity.this.getFragmentManager(), "encourage_us_dialog");
            if (!AsusRedPointNotificationDualPanelHelper.getInstance().isNeedShowRedPoint(MainDialtactsActivity.this, 10)) {
                return true;
            }
            AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 10);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mUpdateVersionMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.13
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            AboutContactsAppActivity.gotoGooglePlay(MainDialtactsActivity.this);
            if (!AsusRedPointNotificationDualPanelHelper.getInstance().isNeedShowRedPoint(MainDialtactsActivity.this, 14)) {
                return true;
            }
            AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 14);
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mZenuiUpdateMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.14
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            MainDialtactsActivity.launchZenUiFamilySdk(MainDialtactsActivity.this);
            if (!AsusRedPointNotificationDualPanelHelper.getInstance().isNeedShowRedPoint(MainDialtactsActivity.this, 15)) {
                return true;
            }
            AsusRedPointNotificationDualPanelHelper.getInstance().disableRedPoint(MainDialtactsActivity.this, 15);
            return true;
        }
    };
    private e.f mDialpadListener = new e.f() { // from class: com.android.contacts.activities.MainDialtactsActivity.17
        public void onSearchButtonPressed() {
        }
    };
    private final SearchView.OnQueryTextListener mAsusSearchQueryTextListener = new SearchView.OnQueryTextListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.20
        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            boolean z;
            if (str.equals(MainDialtactsActivity.this.mQueryString) || MainDialtactsActivity.this.mAllFragment == null) {
                z = false;
            } else {
                if (!TextUtils.isEmpty(MainDialtactsActivity.this.mQueryString) || !TextUtils.isEmpty(str)) {
                    if (TextUtils.isEmpty(MainDialtactsActivity.this.mQueryString)) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(8, (Activity) MainDialtactsActivity.this, "AllContacts", true);
                        if (MainDialtactsActivity.this.mPrefs != null) {
                            MainDialtactsActivity.this.mPrefs.edit().putInt("contact_search_count", MainDialtactsActivity.this.mPrefs.getInt("contact_search_count", 0) + 1).commit();
                        }
                    }
                    if (TextUtils.isEmpty(str)) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(8, MainDialtactsActivity.this, "AllContacts", "Enter the number of keywords when searching in contact", MainDialtactsActivity.this.mQueryString != null ? String.valueOf(MainDialtactsActivity.this.mQueryString.length()) : "0", null);
                    }
                }
                MainDialtactsActivity.this.mQueryString = str;
                MainDialtactsActivity.this.mAllFragment.a(MainDialtactsActivity.this.mQueryString, true);
                MainDialtactsActivity.this.mAllFragment.g(!MainDialtactsActivity.this.mAllFragment.o);
                z = true;
                if (com.android.contacts.b.e.equals(MainDialtactsActivity.this.mQueryString)) {
                    MainDialtactsActivity.this.startActivity(new Intent("com.android.providers.contacts.DUMP_DATABASE"));
                    z = true;
                }
            }
            return z;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            if (MainDialtactsActivity.this.mSearchView == null) {
                return true;
            }
            InputMethodManager inputMethodManager = (InputMethodManager) MainDialtactsActivity.this.getApplicationContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(MainDialtactsActivity.this.mSearchView.getWindowToken(), 0);
            }
            MainDialtactsActivity.this.mSearchView.clearFocus();
            return true;
        }
    };
    private MenuItem.OnMenuItemClickListener mSettingMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.21
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Log.d(MainDialtactsActivity.TAG, "EZ mode Setting - OnMenuItemClickListener");
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(MainDialtactsActivity.this, "AllContacts", "Settings", "Settings");
            Intent intent = new Intent(MainDialtactsActivity.this, ContactsPreferenceActivity.class);
            if (!MainDialtactsActivity.this.getResources().getBoolean(Resources.getSystem().getIdentifier("preferences_prefer_dual_pane", "bool", "android"))) {
                intent.putExtra(":android:show_fragment", DisplayOptionsPreferenceFragment.class.getName());
                intent.putExtra(":android:show_fragment_title", 2131755969);
            }
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, intent);
            MainDialtactsActivity.this.finish();
            return true;
        }
    };
    BroadcastReceiver mThemeChangeReceiver = new BroadcastReceiver() { // from class: com.android.contacts.activities.MainDialtactsActivity.23
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "asus.intent.action.FINISH_ACTIVITY".equals(intent.getAction())) {
                Log.d(MainDialtactsActivity.TAG, "Theme Change finishActivity()");
                MainDialtactsActivity.this.finish();
            }
        }
    };
    private z mIntentResolver = new z(this);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$ContactBrowserActionListener.class */
    private final class ContactBrowserActionListener implements aw {
        ContactBrowserActionListener() {
        }

        public final void onAddToFavoritesAction(Uri uri) {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("starred", (Integer) 1);
            MainDialtactsActivity.this.getContentResolver().update(uri, contentValues, null, null);
        }

        public final void onBlockContactAction(Uri uri) {
            Toast.makeText(MainDialtactsActivity.this, uri.toString(), 1).show();
            String lastPathSegment = uri.getLastPathSegment();
            Intent intent = new Intent("com.asus.app.blocklist.ADDCONTACT");
            intent.putExtra("id", lastPathSegment);
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, intent);
            MainDialtactsActivity.this.finish();
        }

        public final void onCallContactAction(Uri uri) {
            PhoneNumberInteraction.a(MainDialtactsActivity.this, uri);
        }

        public final void onCreateNewContactAction() {
            Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
            Bundle extras = MainDialtactsActivity.this.getIntent().getExtras();
            if (extras != null) {
                intent.putExtras(extras);
            }
            ImplicitIntentsUtil.startActivityInAppIfPossible(MainDialtactsActivity.this, intent);
        }

        public final void onDeleteContactAction(Uri uri) {
            com.android.contacts.interactions.d.a(MainDialtactsActivity.this, uri, false);
        }

        public final void onEditContactAction(Uri uri) {
            Intent intent = new Intent("android.intent.action.EDIT", uri);
            Bundle extras = MainDialtactsActivity.this.getIntent().getExtras();
            if (extras != null) {
                intent.putExtras(extras);
            }
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
            MainDialtactsActivity.this.startActivityForResult(intent, 3);
        }

        public final void onFinishAction() {
            MainDialtactsActivity.this.onBackPressed();
        }

        @Override // com.android.contacts.list.aw
        public final void onInvalidSelection() {
            ContactListFilter a2;
            ContactListFilter contactListFilter = ((n) MainDialtactsActivity.this.mAllFragment).c;
            if (contactListFilter == null || contactListFilter.f1712a != -6) {
                a2 = ContactListFilter.a(-6);
                MainDialtactsActivity.this.mAllFragment.a(a2, false);
            } else {
                a2 = ContactListFilter.a(-3);
                MainDialtactsActivity.this.mAllFragment.a(a2);
            }
            MainDialtactsActivity.this.mContactListFilterController.a(a2);
        }

        public final void onRemoveFromFavoritesAction(Uri uri) {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("starred", (Integer) 0);
            MainDialtactsActivity.this.getContentResolver().update(uri, contentValues, null, null);
        }

        @Override // com.android.contacts.list.aw
        public final void onSelectionChange() {
            if (PhoneCapabilityTester.isUsingTwoPanes(MainDialtactsActivity.this)) {
                DefaultContactBrowseListFragment defaultContactBrowseListFragment = MainDialtactsActivity.this.mAllFragment;
                Uri uri = ((n) MainDialtactsActivity.this.mAllFragment).f1863b;
                if (defaultContactBrowseListFragment.D != null) {
                    defaultContactBrowseListFragment.D.loadUri(uri);
                }
            }
        }

        public final void onSmsContactAction(Uri uri) {
            PhoneNumberInteraction.b(MainDialtactsActivity.this, uri);
        }

        @Override // com.android.contacts.list.aw
        public final void onViewContactAction(Uri uri, boolean z) {
            int i = MainDialtactsActivity.this.mAllFragment.o ? 2 : 1;
            if (z) {
                Log.d(MainDialtactsActivity.TAG, "call android for work contact uri:" + uri);
                ContactsContract.QuickContact.showQuickContact(MainDialtactsActivity.this, new Rect(), uri, 4, (String[]) null);
            } else if (PhoneCapabilityTester.isUsingTwoPanes(MainDialtactsActivity.this)) {
                DefaultContactBrowseListFragment defaultContactBrowseListFragment = MainDialtactsActivity.this.mAllFragment;
                if (defaultContactBrowseListFragment.D != null) {
                    defaultContactBrowseListFragment.D.loadUri(uri, i);
                }
            } else {
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.putExtra("filter_from", i);
                CallUtil.startActivityWithErrorToast(MainDialtactsActivity.this, intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$ContactsUnavailableFragmentListener.class */
    public class ContactsUnavailableFragmentListener implements ay {
        ContactsUnavailableFragmentListener() {
        }

        @Override // com.android.contacts.list.ay
        public void onAddAccountAction() {
            Intent intent = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
            intent.setFlags(524288);
            intent.putExtra("authorities", new String[]{"com.android.contacts"});
            ImplicitIntentsUtil.startActivityOutsideApp(MainDialtactsActivity.this, intent);
        }

        @Override // com.android.contacts.list.ay
        public void onCreateNewContactAction() {
            ImplicitIntentsUtil.startActivityInAppIfPossible(MainDialtactsActivity.this, new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI));
        }

        public void onFreeInternalStorageAction() {
            ImplicitIntentsUtil.startActivityOutsideApp(MainDialtactsActivity.this, new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS"));
        }

        @Override // com.android.contacts.list.ay
        public void onImportContactsFromFileAction() {
            h.a(MainDialtactsActivity.this.getFragmentManager());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$GetAppVersionTask.class */
    private class GetAppVersionTask extends AsyncTask<Void, Integer, Integer> {
        private static final long CHECKING_VERSION_TIME_LIMIT = 86400000;
        private Context context;
        private long mNewVersion;
        private long mOriginVersion;
        private final int STATUS_THE_FIRST_TIME_NEW_VERSION = 1;
        private final int STATUS_SAME_VERSION_FROM_LAST_CHECK = 2;
        private final int STATUS_NO_NETWORK = 3;
        private final int STATUS_ERROR = 4;
        private final int STATUS_STAGE_ROLLOUT = 5;
        private long nowTime = 0;
        private long versionOnGooglePlay = 0;

        public GetAppVersionTask(Context context) {
            this.context = context;
        }

        private int checkVersion() {
            int i;
            ConnectivityManager connectivityManager = (ConnectivityManager) MainDialtactsActivity.this.getApplicationContext().getSystemService("connectivity");
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if ((networkInfo2 == null || !networkInfo2.isConnected()) && (networkInfo == null || !networkInfo.isConnected())) {
                i = 3;
            } else {
                this.mNewVersion = getGooglePlayVersion();
                this.mOriginVersion = getCurrentVersion();
                Log.d(MainDialtactsActivity.TAG, "mNewVersion = " + this.mNewVersion + " mOriginVersion = " + this.mOriginVersion);
                i = this.mNewVersion == -1 ? 3 : this.mNewVersion == -2 ? 5 : (this.mOriginVersion < 0 || this.mNewVersion < 0) ? 4 : (this.mNewVersion <= this.mOriginVersion || this.mNewVersion <= this.versionOnGooglePlay) ? 2 : 1;
            }
            return i;
        }

        private long getCurrentVersion() {
            long j = -1;
            try {
                j = MainDialtactsActivity.this.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionCode;
            } catch (Exception e) {
                Log.d(MainDialtactsActivity.TAG, "Fail to get app version, Exception: " + e.toString());
            }
            return j;
        }

        private long getGooglePlayVersion() {
            long j = -1;
            try {
                j = ZenUiFamily.getApkLatestVersion(this.context, this.context.getPackageName());
            } catch (Exception e) {
                Log.d(MainDialtactsActivity.TAG, "Fail to get GooglePlay version, Exception: " + e.toString());
            }
            return j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(Void... voidArr) {
            int valueOf;
            if (!PhoneCapabilityTester.checkApkInstalled(this.context, "com.android.vending")) {
                valueOf = 0;
            } else {
                SharedPreferences sharedPreferences = this.context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0);
                this.versionOnGooglePlay = sharedPreferences.getLong(MainDialtactsActivity.KEY_VERSION_ON_PLAY, 0L);
                this.nowTime = Calendar.getInstance().getTimeInMillis();
                long j = sharedPreferences.getLong(MainDialtactsActivity.KEY_VERSION_CHECK_LAST_TIME, 0L);
                Log.d(MainDialtactsActivity.TAG, "versionOnGooglePlay:" + this.versionOnGooglePlay);
                Log.d(MainDialtactsActivity.TAG, "checkVersionlastTime:" + j);
                Log.d(MainDialtactsActivity.TAG, "Diff time: " + (this.nowTime - j));
                int i = 0;
                if (this.nowTime - j > CHECKING_VERSION_TIME_LIMIT) {
                    try {
                        i = checkVersion();
                    } catch (Exception e) {
                        Log.w(MainDialtactsActivity.TAG, e.toString());
                        i = 0;
                    }
                }
                valueOf = Integer.valueOf(i);
            }
            return valueOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            ImageView imageView;
            ImageView imageView2;
            Log.d(MainDialtactsActivity.TAG, "GetAppVersionTask result:" + num);
            SharedPreferences.Editor edit = this.context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
            switch (num.intValue()) {
                case 1:
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP, true);
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_DIALER, true);
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_CONTACTS, true);
                    edit.putLong(MainDialtactsActivity.KEY_VERSION_ON_PLAY, this.mNewVersion);
                    edit.putLong(MainDialtactsActivity.KEY_VERSION_CHECK_LAST_TIME, this.nowTime);
                    edit.commit();
                    FragmentManager fragmentManager = MainDialtactsActivity.this.getFragmentManager();
                    DefaultContactBrowseListFragment defaultContactBrowseListFragment = (DefaultContactBrowseListFragment) fragmentManager.findFragmentByTag("mContactFragment");
                    if (!(defaultContactBrowseListFragment == null || defaultContactBrowseListFragment.getView() == null || (imageView2 = (ImageView) defaultContactBrowseListFragment.getView().findViewById(2131296370)) == null)) {
                        imageView2.setVisibility(0);
                    }
                    e eVar = (e) fragmentManager.findFragmentByTag("mDialpadFragment");
                    if (eVar != null && eVar.f1036a != null && (imageView = (ImageView) eVar.f1036a.findViewById(2131296370)) != null) {
                        imageView.setVisibility(0);
                        return;
                    }
                    return;
                case 2:
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP, false);
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_DIALER, false);
                    edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_CONTACTS, false);
                    edit.putLong(MainDialtactsActivity.KEY_VERSION_CHECK_LAST_TIME, this.nowTime);
                    edit.commit();
                    return;
                case 3:
                default:
                    return;
                case 4:
                    edit.putLong(MainDialtactsActivity.KEY_VERSION_CHECK_LAST_TIME, this.nowTime);
                    edit.commit();
                    return;
                case 5:
                    edit.putLong(MainDialtactsActivity.KEY_VERSION_CHECK_LAST_TIME, this.nowTime);
                    edit.commit();
                    return;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (!MainDialtactsActivity.checkNeedShowUpdateVesion(this.context)) {
                SharedPreferences.Editor edit = MainDialtactsActivity.this.getApplicationContext().getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
                edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP, false);
                edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_DIALER, false);
                edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP_CONTACTS, false);
                edit.commit();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$GroupBrowserActionListener.class */
    private final class GroupBrowserActionListener implements GroupBrowseListFragment.d {
        GroupBrowserActionListener() {
        }

        @Override // com.android.contacts.group.GroupBrowseListFragment.d
        public final void onViewGroupAction(Uri uri) {
            if (PhoneCapabilityTester.isUsingTwoPanes(MainDialtactsActivity.this)) {
                MainDialtactsActivity.this.mGroupsFragment.a(uri);
                return;
            }
            Intent intent = new Intent(MainDialtactsActivity.this, GroupDetailActivity.class);
            intent.setData(uri);
            ImplicitIntentsUtil.startActivityInApp(MainDialtactsActivity.this, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$PageChangeListener.class */
    public class PageChangeListener implements ViewPager.e {
        private int lastValue;
        private int mCurrentPosition;
        private boolean mIsCallLogPage;
        private boolean mIsSwap;
        private boolean mIsSwapRight;
        private int mLeftCount;
        private int mNextPosition;
        private int mRightCount;

        private PageChangeListener() {
            this.mCurrentPosition = -1;
            this.mNextPosition = -1;
            this.mLeftCount = 0;
            this.mRightCount = 0;
            this.mIsCallLogPage = true;
            this.mIsSwapRight = false;
            this.lastValue = -1;
            this.mIsSwap = false;
        }

        public int getCurrentPosition() {
            return this.mCurrentPosition;
        }

        @Override // android.support.v4.view.ViewPager.e
        public void onPageScrollStateChanged(int i) {
            switch (i) {
                case 0:
                    if (this.mNextPosition == -1) {
                        this.mNextPosition = MainDialtactsActivity.this.mViewPager.getCurrentItem();
                    }
                    MainDialtactsActivity.this.mDuringSwipe = false;
                    MainDialtactsActivity.this.mUserTabClick = false;
                    MainDialtactsActivity.this.mIsViewPagerScorllStateDrag = false;
                    if (this.mIsSwap) {
                        if (this.mCurrentPosition >= 0) {
                            MainDialtactsActivity.this.sendFragmentVisibilityChange(this.mCurrentPosition, false);
                        }
                        if (this.mNextPosition >= 0) {
                            MainDialtactsActivity.this.sendFragmentVisibilityChange(this.mNextPosition, true);
                        }
                    }
                    MainDialtactsActivity.this.invalidateOptionsMenu();
                    this.mCurrentPosition = this.mNextPosition;
                    this.mLeftCount = 0;
                    this.mRightCount = 0;
                    this.mIsCallLogPage = true;
                    this.mIsSwapRight = false;
                    this.lastValue = -1;
                    this.mIsSwap = false;
                    if (MainDialtactsActivity.this.mAllFragment != null) {
                        MainDialtactsActivity.this.mAllFragment.i();
                        return;
                    }
                    return;
                case 1:
                    MainDialtactsActivity.this.mDuringSwipe = true;
                    MainDialtactsActivity.this.mUserTabClick = false;
                    MainDialtactsActivity.this.mIsViewPagerScorllStateDrag = true;
                    return;
                case 2:
                    MainDialtactsActivity.this.mDuringSwipe = true;
                    MainDialtactsActivity.this.mUserTabClick = false;
                    this.mIsSwap = true;
                    MainDialtactsActivity.this.setViewpagerScreenPageLimit();
                    return;
                default:
                    return;
            }
        }

        @Override // android.support.v4.view.ViewPager.e
        public void onPageScrolled(int i, float f, int i2) {
            if ((MainDialtactsActivity.this.mViewPager != null ? MainDialtactsActivity.this.mViewPager.getCurrentItem() : -1) == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
                this.mIsCallLogPage = false;
            }
            if (this.lastValue < i2) {
                this.mRightCount++;
                if (this.mRightCount > 3) {
                    this.mIsSwapRight = true;
                }
            }
            if (this.lastValue > i2) {
                this.mLeftCount++;
                if (!this.mIsSwapRight && this.mLeftCount > 1 && this.mIsCallLogPage) {
                    MainDialtactsActivity.this.hideOptionsMenu();
                }
            }
            this.lastValue = i2;
        }

        @Override // android.support.v4.view.ViewPager.e
        public void onPageSelected(int i) {
            ActionBar actionBar = MainDialtactsActivity.this.getActionBar();
            if (!(MainDialtactsActivity.this.mAllFragment == null || !MainDialtactsActivity.this.mAllFragment.o || i == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS)) {
                MainDialtactsActivity.this.exitSearchUi();
            }
            if (MainDialtactsActivity.this.mDialpadFragment != null && MainDialtactsActivity.this.mDuringSwipe) {
                int i2 = MainDialtactsActivity.TAB_INDEX_DIALER;
            }
            if (this.mCurrentPosition == i) {
                Log.w(MainDialtactsActivity.TAG, "Previous position and next position became same (" + i + ")");
            }
            actionBar.selectTab(actionBar.getTabAt(i / 2));
            this.mNextPosition = i;
        }

        public void setCurrentPosition(int i) {
            this.mCurrentPosition = i;
            MainDialtactsActivity.mTabPosition = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$UpdateSettingsTableTask.class */
    public class UpdateSettingsTableTask extends AsyncTask<Void, Void, Void> {
        private com.android.contacts.model.a mAccountTypeManager;
        private Context mContext;

        public UpdateSettingsTableTask(MainDialtactsActivity mainDialtactsActivity) {
            this.mContext = mainDialtactsActivity;
            this.mAccountTypeManager = com.android.contacts.model.a.a(this.mContext);
        }

        private boolean accountHasContact(AccountWithDataSet accountWithDataSet) {
            Throwable th;
            Cursor cursor;
            boolean z;
            try {
                String str = "account_name='" + accountWithDataSet.name + "' AND account_type='" + accountWithDataSet.type + "'";
                String str2 = str;
                if (accountWithDataSet.f1998a != null) {
                    str2 = str + " AND data_set='" + accountWithDataSet.f1998a + "'";
                }
                Cursor query = this.mContext.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, null, str2, null, null);
                if (query != null) {
                    try {
                        if (query.getCount() > 0) {
                            if (query != null) {
                                query.close();
                            }
                            z = true;
                            return z;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                z = false;
                return z;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x0151 A[Catch: Exception -> 0x025f, TryCatch #3 {Exception -> 0x025f, blocks: (B:3:0x0026, B:28:0x0113, B:30:0x011d, B:31:0x0124, B:32:0x0127, B:34:0x0149, B:36:0x0151, B:38:0x017d, B:40:0x018a, B:48:0x01dc, B:51:0x01e8, B:53:0x0249, B:55:0x0254, B:96:0x0367, B:98:0x0371, B:99:0x03a3, B:100:0x03a6, B:5:0x005d, B:7:0x0065, B:9:0x0076, B:12:0x0082, B:14:0x00c3, B:18:0x00d5, B:24:0x00e5, B:61:0x0270, B:63:0x0278, B:67:0x028b, B:69:0x0291, B:71:0x02aa, B:73:0x02b5, B:75:0x02c7, B:79:0x02d5, B:83:0x02e0, B:86:0x02ec, B:88:0x0339, B:90:0x0344, B:92:0x0356, B:42:0x019d, B:44:0x01a7, B:26:0x00f2), top: B:104:0x0026 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void updateSettingTable(java.util.List<com.android.contacts.model.account.AccountWithDataSet> r8) {
            /*
                Method dump skipped, instructions count: 986
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.MainDialtactsActivity.UpdateSettingsTableTask.updateSettingTable(java.util.List):void");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            Log.d(MainDialtactsActivity.TAG, "UpdateSettingsTableTask doInBackground start");
            try {
                Thread.sleep(500L);
            } catch (Exception e) {
                Log.w(MainDialtactsActivity.TAG, "UpdateSettingsTableTask: " + e.toString());
            }
            updateSettingTable(this.mAccountTypeManager.a(false));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            super.onPostExecute((UpdateSettingsTableTask) r4);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MainDialtactsActivity$ViewPagerAdapter.class */
    public class ViewPagerAdapter extends p {
        private FragmentTransaction mCurTransaction;
        private Fragment mCurrentPrimaryItem = null;
        private FragmentManager mFragmentManager;

        public ViewPagerAdapter(FragmentManager fragmentManager) {
            this.mFragmentManager = fragmentManager;
        }

        private String makeFragmentName(int i, int i2) {
            return "android:switcher:" + i + ":" + i2;
        }

        @Override // android.support.v4.view.p
        public void destroyItem(View view, int i, Object obj) {
            if (this.mCurTransaction == null) {
                this.mCurTransaction = this.mFragmentManager.beginTransaction();
            }
            this.mCurTransaction.detach((Fragment) obj);
        }

        @Override // android.support.v4.view.p
        public void finishUpdate(View view) {
            if (this.mCurTransaction != null) {
                this.mCurTransaction.commitAllowingStateLoss();
                this.mCurTransaction = null;
                this.mFragmentManager.executePendingTransactions();
            }
        }

        @Override // android.support.v4.view.p
        public int getCount() {
            return MainDialtactsActivity.TAB_INDEX_COUNT;
        }

        public Fragment getItem(int i) {
            return i == MainDialtactsActivity.TAB_INDEX_DIALER ? new e() : i == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS ? new DefaultContactBrowseListFragment() : i == MainDialtactsActivity.TAB_INDEX_GROUP ? new GroupBrowseListFragment() : i == MainDialtactsActivity.TAB_INDEX_TOOLPANEL ? new com.asus.toolpanel.c() : new EmptyFragment();
        }

        @Override // android.support.v4.view.p
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Fragment fragment;
            if (this.mCurTransaction == null) {
                this.mCurTransaction = this.mFragmentManager.beginTransaction();
            }
            String makeFragmentName = i == MainDialtactsActivity.TAB_INDEX_DIALER ? "mDialpadFragment" : i == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS ? "mContactFragment" : i == MainDialtactsActivity.TAB_INDEX_GROUP ? "mGroupFragment" : i == MainDialtactsActivity.TAB_INDEX_TOOLPANEL ? "mToolPanelFragment" : makeFragmentName(viewGroup.getId(), i);
            Fragment findFragmentByTag = this.mFragmentManager.findFragmentByTag(makeFragmentName);
            if (findFragmentByTag != null) {
                this.mCurTransaction.attach(findFragmentByTag);
                fragment = findFragmentByTag;
            } else {
                Fragment item = getItem(i);
                this.mCurTransaction.add(viewGroup.getId(), item, makeFragmentName);
                fragment = item;
            }
            if (fragment != this.mCurrentPrimaryItem) {
                android.support.v13.app.a.a(fragment, false);
            }
            return fragment;
        }

        @Override // android.support.v4.view.p
        public boolean isViewFromObject(View view, Object obj) {
            return ((Fragment) obj).getView() == view;
        }

        @Override // android.support.v4.view.p
        public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
            Fragment fragment = (Fragment) obj;
            if (fragment != this.mCurrentPrimaryItem) {
                if (this.mCurrentPrimaryItem != null) {
                    android.support.v13.app.a.a(this.mCurrentPrimaryItem, false);
                }
                if (fragment != null) {
                    android.support.v13.app.a.a(fragment, true);
                }
                this.mCurrentPrimaryItem = fragment;
            }
        }
    }

    private void checkGoToInCallScreen(Intent intent, boolean z) {
        boolean z2;
        boolean z3;
        boolean booleanExtra = intent.getBooleanExtra("from_in_call_screen", false);
        String action = intent.getAction();
        boolean booleanExtra2 = intent.getBooleanExtra(ADD_CALL_MODE_KEY, false);
        if (!"android.intent.action.DIAL".equals(action) || !booleanExtra2) {
            z2 = false;
        } else {
            Log.d(TAG, "add call mode true");
            z2 = true;
        }
        if (TelecomUtil.isInCall(this) && !isInCallScreenInForeground() && !isSmallIncomingCallScreenInForeground() && !z2 && z) {
            Log.d(TAG, "go to in call screen (ringing on Pad/Phone)");
            z3 = true;
        } else if (!TelecomUtil.isInCall(this) || isInCallScreenInForeground() || z2 || !z) {
            z3 = false;
        } else {
            Log.d(TAG, "go to in call screen (phone is offhook and not in in call screen)");
            z3 = true;
        }
        if (com.asus.contacts.a.b("persist.asus.gcf.mode") == 1) {
            z3 = false;
        }
        if (z3 && !booleanExtra && !"onDestroy".equals(action)) {
            TelecomUtil.showInCallScreen(this, false);
        }
    }

    public static boolean checkNeedDisableZenUiUpdate(Context context) {
        return !PhoneCapabilityTester.checkApkInstalled(context, "com.android.vending") || PhoneCapabilityTester.isCNSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCUCCSku() || PhoneCapabilityTester.isVerizon();
    }

    public static boolean checkNeedShowUpdateVesion(Context context) {
        long j = context.getSharedPreferences(KEY_PREF_ZENUI_UPDATE, 0).getLong(KEY_VERSION_ON_PLAY, 0L);
        boolean z = false;
        if (PhoneCapabilityTester.checkApkInstalled(context, "com.android.vending")) {
            if (PhoneCapabilityTester.isVerizon()) {
                z = false;
            } else {
                try {
                    z = false;
                    if (j > context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode) {
                        z = true;
                    }
                } catch (Exception e) {
                    Log.d(TAG, "Fail to get app version, Exception: " + e.toString());
                    z = false;
                }
            }
        }
        return z;
    }

    private boolean checkVersionUpgrade() {
        boolean z = true;
        int i = getSharedPreferences(KEY_PREF_WHATS_NEW, 0).getInt(KEY_WHATS_NEW_VERSION, -1);
        int parseInt = Integer.parseInt(getResources().getString(2131756480));
        getSharedPreferences(KEY_PREF_WHATS_NEW, 0).edit().putInt(KEY_WHATS_NEW_VERSION, parseInt).apply();
        Log.d(TAG, "[checkVersionUpgrade] Show whats new previous version: " + i + ", current version: " + parseInt);
        if (i < 0) {
            if (getSharedPreferences(KEY_PREF_WHATS_NEW, 0).getInt(KEY_VERSION_PREV, -1) >= Integer.parseInt(getResources().getString(2131756192))) {
                z = false;
            }
        } else if (parseInt <= i) {
            z = false;
        }
        return z;
    }

    private void configureContactListFragmentForRequest(boolean z) {
        if (z && this.mAllFragment != null && this.mRequest != null) {
            Uri uri = this.mRequest.j;
            if (uri != null && !Constants.SCHEME_TEL.equals(uri.getScheme())) {
                if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
                    ((n) this.mAllFragment).f1862a = true;
                }
                this.mAllFragment.c(uri);
                this.mAllFragment.a(this.mContactListFilterController.a());
            }
            if (this.mRequest.i) {
                this.mAllFragment.q = 1;
            } else {
                this.mAllFragment.q = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitSearchUi() {
        Log.d(TAG, "exitSearchUi");
        sendFragmentVisibilityChange(this.mViewPager.getCurrentItem(), true);
        this.mViewPager.setVisibility(0);
        hideInputMethod(getCurrentFocus());
        if (this.mSearchView != null) {
            this.mSearchView.setQuery(null, false);
        }
        invalidateOptionsMenu();
        this.mInSearchUi = false;
    }

    private void fixIntent(Intent intent) {
        if ("android.intent.action.CALL_BUTTON".equals(intent.getAction())) {
            intent.setDataAndType(CallLog.Calls.CONTENT_URI, "vnd.android.cursor.dir/calls");
            intent.putExtra("call_key", true);
            setIntent(intent);
        }
    }

    public static Intent getCallSettingsIntent() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(PHONE_PACKAGE, CALL_SETTINGS_CLASS_NAME);
        intent.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
        return intent;
    }

    private Fragment getFragmentAt(int i) {
        return i == TAB_INDEX_DIALER ? this.mDialpadFragment : i == TAB_INDEX_ALLCONTACTS ? this.mAllFragment : i == TAB_INDEX_GROUP ? this.mGroupsFragment : null;
    }

    private void hideInputMethod(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) getApplicationContext().getSystemService("input_method");
        if (inputMethodManager != null && view != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    private void initActionbarTabs(boolean z) {
        boolean isPhone = PhoneCapabilityTester.isPhone(this);
        if (this.mIsUsingTwoPanel) {
            TAB_INDEX_TOOLPANEL = -1;
            if (isPhone || com.asus.contacts.a.a("ro.product.model").startsWith("AMAX")) {
                TAB_INDEX_COUNT = 5;
            } else {
                TAB_INDEX_DIALER = -1;
                TAB_INDEX_ALLCONTACTS = 0;
                TAB_INDEX_GROUP = 2;
                TAB_INDEX_COUNT = 3;
            }
        }
        boolean isEnableDialtactsWithTabName = PhoneCapabilityTester.isEnableDialtactsWithTabName();
        for (int i = 0; i < TAB_INDEX_COUNT; i++) {
            setupTab(i, TAB_INDEX_COUNT, isEnableDialtactsWithTabName);
        }
        getActionBar().setNavigationMode(2);
        getActionBar().setDisplayShowTitleEnabled(false);
        getActionBar().setDisplayShowHomeEnabled(false);
        getActionBar().setSplitBackgroundDrawable(getResources().getDrawable(2131165920));
        if (z) {
            getActionBar().hide();
        }
    }

    private void initEzmode(Intent intent) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            if (intent.getComponent().getClassName().equals("com.android.contacts.activities.DialtactsActivity")) {
                actionBar.setTitle(2131756047);
                this.isEzDialer = true;
            } else {
                actionBar.setTitle(2131755457);
                this.isEzDialer = false;
            }
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(false);
            actionBar.setDisplayShowTitleEnabled(true);
        }
        setRequestedOrientation(1);
    }

    private static boolean isAddCallMode(Intent intent) {
        boolean z = false;
        String action = intent.getAction();
        if ("android.intent.action.DIAL".equals(action) || "android.intent.action.VIEW".equals(action)) {
            z = intent.getBooleanExtra(ADD_CALL_MODE_KEY, false);
        }
        return z;
    }

    private boolean isFirst() {
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("firstData", 0);
        boolean z = sharedPreferences.getBoolean("isFirst", true);
        sharedPreferences.edit().putBoolean("isFirst", false).apply();
        return z;
    }

    private boolean isInCallScreenInForeground() {
        boolean z;
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) getSystemService("activity")).getRunningTasks(1);
        if (runningTasks.size() > 0) {
            ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0);
            Log.d(TAG, "First task baseActivity: " + runningTaskInfo.baseActivity.getClassName());
            if (runningTaskInfo.baseActivity.getClassName().equals("com.android.phone.InCallScreen")) {
                z = true;
                Log.d(TAG, "isInCallScreenInForeground() ? " + z);
                return z;
            }
        }
        z = false;
        Log.d(TAG, "isInCallScreenInForeground() ? " + z);
        return z;
    }

    private boolean isSendKeyWhileInCall(Intent intent) {
        boolean z = false;
        if ("android.intent.action.CALL_BUTTON".equals(intent.getAction())) {
            TelecomUtil.showInCallScreen(this, false);
            z = true;
        }
        return z;
    }

    private boolean isSmallIncomingCallScreenInForeground() {
        boolean z;
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) getSystemService("activity")).getRunningTasks(1);
        if (runningTasks.size() > 0) {
            ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0);
            Log.d(TAG, "First task baseActivity: " + runningTaskInfo.baseActivity.getClassName());
            if (runningTaskInfo.baseActivity.getClassName().equals("com.android.phone.SmallIncomingCallScreen")) {
                z = true;
                Log.d(TAG, "isSmallIncomingCallScreenInForeground() ? " + z);
                return z;
            }
        }
        z = false;
        Log.d(TAG, "isSmallIncomingCallScreenInForeground() ? " + z);
        return z;
    }

    private boolean isViewContactIntent() {
        return getIntent().getComponent().getClassName().equals(PEOPLE_NAME);
    }

    public static void launchZenUiFamilySdk(Context context) {
        ZenUiFamily.setGAEnable(Build.TYPE.equals("user") && com.android.contacts.a.a.a(context));
        ZenUiFamily.launchZenUiFamily(context);
    }

    private boolean processIntent(boolean z) {
        boolean z2;
        this.mRequest = this.mIntentResolver.a(getIntent());
        Log.d(TAG, this + " processIntent: forNewIntent=" + z + " intent=" + getIntent() + " request=" + this.mRequest);
        if (!this.mRequest.f1764a) {
            setResult(0);
            z2 = false;
        } else {
            Intent intent = this.mRequest.c;
            if (intent != null) {
                ImplicitIntentsUtil.startActivityOutsideApp(this, intent);
                z2 = false;
            } else if (this.mRequest.f1765b != 140 || PhoneCapabilityTester.isUsingTwoPanes(this) || this.mRequest.j == null) {
                z2 = true;
            } else if (Constants.SCHEME_TEL.equals(this.mRequest.j.getScheme())) {
                z2 = true;
            } else if (this.mRequest.j.toString().contains("calls")) {
                Intent intent2 = new Intent(this, MainDialtactsActivity.class);
                intent2.setAction(ACTION_ENTER_CALL_LOG);
                setIntent(intent2);
                z2 = true;
            } else {
                Intent intent3 = new Intent(this, ContactDetailActivity.class);
                intent3.setAction("android.intent.action.VIEW");
                intent3.setData(this.mRequest.j);
                ImplicitIntentsUtil.startActivityInApp(this, intent3);
                z2 = false;
            }
        }
        return z2;
    }

    private void sendEnterFromGA(final Intent intent) {
        if (intent != null && intent.getAction() != null) {
            if (intent.getAction().toString().equals("android.intent.action.MAIN") || intent.getAction().toString().equals("android.intent.action.DIAL")) {
                com.android.contacts.a.b.a(getApplicationContext(), new b.AbstractC0020b() { // from class: com.android.contacts.activities.MainDialtactsActivity.22
                    @Override // com.android.contacts.a.b.AbstractC0020b
                    public void onInitComplete(com.android.contacts.a.b bVar) {
                        if (intent.getComponent().getClassName().equals("com.android.contacts.activities.DialtactsActivity")) {
                            com.android.contacts.a.b.a(16, this, "Enter from Dialer", true);
                        }
                        if (intent.getComponent().getClassName().equals(MainDialtactsActivity.PEOPLE_NAME)) {
                            com.android.contacts.a.b.a(16, this, "Enter from Contact", true);
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendFragmentVisibilityChange(final int i, final boolean z) {
        Fragment fragmentAt = getFragmentAt(i);
        if (fragmentAt instanceof ag) {
            ((ag) fragmentAt).a(z);
        }
        hideInputMethod(getCurrentFocus());
        com.android.contacts.a.b.a(getApplicationContext(), new b.AbstractC0020b() { // from class: com.android.contacts.activities.MainDialtactsActivity.19
            @Override // com.android.contacts.a.b.AbstractC0020b
            public void onInitComplete(com.android.contacts.a.b bVar) {
                if (i == MainDialtactsActivity.TAB_INDEX_DIALER) {
                    com.android.contacts.a.b.a(this, "Dialer", z);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a(18, this, "Dialer", z);
                    } else {
                        com.android.contacts.a.b.a(10, this, "Dialer", z);
                    }
                } else if (i == MainDialtactsActivity.TAB_INDEX_ALLCONTACTS) {
                    com.android.contacts.a.b.a(this, "AllContacts", z);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a(18, this, "AllContacts", z);
                    } else {
                        com.android.contacts.a.b.a(10, this, "AllContacts", z);
                    }
                } else if (i == MainDialtactsActivity.TAB_INDEX_GROUP) {
                    com.android.contacts.a.b.a(this, "Groups", z);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a(18, this, "Groups", z);
                    } else {
                        com.android.contacts.a.b.a(10, this, "Groups", z);
                    }
                } else if (i == MainDialtactsActivity.TAB_INDEX_TOOLPANEL) {
                    com.android.contacts.a.b.a(this, "ToolPanel", z);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a(18, this, "ToolPanel", z);
                    } else {
                        com.android.contacts.a.b.a(10, this, "ToolPanel", z);
                    }
                }
            }
        });
    }

    private void setCurrentTab(Intent intent) {
        boolean equals = "vnd.android.cursor.dir/calls".equals(intent.getType());
        if (isSendKeyWhileInCall(intent)) {
            finish();
            return;
        }
        int i = this.mLastManuallySelectedFragment;
        int i2 = (getIntent().getBooleanExtra("from_in_call_screen", false) || (!TelecomUtil.isInCall(getApplicationContext()) && !CallUtil.isDialIntent(intent)) || this.mLastManuallySelectedFragment == TAB_INDEX_ALLCONTACTS) ? equals ? TAB_INDEX_DIALER : (!intent.getBooleanExtra(EXTRA_BACK_TO_TOOLPANEL, false) || this.mIsUsingTwoPanel) ? this.mLastManuallySelectedFragment : TAB_INDEX_TOOLPANEL : TAB_INDEX_DIALER;
        if (this.mViewPager != null) {
            int currentItem = this.mViewPager.getCurrentItem();
            this.mViewPager.setCurrentItem(i2, false);
            if (currentItem != i2) {
                sendFragmentVisibilityChange(currentItem, false);
            }
        }
        this.mPageChangeListener.setCurrentPosition(i2);
        sendFragmentVisibilityChange(i2, true);
        this.mLastManuallySelectedFragment = i;
        this.mDuringSwipe = false;
        this.mUserTabClick = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTabTint(int i) {
        Drawable mutate = getResources().getDrawable(2131165400).mutate();
        Drawable mutate2 = getResources().getDrawable(2131165398).mutate();
        Drawable mutate3 = getResources().getDrawable(2131165404).mutate();
        Drawable mutate4 = getResources().getDrawable(2131165406).mutate();
        if (i == 2131165400) {
            android.support.v4.a.a.a.a(mutate, com.android.contacts.skin.a.a(0));
            android.support.v4.a.a.a.a(mutate2, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate3, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate4, this.mAlphaColor);
        } else if (i == 2131165398) {
            android.support.v4.a.a.a.a(mutate, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate2, com.android.contacts.skin.a.a(0));
            android.support.v4.a.a.a.a(mutate3, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate4, this.mAlphaColor);
        } else if (i == 2131165404) {
            android.support.v4.a.a.a.a(mutate, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate2, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate3, com.android.contacts.skin.a.a(0));
            android.support.v4.a.a.a.a(mutate4, this.mAlphaColor);
        } else if (i == 2131165406) {
            android.support.v4.a.a.a.a(mutate, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate2, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate3, this.mAlphaColor);
            android.support.v4.a.a.a.a(mutate4, com.android.contacts.skin.a.a(0));
        }
        ((ImageView) this.mTabDialer.findViewById(2131296286)).setImageDrawable(mutate);
        ((ImageView) this.mTabAllcontacts.findViewById(2131296286)).setImageDrawable(mutate2);
        ((ImageView) this.mTabGroup.findViewById(2131296286)).setImageDrawable(mutate3);
        ((ImageView) this.mTabToolPanel.findViewById(2131296286)).setImageDrawable(mutate4);
    }

    private void setupFilterText(Intent intent) {
        String stringExtra;
        if ((intent.getFlags() & 1048576) == 0 && (stringExtra = intent.getStringExtra("com.android.contacts.extra.FILTER_TEXT")) != null && stringExtra.length() > 0) {
            this.mFilterText = stringExtra;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setupTab(int r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.MainDialtactsActivity.setupTab(int, int, boolean):void");
    }

    private void showNetworkSettingDialog() {
        if (PhoneCapabilityTester.isCNSku() && !PreferenceManager.getDefaultSharedPreferences(this).getBoolean("TouchPal_Network_Setting", false)) {
            com.asus.a.c.c(getApplicationContext(), false);
            getApplication();
            com.asus.a.b.a();
        }
    }

    private void showUnavailableFragment() {
        View findViewById = findViewById(2131296602);
        View findViewById2 = findViewById(2131297016);
        if (this.mAllFragment != null) {
            this.mAllFragment.e(false);
        }
        if (this.mContactsUnavailableFragment == null) {
            this.mContactsUnavailableFragment = new af();
            this.mContactsUnavailableFragment.f1768a = new ContactsUnavailableFragmentListener();
            getFragmentManager().beginTransaction().replace(2131296602, this.mContactsUnavailableFragment).commitAllowingStateLoss();
        }
        this.mContactsUnavailableFragment.a(this.mProviderStatus);
        if (findViewById != null) {
            findViewById.setVisibility(0);
        }
        if (this.mViewPager != null) {
            this.mViewPager.setVisibility(8);
        }
        if (findViewById2 != null) {
            findViewById2.setVisibility(4);
        }
    }

    public static boolean supportClouldapp(Context context) {
        Intent intent = new Intent("com.vcast.mediamanager.ACTION_CONTACTS", (Uri) null);
        intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }

    private void updateViewConfiguration(boolean z) {
        bh.c c = this.mProviderStatusWatcher.c();
        Log.d(TAG, "updateViewConfiguration: forceUpdate = " + z + " status = " + c.f1810a);
        if (z || this.mProviderStatus == null || c.f1810a != this.mProviderStatus.f1810a) {
            this.mProviderStatus = c;
            View findViewById = findViewById(2131296602);
            if (!this.isEzmode || this.isEzDialer) {
                View findViewById2 = findViewById(d.b.i);
                if (CompatUtils.isMarshmallowCompatible() ? this.mProviderStatus.f1810a == 0 || this.mProviderStatus.f1810a == 2 : this.mProviderStatus.f1810a == 0 || this.mProviderStatus.f1810a == 4) {
                    if (findViewById != null) {
                        findViewById.setVisibility(8);
                    }
                    if (this.mViewPager != null) {
                        this.mViewPager.setVisibility(0);
                    }
                    if (findViewById2 != null) {
                        findViewById2.setVisibility(0);
                    }
                    if (this.mAllFragment != null) {
                        this.mAllFragment.e(true);
                        this.mAllFragment.d(this.mProviderStatus.f1810a);
                        return;
                    }
                    return;
                }
                showUnavailableFragment();
                if (this.mAllFragment != null) {
                    this.mAllFragment.e(false);
                }
                if (this.mContactsUnavailableFragment == null) {
                    this.mContactsUnavailableFragment = new af();
                    this.mContactsUnavailableFragment.f1768a = new ContactsUnavailableFragmentListener();
                    getFragmentManager().beginTransaction().replace(2131296602, this.mContactsUnavailableFragment).commitAllowingStateLoss();
                }
                this.mContactsUnavailableFragment.a(this.mProviderStatus);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                if (this.mViewPager != null) {
                    this.mViewPager.setVisibility(8);
                }
                if (findViewById2 != null) {
                    findViewById2.setVisibility(8);
                    return;
                }
                return;
            }
            View findViewById3 = findViewById(2131296819);
            if (CompatUtils.isMarshmallowCompatible() ? this.mProviderStatus.f1810a == 0 || this.mProviderStatus.f1810a == 2 : this.mProviderStatus.f1810a == 0 || this.mProviderStatus.f1810a == 4) {
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                if (findViewById3 != null) {
                    findViewById3.setVisibility(0);
                }
                if (this.mEzPeopleFragment != null) {
                    this.mEzPeopleFragment.e(true);
                    return;
                }
                return;
            }
            showUnavailableFragment();
            if (this.mEzPeopleFragment != null) {
                this.mEzPeopleFragment.e(false);
            }
            if (this.mContactsUnavailableFragment == null) {
                this.mContactsUnavailableFragment = new af();
                this.mContactsUnavailableFragment.f1768a = new ContactsUnavailableFragmentListener();
                getFragmentManager().beginTransaction().replace(2131296602, this.mContactsUnavailableFragment).commitAllowingStateLoss();
            }
            this.mContactsUnavailableFragment.a(this.mProviderStatus);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
            if (findViewById3 != null) {
                findViewById3.setVisibility(8);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            Log.d(TAG, "In dispatchTouchEvent, point = (" + motionEvent.getRawX() + ", " + motionEvent.getRawY() + ")");
            j a2 = j.a();
            a2.f1478a.set((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void enableScroll(boolean z) {
        if (!z || this.mIsCarMode) {
            this.mViewPager.disableScroll();
        } else {
            this.mViewPager.enableScroll();
        }
    }

    public String getAndClearFilterText() {
        String str = this.mFilterText;
        this.mFilterText = null;
        return str;
    }

    public DefaultContactBrowseListFragment getDefaultContactBrowseListFragment() {
        return this.mAllFragment;
    }

    @Override // com.android.contacts.dialpad.e.g, com.android.contacts.x
    public int getProviderStatus() {
        return this.mProviderStatus != null ? this.mProviderStatus.f1810a : 0;
    }

    @Override // com.android.contacts.activities.DialtactsViewPager.onSwipeLeftListener
    public void hideOptionsMenu() {
        if (this.mViewPager != null) {
            this.mViewPager.getCurrentItem();
        }
        this.mIsHideOptionsMenu = false;
    }

    public boolean isHasPhone() {
        return this.mIsHasPhone;
    }

    public boolean isHighendDevice() {
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem > 1073741824;
    }

    public Boolean isPaused() {
        return this.isPause;
    }

    public boolean isRunningMonkey() {
        boolean z;
        getSystemService("activity");
        if (ActivityManager.isUserAMonkey()) {
            Log.d(TAG, "it was the monkey");
            z = true;
        } else {
            Log.d(TAG, "it was an user");
            z = false;
        }
        return z;
    }

    public void launchStandAloneActivity(Intent intent) {
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        if (action.equals("android.intent.action.ASUS_ENTER_BLOCKED_HISTORY")) {
            Intent intent2 = new Intent();
            intent2.setAction("android.intent.action.ASUS_ENTER_BLOCK_CALL_SMS_LOG");
            if (extras != null) {
                intent2.putExtras(extras);
            }
            ImplicitIntentsUtil.startActivityInApp(this, intent2);
        }
    }

    protected void moveToFront() {
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(Integer.MAX_VALUE);
        for (int i = 0; i < runningTasks.size(); i++) {
            Log.d(TAG, "Application executed : " + runningTasks.get(i).baseActivity.toShortString() + "\t\t ID: " + runningTasks.get(i).id);
            if (runningTasks.get(i).baseActivity.toShortString().indexOf("com.android.contacts.activities.DialtactsActivity") >= 0 || runningTasks.get(i).baseActivity.toShortString().indexOf(PEOPLE_NAME) >= 0) {
                Log.d(TAG, "moveTaskToFront");
                activityManager.moveTaskToFront(runningTasks.get(i).id, 1);
            }
        }
    }

    @Override // android.accounts.OnAccountsUpdateListener
    public void onAccountsUpdated(Account[] accountArr) {
        if (PhoneCapabilityTester.isHighendDevice(getApplicationContext(), 1L)) {
            new UpdateSettingsTableTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else if (mTabPosition != TAB_INDEX_DIALER) {
            new UpdateSettingsTableTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            this.mNeedUpdated = true;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == KDDI_AU_SERVER_SYNC_REQUEST_CODE || i2 == -1) {
            switch (i) {
                case 1:
                    AccountFilterUtil.handleAccountFilterResult(this.mContactListFilterController, i2, intent);
                    return;
                case 2:
                case 3:
                case 7:
                    if (i == 2 && this.mAllFragment != null && this.mAllFragment.o && this.mSearchView != null) {
                        this.mSearchView.setQuery(null, false);
                    }
                    if (i2 == -1 && PhoneCapabilityTester.isUsingTwoPanes(this)) {
                        ((n) this.mAllFragment).f1862a = true;
                        this.mAllFragment.c(intent.getData());
                        return;
                    }
                    return;
                case 4:
                case 5:
                    if (i2 == -1 && PhoneCapabilityTester.isUsingTwoPanes(this)) {
                        this.mGroupsFragment.b(intent.getData());
                        return;
                    }
                    return;
                case 20:
                    FavoriteDataUtil.addFavoriteData(getApplicationContext(), intent);
                    return;
                case 1001:
                case REQUEST_SET_COVER_GALLERY /* 1002 */:
                    CoverUtils.cropImageIntent(this, intent, i);
                    return;
                case REQUEST_CROP_COVER /* 1003 */:
                    if (intent != null) {
                        DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mAllFragment;
                        String string = getSharedPreferences("ContactUri", 0).getString(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, null);
                        if (string != null) {
                            defaultContactBrowseListFragment.F = Uri.parse(string);
                        }
                        boolean startsWith = string.startsWith(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, "profile").toString());
                        if (defaultContactBrowseListFragment.F != null) {
                            CoverUtils.updateContactCover(this, defaultContactBrowseListFragment.F, startsWith, intent, 4);
                        }
                        String string2 = getSharedPreferences("ContactUri", 0).getString(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, null);
                        if (string2 != null) {
                            Uri parse = Uri.parse(string2);
                            ((n) this.mAllFragment).f1862a = true;
                            this.mAllFragment.c(parse);
                            return;
                        }
                        return;
                    }
                    return;
                case KDDI_AU_SERVER_SYNC_REQUEST_CODE /* 1004 */:
                    switch (i2) {
                        case p.POSITION_UNCHANGED /* -1 */:
                            Log.d("KDDI", "RESULT_OK !");
                            return;
                        case 0:
                            Log.d("KDDI", "RESULT_CANCELED !");
                            com.android.contacts.g.a.a(2131755719).show(getFragmentManager(), "KDDI_FRIENDS_NOTE_NOTE_LAUNCH");
                            return;
                        default:
                            Log.d("KDDI", "resultCode: " + i2);
                            return;
                    }
                default:
                    return;
            }
        }
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        boolean z = true;
        if (!this.isEzmode) {
            int currentItem = this.mViewPager != null ? this.mViewPager.getCurrentItem() : -1;
            if (fragment instanceof e) {
                this.mDialpadFragment = (e) fragment;
                e eVar = this.mDialpadFragment;
                e.f fVar = this.mDialpadListener;
                AdditionalButtonFragment additionalButtonFragment = (AdditionalButtonFragment) eVar.getFragmentManager().findFragmentById(2131296320);
                if (additionalButtonFragment != null) {
                    additionalButtonFragment.t = fVar;
                }
                if (currentItem == TAB_INDEX_DIALER) {
                    this.mDialpadFragment.a(true);
                }
            } else if (fragment instanceof DefaultContactBrowseListFragment) {
                this.mAllFragment = (DefaultContactBrowseListFragment) fragment;
                this.mAllFragment.a(new ContactBrowserActionListener());
                boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(this);
                this.mAllFragment.c(isUsingTwoPanes ? 1 : 2);
                this.mAllFragment.r = isUsingTwoPanes;
                this.mAllFragment.n = !isUsingTwoPanes;
                if (this.mIsRecreatedInstance) {
                    z = false;
                }
                configureContactListFragmentForRequest(z);
            } else if (fragment instanceof GroupBrowseListFragment) {
                this.mGroupsFragment = (GroupBrowseListFragment) fragment;
                this.mGroupsFragment.d = new GroupBrowserActionListener();
                GroupBrowseListFragment groupBrowseListFragment = this.mGroupsFragment;
                groupBrowseListFragment.f1311b = PhoneCapabilityTester.isUsingTwoPanes(this);
                if (groupBrowseListFragment.f1310a != null) {
                    groupBrowseListFragment.f1310a.f1378b = groupBrowseListFragment.f1311b;
                }
            } else if (fragment instanceof af) {
                this.mContactsUnavailableFragment = (af) fragment;
                this.mContactsUnavailableFragment.f1768a = new ContactsUnavailableFragmentListener();
            }
        } else if (fragment instanceof com.android.contacts.ezmode.d) {
            this.mEzDialerFragment = (com.android.contacts.ezmode.d) fragment;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z;
        boolean z2;
        if (mInstanceCount > 1) {
            Log.d(TAG, "onBackPressed: " + mInstanceCount);
        } else if (!this.isEzmode || !this.isEzDialer || !this.mEzDialerFragment.f1256b) {
            if (!PhoneCapabilityTester.isHighendDevice(this, 1L) || !PhoneCapabilityTester.isPhone(this)) {
                finish();
            } else {
                List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) getSystemService("activity")).getRunningTasks(2);
                if (runningTasks != null && runningTasks.size() >= 2) {
                    int i = 0;
                    boolean z3 = false;
                    boolean z4 = false;
                    while (true) {
                        if (i >= 2) {
                            z2 = z4;
                            z = z3;
                            break;
                        }
                        ComponentName componentName = runningTasks.get(i).topActivity;
                        if (i == 0 && componentName.getPackageName().equals("com.asus.contacts")) {
                            z4 = true;
                        } else if (i == 1 && componentName.getPackageName().equals("com.asus.launcher")) {
                            z3 = true;
                        }
                        if (z4) {
                            z = z3;
                            z2 = z4;
                            if (z3) {
                                break;
                            }
                        }
                        i++;
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                if ((!z || !z2) || !isTaskRoot()) {
                    finish();
                } else {
                    moveTaskToBack(false);
                }
            }
            com.android.contacts.dialpad.b.e = false;
        } else {
            com.android.contacts.ezmode.d dVar = this.mEzDialerFragment;
            Log.d(com.android.contacts.ezmode.d.f1255a, "hideDialPad");
            if (dVar.f1256b && dVar.c != null) {
                FragmentTransaction beginTransaction = dVar.getChildFragmentManager().beginTransaction();
                beginTransaction.show(dVar.d);
                beginTransaction.hide(dVar.e);
                beginTransaction.hide(dVar.c);
                beginTransaction.commit();
                dVar.d.i();
                dVar.f1256b = false;
                dVar.getActivity().getActionBar().setTitle(2131756047);
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(2, dVar.getActivity(), "Ez_CallLog", true);
            }
        }
    }

    public void onChangeCallLogPosition(String str, int i) {
        Log.d(TAG, "onChangeCallLogPosition");
        if (!(this.mDialpadFragment == null || this.mDialpadFragment.j == null)) {
            ResultListFragment resultListFragment = this.mDialpadFragment.j;
            String a2 = ResultListFragment.a(str);
            int count = resultListFragment.q.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                Cursor cursor = (Cursor) resultListFragment.q.getItem(i2);
                if (cursor != null && a2.equals(cursor.getString(1)) && i == cursor.getInt(l.h)) {
                    ResultListFragment.k = i2;
                }
            }
            s c = resultListFragment.q.c(ResultListFragment.k);
            if (c != null) {
                resultListFragment.a(c.a(resultListFragment.getActivity()));
                ((AdditionalButtonFragment) resultListFragment.getFragmentManager().findFragmentById(2131296320)).b();
                resultListFragment.q();
            }
            int i3 = ResultListFragment.k;
        }
    }

    @Override // com.android.contacts.dialpad.e.b
    public void onChangeCallLogPositionFromSmartDial(String str, int i, String str2, long[] jArr) {
        Log.d(TAG, "onChangeCallLogPosition");
        if (this.mDialpadFragment != null && this.mDialpadFragment.j != null) {
            ResultListFragment resultListFragment = this.mDialpadFragment.j;
            Intent intent = new Intent(resultListFragment.getActivity(), CallDetailActivity.class);
            intent.putExtra("EXTRA_CALL_LOG_IDS", jArr);
            intent.putExtra("CALL_LOG_NAME", str2);
            intent.putExtra("CALL_LOG_NUMBER", str);
            intent.putExtra("FROM_WHICH_TAB", "FROM_DIALPAD_TAB");
            resultListFragment.a(intent);
            ((AdditionalButtonFragment) resultListFragment.getFragmentManager().findFragmentById(2131296320)).b();
            boolean z = resultListFragment.getResources().getConfiguration().orientation == 2;
            if (!(resultListFragment.G == null || resultListFragment.G.g == null || !z)) {
                if (resultListFragment.isAdded()) {
                    resultListFragment.n.setItemChecked(ResultListFragment.k, true);
                }
                ((CallDetailFragment) resultListFragment.getFragmentManager().findFragmentById(2131296685)).b();
            }
            int i2 = ResultListFragment.k;
        }
    }

    @Override // com.android.contacts.e.b.a
    public void onClickCTACheckerNegativeButton() {
        Log.d(TAG, "onClickCTACheckerNegativeButton");
        com.android.contacts.e.a.f1081a = false;
        finish();
    }

    @Override // com.android.contacts.e.b.a
    public void onClickCTACheckerPositiveButton(boolean z) {
        Log.d(TAG, "onClickCTACheckerPositiveButton isChecked: " + z);
        com.android.contacts.e.a.f1081a = true;
        if (z) {
            PreferenceManager.getDefaultSharedPreferences(this).edit().putBoolean("cta_checker_AsusContacts", true).apply();
        }
        if (!(this.mDialpadFragment == null || this.mDialpadFragment.j == null)) {
            ResultListFragment resultListFragment = this.mDialpadFragment.j;
            if (resultListFragment.q != null) {
                resultListFragment.q.b();
                resultListFragment.q.notifyDataSetChanged();
            }
        }
        showNetworkSettingDialog();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.isEzmode) {
        }
    }

    @Override // com.android.contacts.dialpad.e.c
    public void onContactDetailSelected(Uri uri) {
        if (this.mAllFragment != null) {
            ((n) this.mAllFragment).f1862a = true;
            this.mAllFragment.c(uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x05f4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0634  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x064f  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x066b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0781  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0816  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0859  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0862  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x08b6  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0503  */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 2445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.MainDialtactsActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        Dialog onCreateDialog;
        if (i != 100 || this.mDialpadFragment == null || this.mDialpadFragment.h == null || this.mDialpadFragment.h.y == null) {
            onCreateDialog = super.onCreateDialog(i);
        } else {
            final i iVar = this.mDialpadFragment.h.y;
            String string = getResources().getString(2131755574);
            AlertDialog.Builder builder = new AlertDialog.Builder(iVar.f1068b);
            builder.setTitle(string);
            builder.setAdapter(iVar.f1067a, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.i.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    a aVar = (a) iVar.f1067a.getItem(i2);
                    if (iVar.d != null) {
                        iVar.d.a(aVar.f1073b);
                    }
                }
            });
            builder.setNegativeButton(iVar.f1068b.getString(2131755011), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.i.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    iVar.f1068b.dismissDialog(iVar.c);
                }
            });
            iVar.e = builder.create();
            iVar.e.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.dialpad.i.3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    if (iVar.f1067a != null) {
                        iVar.f1067a.a();
                    }
                }
            });
            onCreateDialog = iVar.e;
        }
        return onCreateDialog;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        boolean z;
        if (this.isEzmode) {
            getMenuInflater().inflate(2131492891, menu);
            menu.findItem(2131296817);
            z = super.onCreateOptionsMenu(menu);
        } else {
            getMenuInflater().inflate(2131492886, menu);
            z = true;
        }
        return z;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        mInstanceCount--;
        getContentResolver().unregisterContentObserver(this.mEzmodeObserver);
        if (this.isEzmode) {
            super.onDestroy();
            this.mProviderStatusWatcher.b(this);
            com.android.contacts.a.b.a().c(this);
            return;
        }
        this.mProviderStatusWatcher.b(this);
        super.onDestroy();
        if (this.mContactListFilterController != null) {
            this.mContactListFilterController.b(this.mContactListFilterListener);
        }
        if (this.mSimPrefs != null) {
            this.mSimPrefs.unregisterOnSharedPreferenceChangeListener(this);
        }
        if (this.mDisplayPhoneOnlyPrefs != null) {
            this.mDisplayPhoneOnlyPrefs.unregisterOnSharedPreferenceChangeListener(this);
        }
        if (this.mThemeChangeReceiver != null) {
            Log.d(TAG, "unregister mThemeChangeReceiver");
            unregisterReceiver(this.mThemeChangeReceiver);
        }
        this.mScreenPageLimit = 1;
        if (getIntent() != null) {
            if (getIntent().getBooleanExtra(ADD_CALL_MODE_KEY, false)) {
                Log.d(TAG, "onDestroy in add call mode");
                getIntent().setAction("android.intent.action.DIAL");
                getIntent().putExtra(ADD_CALL_MODE_KEY, true);
            } else {
                Log.d(TAG, "onDestroy not in add call mode");
                if (this.mIsUsingTwoPanel) {
                    getIntent().setAction("onDestroy");
                }
            }
        }
        com.android.contacts.a.b.a().c(this);
        if (getApplicationContext() != null) {
            AccountManager.get(getApplicationContext()).removeOnAccountsUpdatedListener(this);
        }
        AsusRedPointNotificationDualPanelHelper instance = AsusRedPointNotificationDualPanelHelper.getInstance();
        instance.clearMenuItem(1);
        instance.clearMenuItem(0);
        k.a(getApplicationContext()).e();
        MemoryUtils.fixInputMethodManagerLeak(this);
        AsusContactListFilterWindow.a();
        getLoaderManager().destroyLoader(1000);
        ContactSaveService.a();
        com.android.contacts.i.a.a();
        com.android.contacts.quickcontact.h.a(this).f2110b.clear();
        com.android.contacts.quickcontact.i.a(this).f2115b.clear();
        ac.a();
        com.android.contacts.asuscallerid.d a2 = com.android.contacts.asuscallerid.d.a();
        a2.f601b.clear();
        a2.c.clear();
        as.a();
    }

    @Override // com.android.contacts.list.AsusContactListFilterWindow.h
    public void onForceReloadData() {
        if (this.mAllFragment != null) {
            this.mAllFragment.i_();
            DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mAllFragment;
            if (defaultContactBrowseListFragment.k != null) {
                defaultContactBrowseListFragment.k.c();
            }
            Log.d(TAG, "mAllFragment force reloadData!");
        }
    }

    @Override // com.android.contacts.dialpad.e.AbstractC0034e
    public void onHandwriteChange(boolean z) {
        if (!this.isEzmode) {
            this.mIsHandwriting = z;
            this.mIsScrollable = !z;
            enableScroll(this.mIsScrollable);
        }
    }

    public void onHintOkClick() {
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 82 && !PhoneCapabilityTester.isUsingTwoPanes(this)) {
            int currentItem = this.mViewPager != null ? this.mViewPager.getCurrentItem() : -1;
            if (currentItem == TAB_INDEX_ALLCONTACTS && this.mAllFragment != null) {
                this.mAllFragment.a((View) null);
            } else if (currentItem == TAB_INDEX_GROUP && this.mGroupsFragment != null) {
                this.mGroupsFragment.a((View) null);
            } else if (currentItem == TAB_INDEX_DIALER && this.mDialpadFragment != null) {
                e eVar = this.mDialpadFragment;
                if (eVar.i != null && !eVar.i.isHidden()) {
                    TwelveKeyDialerFragment twelveKeyDialerFragment = eVar.i;
                    View findViewById = twelveKeyDialerFragment.f977a != null ? twelveKeyDialerFragment.f977a.findViewById(2131297143) : null;
                    if (findViewById != null) {
                        eVar.a(findViewById);
                    }
                } else if (eVar.j != null) {
                    eVar.j.a((View) null);
                }
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:185:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0337  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNewIntent(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 1371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.MainDialtactsActivity.onNewIntent(android.content.Intent):void");
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.isEzmode) {
            super.onPause();
            this.mProviderStatusWatcher.b();
            return;
        }
        if (this.mIsFirstlaunch) {
            setViewpagerScreenPageLimit();
        }
        this.mProviderStatusWatcher.b();
        super.onPause();
        this.isPause = true;
        this.mPrefs.edit().putInt(PREF_LAST_MANUALLY_SELECTED_TAB, this.mLastManuallySelectedFragment).apply();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        if (this.isEzmode) {
            this.settingMenuItem = menu.findItem(2131296817);
            if (this.settingMenuItem != null) {
                this.settingMenuItem.setOnMenuItemClickListener(this.mSettingMenuItemClickListener);
                if (this.isEzDialer) {
                    this.settingMenuItem.setVisible(false);
                } else {
                    this.settingMenuItem.setVisible(true);
                }
            }
            z11 = super.onPrepareOptionsMenu(menu);
        } else {
            MenuItem findItem = menu.findItem(2131297250);
            MenuItem findItem2 = menu.findItem(2131296297);
            if (findItem2 != null) {
                com.android.contacts.skin.a.a(this, findItem2);
            }
            MenuItem findItem3 = menu.findItem(2131296314);
            MenuItem findItem4 = menu.findItem(2131296275);
            MenuItem findItem5 = menu.findItem(2131297518);
            MenuItem findItem6 = menu.findItem(2131297032);
            if (findItem6 != null) {
                com.android.contacts.skin.a.a(this, findItem6);
            }
            MenuItem findItem7 = menu.findItem(2131297046);
            MenuItem findItem8 = menu.findItem(2131297059);
            MenuItem findItem9 = menu.findItem(2131297057);
            MenuItem findItem10 = menu.findItem(2131297076);
            MenuItem findItem11 = menu.findItem(2131297054);
            MenuItem findItem12 = menu.findItem(2131297060);
            MenuItem findItem13 = menu.findItem(2131297083);
            MenuItem findItem14 = menu.findItem(2131297084);
            if (findItem14 != null) {
                findItem14.setTitle(ZenUiFamily.getZenUiFamilyTitle());
            }
            ActionBar.Tab selectedTab = getActionBar().getSelectedTab();
            if (this.mIsHideOptionsMenu) {
                findItem.setVisible(false);
                findItem2.setVisible(false);
                findItem3.setVisible(false);
                findItem4.setVisible(false);
                findItem5.setVisible(false);
                findItem7.setVisible(false);
                findItem6.setVisible(false);
                findItem8.setVisible(false);
                if (findItem9 != null) {
                    findItem9.setVisible(false);
                }
                findItem14.setVisible(false);
            } else {
                if (this.mInSearchUi) {
                    findItem.setVisible(false);
                    if (ViewConfiguration.get(this).hasPermanentMenuKey()) {
                        findItem2.setVisible(true);
                        findItem2.setOnMenuItemClickListener(this.mAddContactItemClickListener);
                        findItem7.setVisible(true);
                        findItem8.setVisible(true);
                        if (findItem9 != null) {
                            findItem9.setVisible(PhoneCapabilityTester.isKDDISku());
                        }
                        findItem14.setVisible(true);
                    } else {
                        findItem2.setVisible(false);
                        findItem7.setVisible(false);
                        findItem8.setVisible(false);
                        if (findItem9 != null) {
                            findItem9.setVisible(false);
                        }
                        findItem14.setVisible(false);
                    }
                    findItem3.setVisible(false);
                    findItem4.setVisible(false);
                    findItem5.setVisible(false);
                    findItem6.setVisible(false);
                    if (!(!PhoneCapabilityTester.isUsingTwoPanes(this) || this.mGroupsFragment == null || this.mGroupsFragment.f == null)) {
                        this.mGroupsFragment.f.a(false);
                    }
                    if (!(!PhoneCapabilityTester.isUsingTwoPanes(this) || this.mAllFragment == null || this.mAllFragment.D == null)) {
                        this.mAllFragment.D.showMenu(false);
                    }
                    if (!(this.mDialpadFragment == null || this.mDialpadFragment.j == null)) {
                        this.mDialpadFragment.j.d(false);
                    }
                } else {
                    boolean z12 = true;
                    boolean z13 = true;
                    boolean z14 = true;
                    boolean z15 = true;
                    boolean z16 = getResources().getConfiguration().orientation == 2;
                    int i = 0;
                    if (selectedTab != null) {
                        i = selectedTab.getPosition() * 2;
                    }
                    if (selectedTab == null || i != TAB_INDEX_TOOLPANEL) {
                        if (selectedTab == null || i != TAB_INDEX_DIALER) {
                            findItem.setVisible(false);
                            findItem.setOnMenuItemClickListener(this.mSearchMenuItemClickListener);
                            if (!(this.mDialpadFragment == null || this.mDialpadFragment.j == null)) {
                                this.mDialpadFragment.j.d(false);
                            }
                            z = true;
                            z14 = true;
                            z13 = true;
                            z2 = true;
                            if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
                                z = true;
                                z14 = true;
                                z13 = true;
                                z2 = true;
                                if (z16) {
                                    z = true;
                                    z14 = true;
                                    z13 = true;
                                    z2 = true;
                                    if (this.mDialpadFragment != null) {
                                        z = true;
                                        z14 = true;
                                        z13 = true;
                                        z2 = true;
                                        if (this.mDialpadFragment.g != null) {
                                            this.mDialpadFragment.g.a(false);
                                            z = true;
                                            z14 = true;
                                            z13 = true;
                                            z2 = true;
                                        }
                                    }
                                }
                            }
                        } else {
                            findItem.setVisible(false);
                            if (!(this.mDialpadFragment == null || this.mDialpadFragment.j == null)) {
                                this.mDialpadFragment.j.d(true);
                            }
                            if (PhoneCapabilityTester.isUsingTwoPanes(this) && z16 && this.mDialpadFragment != null && this.mDialpadFragment.g != null) {
                                this.mDialpadFragment.g.a(true);
                            }
                            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                                z12 = false;
                                z14 = false;
                                z13 = false;
                                z15 = false;
                            }
                            z = z15;
                            z2 = z12;
                            if (PhoneCapabilityTester.isVerizon()) {
                                z13 = false;
                                z14 = false;
                                z2 = z12;
                                z = z15;
                            }
                        }
                        boolean z17 = false;
                        boolean z18 = false;
                        if (selectedTab == null || i != TAB_INDEX_ALLCONTACTS) {
                            findItem2.setVisible(false);
                            if (!(!PhoneCapabilityTester.isUsingTwoPanes(this) || this.mAllFragment == null || this.mAllFragment.D == null)) {
                                this.mAllFragment.D.showMenu(false);
                            }
                            findItem7.setVisible(false);
                            findItem8.setVisible(false);
                            if (findItem9 != null) {
                                findItem9.setVisible(false);
                            }
                            findItem14.setVisible(false);
                            z3 = z14;
                            z4 = z13;
                        } else if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                            findItem2.setVisible(false);
                            findItem7.setVisible(false);
                            findItem8.setVisible(false);
                            if (findItem9 != null) {
                                findItem9.setVisible(false);
                            }
                            findItem4.setVisible(false);
                            findItem5.setVisible(false);
                            z17 = false;
                            z18 = false;
                            z2 = false;
                            z3 = false;
                            z4 = false;
                            z = false;
                            findItem14.setVisible(false);
                        } else {
                            findItem2.setVisible(true);
                            findItem2.setOnMenuItemClickListener(this.mAddContactItemClickListener);
                            if (!(!PhoneCapabilityTester.isUsingTwoPanes(this) || this.mAllFragment == null || this.mAllFragment.D == null)) {
                                this.mAllFragment.D.showMenu(true);
                            }
                            findItem7.setVisible(true);
                            findItem8.setVisible(true);
                            if (findItem9 != null) {
                                findItem9.setVisible(PhoneCapabilityTester.isKDDISku());
                            }
                            z17 = true;
                            z18 = true;
                            findItem14.setVisible(true);
                            z3 = z14;
                            z4 = z13;
                        }
                        if (selectedTab == null || i != TAB_INDEX_GROUP) {
                            findItem6.setVisible(false);
                            z5 = z;
                            z6 = z3;
                            z7 = z4;
                            z8 = z2;
                            z9 = z18;
                            z10 = z17;
                            if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
                                z5 = z;
                                z6 = z3;
                                z7 = z4;
                                z8 = z2;
                                z9 = z18;
                                z10 = z17;
                                if (this.mGroupsFragment != null) {
                                    z5 = z;
                                    z6 = z3;
                                    z7 = z4;
                                    z8 = z2;
                                    z9 = z18;
                                    z10 = z17;
                                    if (this.mGroupsFragment.f != null) {
                                        this.mGroupsFragment.f.a(false);
                                        z5 = z;
                                        z6 = z3;
                                        z7 = z4;
                                        z8 = z2;
                                        z9 = z18;
                                        z10 = z17;
                                    }
                                }
                            }
                        } else if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                            z10 = false;
                            z9 = false;
                            findItem6.setVisible(false);
                            z8 = false;
                            z6 = false;
                            z7 = false;
                            z5 = false;
                        } else {
                            if (PhoneCapabilityTester.IsAsusDevice() || q.b(this)) {
                                findItem6.setVisible(true);
                                findItem6.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.MainDialtactsActivity.18
                                    @Override // android.view.MenuItem.OnMenuItemClickListener
                                    public boolean onMenuItemClick(MenuItem menuItem) {
                                        com.android.contacts.a.b.a();
                                        com.android.contacts.a.b.a(MainDialtactsActivity.this, "Groups", "Add_Group", (String) null);
                                        Intent intent = new Intent(MainDialtactsActivity.this, AsusGroupEditorActivity.class);
                                        intent.setAction("android.intent.action.INSERT");
                                        MainDialtactsActivity.this.startActivityForResult(intent, 4);
                                        return false;
                                    }
                                });
                            } else {
                                findItem6.setVisible(false);
                            }
                            z10 = false;
                            z9 = false;
                            if (!(this.mGroupsFragment == null || this.mGroupsFragment.f == null)) {
                                this.mGroupsFragment.f.a(true);
                            }
                            z8 = false;
                            z6 = false;
                            z7 = false;
                            z5 = false;
                        }
                        if (z8) {
                            findItem10.setVisible(true);
                            findItem10.setOnMenuItemClickListener(this.mAsusContactSettingMenuItemClickListener);
                        } else {
                            findItem10.setVisible(false);
                            findItem10.setOnMenuItemClickListener(null);
                        }
                        if (!z6 || PhoneCapabilityTester.isVerizon()) {
                            findItem12.setVisible(false);
                            findItem12.setOnMenuItemClickListener(null);
                        } else {
                            findItem12.setVisible(true);
                            findItem12.setOnMenuItemClickListener(this.mMoreMenuItemClickListener);
                        }
                        if (!z7 || PhoneCapabilityTester.isCNSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCUCCSku() || PhoneCapabilityTester.isVerizon()) {
                            findItem11.setVisible(false);
                            findItem11.setOnMenuItemClickListener(null);
                        } else {
                            findItem11.setVisible(true);
                            findItem11.setOnMenuItemClickListener(this.mEnCourageUsMenuItemClickListener);
                        }
                        if (!supportClouldapp(this) || !z9) {
                            findItem5.setVisible(false);
                        } else {
                            findItem5.setVisible(true);
                            findItem5.setOnMenuItemClickListener(this.mCloudClickListener);
                        }
                        if (!z5 || !checkNeedShowUpdateVesion(this)) {
                            findItem13.setVisible(false);
                            findItem13.setOnMenuItemClickListener(null);
                        } else {
                            findItem13.setVisible(true);
                            findItem13.setOnMenuItemClickListener(this.mUpdateVersionMenuItemClickListener);
                        }
                        if (z10) {
                            findItem4.setVisible(true);
                            findItem4.setOnMenuItemClickListener(this.mAccountOptionMenuItemClickListener);
                        } else {
                            findItem4.setVisible(false);
                        }
                    } else {
                        menu.clear();
                        z11 = false;
                    }
                }
                if (checkNeedDisableZenUiUpdate(this)) {
                    findItem14.setVisible(false);
                }
            }
            findItem7.setOnMenuItemClickListener(this.mDeleteContactOptionMenuItemClickListener);
            findItem8.setOnMenuItemClickListener(this.mManageContactOptionMenuItemClickListener);
            if (findItem9 != null) {
                findItem9.setOnMenuItemClickListener(this.mKddiSyncOptionMenuItemClickListener);
            }
            findItem14.setOnMenuItemClickListener(this.mZenuiUpdateMenuItemClickListener);
            AsusRedPointNotificationDualPanelHelper instance = AsusRedPointNotificationDualPanelHelper.getInstance();
            instance.clearMenuItem(0);
            instance.addMenuItem(0, 14, menu.findItem(2131297083));
            instance.addMenuItem(0, 2, menu.findItem(2131297076));
            instance.addMenuItem(0, 11, menu.findItem(2131297060));
            instance.addMenuItem(0, 10, menu.findItem(2131297054));
            instance.clearMenuItem(1);
            instance.addMenuItem(1, 14, menu.findItem(2131297083));
            instance.addMenuItem(1, menu.findItem(2131297057));
            instance.addMenuItem(1, menu.findItem(2131297046));
            instance.addMenuItem(1, menu.findItem(2131297059));
            instance.addMenuItem(1, menu.findItem(2131296275));
            instance.addMenuItem(1, 2, menu.findItem(2131297076));
            instance.addMenuItem(1, 15, menu.findItem(2131297084));
            instance.addMenuItem(1, 8, menu.findItem(2131297060));
            instance.addMenuItem(1, 10, menu.findItem(2131297054));
            z11 = true;
        }
        return z11;
    }

    @Override // com.android.contacts.list.bh.b
    public void onProviderStatusChange() {
        updateViewConfiguration(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (com.asus.contacts.fonts.a.b(this, "key_app_need_restart")) {
            com.asus.contacts.fonts.l.a().show(getFragmentManager(), "restart_application");
        }
        if (this.isSystemEzmode) {
            boolean ezmodeOn = ContactsPreferences.getEzmodeOn(this);
            Log.d(TAG, "isContactsEzmodeTemp:" + ezmodeOn + " isContactsEzmode:" + this.isEzmode);
            if (ezmodeOn != this.isEzmode) {
                if (!ezmodeOn) {
                    Log.d(TAG, "change Ez mode setting startActivity() - EZ mode -> Normal");
                    finish();
                    Intent intent = new Intent(this, MainDialtactsActivity.class);
                    intent.setAction(ACTION_ENTER_ALLCONTACTS);
                    ImplicitIntentsUtil.startActivityInApp(this, intent);
                    return;
                }
                Log.d(TAG, "change Ez mode setting recreate() - Normal mode -> EZ");
                recreate();
                return;
            }
        }
        if (this.isEzmode) {
            View findViewById = findViewById(2131296819);
            View findViewById2 = findViewById(2131296810);
            if (this.isEzDialer) {
                if (this.mEzDialerFragment == null) {
                    this.mEzDialerFragment = new com.android.contacts.ezmode.d();
                    com.android.contacts.dialpad.h.a();
                    com.android.contacts.dialpad.h.c();
                    getFragmentManager().beginTransaction().replace(2131296812, this.mEzDialerFragment, "mEzDialerFragment").commitAllowingStateLoss();
                }
                findViewById.setVisibility(8);
                findViewById2.setVisibility(0);
                if (this.mEzDialerFragment.f1256b) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(2, (Activity) this, "Ez_Dialer", true);
                    getActionBar().setTitle(2131755638);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(2, (Activity) this, "Ez_CallLog", true);
                    getActionBar().setTitle(2131756047);
                }
                if (this.settingMenuItem != null) {
                    this.settingMenuItem.setVisible(false);
                }
            } else {
                if (this.mEzPeopleFragment == null) {
                    this.mEzPeopleFragment = new f();
                    getFragmentManager().beginTransaction().replace(2131296820, this.mEzPeopleFragment).commitAllowingStateLoss();
                }
                findViewById.setVisibility(0);
                findViewById2.setVisibility(8);
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(2, (Activity) this, "Ez_AllContacts", true);
                if (this.settingMenuItem != null) {
                    this.settingMenuItem.setVisible(true);
                }
            }
            this.mProviderStatusWatcher.a();
            updateViewConfiguration(true);
            return;
        }
        Fragment findFragmentByTag = getFragmentManager().findFragmentByTag("mEzDialerFragment");
        if (findFragmentByTag != null) {
            getFragmentManager().beginTransaction().remove(findFragmentByTag).commitAllowingStateLoss();
        }
        this.isPause = false;
        this.mProviderStatusWatcher.a();
        updateViewConfiguration(true);
        PhoneCapabilityTester.isPhone(this);
        this.mIsFirstlaunch = false;
        if (getWindow() != null && com.android.contacts.skin.a.b()) {
            getWindow().setBackgroundDrawable(getResources().getDrawable(2131165221));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        try {
            super.onSaveInstanceState(bundle);
        } catch (Exception e) {
            Log.w(TAG, e.toString());
        }
        if (!this.isEzmode) {
            if (this.mAllFragment == null || !this.mAllFragment.o) {
                bundle.putString("contact_search_text", null);
            } else {
                bundle.putString("contact_search_text", this.mQueryString);
            }
            bundle.putBoolean("showVipOnly", this.isNeedShowVipIcon);
        }
    }

    @Override // com.android.contacts.x
    public void onSearchInit(View view) {
        this.mSearchView = (SearchView) view;
        this.mSearchView.setQueryHint(getResources().getString(2131755688));
        this.mSearchView.setOnQueryTextListener(this.mAsusSearchQueryTextListener);
        if (this.mSearchView != null) {
            try {
                this.mSearchView.setQuery(this.mQueryString, false);
            } catch (RejectedExecutionException e) {
                Log.d(TAG, "fail to init search due to:" + e.toString());
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Log.d(TAG, "SharedPreferences: " + str);
        if (str.equals("asushadIccCard") || str.equals(ContactsPreferences.PREF_DISPLAY_ONLY_PHONES) || str.equals("asushadIccCard1") || str.equals("asushadIccCard2") || str.equals("asusIccCardLoaded") || str.equals("asusIccCardLoaded1") || str.equals("asusIccCardLoaded2")) {
            if (this.mAllFragment != null) {
                this.mAllFragment.i_();
            }
            if (this.isEzmode && this.mEzPeopleFragment != null) {
                this.mEzPeopleFragment.i_();
            }
        }
        if (!str.equals("asushadIccCard1") && !str.equals("asushadIccCard2") && !str.equals("asusIsIccCardFlyMode1")) {
            str.equals("asusIsIccCardFlyMode2");
        }
        if (str.equals(PREF_ONE_HAND_MODE_ON) && this.mDialpadFragment != null) {
            e eVar = this.mDialpadFragment;
            boolean z = this.mPrefs.getBoolean(PREF_ONE_HAND_MODE_ON, false);
            if (z) {
                if (!eVar.p.getBoolean("onehand_left", false)) {
                    eVar.d.setVisibility(0);
                    eVar.e.setVisibility(8);
                } else {
                    eVar.d.setVisibility(8);
                    eVar.e.setVisibility(0);
                }
                eVar.c.setVisibility(0);
                eVar.i.g(z);
                eVar.h.d(z);
                eVar.f1037b.setBackground(eVar.getResources().getDrawable(2131165447));
                eVar.f1037b.getLayoutParams().height = (int) e.a(eVar.getActivity(), 442.0f);
                eVar.f1037b.requestLayout();
                return;
            }
            eVar.d.setVisibility(8);
            eVar.e.setVisibility(8);
            eVar.c.setVisibility(8);
            eVar.i.g(z);
            eVar.h.d(z);
            eVar.f1037b.setBackground(null);
            eVar.f1037b.getLayoutParams().height = (int) e.a(eVar.getActivity(), 960.0f);
            eVar.f1037b.requestLayout();
        }
    }

    @Override // com.android.contacts.list.AsusContactListFilterWindow.h
    public void onSingleContactFilterClick() {
        if (((n) this.mAllFragment).c.f1712a == -6) {
            ContactListFilter a2 = ContactListFilter.a(-3);
            this.mAllFragment.a(a2, false);
            r.a(this).a(a2);
        }
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        boolean z = true;
        g.a((Activity) this);
        if (this.isEzmode) {
            super.onStart();
            return;
        }
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        if (telephonyManager != null) {
            telephonyManager.listen(this.mPhoneStateListener, 1);
            telephonyManager.listen(this.mPhoneStateListener, 32);
            Log.d(TAG, "Register phoneStateListener");
        }
        this.mContactListFilterController.b();
        AsusContactListFilterWindow asusContactListFilterWindow = new AsusContactListFilterWindow();
        AsusContactListFilterWindow.a(this);
        if (AsusContactListFilterWindow.c()) {
            getLoaderManager().initLoader(1000, null, asusContactListFilterWindow.o);
        }
        if (this.mAllFragment != null) {
            this.mAllFragment.j = asusContactListFilterWindow;
        }
        super.onStart();
        if (this.mAllFragment != null) {
            boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(this);
            this.mAllFragment.a(this.mContactListFilterController.a());
            this.mAllFragment.n = !isUsingTwoPanes;
            this.mAllFragment.r = isUsingTwoPanes;
            this.mAllFragment.c(isUsingTwoPanes ? 1 : 2);
        }
        if (!this.mFragmentInitialized) {
            this.mFragmentInitialized = true;
            if (this.mIsRecreatedInstance) {
                z = false;
            }
            configureContactListFragmentForRequest(z);
        }
        this.mRestorePrefs = getSharedPreferences(com.android.contacts.backupandrestore.a.f617a, 0);
        if (this.mRestorePrefs.getString(com.android.contacts.backupandrestore.a.f617a, BuildConfig.FLAVOR).equals("1")) {
            new com.android.contacts.backupandrestore.b().show(getFragmentManager(), BuildConfig.FLAVOR);
        }
        if (!com.asus.a.a.b()) {
            if (com.asus.a.c.p(this)) {
                this.mIsNeedCallguardTutorial = com.asus.a.c.a((Context) this);
                this.mPrefs.edit().putBoolean("pref_is_need_callguard_tutorial", this.mIsNeedCallguardTutorial).apply();
                Log.d(TAG, "show tutoiral:" + this.mIsNeedCallguardTutorial);
            } else if (!com.asus.contacts.a.a()) {
                com.asus.a.c.f(getApplicationContext());
            }
        }
        this.mProviderStatusWatcher.a((bh.b) this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (!this.isEzmode) {
            if (AsusContactListFilterWindow.c()) {
                getLoaderManager().destroyLoader(1000);
                if (this.mAllFragment != null) {
                    DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mAllFragment;
                    if (defaultContactBrowseListFragment.j != null) {
                        AsusContactListFilterWindow asusContactListFilterWindow = defaultContactBrowseListFragment.j;
                        if (asusContactListFilterWindow.i != null ? asusContactListFilterWindow.i.isShowing() : false) {
                            AsusContactListFilterWindow.a(true);
                            defaultContactBrowseListFragment.j.i.dismiss();
                            AsusContactListFilterWindow.a((Context) null);
                        }
                    }
                    defaultContactBrowseListFragment.j = null;
                }
            }
            k.a(getApplicationContext()).e();
            com.android.contacts.asuscallerid.d.a().c();
            AsusContactListFilterWindow.a();
            getLoaderManager().destroyLoader(1000);
            com.android.contacts.i.a.a();
            this.mProviderStatusWatcher.b(this);
            MemoryUtils.fixInputMethodManagerLeak(this);
            TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
            if (telephonyManager != null) {
                telephonyManager.listen(this.mPhoneStateListener, 0);
                this.mPhoneStateListener = null;
                Log.d(TAG, "Unregister phoneStateListener");
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        setViewpagerScreenPageLimit();
        super.onUserInteraction();
    }

    public void setContactsListFirstVisibleIndex(String str) {
        if (this.mAllFragment != null && !TextUtils.isEmpty(str)) {
            DefaultContactBrowseListFragment defaultContactBrowseListFragment = this.mAllFragment;
            if (!defaultContactBrowseListFragment.B.contains(str)) {
                defaultContactBrowseListFragment.B.add(str);
                if (defaultContactBrowseListFragment.h != null) {
                    defaultContactBrowseListFragment.h.a(defaultContactBrowseListFragment.B);
                }
            }
        }
        if (this.isEzmode && this.mEzPeopleFragment != null && !TextUtils.isEmpty(str)) {
            f fVar = this.mEzPeopleFragment;
            if (!fVar.f1258b.contains(str)) {
                fVar.f1258b.add(str);
                if (fVar.f1257a != null) {
                    fVar.f1257a.a(fVar.f1258b);
                }
            }
        }
    }

    @Override // com.android.contacts.interactions.a.AbstractC0041a
    public void setProgressDialog(ProgressDialog progressDialog) {
        if (!(this.mGroupsFragment == null || this.mGroupsFragment.f == null)) {
            this.mGroupsFragment.f.e = progressDialog;
        }
        if (this.mGroupsFragment != null) {
            this.mGroupsFragment.e = progressDialog;
        }
    }

    public void setViewpagerScreenPageLimit() {
        if (this.mScreenPageLimit != TAB_INDEX_COUNT) {
            this.mScreenPageLimit = TAB_INDEX_COUNT;
            if (this.mViewPager != null) {
                try {
                    this.mViewPager.setOffscreenPageLimit(this.mScreenPageLimit);
                } catch (Exception e) {
                    Log.d(TAG, "fail to setOffscreenPageLimit, Exception : " + e.toString());
                }
            }
        }
        if (!PhoneCapabilityTester.isHighendDevice(getApplicationContext(), 1L) && this.mNeedUpdated) {
            new UpdateSettingsTableTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            this.mNeedUpdated = false;
        }
    }

    public void startAuServerSync() {
        try {
            if (!getPackageManager().getApplicationInfo("jibe.android.activity", 0).enabled) {
                com.android.contacts.g.a.a(2131755720).show(getFragmentManager(), "KDDI_FRIENDS_NOTE_INVALID");
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("jibe.android.activity", "jibe.android.activity.LoginActivity");
            intent.setType("backup_menu");
            try {
                startActivityForResult(intent, KDDI_AU_SERVER_SYNC_REQUEST_CODE);
            } catch (ActivityNotFoundException e) {
                Log.d("KDDI", "ActivityNotFoundException !");
                com.android.contacts.g.a.a(2131755721).show(getFragmentManager(), "KDDI_FRIENDS_NOTE_NOTE_FOUND");
                e.printStackTrace();
            } catch (Exception e2) {
                Log.d("KDDI", "Other Exception !");
                e2.printStackTrace();
            }
        } catch (PackageManager.NameNotFoundException e3) {
            com.android.contacts.g.a.a(2131755721).show(getFragmentManager(), "KDDI_FRIENDS_NOTE_NOTE_FOUND");
            e3.printStackTrace();
        }
    }
}

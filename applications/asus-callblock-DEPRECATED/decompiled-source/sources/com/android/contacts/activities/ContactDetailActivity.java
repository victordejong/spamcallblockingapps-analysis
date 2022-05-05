package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.BaseColumns;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.a.b;
import com.android.contacts.detail.ContactDetailDisplayUtils;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.detail.ContactDetailLayoutController;
import com.android.contacts.detail.ContactLoaderFragment;
import com.android.contacts.interactions.d;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.c;
import com.android.contacts.p;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ContactLoaderUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.a;
import com.asus.contacts.b.g;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailActivity.class */
public class ContactDetailActivity extends p {
    public static final String AUTHORITY = "blocklist";
    public static final Uri BLOCKLIST_CONTENT_URI = Uri.parse("content://blocklist/blocklist");
    private static final boolean DEBUG_TRANSITIONS = false;
    public static final String INTENT_KEY_FINISH_ACTIVITY_ON_UP_SELECTED = "finishActivityOnUpSelected";
    private static final String KEY_CONTACT_ISUSERPROFILE = "is_user_profile";
    private static final String KEY_CONTACT_URI = "contact_uri";
    private static final int REQUEST_CROP_COVER = 1003;
    private static final int REQUEST_SET_COVER_CAMERA = 1001;
    private static final int REQUEST_SET_COVER_GALLERY = 1002;
    private static final String TAG = "ContactDetailActivity";
    private Context appContext;
    private ActionBarCustomViewOnClickListener mActionBarListenr;
    TextView mActionbarContainer;
    AlertDialog mCannotSendSmsDialog;
    private ChangeLinkPhotoReceiver mChangeLinkPhotoReceiver;
    private c mContactData;
    private ContactDetailLayoutController mContactDetailLayoutController;
    private Uri mContactUri;
    private boolean mIsUserprofile;
    private ContactLoaderFragment mLoaderFragment;
    private Uri mLookupUri;
    private TextView mMainTitle;
    private g mMessagePopupWindow;
    private ArrayList<String> mPhoneList;
    TextView mStatusContainer;
    private TextView mSubTitle;
    private LinearLayout mTitleContainer;
    AlertDialog mUnblockedMenuAlertDialog;
    AlertDialog mblockedMenuAlertDialog;
    private Handler mHandler = new Handler();
    private Boolean isChecked = false;
    private final boolean mIsRCSVerizon = PhoneCapabilityTester.isRCSVerizon();
    private MenuItem blockedMenuItem = null;
    private MenuItem unblockedMenuItem = null;
    private boolean blockedMenuItemValue = false;
    private boolean unblockedMenuItemValue = false;
    private final ContactLoaderFragment.ContactLoaderFragmentListener mLoaderFragmentListener = new ContactLoaderFragment.ContactLoaderFragmentListener() { // from class: com.android.contacts.activities.ContactDetailActivity.6
        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onContactNotFound() {
            ContactDetailActivity.this.finish();
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onDeleteRequested(Uri uri) {
            d.a(ContactDetailActivity.this, uri, true);
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onDetailsLoaded(final c cVar) {
            if (cVar != null) {
                ContactDetailActivity.this.mHandler.post(new Runnable() { // from class: com.android.contacts.activities.ContactDetailActivity.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!ContactDetailActivity.this.isFinishing()) {
                            ContactDetailActivity.this.mContactData = cVar;
                            ContactDetailActivity.this.mLookupUri = cVar.f2023b;
                            ContactDetailActivity.this.invalidateOptionsMenu();
                            if (ContactDetailActivity.this.mLookupUri != null && !ContactDetailActivity.this.isChecked.booleanValue() && ContactDetailActivity.this.mLookupUri.getPathSegments().get(2).equals("profile")) {
                                ContactDetailActivity.this.isChecked = true;
                            }
                            ContactDetailActivity.this.setupTitle();
                            ContactDetailActivity.this.mContactDetailLayoutController.setContactData(ContactDetailActivity.this.mContactData);
                            ContactDetailActivity.this.mContactUri = ContactDetailActivity.this.mContactData.c;
                            ContactDetailActivity.this.mIsUserprofile = ContactDetailActivity.this.mContactData.B;
                            ContactDetailActivity.this.mPhoneList = new ArrayList();
                            ContactDetailDisplayUtils.getContactPhoneList(ContactDetailActivity.this.mContactData, ContactDetailActivity.this.mPhoneList);
                        }
                    }
                });
            }
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onEditRequested(Uri uri) {
            Intent intent = new Intent("android.intent.action.EDIT", uri);
            intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
            ImplicitIntentsUtil.startActivityInAppIfPossible(ContactDetailActivity.this, intent);
        }

        @Override // com.android.contacts.detail.ContactLoaderFragment.ContactLoaderFragmentListener
        public void onLinkRequested(long j) {
            Intent intent = new Intent("com.android.contacts.action.LINK_CONTACT");
            if (j < 0) {
                Toast.makeText(ContactDetailActivity.this, 2131755931, 1).show();
                return;
            }
            intent.putExtra(AsusGroupEditorActivity.EXTRA_TARGET_CONTACT_ID, j);
            ImplicitIntentsUtil.startActivityInApp(ContactDetailActivity.this, intent);
            ContactDetailActivity.this.finish();
        }
    };
    private final ContactDetailFragment.Listener mContactDetailFragmentListener = new ContactDetailFragment.Listener() { // from class: com.android.contacts.activities.ContactDetailActivity.7
        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public void onCreateRawContactRequested(String str, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
            Toast.makeText(ContactDetailActivity.this, 2131756234, 1).show();
            Intent a2 = ContactSaveService.a(ContactDetailActivity.this, str, arrayList, accountWithDataSet, ContactDetailActivity.class, "android.intent.action.VIEW");
            a2.putExtra("Display_Name", str);
            ContactDetailActivity.this.startService(a2);
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public void onCreateRawContactRequested(ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet) {
            Toast.makeText(ContactDetailActivity.this, 2131756234, 1).show();
            ContactDetailActivity.this.startService(ContactSaveService.a(ContactDetailActivity.this, arrayList, accountWithDataSet, ContactDetailActivity.class, "android.intent.action.VIEW"));
        }

        @Override // com.android.contacts.detail.ContactDetailFragment.Listener
        public void onItemClicked(Intent intent) {
            if (intent != null) {
                if (intent.getAction().equals("android.intent.action.SENDTO") && !intent.getBooleanExtra("CANSENDSMS", true)) {
                    ContactDetailActivity.this.mCannotSendSmsDialog = new AlertDialog.Builder(ContactDetailActivity.this.appContext).setMessage(2131756091).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.7.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                        }
                    }).show();
                } else if (intent.getAction().equals("intent.show.prefersim.dialog")) {
                    ContactDetailActivity contactDetailActivity = ContactDetailActivity.this;
                    b.a();
                    b.a(9, ContactDetailActivity.this, "PreferSIM", "PreferSIM- Click Indicator", null, null);
                    com.asus.prefersim.b.a(ContactDetailActivity.this.getFragmentManager(), intent.getStringArrayListExtra("EXTRA_PREFER_SIM_NUMBER_LIST"), intent.getLongExtra("EXTRA_PREFER_SIM_CONTACT_ID", 0L), contactDetailActivity.getContactDetailLayoutController().getContactDetailFragment());
                } else {
                    long j = -1;
                    if (!(ContactDetailActivity.this.mContactData == null || intent == null)) {
                        long j2 = ContactDetailActivity.this.mContactData.d;
                        Uri uri = ContactDetailActivity.this.mContactData.c;
                        if (uri == null || j2 != 0 || ContactDetailActivity.this.mContactData.B) {
                            intent.removeExtra("com.android.phone.AsusDialName");
                            intent.removeExtra("com.android.phone.AsusDialContactId");
                            Log.e(ContactDetailActivity.TAG, "normal mode");
                        } else {
                            Log.e(ContactDetailActivity.TAG, "directid =  " + j2);
                            if (a.d(uri.getLastPathSegment())) {
                                j = Long.valueOf(uri.getLastPathSegment()).longValue();
                            }
                            String str = ContactDetailActivity.this.mContactData.k;
                            if (intent != null) {
                                intent.putExtra("com.android.phone.AsusDialName", str);
                                intent.putExtra("com.android.phone.AsusDialContactId", j);
                            }
                        }
                    }
                    try {
                        CallUtil.startDialActivity(ContactDetailActivity.this.appContext, intent);
                        b.a();
                        b.a(5, ContactDetailActivity.this, "Contacts", "Contact Detail", "Contact Detail: press phone number", null);
                        b.a();
                        b.a(18, (Activity) ContactDetailActivity.this, "Make a Call", true);
                    } catch (Exception e) {
                        Log.e(ContactDetailActivity.TAG, e.toString());
                    }
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailActivity$ActionBarCustomViewOnClickListener.class */
    private class ActionBarCustomViewOnClickListener implements View.OnClickListener {
        public ActionBarCustomViewOnClickListener(Context context) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case 2131296937:
                    ContactDetailActivity.this.finish();
                    return;
                case 2131297401:
                    ContactDetailActivity.this.mMessagePopupWindow = g.a(ContactDetailActivity.this);
                    ContactDetailActivity.this.mMessagePopupWindow.a(ContactDetailActivity.this.mTitleContainer, ContactDetailActivity.this.mMainTitle.getText().toString(), ContactDetailActivity.this.mSubTitle.getText() == null ? null : ContactDetailActivity.this.mSubTitle.getText().toString(), ContactDetailActivity.this.mTitleContainer.getWidth(), 0, ContactDetailActivity.this.getResources().getDimensionPixelOffset(2131099714), true, 1);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailActivity$ChangeLinkPhotoReceiver.class */
    public class ChangeLinkPhotoReceiver extends BroadcastReceiver {
        public static final String CHANGE_PHOTO_ACTION = "com.android.contacts.action.changePhoto";
        public static final String CONTACT_URI = "contact_uri";
        public static final String REQ_CHANGE_PHOTO = "request_change_photo";

        public ChangeLinkPhotoReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Uri parse;
            boolean booleanExtra = intent.getBooleanExtra(REQ_CHANGE_PHOTO, false);
            String stringExtra = intent.getStringExtra("contact_uri");
            if (booleanExtra && stringExtra != null && ContactDetailActivity.this.mContactUri != (parse = Uri.parse(stringExtra))) {
                ContactDetailActivity.this.mContactUri = parse;
                ContactDetailActivity.this.mLoaderFragment.loadUri(ContactDetailActivity.this.mContactUri);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailActivity$Columns.class */
    public interface Columns extends BaseColumns {
        public static final String CONTACTSID = "contactid";
        public static final String CONTACTSLOOKUP = "contactlookup";
        public static final String DISPLAYNAME = "displayname";
        public static final String ID = "_id";
        public static final String INCONTACTS = "incontacts";
        public static final String NUMBERTYPE = "numbertype";
        public static final String PHONEMINMATCH = "phoneminmatch";
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactDetailActivity$FragmentKeyListener.class */
    public interface FragmentKeyListener {
        boolean handleKeyDown(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupTitle() {
        CharSequence displayName = ContactDetailDisplayUtils.getDisplayName(this, this.mContactData);
        String company = ContactDetailDisplayUtils.getCompany(this, this.mContactData);
        if (this.mMainTitle != null) {
            this.mMainTitle.setText(displayName);
            if (company == null || TextUtils.isEmpty(company)) {
                this.mMainTitle.setTextSize(2, getResources().getInteger(2131361793));
                this.mSubTitle.setVisibility(8);
                this.mSubTitle.setText(BuildConfig.FLAVOR);
            } else {
                this.mSubTitle.setVisibility(0);
                this.mSubTitle.setText(company);
            }
        }
        if (!TextUtils.isEmpty(displayName) && ((AccessibilityManager) getSystemService("accessibility")).isEnabled()) {
            View decorView = getWindow().getDecorView();
            decorView.setContentDescription(displayName);
            decorView.sendAccessibilityEvent(32);
        }
    }

    public ContactDetailLayoutController getContactDetailLayoutController() {
        return this.mContactDetailLayoutController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb  */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.database.Cursor] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isContactBlocked() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ContactDetailActivity.isContactBlocked():boolean");
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            switch (i) {
                case 1001:
                case REQUEST_SET_COVER_GALLERY /* 1002 */:
                    CoverUtils.cropImageIntent(this, intent, i);
                    return;
                case REQUEST_CROP_COVER /* 1003 */:
                    if (intent != null) {
                        CoverUtils.updateContactCover(this, this.mContactUri, this.mIsUserprofile, intent, 4);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof ContactLoaderFragment) {
            this.mLoaderFragment = (ContactLoaderFragment) fragment;
            this.mLoaderFragment.setListener(this.mLoaderFragmentListener);
            Intent intent = getIntent();
            if (intent == null || intent.getExtras() == null) {
                this.mLoaderFragment.loadUri(getIntent().getData());
                return;
            }
            this.mLoaderFragment.loadUri(getIntent().getData(), intent.getExtras().getInt("filter_from"));
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mActionbarContainer = (TextView) findViewById(2131296285);
        AsusActionBarUtils.updateActionBar(this, this.mActionbarContainer, this.mStatusContainer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.appContext = this;
            if (!(getIntent() == null || getIntent().getData() == null || ContactLoaderUtils.ensureIsContactUriFirst(getIntent().getData()))) {
                Toast.makeText(getApplicationContext(), "Uri is unknown", 0).show();
                finish();
            }
            if (bundle != null) {
                this.mContactUri = (Uri) bundle.getParcelable("contact_uri");
                this.mIsUserprofile = bundle.getBoolean(KEY_CONTACT_ISUSERPROFILE);
            }
            this.isChecked = false;
            boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            if (PhoneCapabilityTester.isUsingTwoPanes(this)) {
                Intent intent = getIntent();
                Intent intent2 = new Intent();
                intent2.setAction(intent.getAction());
                intent2.setDataAndType(intent.getData(), intent.getType());
                if (shouldUpRecreateTask(intent2)) {
                    intent2.setFlags(268468224);
                } else {
                    intent2.setFlags(645922816);
                }
                intent2.setClass(this, PeopleActivity.class);
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
                finish();
                return;
            }
            if (PhoneCapabilityTester.hasNavigationBar()) {
                setContentView(2131427456);
            } else {
                setContentView(2131427455);
            }
            try {
                this.mContactDetailLayoutController = new ContactDetailLayoutController(this, bundle, getFragmentManager(), null, findViewById(2131296557), this.mContactDetailFragmentListener);
                this.mActionbarContainer = (TextView) findViewById(2131296285);
                this.mStatusContainer = (TextView) findViewById(2131297347);
                AsusActionBarUtils.updateActionBar(this, this.mActionbarContainer, this.mStatusContainer);
                ActionBar actionBar = getActionBar();
                if (actionBar != null) {
                    actionBar.setDisplayShowHomeEnabled(false);
                    actionBar.setDisplayOptions(16);
                    actionBar.setCustomView(2131427496);
                    this.mActionBarListenr = new ActionBarCustomViewOnClickListener(this);
                    ((ImageView) actionBar.getCustomView().findViewById(2131296937)).setOnClickListener(this.mActionBarListenr);
                    this.mTitleContainer = (LinearLayout) actionBar.getCustomView().findViewById(2131297401);
                    this.mTitleContainer.setClickable(true);
                    this.mTitleContainer.setOnClickListener(this.mActionBarListenr);
                    this.mMainTitle = (TextView) actionBar.getCustomView().findViewById(2131297010);
                    this.mSubTitle = (TextView) actionBar.getCustomView().findViewById(2131297357);
                }
                if (getIntent().getData() != null) {
                    Log.i(TAG, PhoneCapabilityTester.privacyLogCheck(getIntent().getData().toString()));
                }
                this.mChangeLinkPhotoReceiver = new ChangeLinkPhotoReceiver();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(ChangeLinkPhotoReceiver.CHANGE_PHOTO_ACTION);
                android.support.v4.content.c.a(this).a(this.mChangeLinkPhotoReceiver, intentFilter);
                if (PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(18, (Activity) this, "Contact detail", true);
                    return;
                }
                b.a();
                b.a(10, (Activity) this, "Contact detail", true);
            } catch (Exception e) {
                Log.d(TAG, "Fail to init viewPager, Exception : " + e.toString());
                finish();
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492904, menu);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        if (this.mContactDetailLayoutController != null) {
            Log.d(TAG, "ContactDetailActivity >>> recycleCoverBitmap [onDestroy]");
            this.mContactDetailLayoutController.getCoverContainer().recycleCoverBitmap();
            this.mContactDetailLayoutController.getCoverContainer().cancelQueryCoverAsyncTask();
            this.mContactDetailLayoutController.getCoverContainer().dismissDialog();
        }
        if (this.mChangeLinkPhotoReceiver != null) {
            android.support.v4.content.c.a(this).a(this.mChangeLinkPhotoReceiver);
        }
        com.asus.snapcall.c.c();
        MemoryUtils.fixInputMethodManagerLeak(this);
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        FragmentKeyListener currentPage;
        boolean z = true;
        if ((this.mLoaderFragment == null || !this.mLoaderFragment.handleKeyDown(i)) && ((currentPage = this.mContactDetailLayoutController.getCurrentPage()) == null || !currentPage.handleKeyDown(i))) {
            z = super.onKeyDown(i, keyEvent);
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mMessagePopupWindow != null) {
            this.mMessagePopupWindow.f2595a.dismiss();
            this.mMessagePopupWindow = null;
        }
        closeOptionsMenu();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        final MenuItem findItem = menu.findItem(2131297079);
        if (this.blockedMenuItem != null) {
            this.blockedMenuItemValue = this.blockedMenuItem.isVisible();
        }
        if (this.unblockedMenuItem != null) {
            this.unblockedMenuItemValue = this.unblockedMenuItem.isVisible();
        }
        this.blockedMenuItem = menu.findItem(2131297037);
        this.unblockedMenuItem = menu.findItem(2131297082);
        if (this.blockedMenuItem != null) {
            this.blockedMenuItem.setVisible(this.blockedMenuItemValue);
        }
        if (this.unblockedMenuItem != null) {
            this.unblockedMenuItem.setVisible(this.unblockedMenuItemValue);
        }
        findItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.2
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                boolean z = false;
                if (ContactDetailActivity.this.mLookupUri == null) {
                    return true;
                }
                boolean isChecked = findItem.isChecked();
                ContactDetailDisplayUtils.configureStarredMenuItem(findItem, ContactDetailActivity.this.mContactData.e(), ContactDetailActivity.this.mContactData.B, !isChecked, ContactDetailActivity.this.mContactData.g(), ContactDetailActivity.this);
                ContactDetailActivity contactDetailActivity = ContactDetailActivity.this;
                Uri uri = ContactDetailActivity.this.mLookupUri;
                if (!isChecked) {
                    z = true;
                }
                Intent a2 = ContactSaveService.a(contactDetailActivity, uri, z);
                a2.putExtra("contact_name", ContactDetailActivity.this.mMainTitle.getText().toString());
                ContactDetailActivity.this.startService(a2);
                return true;
            }
        });
        final int i = com.asus.blocklist.a.b(this) ? 2131755202 : 2131755203;
        this.blockedMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.3
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (!PhoneCapabilityTester.isUsingTwoPanes(ContactDetailActivity.this.appContext) && PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(9, ContactDetailActivity.this, "ContactDetail", "ContactDetail- Add to blocklist", null, null);
                }
                ContactDetailActivity.this.mblockedMenuAlertDialog = new AlertDialog.Builder(ContactDetailActivity.this).setTitle(ContactDetailActivity.this.getResources().getString(2131755783)).setMessage(ContactDetailActivity.this.getResources().getString(i)).setPositiveButton(ContactDetailActivity.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.3.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (ContactDetailActivity.this.mContactData != null) {
                            String lastPathSegment = ContactDetailActivity.this.mContactData.f2023b.getLastPathSegment();
                            if (com.asus.blocklist.g.h(ContactDetailActivity.this)) {
                                com.asus.blocklist.backwardcompatible.a.b(ContactDetailActivity.this, Long.parseLong(lastPathSegment));
                            } else {
                                com.asus.blocklist.g.a(ContactDetailActivity.this, Long.parseLong(lastPathSegment));
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                b.a();
                                b.a(19, ContactDetailActivity.this, "Behavior - Block", "Block by contacts detail menu", null, null);
                            }
                        }
                    }
                }).setNegativeButton(ContactDetailActivity.this.getString(17039369), (DialogInterface.OnClickListener) null).show();
                return true;
            }
        });
        this.unblockedMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.4
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (!PhoneCapabilityTester.isUsingTwoPanes(ContactDetailActivity.this.appContext) && PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(9, ContactDetailActivity.this, "ContactDetail", "ContactDetail- Remove from blocklist", null, null);
                }
                ContactDetailActivity.this.mUnblockedMenuAlertDialog = new AlertDialog.Builder(ContactDetailActivity.this).setTitle(ContactDetailActivity.this.getResources().getString(2131755798)).setMessage(ContactDetailActivity.this.getResources().getString(2131756059)).setPositiveButton(ContactDetailActivity.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.4.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (ContactDetailActivity.this.mContactData != null) {
                            String lastPathSegment = ContactDetailActivity.this.mContactData.f2023b.getLastPathSegment();
                            if (com.asus.blocklist.g.h(ContactDetailActivity.this)) {
                                com.asus.blocklist.backwardcompatible.a.c(ContactDetailActivity.this, Long.parseLong(lastPathSegment));
                            } else {
                                com.asus.blocklist.g.b(ContactDetailActivity.this, Long.parseLong(lastPathSegment));
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                b.a();
                                b.a(19, ContactDetailActivity.this, "Behavior - UnBlock", "Unblock by contacts detail menu", null, null);
                            }
                        }
                    }
                }).setNegativeButton(ContactDetailActivity.this.getString(17039369), (DialogInterface.OnClickListener) null).show();
                return true;
            }
        });
        if (this.mContactData == null) {
            return true;
        }
        ContactDetailDisplayUtils.configureStarredMenuItem(findItem, this.mContactData.e(), this.mContactData.B, this.mContactData.n, this.mContactData.g(), this);
        com.asus.blocklist.g.a(this, this.blockedMenuItem, this.unblockedMenuItem, this.mContactData.f);
        long j = this.mContactData.d;
        MenuItem findItem2 = menu.findItem(2131297061);
        if (!this.mIsRCSVerizon || !(j == 0 || j == 1)) {
            findItem2.setVisible(false);
            return true;
        }
        findItem2.setVisible(true);
        findItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.android.contacts.activities.ContactDetailActivity.5
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return true;
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mContactDetailLayoutController != null) {
            this.mContactDetailLayoutController.onSaveInstanceState(bundle);
        }
        if (bundle != null && this.mContactData != null) {
            bundle.putParcelable("contact_uri", this.mContactData.c);
            bundle.putBoolean(KEY_CONTACT_ISUSERPROFILE, this.mContactData.B);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.isChecked = false;
        if (this.mblockedMenuAlertDialog != null) {
            this.mblockedMenuAlertDialog.dismiss();
        }
        if (this.mUnblockedMenuAlertDialog != null) {
            this.mUnblockedMenuAlertDialog.dismiss();
        }
        if (this.mCannotSendSmsDialog != null) {
            this.mCannotSendSmsDialog.dismiss();
        }
    }
}

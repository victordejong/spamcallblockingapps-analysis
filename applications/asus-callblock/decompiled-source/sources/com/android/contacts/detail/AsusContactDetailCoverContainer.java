package com.android.contacts.detail;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.ContactSaveService;
import com.android.contacts.a.b;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.contacts.b;
import com.android.contacts.detail.ContactDetailFragment;
import com.android.contacts.model.a.d;
import com.android.contacts.model.c;
import com.android.contacts.model.e;
import com.android.contacts.util.BitmapUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.blocklist.backwardcompatible.a;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.ae;
import com.google.a.b.m;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/AsusContactDetailCoverContainer.class */
public class AsusContactDetailCoverContainer {
    public static final String AUTHORITY = "blocklist";
    public static final Uri BLOCKLIST_CONTENT_URI = Uri.parse("content://blocklist/blocklist");
    private static final int CUSTOM_INDEX = 3;
    private static final int DEFAULT_INDEX = 2;
    private static final int PERIOD_MILLIS = 5000;
    private static final int TAB_INDEX_ABOUT = 0;
    private static final int TAB_INDEX_UPDATES = 1;
    public static final String TAG = "AsusContactDetailCoverContainer";
    private RelativeLayout mAccountIconsContainer;
    private Activity mActivity;
    private CheckBox mBlocklist;
    private ImageView mConnectHistory;
    private c mContactData;
    private Long mContactId;
    private TextView mContactName;
    private ImageView mCover;
    private View mCoverContainer;
    private Uri mCurCoverUri;
    private AlertDialog mCustomDialog;
    private AlertDialog mEditDialog;
    private ImageView mFavorite;
    private boolean mHasInternetCall;
    private boolean mHasPhoneModule;
    private boolean mIsMyProfile;
    private TextView mOrganizationName;
    private ImageView mPhoto;
    private View mPhotoTouchView;
    private QueryCoverAyncTask mQueryCoverTask;
    private String mSourceId;
    private LinearLayout mTitleAccountIcons;
    private View mUpdatesDivider;
    private ImageView mUpdatesMask;
    private TextView mUpdatesText;
    private RelativeLayout mUpdatesTextContainer;
    private ImageView mbirthdayCake;
    private final ContactDetailPhotoSetter mPhotoSetter = new ContactDetailPhotoSetter();
    private ArrayList<String> mPhoneList = new ArrayList<>();
    private int mCoverNotifiedCount = 0;
    private View.OnClickListener mDisplayCallLogActivityListener = new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.a();
            b.a(AsusContactDetailCoverContainer.this.mActivity, "AllContacts", "Contact_details", "Connection_history");
            String str = AsusContactDetailCoverContainer.this.mContactData.k;
            Intent intent = new Intent(AsusContactDetailCoverContainer.this.mActivity, ContactDetailCallogActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, str);
            bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, AsusContactDetailCoverContainer.this.mContactId.longValue());
            ArrayList<String> arrayList = new ArrayList<>();
            ContactDetailDisplayUtils.getContactPhoneNumberList(AsusContactDetailCoverContainer.this.mContactData, arrayList);
            bundle.putStringArrayList("phone_list", arrayList);
            intent.putExtras(bundle);
            ImplicitIntentsUtil.startActivityInApp(AsusContactDetailCoverContainer.this.mActivity, intent);
        }
    };
    private View.OnClickListener mFavoriteMenuItemListener = new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AsusContactDetailCoverContainer.this.mContactData != null && AsusContactDetailCoverContainer.this.mContactData.f2023b != null) {
                boolean booleanValue = AsusContactDetailCoverContainer.this.mFavorite.getTag() == null ? false : ((Boolean) AsusContactDetailCoverContainer.this.mFavorite.getTag()).booleanValue();
                ContactDetailDisplayUtils.configureStarredImageView(AsusContactDetailCoverContainer.this.mFavorite, AsusContactDetailCoverContainer.this.mContactData.e(), AsusContactDetailCoverContainer.this.mContactData.B, !booleanValue, AsusContactDetailCoverContainer.this.mContactData.g());
                AsusContactDetailCoverContainer.this.mActivity.startService(ContactSaveService.a(AsusContactDetailCoverContainer.this.mActivity, AsusContactDetailCoverContainer.this.mContactData.f2023b, !booleanValue));
                if (booleanValue) {
                    Toast.makeText(AsusContactDetailCoverContainer.this.mActivity, AsusContactDetailCoverContainer.this.mActivity.getString(2131756060, new Object[]{AsusContactDetailCoverContainer.this.mContactName.getText()}), 1).show();
                } else {
                    Toast.makeText(AsusContactDetailCoverContainer.this.mActivity, AsusContactDetailCoverContainer.this.mActivity.getString(2131755043, new Object[]{AsusContactDetailCoverContainer.this.mContactName.getText()}), 1).show();
                }
            }
        }
    };
    private View.OnClickListener mBlocklistMenuItemListener = new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AsusContactDetailCoverContainer.this.mBlocklist == null || !AsusContactDetailCoverContainer.this.mBlocklist.isChecked()) {
                if (AsusContactDetailCoverContainer.this.mContactData != null) {
                    String lastPathSegment = AsusContactDetailCoverContainer.this.mContactData.f2023b.getLastPathSegment();
                    if (g.h(AsusContactDetailCoverContainer.this.mActivity)) {
                        a.c(AsusContactDetailCoverContainer.this.mActivity, Long.parseLong(lastPathSegment));
                    } else {
                        g.b(AsusContactDetailCoverContainer.this.mActivity, Long.parseLong(lastPathSegment));
                    }
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        b.a();
                        b.a(19, AsusContactDetailCoverContainer.this.mActivity, "Behavior - UnBlock", "Unblock by contacts detail checkbox", null, null);
                    }
                }
            } else if (AsusContactDetailCoverContainer.this.mContactData != null) {
                String lastPathSegment2 = AsusContactDetailCoverContainer.this.mContactData.f2023b.getLastPathSegment();
                if (g.h(AsusContactDetailCoverContainer.this.mActivity)) {
                    a.b(AsusContactDetailCoverContainer.this.mActivity, Long.parseLong(lastPathSegment2));
                } else {
                    g.a(AsusContactDetailCoverContainer.this.mActivity, Long.parseLong(lastPathSegment2));
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    b.a();
                    b.a(19, AsusContactDetailCoverContainer.this.mActivity, "Behavior - Block", "Block by contacts detail checkbox", null, null);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/AsusContactDetailCoverContainer$QueryCoverAyncTask.class */
    public class QueryCoverAyncTask extends AsyncTask<Long, Integer, String> {
        Long _contactId;
        Context _context;
        ImageView _coverView;
        boolean _isProfile;

        public QueryCoverAyncTask(Context context, ImageView imageView, boolean z) {
            this._context = context;
            this._coverView = imageView;
            this._isProfile = z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public String doInBackground(Long... lArr) {
            String str;
            this._contactId = lArr[0];
            if (isCancelled()) {
                Log.d(AsusContactDetailCoverContainer.TAG, "QueryCoverAyncTask was canceld! 0");
                str = null;
            } else {
                CoverUtils.ContactsCover contactCover = CoverUtils.getContactCover(this._context, String.valueOf(this._contactId), "landscape", this._isProfile);
                str = contactCover != null ? contactCover.coverUri : null;
                if (isCancelled()) {
                    Log.d(AsusContactDetailCoverContainer.TAG, "QueryCoverAyncTask was canceld! 1");
                    str = null;
                }
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(String str) {
            if (str == null || this._coverView == null) {
                if (str == null) {
                    Log.d(AsusContactDetailCoverContainer.TAG, "[QueryCoverAyncTask][onPostExecute] CoverUri is null!! ");
                }
            } else if (isCancelled()) {
                Log.d(AsusContactDetailCoverContainer.TAG, "QueryCoverAyncTask was canceld! not do setCover()!");
            } else {
                AsusContactDetailCoverContainer.this.setCover(this._coverView, Uri.parse(str));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/AsusContactDetailCoverContainer$TabView.class */
    public class TabView {
        public TextView mTabText;

        public TabView() {
        }

        public void setSelected(boolean z) {
            if (this.mTabText != null) {
                this.mTabText.setSelected(z);
            }
        }

        public void setTabText(String str) {
            if (this.mTabText != null) {
                this.mTabText.setText(str);
            }
        }

        public void setVisibility(int i) {
            this.mTabText.setVisibility(i);
        }
    }

    public AsusContactDetailCoverContainer(Activity activity, View view) {
        this.mActivity = activity;
        this.mHasPhoneModule = PhoneCapabilityTester.isPhone(this.mActivity);
        this.mCoverContainer = view;
        this.mContactName = (TextView) view.findViewById(2131296576);
        this.mOrganizationName = (TextView) view.findViewById(2131297140);
        if (!PhoneCapabilityTester.IsAsusDevice() || PhoneCapabilityTester.isVerizon()) {
            this.mPhoto = (ImageView) view.findViewById(2131297153);
            view.findViewById(2131296582).setVisibility(8);
        } else {
            this.mPhoto = (ImageView) view.findViewById(2131296580);
            this.mCover = (ImageView) view.findViewById(2131297153);
            this.mbirthdayCake = (ImageView) view.findViewById(2131296664);
            this.mPhotoTouchView = view.findViewById(2131297162);
        }
        this.mAccountIconsContainer = (RelativeLayout) view.findViewById(2131296269);
        this.mUpdatesTextContainer = (RelativeLayout) view.findViewById(2131297465);
        this.mConnectHistory = (ImageView) view.findViewById(2131296547);
        this.mTitleAccountIcons = (LinearLayout) view.findViewById(2131296667);
        this.mUpdatesText = (TextView) view.findViewById(2131297464);
        this.mUpdatesMask = (ImageView) view.findViewById(2131297466);
        if (!this.mHasPhoneModule) {
            this.mConnectHistory.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mTitleAccountIcons.getLayoutParams();
            layoutParams.addRule(11);
            this.mTitleAccountIcons.setLayoutParams(layoutParams);
        }
        this.mCoverContainer.setVisibility(4);
    }

    private void addAccountIcon(LinearLayout linearLayout) {
        m<e> mVar = this.mContactData.o;
        if (linearLayout != null) {
            int size = mVar.size();
            int i = size;
            if (size > 3) {
                i = 3;
            }
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(this.mActivity);
            linearLayout.removeAllViews();
            linearLayout.getWidth();
            int dimensionPixelOffset = this.mActivity.getResources().getDimensionPixelOffset(2131099692);
            int dimensionPixelOffset2 = this.mActivity.getResources().getDimensionPixelOffset(2131099691);
            if (!PhoneCapabilityTester.IsAsusDevice() && !this.mIsMyProfile && getBirthDayMinDays() == 0) {
                ImageView imageView = new ImageView(this.mActivity);
                imageView.setImageDrawable(this.mActivity.getDrawable(2131165304));
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView.setPadding(0, 0, 0, 0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
                layoutParams.setMargins(dimensionPixelOffset2, 0, dimensionPixelOffset2, 0);
                layoutParams.gravity = 16;
                imageView.setLayoutParams(layoutParams);
                linearLayout.addView(imageView);
            }
            for (int i2 = 0; i2 < i; i2++) {
                ContentValues contentValues = mVar.get(i2).f2032b;
                String asString = contentValues.getAsString(SelectAccountActivity.ACCOUNT_TYPE);
                com.android.contacts.model.account.a a3 = a2.a(asString, contentValues.getAsString(SelectAccountActivity.DATA_SET));
                ImageView imageView2 = new ImageView(this.mActivity);
                String asString2 = contentValues.getAsString(SelectAccountActivity.ACCOUNT_NAME);
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    imageView2.setImageDrawable(a3.d(this.mActivity));
                } else {
                    imageView2.setImageDrawable(a3.a(this.mActivity, asString2));
                }
                if (!PhoneCapabilityTester.isUsingTwoPanes(this.mActivity) && (b.a.f612b.equals(asString) || b.a.d.equals(asString) || b.a.c.equals(asString2))) {
                    com.android.contacts.skin.a.a(imageView2, this.mActivity.getResources().getColor(2131034181));
                }
                imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView2.setPadding(0, 0, 0, 0);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
                layoutParams2.setMargins(dimensionPixelOffset2, 0, dimensionPixelOffset2, 0);
                layoutParams2.gravity = 16;
                imageView2.setLayoutParams(layoutParams2);
                linearLayout.addView(imageView2);
            }
            linearLayout.setVisibility(0);
        }
    }

    private int getBirthDayMinDays() {
        int i;
        new com.android.contacts.c.a(this.mActivity.getContentResolver());
        ae<e> b2 = this.mContactData.o.iterator();
        loop0: while (true) {
            if (!b2.hasNext()) {
                i = -1;
                break;
            }
            for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                if (!(aVar.b() == null || aVar.e() == null)) {
                    ContactDetailFragment.DetailViewEntry fromValues = ContactDetailFragment.DetailViewEntry.fromValues(this.mActivity, aVar, this.mContactData.e(), this.mContactData.d);
                    boolean z = !TextUtils.isEmpty(fromValues.data);
                    if ((aVar instanceof d) && z && fromValues.type == 3) {
                        fromValues.dbBirthdayData = fromValues.data;
                        if (com.android.contacts.c.a.a(fromValues.dbBirthdayData) != -1) {
                            i = com.android.contacts.c.a.a(fromValues.dbBirthdayData);
                            break loop0;
                        }
                    }
                }
            }
        }
        return i;
    }

    private int getCoverNotifiedCount() {
        int i;
        synchronized (this) {
            i = this.mCoverNotifiedCount;
        }
        return i;
    }

    private ArrayList<String> getDynamicOptions(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(strArr[2]);
        arrayList.add(strArr[3]);
        return arrayList;
    }

    private void increaseCoverNotifiedCount() {
        synchronized (this) {
            this.mCoverNotifiedCount++;
        }
    }

    private void initCoverSettings() {
        if (this.mPhotoTouchView != null && isContactEditable()) {
            this.mPhotoTouchView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AsusContactDetailCoverContainer.this.showEditCoverDialog();
                }
            });
        } else if (this.mPhotoTouchView != null && !isContactEditable()) {
            this.mPhotoTouchView.setClickable(false);
        }
        try {
            if (!(this.mQueryCoverTask == null || this.mQueryCoverTask.getStatus() == AsyncTask.Status.FINISHED)) {
                Log.d(TAG, "cancel QueryCoverAyncTask [loadData]");
                this.mQueryCoverTask.cancel(true);
                this.mQueryCoverTask = null;
            }
            this.mQueryCoverTask = new QueryCoverAyncTask(this.mActivity, this.mCover, this.mContactData.B);
            this.mQueryCoverTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mContactId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void resetCoverNotifiedCount() {
        synchronized (this) {
            this.mCoverNotifiedCount = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDynamicOptions(int i) {
        if (i == 0) {
            useDeafultCover(this.mContactId);
        } else if (i == 1) {
            showPopupCustomOptions();
        }
    }

    private void updateBirthdayCake() {
        if (this.mbirthdayCake != null) {
            if ((getBirthDayMinDays() == 0 ? 'x' : (char) 65535) != 65535) {
                this.mbirthdayCake.setVisibility(0);
                this.mbirthdayCake.setBackgroundResource(2131165304);
                return;
            }
            this.mbirthdayCake.setVisibility(8);
        }
    }

    private void useDeafultCover(Long l) {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, this.mActivity, "Change contact cover: default", true);
        } else {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(10, this.mActivity, "Change contact cover: default", true);
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(this.mActivity, "AllContacts", "Contact_details", "Change_cover");
        CoverUtils.updateContactCoverUri(this.mActivity, l.longValue(), 0, null, this.mIsMyProfile);
    }

    public void cancelQueryCoverAsyncTask() {
        if (this.mQueryCoverTask != null && this.mQueryCoverTask.getStatus() != AsyncTask.Status.FINISHED) {
            Log.d(TAG, "cancel QueryCoverAsyncTask");
            this.mQueryCoverTask.cancel(true);
            this.mQueryCoverTask = null;
        }
    }

    public void dismissDialog() {
        if (this.mEditDialog != null) {
            this.mEditDialog.dismiss();
            this.mEditDialog = null;
        }
        if (this.mCustomDialog != null) {
            this.mCustomDialog.dismiss();
            this.mCustomDialog = null;
        }
    }

    public float getYPosition() {
        return this.mCoverContainer.getY();
    }

    public boolean isContactEditable() {
        return this.mContactData != null && !this.mContactData.e();
    }

    public void loadData(c cVar) {
        if (cVar != null) {
            this.mContactData = cVar;
            this.mContactId = Long.valueOf(this.mContactData.f);
            setPhotoOnClickListener(this.mContactData);
            updateBirthdayCake();
            if (PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.isVerizon()) {
                initCoverSettings();
            }
            if (this.mContactName != null) {
                this.mContactName.setText(this.mContactData.k);
            }
            if (this.mOrganizationName != null) {
                String company = ContactDetailDisplayUtils.getCompany(this.mActivity, this.mContactData);
                if (company == null || company.equals(BuildConfig.FLAVOR)) {
                    this.mOrganizationName.setVisibility(8);
                } else {
                    this.mOrganizationName.setText(company);
                    this.mOrganizationName.setVisibility(0);
                }
            }
            this.mIsMyProfile = this.mContactData.B;
            if (this.mIsMyProfile && PhoneCapabilityTester.IsAsusDevice() && this.mbirthdayCake != null) {
                this.mbirthdayCake.setVisibility(8);
            }
            if (this.mIsMyProfile || !this.mHasPhoneModule) {
                this.mConnectHistory.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mTitleAccountIcons.getLayoutParams();
                layoutParams.addRule(11);
                this.mTitleAccountIcons.setLayoutParams(layoutParams);
            } else {
                this.mConnectHistory.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mTitleAccountIcons.getLayoutParams();
                layoutParams2.removeRule(11);
                this.mTitleAccountIcons.setLayoutParams(layoutParams2);
            }
            synchronized (this.mPhoneList) {
                this.mPhoneList.clear();
                ContactDetailDisplayUtils.getContactPhoneList(this.mContactData, this.mPhoneList);
            }
            this.mHasInternetCall = ContactDetailDisplayUtils.hasInternetCall(this.mContactData);
            if (PhoneCapabilityTester.isUsingTwoPanes(this.mActivity)) {
                this.mContactName = (TextView) this.mCoverContainer.findViewById(2131296576);
                this.mFavorite = (ImageView) this.mCoverContainer.findViewById(2131296772);
                this.mBlocklist = (CheckBox) this.mCoverContainer.findViewById(2131296767);
                if (this.mFavorite != null) {
                    ContactDetailDisplayUtils.configureStarredImageView(this.mFavorite, this.mContactData.e(), this.mContactData.B, this.mContactData.n, this.mContactData.g());
                    this.mFavorite.setOnClickListener(this.mFavoriteMenuItemListener);
                }
                if (this.mBlocklist != null) {
                    if (this.mContactData.e() || this.mContactData.B || !this.mHasPhoneModule) {
                        this.mBlocklist.setVisibility(8);
                    } else {
                        g.a(this.mActivity, Long.parseLong(this.mContactData.f2023b.getLastPathSegment()), new g.c() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.1
                            @Override // com.asus.blocklist.g.c
                            public void setResult(int i) {
                                if (AsusContactDetailCoverContainer.this.mBlocklist == null) {
                                    return;
                                }
                                if (i == 1) {
                                    AsusContactDetailCoverContainer.this.mBlocklist.setChecked(true);
                                } else if (i == 0) {
                                    AsusContactDetailCoverContainer.this.mBlocklist.setChecked(false);
                                } else {
                                    AsusContactDetailCoverContainer.this.mBlocklist.setVisibility(8);
                                }
                            }
                        });
                        this.mBlocklist.setVisibility(0);
                        this.mBlocklist.setOnClickListener(this.mBlocklistMenuItemListener);
                    }
                }
            }
            this.mCoverContainer.setVisibility(0);
            this.mConnectHistory.setOnClickListener(this.mDisplayCallLogActivityListener);
            setUpdateSnippetText(this.mContactData);
            addAccountIcon(this.mTitleAccountIcons);
        }
    }

    public void recycle() {
        this.mActivity = null;
        this.mContactData = null;
        this.mCoverContainer = null;
        this.mContactName = null;
        this.mOrganizationName = null;
        this.mPhoto = null;
        this.mCover = null;
        this.mUpdatesText = null;
        this.mUpdatesMask = null;
        this.mAccountIconsContainer = null;
        this.mUpdatesTextContainer = null;
        this.mConnectHistory = null;
        this.mTitleAccountIcons = null;
        this.mFavorite = null;
        this.mBlocklist = null;
        this.mPhoneList.clear();
    }

    public void recycleCoverBitmap() {
        BitmapUtil.recycleImageViewBitmap(this.mCover);
    }

    public void refreshQuickFavoriteAndBlock() {
        if (PhoneCapabilityTester.isUsingTwoPanes(this.mActivity)) {
            if (this.mFavorite != null) {
                ContactDetailDisplayUtils.configureStarredImageView(this.mFavorite, this.mContactData.e(), this.mContactData.B, this.mContactData.n, this.mContactData.g());
            }
            if (this.mBlocklist == null) {
                return;
            }
            if (this.mContactData.e() || this.mContactData.B || !this.mHasPhoneModule) {
                this.mBlocklist.setVisibility(8);
                return;
            }
            g.a(this.mActivity, Long.parseLong(this.mContactData.f2023b.getLastPathSegment()), new g.c() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.9
                @Override // com.asus.blocklist.g.c
                public void setResult(int i) {
                    if (AsusContactDetailCoverContainer.this.mBlocklist == null) {
                        return;
                    }
                    if (i == 1) {
                        AsusContactDetailCoverContainer.this.mBlocklist.setChecked(true);
                    } else if (i == 0) {
                        AsusContactDetailCoverContainer.this.mBlocklist.setChecked(false);
                    } else {
                        AsusContactDetailCoverContainer.this.mBlocklist.setVisibility(8);
                    }
                }
            });
            this.mBlocklist.setVisibility(0);
            this.mBlocklist.setOnClickListener(this.mBlocklistMenuItemListener);
        }
    }

    public void setCover(ImageView imageView, Uri uri) {
        if (this.mActivity != null && this.mActivity.isDestroyed()) {
            Log.d(TAG, ">>> setCover: Activity is destroyed!");
        } else if (uri == null || uri.equals(this.mCurCoverUri)) {
            Log.d(TAG, "[setCover] mCurCoverUri is null!");
        } else {
            this.mCurCoverUri = uri;
            try {
                Bitmap sampleSizeBitmap = BitmapUtil.getSampleSizeBitmap(this.mActivity.getApplicationContext(), uri, imageView.getWidth(), imageView.getHeight());
                if (sampleSizeBitmap != null && !sampleSizeBitmap.isRecycled()) {
                    imageView.setImageBitmap(sampleSizeBitmap);
                } else if (sampleSizeBitmap == null) {
                    Log.d(TAG, ">>> setCover: bitmap is null");
                } else {
                    Log.d(TAG, ">>> setCover: bitmap is recycled");
                }
            } catch (Exception e) {
                Log.d(TAG, "Exception happens in setCover()");
                Log.e(TAG, e.toString());
                e.printStackTrace();
            }
        }
    }

    public void setPhotoOnClickListener(c cVar) {
        if (this.mPhoto != null) {
            this.mPhoto.setTag(2131296580, TAG);
            View.OnClickListener onClickListener = this.mPhotoSetter.setupContactPhotoForClick(this.mActivity, cVar, this.mPhoto, true);
            if (PhoneCapabilityTester.isVerizon()) {
                this.mPhoto.setOnClickListener(null);
            } else if (!cVar.f()) {
                this.mPhoto.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Toast.makeText(AsusContactDetailCoverContainer.this.mActivity, AsusContactDetailCoverContainer.this.mActivity.getResources().getString(2131755653), 1).show();
                    }
                });
            } else if (cVar.g()) {
                this.mPhoto.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Toast.makeText(AsusContactDetailCoverContainer.this.mActivity, AsusContactDetailCoverContainer.this.mActivity.getResources().getString(2131756136), 1).show();
                    }
                });
            } else {
                this.mPhoto.setOnClickListener(onClickListener);
            }
            if (PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.isVerizon() && cVar != null && !(cVar.F == 0 && cVar.i == 0)) {
                this.mPhoto.setImageBitmap(BitmapUtil.circleBitmap(BitmapUtil.loadBitmapFromView(this.mPhoto)));
            }
            this.mPhoto.setVisibility(0);
        }
    }

    public void setUpdateSnippetText(c cVar) {
        ContactDetailDisplayUtils.setSocialSnippetText(this.mActivity, cVar, this.mUpdatesText);
        this.mUpdatesTextContainer.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mAccountIconsContainer.getLayoutParams();
        if (this.mUpdatesMask == null) {
            return;
        }
        if (this.mUpdatesText.getText().toString().equals(BuildConfig.FLAVOR)) {
            this.mUpdatesMask.setVisibility(8);
            layoutParams.addRule(8, 2131296554);
            this.mAccountIconsContainer.setLayoutParams(layoutParams);
            return;
        }
        this.mUpdatesMask.setVisibility(0);
        this.mUpdatesTextContainer.setVisibility(0);
        layoutParams.removeRule(8);
        this.mAccountIconsContainer.setLayoutParams(layoutParams);
    }

    public void setYPosition(float f) {
        this.mCoverContainer.setY(f);
    }

    public void showEditCoverDialog() {
        try {
            this.mEditDialog = new AlertDialog.Builder(this.mActivity).setTitle(this.mActivity.getResources().getString(2131755360)).setAdapter(new ArrayAdapter(this.mActivity, 17367043, getDynamicOptions(this.mActivity.getResources().getStringArray(2130837511))), new DialogInterface.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    AsusContactDetailCoverContainer.this.showDynamicOptions(i);
                }
            }).create();
            this.mEditDialog.show();
        } catch (Exception e) {
            Log.e(TAG, "Failed to build edit cover dialog...");
            e.printStackTrace();
        }
    }

    public void showPopupCustomOptions() {
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, this.mActivity, "Change contact cover: custom", true);
        } else {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(10, this.mActivity, "Change contact cover: custom", true);
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(this.mActivity, "AllContacts", "Contact_details", "Change_cover");
        PackageManager packageManager = this.mActivity.getPackageManager();
        this.mActivity.getSharedPreferences("ContactUri", 0).edit().putString(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, this.mContactData.c.toString()).commit();
        if (!packageManager.hasSystemFeature("android.hardware.camera")) {
            CoverUtils.chooseFromGalleryIntent(this.mActivity);
            return;
        }
        this.mCustomDialog = new AlertDialog.Builder(this.mActivity).setTitle(this.mActivity.getResources().getString(2131755953)).setAdapter(new ArrayAdapter(this.mActivity, 17367043, this.mActivity.getResources().getStringArray(2130837522)), new DialogInterface.OnClickListener() { // from class: com.android.contacts.detail.AsusContactDetailCoverContainer.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i != 0) {
                    CoverUtils.chooseFromGalleryIntent(AsusContactDetailCoverContainer.this.mActivity);
                } else if (!RequestCameraPermissionsActivity.startPermissionActivity(AsusContactDetailCoverContainer.this.mActivity, null, 1, null)) {
                    CoverUtils.chooseFromCameraIntent(AsusContactDetailCoverContainer.this.mActivity);
                }
            }
        }).create();
        this.mCustomDialog.show();
    }
}

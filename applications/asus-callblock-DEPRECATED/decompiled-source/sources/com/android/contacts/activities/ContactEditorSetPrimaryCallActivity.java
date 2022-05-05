package com.android.contacts.activities;

import android.app.Activity;
import android.app.LoaderManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.group.c;
import com.android.contacts.k;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity.class */
public class ContactEditorSetPrimaryCallActivity extends Activity {
    public static final int CONTACTS_PHONE_LOADER = 1;
    public static final String NO_PRIMARY_LIST = "no_primary_list";
    private static final String TAG = ContactEditorSetPrimaryCallActivity.class.getSimpleName();
    private Activity mActivity;
    private ContactListAdapter mAdapter;
    private ListView mContactsList;
    private LoaderManager.LoaderCallbacks<Cursor> mContactsPhoneLoaderCallbacks = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.activities.ContactEditorSetPrimaryCallActivity.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            return new c(ContactEditorSetPrimaryCallActivity.this.mActivity, ContactEditorSetPrimaryCallActivity.this.mNoPrimaryList);
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ContactEditorSetPrimaryCallActivity.this.mAdapter.setData(cursor);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private long[] mNoPrimaryList;
    private TextView mOkButton;
    k mPhotoManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity$ContactListAdapter.class */
    public class ContactListAdapter extends BaseAdapter {
        private ArrayList<Long> firstIdList = new ArrayList<>();
        private ArrayList<ContactPhoneItem> itemList;
        private final Context mContext;
        private Cursor mCursor;
        private final LayoutInflater mLayoutInflater;
        private k photoManager;
        private Long[] selectedIds;
        private ContactPhoneItemViewCache[] selectedViewCache;

        public ContactListAdapter(Context context) {
            this.mContext = context;
            this.mLayoutInflater = LayoutInflater.from(context);
        }

        private int getSelectedFirstIndex(long j) {
            int i;
            if (this.firstIdList != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.firstIdList.size()) {
                        i = -1;
                        break;
                    }
                    i = i2;
                    if (this.firstIdList.get(i2).longValue() == j) {
                        break;
                    }
                    i2++;
                }
            } else {
                i = -1;
            }
            return i;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.itemList == null ? 0 : this.itemList.size();
        }

        @Override // android.widget.Adapter
        public ContactPhoneItem getItem(int i) {
            return (this.itemList == null || i >= this.itemList.size()) ? null : this.itemList.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public Long[] getPrimaryList() {
            return this.selectedIds;
        }

        public ContactPhoneItemViewCache getSelectedViewCacheByContactId(long j) {
            int selectedFirstIndex = getSelectedFirstIndex(j);
            return selectedFirstIndex < 0 ? null : this.selectedViewCache[selectedFirstIndex];
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ContactPhoneItemViewCache contactPhoneItemViewCache;
            ContactPhoneItem item = getItem(i);
            if (view != null) {
                contactPhoneItemViewCache = (ContactPhoneItemViewCache) view.getTag();
            } else {
                view = this.mLayoutInflater.inflate(2131427482, viewGroup, false);
                contactPhoneItemViewCache = new ContactPhoneItemViewCache(view, this);
                view.setTag(contactPhoneItemViewCache);
            }
            contactPhoneItemViewCache.setId(item.getId());
            contactPhoneItemViewCache.setRawId(Long.valueOf(item.getRawContactId()));
            contactPhoneItemViewCache.setContactId(Long.valueOf(item.getContactId()));
            contactPhoneItemViewCache.showHeader(item.isFirstItem());
            if (item.isFirstItem()) {
                if (ContactEditorSetPrimaryCallActivity.this.mPhotoManager != null) {
                    ContactEditorSetPrimaryCallActivity.this.mPhotoManager.a(contactPhoneItemViewCache.contactPhoto, item.getPhotoUri(), (k.d) null);
                }
                contactPhoneItemViewCache.displayName.setText(item.getDisplayName());
            }
            contactPhoneItemViewCache.type.setText((String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(this.mContext.getResources(), item.getType() != null ? Integer.valueOf(item.getType()).intValue() : 0, BuildConfig.FLAVOR));
            contactPhoneItemViewCache.number.setText(item.getNumber());
            int selectedFirstIndex = getSelectedFirstIndex(item.getContactId());
            if (selectedFirstIndex < 0 || this.selectedIds[selectedFirstIndex] != item.getId()) {
                contactPhoneItemViewCache.radioBtn.setChecked(false);
            } else {
                setSelectedViewCacheByContactId(item.getContactId(), contactPhoneItemViewCache);
                contactPhoneItemViewCache.radioBtn.setChecked(true);
            }
            return view;
        }

        public boolean isAllPrimarySet() {
            boolean z;
            if (this.selectedIds != null) {
                Long[] lArr = this.selectedIds;
                int length = lArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (lArr[i] == null) {
                        break;
                    }
                    i++;
                }
            } else {
                Log.d(ContactEditorSetPrimaryCallActivity.TAG, ">>> isAllPrimarySet >>> selectedIds is null!");
                z = false;
            }
            return z;
        }

        public void setData(Cursor cursor) {
            this.mCursor = cursor;
            this.itemList = new ArrayList<>();
            if (this.mCursor != null && this.mCursor.moveToFirst()) {
                if (this.firstIdList == null) {
                    this.firstIdList = new ArrayList<>();
                } else {
                    this.firstIdList.clear();
                }
                int count = this.mCursor.getCount();
                for (int i = 0; i < count; i++) {
                    this.mCursor.moveToPosition(i);
                    long j = this.mCursor.getLong(0);
                    String string = this.mCursor.getString(7);
                    long j2 = this.mCursor.getLong(1);
                    String string2 = this.mCursor.getString(2);
                    boolean equals = "1".equals(this.mCursor.getString(3));
                    boolean equals2 = "1".equals(this.mCursor.getString(4));
                    String string3 = this.mCursor.getString(5);
                    String string4 = this.mCursor.getString(8);
                    Long valueOf = Long.valueOf(this.mCursor.getLong(9));
                    boolean z = false;
                    if (!this.firstIdList.contains(valueOf)) {
                        this.firstIdList.add(valueOf);
                        z = true;
                    }
                    this.itemList.add(new ContactPhoneItem(Long.valueOf(j).longValue(), j2, string, string2, equals, equals2, string3, string4, z, valueOf.longValue()));
                }
                this.selectedIds = new Long[this.firstIdList.size()];
                this.selectedViewCache = new ContactPhoneItemViewCache[this.firstIdList.size()];
                for (int i2 = 0; i2 < count; i2++) {
                    ContactPhoneItem contactPhoneItem = this.itemList.get(i2);
                    if (contactPhoneItem.isFirstItem() && i2 < count) {
                        int selectedFirstIndex = getSelectedFirstIndex(contactPhoneItem.getContactId());
                        if (i2 < count - 1) {
                            if (contactPhoneItem.getContactId() != this.itemList.get(i2 + 1).getContactId()) {
                                this.selectedIds[selectedFirstIndex] = contactPhoneItem.getId();
                            }
                        } else if (i2 == count - 1) {
                            this.selectedIds[selectedFirstIndex] = contactPhoneItem.getId();
                        }
                    }
                }
            }
            notifyDataSetChanged();
        }

        public void setPhotoLoader(k kVar) {
            this.photoManager = kVar;
        }

        public void setSelectedViewCacheByContactId(long j, ContactPhoneItemViewCache contactPhoneItemViewCache) {
            int selectedFirstIndex = getSelectedFirstIndex(j);
            if (selectedFirstIndex >= 0) {
                this.selectedViewCache[selectedFirstIndex] = contactPhoneItemViewCache;
                this.selectedIds[selectedFirstIndex] = contactPhoneItemViewCache.getId();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity$ContactPhoneItem.class */
    public class ContactPhoneItem {
        private Long mContactId;
        private String mDisplayName;
        private Long mId;
        private boolean mIsFirstItem;
        private boolean mIsPrimary;
        private boolean mIsSuperPrimary;
        private String mNumber;
        private Uri mPhotoUri;
        private long mRawContactId;
        private String mType;

        public ContactPhoneItem(long j, long j2, String str, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, long j3) {
            this.mId = Long.valueOf(j);
            this.mRawContactId = j2;
            this.mPhotoUri = str == null ? null : Uri.parse(str);
            this.mDisplayName = str2;
            this.mIsSuperPrimary = z;
            this.mIsPrimary = z2;
            this.mNumber = str3;
            this.mType = str4;
            this.mIsFirstItem = z3;
            this.mContactId = Long.valueOf(j3);
        }

        public long getContactId() {
            return this.mContactId.longValue();
        }

        public String getDisplayName() {
            return this.mDisplayName;
        }

        public Long getId() {
            return this.mId;
        }

        public boolean getIsPrimary() {
            return this.mIsPrimary;
        }

        public boolean getIsSuperPrimary() {
            return this.mIsSuperPrimary;
        }

        public String getNumber() {
            return this.mNumber;
        }

        public Uri getPhotoUri() {
            return this.mPhotoUri;
        }

        public long getRawContactId() {
            return this.mRawContactId;
        }

        public String getType() {
            return this.mType;
        }

        public boolean isFirstItem() {
            return this.mIsFirstItem;
        }

        public void setPhotoUri(String str) {
            this.mPhotoUri = Uri.parse(str);
        }

        public void setPrimary(boolean z) {
            this.mIsPrimary = z;
        }

        public void setSuperPrimary(boolean z) {
            this.mIsSuperPrimary = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity$ContactPhoneItemViewCache.class */
    public class ContactPhoneItemViewCache {
        public final ImageView contactPhoto;
        public final View container;
        public final TextView displayName;
        public final View divider;
        public final View headerView;
        private ContactListAdapter mAdapter;
        private Long mContactId;
        private Long mId;
        private Long mRawId;
        public final TextView number;
        public final RadioButton radioBtn;
        public final View rawContactPhone;
        public final TextView type;

        public ContactPhoneItemViewCache(View view, ContactListAdapter contactListAdapter) {
            this.container = view.findViewById(2131296578);
            this.headerView = view.findViewById(2131296923);
            this.contactPhoto = (ImageView) view.findViewById(2131296580);
            this.displayName = (TextView) view.findViewById(2131296576);
            this.divider = view.findViewById(2131296757);
            this.rawContactPhone = view.findViewById(2131297218);
            this.type = (TextView) view.findViewById(2131297424);
            this.number = (TextView) view.findViewById(2131297128);
            this.radioBtn = (RadioButton) view.findViewById(2131297207);
            this.mAdapter = contactListAdapter;
            this.radioBtn.setOnClickListener(new PhoneItemClickListener(this, this.mAdapter));
        }

        public Long getContactId() {
            return this.mContactId;
        }

        public Long getId() {
            return this.mId;
        }

        public Long getRawId() {
            return this.mRawId;
        }

        public void setContactId(Long l) {
            this.mContactId = l;
        }

        public void setId(Long l) {
            this.mId = l;
        }

        public void setImage(Uri uri) {
            this.contactPhoto.setImageURI(uri);
        }

        public void setRawId(Long l) {
            this.mRawId = l;
        }

        public void showHeader(boolean z) {
            if (this.headerView == null) {
                return;
            }
            if (z) {
                this.headerView.setVisibility(0);
                this.divider.setVisibility(0);
                return;
            }
            this.headerView.setVisibility(8);
            this.divider.setVisibility(8);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity$PhoneItemClickListener.class */
    class PhoneItemClickListener implements View.OnClickListener {
        private ContactListAdapter mAdapter;
        private ContactPhoneItemViewCache mContainer;

        public PhoneItemClickListener(ContactPhoneItemViewCache contactPhoneItemViewCache, ContactListAdapter contactListAdapter) {
            this.mContainer = contactPhoneItemViewCache;
            this.mAdapter = contactListAdapter;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            long longValue = this.mContainer.getContactId().longValue();
            ContactPhoneItemViewCache selectedViewCacheByContactId = this.mAdapter.getSelectedViewCacheByContactId(longValue);
            if (selectedViewCacheByContactId != null) {
                selectedViewCacheByContactId.radioBtn.setChecked(false);
            }
            this.mAdapter.setSelectedViewCacheByContactId(longValue, this.mContainer);
            if (view instanceof RadioButton) {
                ((RadioButton) view).setChecked(true);
            }
            this.mAdapter.notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorSetPrimaryCallActivity$SetPrimaryCallTask.class */
    public class SetPrimaryCallTask extends AsyncTask<Long, Integer, Void> {
        private Activity mActivity;

        public SetPrimaryCallTask(Activity activity) {
            this.mActivity = activity;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Long... lArr) {
            for (Long l : lArr) {
                StringBuilder sb = new StringBuilder();
                sb.append("_id=" + String.valueOf(l));
                ContentResolver contentResolver = this.mActivity.getContentResolver();
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_super_primary", (Integer) 1);
                contentValues.put("is_primary", (Integer) 1);
                if (contentResolver.update(ContactsContract.Data.CONTENT_URI, contentValues, sb.toString(), null) <= 0) {
                    Log.d(ContactEditorSetPrimaryCallActivity.TAG, "No data was updated!");
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            this.mActivity.setResult(-1);
            this.mActivity.finish();
        }
    }

    private void configurePhotoLoader() {
        if (this.mPhotoManager == null) {
            this.mPhotoManager = k.a(this.mActivity);
        }
        if (this.mAdapter != null) {
            this.mAdapter.setPhotoLoader(this.mPhotoManager);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        setContentView(2131427477);
        this.mContactsList = (ListView) findViewById(2131296601);
        this.mOkButton = (TextView) findViewById(2131297132);
        this.mOkButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.ContactEditorSetPrimaryCallActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContactEditorSetPrimaryCallActivity.this.mAdapter.isAllPrimarySet()) {
                    new SetPrimaryCallTask(ContactEditorSetPrimaryCallActivity.this.mActivity).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, ContactEditorSetPrimaryCallActivity.this.mAdapter.getPrimaryList());
                    return;
                }
                Toast.makeText(ContactEditorSetPrimaryCallActivity.this.mActivity, ContactEditorSetPrimaryCallActivity.this.getResources().getString(2131755689), 0).show();
            }
        });
        Intent intent = getIntent();
        this.mActivity = this;
        this.mNoPrimaryList = intent.getExtras().getLongArray(NO_PRIMARY_LIST);
        if (this.mNoPrimaryList == null) {
            finish();
        }
        setTitle(getResources().getString(2131756107));
        this.mAdapter = new ContactListAdapter(this.mActivity);
        configurePhotoLoader();
        this.mContactsList.setAdapter((ListAdapter) this.mAdapter);
        getLoaderManager().initLoader(1, null, this.mContactsPhoneLoaderCallbacks);
    }
}

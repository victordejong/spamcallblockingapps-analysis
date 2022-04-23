package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.AsyncQueryHandler;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.detail.DetailDialogFragment;
import com.android.contacts.k;
import com.android.contacts.skin.a;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity.class */
public class AsusDeleteDuplicateActivity extends Activity {
    public static final String ACCOUNT_FROM = "accountFrom";
    static final String SELECT_TAG = "selectedIds";
    public static final String TAG = AsusDeleteDuplicateActivity.class.getSimpleName();
    private static boolean isDeleting = false;
    private String mAccountFrom;
    private DuplicateListAdapter mAdapter;
    private MenuItem mDeleteMenuItem;
    private TextView mEmptyView;
    private CheckedTextView mItemCheckSelectAll;
    private ListView mListView;
    private ProgressDialog mProgressDialog;
    private DuplicateContactsQueryHandler mQueryHandler;
    private Bundle mSaveInstance;
    private boolean enableDelete = false;
    List<Boolean> FirstItemList = new ArrayList();
    private View.OnClickListener mDetailClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.AsusDeleteDuplicateActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Throwable th;
            Cursor cursor;
            Cursor cursor2 = null;
            Log.d(AsusDeleteDuplicateActivity.TAG, "_id = " + ((Integer) view.getTag(view.getId())));
            try {
                cursor = AsusDeleteDuplicateActivity.this.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "lookup"}, "name_raw_contact_id = " + Integer.toString(((Integer) view.getTag(view.getId())).intValue()), null, null);
            } catch (Exception e) {
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                cursor.moveToFirst();
                Uri lookupUri = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(1));
                Log.d(AsusDeleteDuplicateActivity.TAG, "uri = " + lookupUri.toString());
                DetailDialogFragment.newInstance(lookupUri).show(AsusDeleteDuplicateActivity.this.getFragmentManager(), AsusDeleteDuplicateActivity.TAG);
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e2) {
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th3) {
                th = th3;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$ContactInfo.class */
    public static class ContactInfo {
        public int _id;
        public String _name;
        public String _number;
        public int info_id;
        public int photo_id;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$DeleteDuplicateTask.class */
    private class DeleteDuplicateTask extends AsyncTask<ArrayList<Integer>, Void, Void> {
        public static final int DELETE_BATCH_LIMIT = 50;

        DeleteDuplicateTask() {
        }

        public void delete(List<Integer> list) {
            Object[] array = list.toArray();
            Integer[] numArr = (Integer[]) Arrays.copyOf(array, array.length, Integer[].class);
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            for (Integer num : numArr) {
                int intValue = num.intValue();
                ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(ContactsContract.RawContacts.CONTENT_URI);
                newDelete.withSelection("_id=" + intValue, null);
                newDelete.withYieldAllowed(true);
                arrayList.add(newDelete.build());
            }
            try {
                AsusDeleteDuplicateActivity.this.getContentResolver().applyBatch("com.android.contacts", arrayList);
            } catch (OperationApplicationException e) {
                Log.d(AsusDeleteDuplicateActivity.TAG, e.toString());
            } catch (RemoteException e2) {
                Log.d(AsusDeleteDuplicateActivity.TAG, e2.toString());
            }
        }

        public void deleteByBatch(ArrayList<Integer> arrayList, int i) {
            if (!(arrayList == null || arrayList.size() == 0)) {
                if (arrayList.size() <= i) {
                    delete(arrayList);
                    return;
                }
                int i2 = i;
                for (int i3 = 0; i3 < arrayList.size(); i3 = i2) {
                    try {
                        List<Integer> subList = arrayList.subList(i3, i2);
                        if (subList == null) {
                            Log.d(AsusDeleteDuplicateActivity.TAG, "[deleteByBatch] deletListTemp is null");
                            return;
                        }
                        delete(subList);
                        int i4 = i2 + i;
                        i2 = i4;
                        if (i4 > arrayList.size()) {
                            i2 = arrayList.size();
                        }
                    } catch (Exception e) {
                        Log.d(AsusDeleteDuplicateActivity.TAG, "[deleteByBatch] " + e.toString());
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(ArrayList<Integer>... arrayListArr) {
            deleteByBatch(arrayListArr[0], 50);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r6) {
            super.onPostExecute((DeleteDuplicateTask) r6);
            if (AsusDeleteDuplicateActivity.this.mProgressDialog != null) {
                AsusDeleteDuplicateActivity.this.mProgressDialog.dismiss();
            }
            boolean unused = AsusDeleteDuplicateActivity.isDeleting = false;
            ImplicitIntentsUtil.startActivityInApp(AsusDeleteDuplicateActivity.this, new Intent(AsusDeleteDuplicateActivity.this, PeopleActivity.class));
            AsusDeleteDuplicateActivity.this.finish();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$DuplicateContactsQueryHandler.class */
    public class DuplicateContactsQueryHandler extends AsyncQueryHandler {
        private static final int TOKEN_CONTACTS_SEARCH = 0;

        public DuplicateContactsQueryHandler(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected void onQueryComplete(int i, Object obj, Cursor cursor) {
            boolean z = true;
            if (i == 0) {
                if (AsusDeleteDuplicateActivity.this.mAdapter != null) {
                    Cursor swapCursor = AsusDeleteDuplicateActivity.this.mAdapter.swapCursor(cursor);
                    if (swapCursor != null) {
                        swapCursor.close();
                    }
                    AsusDeleteDuplicateActivity.this.mProgressDialog.dismiss();
                }
                if (cursor == null || cursor.getCount() == 0) {
                    AsusDeleteDuplicateActivity.this.mEmptyView.setVisibility(0);
                    AsusDeleteDuplicateActivity.this.mEmptyView.setText(2131755909);
                } else {
                    AsusDeleteDuplicateActivity.this.mEmptyView.setVisibility(8);
                    AsusDeleteDuplicateActivity.this.checkIsFirstItem(cursor);
                    ArrayList<Integer> integerArrayList = AsusDeleteDuplicateActivity.this.mSaveInstance != null ? AsusDeleteDuplicateActivity.this.mSaveInstance.getIntegerArrayList(AsusDeleteDuplicateActivity.SELECT_TAG) : null;
                    if (integerArrayList != null) {
                        Iterator<Integer> it = integerArrayList.iterator();
                        while (it.hasNext()) {
                            AsusDeleteDuplicateActivity.this.mAdapter.map.put(it.next(), 1);
                        }
                        AsusDeleteDuplicateActivity.this.setSelectAllCheck(integerArrayList.size() == AsusDeleteDuplicateActivity.this.mAdapter.getCount());
                        AsusDeleteDuplicateActivity asusDeleteDuplicateActivity = AsusDeleteDuplicateActivity.this;
                        if (integerArrayList.size() <= 0) {
                            z = false;
                        }
                        asusDeleteDuplicateActivity.enableDelete = z;
                        if (AsusDeleteDuplicateActivity.this.mDeleteMenuItem != null) {
                            AsusDeleteDuplicateActivity.this.mDeleteMenuItem.setEnabled(AsusDeleteDuplicateActivity.this.enableDelete);
                            a.a(AsusDeleteDuplicateActivity.this.getApplicationContext(), AsusDeleteDuplicateActivity.this.mDeleteMenuItem);
                        }
                    } else {
                        AsusDeleteDuplicateActivity.this.mAdapter.selectAll();
                        AsusDeleteDuplicateActivity.this.setSelectAllCheck(true);
                        AsusDeleteDuplicateActivity.this.enableDelete = true;
                        if (AsusDeleteDuplicateActivity.this.mDeleteMenuItem != null) {
                            AsusDeleteDuplicateActivity.this.mDeleteMenuItem.setEnabled(AsusDeleteDuplicateActivity.this.enableDelete);
                            a.a(AsusDeleteDuplicateActivity.this.getApplicationContext(), AsusDeleteDuplicateActivity.this.mDeleteMenuItem);
                        }
                    }
                    AsusDeleteDuplicateActivity.this.mAdapter.notifyDataSetChanged();
                }
                AsusDeleteDuplicateActivity.this.invalidateOptionsMenu();
            }
        }

        public void startSearch(String str) {
            startQuery(0, null, Uri.withAppendedPath(Uri.parse("content://com.android.contacts"), "duplicate_contacts/" + str), null, null, null, null);
        }

        public void stopSearch() {
            cancelOperation(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$DuplicateListAdapter.class */
    public class DuplicateListAdapter extends CursorAdapter {
        private CheckedTextView mCheckTextView;
        private final k mContactPhotoManager;
        private LayoutInflater mInflater;
        private TextView mNameView;
        public Map<Integer, Integer> map = new HashMap();

        /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$DuplicateListAdapter$OnClickListener.class */
        private class OnClickListener implements View.OnClickListener {
            private int mPosition;

            OnClickListener(int i) {
                this.mPosition = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z = false;
                if (DuplicateListAdapter.this.map.get(Integer.valueOf(this.mPosition)) == null || DuplicateListAdapter.this.map.get(Integer.valueOf(this.mPosition)).intValue() == 0) {
                    DuplicateListAdapter.this.map.put(Integer.valueOf(this.mPosition), 1);
                } else if (DuplicateListAdapter.this.map.get(Integer.valueOf(this.mPosition)).intValue() == 1) {
                    DuplicateListAdapter.this.map.put(Integer.valueOf(this.mPosition), 0);
                }
                int selectedCount = AsusDeleteDuplicateActivity.this.getSelectedCount();
                int i = 0;
                for (Boolean bool : AsusDeleteDuplicateActivity.this.FirstItemList) {
                    if (bool.booleanValue()) {
                        i++;
                    }
                }
                if (selectedCount == DuplicateListAdapter.this.getCount() - i) {
                    AsusDeleteDuplicateActivity.this.mItemCheckSelectAll.setChecked(true);
                } else {
                    AsusDeleteDuplicateActivity.this.mItemCheckSelectAll.setChecked(false);
                }
                if (AsusDeleteDuplicateActivity.this.mDeleteMenuItem != null) {
                    MenuItem menuItem = AsusDeleteDuplicateActivity.this.mDeleteMenuItem;
                    if (selectedCount > 0) {
                        z = true;
                    }
                    menuItem.setEnabled(z);
                    a.a(AsusDeleteDuplicateActivity.this.getApplicationContext(), AsusDeleteDuplicateActivity.this.mDeleteMenuItem);
                }
                DuplicateListAdapter.this.notifyDataSetChanged();
            }
        }

        public DuplicateListAdapter(Context context, Cursor cursor, int i) {
            super(context, cursor, i);
            this.mInflater = LayoutInflater.from(context);
            this.mContactPhotoManager = k.a(context);
        }

        private void fillContactPhoto(ViewHolder viewHolder, ContactInfo contactInfo, int i) {
            Uri withAppendedPath = contactInfo.photo_id > 0 ? Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, contactInfo.info_id), "photo") : null;
            if (i % 2 == 0) {
                viewHolder.photoView.setTag(0);
            } else {
                viewHolder.photoView.setTag(1);
            }
            this.mContactPhotoManager.a(viewHolder.photoView, withAppendedPath, viewHolder.photoView.getWidth(), false, true, withAppendedPath == null ? new k.d(contactInfo._name, null, true) : null);
        }

        private void fillMainInfo(ViewHolder viewHolder, ContactInfo contactInfo, boolean z) {
            viewHolder.nameView.setText(contactInfo._name);
            viewHolder.phoneView.setTextColor(-11579569);
            if (z) {
                viewHolder.phoneView.setText(AsusDeleteDuplicateActivity.this.mAccountFrom);
                viewHolder.nameHeader.setText(contactInfo._name);
                viewHolder.nameHeader.setVisibility(0);
                viewHolder.itemCheckSelect.setVisibility(8);
                viewHolder.infoContainer.setPadding(0, 0, 0, 0);
            } else {
                viewHolder.phoneView.setText(AsusDeleteDuplicateActivity.this.mAccountFrom);
                int applyDimension = (int) TypedValue.applyDimension(1, 64.0f, AsusDeleteDuplicateActivity.this.getResources().getDisplayMetrics());
                viewHolder.nameHeader.setVisibility(8);
                viewHolder.itemCheckSelect.setVisibility(0);
                viewHolder.infoContainer.setPadding(applyDimension, 0, 0, 0);
                viewHolder.headerContainer.setVisibility(8);
            }
            viewHolder.view.setOnClickListener(z ? AsusDeleteDuplicateActivity.this.mDetailClickListener : null);
            viewHolder.view.setTag(viewHolder.view.getId(), new Integer(contactInfo._id));
        }

        private void setDivider(ViewHolder viewHolder, Cursor cursor, int i) {
            if (i == cursor.getCount() - 1) {
                viewHolder.itemDivider.setVisibility(8);
            } else if (AsusDeleteDuplicateActivity.this.FirstItemList.get(i + 1).booleanValue()) {
                viewHolder.itemDivider.setVisibility(8);
            } else {
                viewHolder.itemDivider.setVisibility(0);
            }
        }

        void UnSelectAll() {
            int count = getCount();
            for (int i = 0; i < count; i++) {
                this.map.put(Integer.valueOf(i), 0);
            }
        }

        @Override // android.widget.CursorAdapter
        public void bindView(View view, Context context, Cursor cursor) {
        }

        @Override // android.widget.CursorAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            ContactInfo contactInfo = new ContactInfo();
            Cursor cursor = getCursor();
            super.getView(i, view, viewGroup);
            if (view == null) {
                view = this.mInflater.inflate(2131427371, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.view = view;
                viewHolder.itemContainer = (RelativeLayout) view.findViewById(2131296967);
                viewHolder.infoContainer = (LinearLayout) view.findViewById(2131296952);
                viewHolder.headerContainer = view.findViewById(2131296926);
                viewHolder.nameHeader = (TextView) view.findViewById(R.id.title);
                viewHolder.itemCheckSelect = (CheckedTextView) view.findViewById(2131296963);
                viewHolder.nameView = (TextView) view.findViewById(2131296954);
                viewHolder.phoneView = (TextView) view.findViewById(2131296955);
                viewHolder.photoView = (ImageView) view.findViewById(2131297163);
                viewHolder.itemDivider = view.findViewById(2131296974);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            contactInfo._id = cursor.getInt(cursor.getColumnIndex("_id"));
            contactInfo.info_id = cursor.getInt(cursor.getColumnIndex("info_id"));
            contactInfo.photo_id = cursor.getInt(cursor.getColumnIndex("photo_id"));
            contactInfo._name = cursor.getString(cursor.getColumnIndex("display_name"));
            contactInfo._number = cursor.getString(cursor.getColumnIndex("phoneNumber"));
            viewHolder.itemContainer.setBackgroundResource(2131034116);
            fillContactPhoto(viewHolder, contactInfo, i);
            fillMainInfo(viewHolder, contactInfo, AsusDeleteDuplicateActivity.this.FirstItemList.get(i).booleanValue());
            setDivider(viewHolder, cursor, i);
            if (this.map.get(Integer.valueOf(i)) == null || this.map.get(Integer.valueOf(i)).intValue() != 1) {
                viewHolder.itemCheckSelect.setChecked(false);
            } else {
                viewHolder.itemCheckSelect.setChecked(true);
            }
            viewHolder.itemCheckSelect.setOnClickListener(new OnClickListener(i));
            return view;
        }

        @Override // android.widget.CursorAdapter
        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            return null;
        }

        void selectAll() {
            int count = getCount();
            for (int i = 0; i < count; i++) {
                if (!AsusDeleteDuplicateActivity.this.FirstItemList.get(i).booleanValue()) {
                    this.map.put(Integer.valueOf(i), 1);
                } else {
                    this.map.put(Integer.valueOf(i), 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusDeleteDuplicateActivity$ViewHolder.class */
    public static class ViewHolder {
        View headerContainer;
        LinearLayout infoContainer;
        CheckedTextView itemCheckSelect;
        RelativeLayout itemContainer;
        View itemDivider;
        TextView nameHeader;
        TextView nameView;
        TextView phoneView;
        ImageView photoView;
        View view;

        private ViewHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsFirstItem(Cursor cursor) {
        String str = BuildConfig.FLAVOR;
        cursor.moveToPrevious();
        String str2 = " ";
        while (cursor.moveToNext()) {
            String string = cursor.getString(cursor.getColumnIndex("display_name"));
            String string2 = cursor.getString(cursor.getColumnIndex("phoneNumber"));
            String str3 = string;
            if (string == null) {
                str3 = " ";
            }
            String str4 = string2;
            if (string2 == null) {
                str4 = " ";
            }
            if (!str2.equals(str3) || !str.equals(str4)) {
                this.FirstItemList.add(true);
                str = str4;
                str2 = str3;
            } else {
                this.FirstItemList.add(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.mAdapter.getCount(); i2++) {
            i = i;
            if (this.mAdapter.map.get(Integer.valueOf(i2)) != null) {
                i = i;
                if (this.mAdapter.map.get(Integer.valueOf(i2)).intValue() == 1) {
                    i++;
                }
            }
        }
        return i;
    }

    private void init() {
        Context applicationContext = getApplicationContext();
        if (this.mAdapter == null) {
            this.mAdapter = new DuplicateListAdapter(applicationContext, null, 2);
        }
        this.mListView.setAdapter((ListAdapter) this.mAdapter);
        this.mListView.setDivider(null);
        this.mQueryHandler = new DuplicateContactsQueryHandler(getContentResolver());
        this.mProgressDialog = new ProgressDialog(this);
        this.mProgressDialog.setCancelable(false);
        this.mProgressDialog.setMessage(getString(2131755350));
        if (isDeleting) {
            this.mProgressDialog.show();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if (bundle != null) {
                this.mSaveInstance = bundle;
                if (this.mSaveInstance.getIntegerArrayList(SELECT_TAG) != null) {
                    this.enableDelete = true;
                }
            }
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            this.mAccountFrom = getIntent().getExtras().getString(ACCOUNT_FROM);
            setContentView(2131427370);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayOptions(12, 12);
                actionBar.setTitle(2131755820);
                actionBar.setDisplayShowHomeEnabled(false);
            }
            this.mItemCheckSelectAll = (CheckedTextView) findViewById(2131296964);
            this.mItemCheckSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.AsusDeleteDuplicateActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (((CheckedTextView) view).isChecked()) {
                        AsusDeleteDuplicateActivity.this.mAdapter.UnSelectAll();
                        AsusDeleteDuplicateActivity.this.setSelectAllCheck(false);
                        AsusDeleteDuplicateActivity.this.mAdapter.notifyDataSetChanged();
                        return;
                    }
                    AsusDeleteDuplicateActivity.this.mAdapter.selectAll();
                    AsusDeleteDuplicateActivity.this.setSelectAllCheck(true);
                    AsusDeleteDuplicateActivity.this.mAdapter.notifyDataSetChanged();
                }
            });
            this.mEmptyView = (TextView) findViewById(2131296787);
            this.mListView = (ListView) findViewById(2131296995);
            this.mListView.setFastScrollEnabled(true);
            init();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492883, menu);
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.mQueryHandler = null;
        if (this.mProgressDialog != null) {
            this.mProgressDialog.dismiss();
        }
        if (this.mAdapter != null) {
            this.mAdapter.changeCursor(null);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                break;
            case 2131296660:
                new AlertDialog.Builder(this).setTitle(2131755820).setMessage(2131755522).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.AsusDeleteDuplicateActivity.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Cursor cursor;
                        int count = AsusDeleteDuplicateActivity.this.mAdapter.getCount();
                        ArrayList arrayList = new ArrayList();
                        for (int i2 = 0; i2 < count; i2++) {
                            if (AsusDeleteDuplicateActivity.this.mAdapter.map.get(Integer.valueOf(i2)) != null && AsusDeleteDuplicateActivity.this.mAdapter.map.get(Integer.valueOf(i2)).intValue() == 1 && !AsusDeleteDuplicateActivity.this.FirstItemList.get(i2).booleanValue() && (cursor = (Cursor) AsusDeleteDuplicateActivity.this.mAdapter.getItem(i2)) != null) {
                                arrayList.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("_id"))));
                            }
                        }
                        if (arrayList.size() > 0) {
                            Log.d(AsusDeleteDuplicateActivity.TAG, "delete List size = " + arrayList.size());
                            new DeleteDuplicateTask().execute(arrayList);
                            AsusDeleteDuplicateActivity.this.mProgressDialog.show();
                            boolean unused = AsusDeleteDuplicateActivity.isDeleting = true;
                        }
                    }
                }).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.AsusDeleteDuplicateActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).show();
                break;
            case 2131297041:
                finish();
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        this.mDeleteMenuItem = menu.findItem(2131296660);
        if (this.mDeleteMenuItem != null) {
            this.mDeleteMenuItem.setEnabled(!this.mEmptyView.isShown() && this.enableDelete);
            a.a(this, this.mDeleteMenuItem);
        }
        MenuItem findItem = menu.findItem(2131297041);
        if (findItem == null) {
            return true;
        }
        a.a(this, findItem);
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!isDeleting) {
            this.mQueryHandler.startSearch(this.mAccountFrom);
            this.mProgressDialog.show();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.mAdapter != null) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i = 0; i < this.mAdapter.getCount(); i++) {
                if (this.mAdapter.map.get(Integer.valueOf(i)) != null && this.mAdapter.map.get(Integer.valueOf(i)).intValue() == 1) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            bundle.putIntegerArrayList(SELECT_TAG, arrayList);
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    public void setSelectAllCheck(boolean z) {
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(2131296964);
        if (checkedTextView != null) {
            checkedTextView.setChecked(z);
        }
        if (this.mDeleteMenuItem != null) {
            this.mDeleteMenuItem.setEnabled(getSelectedCount() > 0);
            a.a(this, this.mDeleteMenuItem);
        }
    }
}

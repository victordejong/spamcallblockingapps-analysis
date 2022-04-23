package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.ContactSaveService;
import com.android.contacts.group.f;
import com.android.contacts.k;
import com.android.contacts.list.TouchListView;
import com.android.contacts.skin.a;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/FavoriteEditorActivity.class */
public class FavoriteEditorActivity extends Activity {
    public static final String ACTION_ASUS_MULTIPLE_PHONENUMBER_PICKER = "android.intent.action.ASUS_MULTIPLE_PHONENUMBER_PICKER";
    public static final String ACTION_PICK_CONTACT = "android.intent.action.ACTION_PICK_CONTACT";
    public static final int ADD_TO_FAVORITE = 20;
    public static final int EDIT_FAVORITE = 30;
    public static final int FAVORITE_BATCH_LIMIT = 20;
    private static final String KEY_BACKUP_FAVORITE_TO_ADD = "backupFavoritesToAdd";
    public static final String KEY_BACKUP_FAVORITE_TO_DISPLAY = "backupFavoritesToDisplay";
    private static final String KEY_BACKUP_FAVORITE_TO_REMOVE = "backupFavoritesToRemove";
    private static final String KEY_ON_SAVING = "onSaving";
    private static final String[] PROJECTION_COLUMNS = {"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup"};
    private static final String TAG = "FavoriteEditorActivity";
    private long[] mFavoriteToAddArray;
    private long[] mFavoriteToDisplayArray;
    private long[] mFavoriteToRemoveArray;
    private TextView mGroupEmptyView;
    private String mUnknownName;
    private ArrayList<Long> mListFavoriteToAdd = new ArrayList<>();
    private ArrayList<Long> mListFavoriteToRemove = new ArrayList<>();
    private ArrayList<Long> mListFavoriteToDisplay = new ArrayList<>();
    private FavoriteMoveListAdapter mFavoriteMoveListAdapter = null;
    private boolean mIsUpdateOrder = false;
    private ProgressDialog mDeleteProgress = null;
    private boolean mIsSaving = false;
    private boolean mIsCarMode = false;
    private TouchListView.b onDrop = new TouchListView.b() { // from class: com.android.contacts.activities.FavoriteEditorActivity.1
        @Override // com.android.contacts.list.TouchListView.b
        public void drop(int i, int i2) {
            Long item = FavoriteEditorActivity.this.mFavoriteMoveListAdapter.getItem(i);
            FavoriteEditorActivity.this.mFavoriteMoveListAdapter.remove(item);
            FavoriteEditorActivity.this.mFavoriteMoveListAdapter.insert(item, i2);
            FavoriteEditorActivity.this.mIsUpdateOrder = true;
        }
    };
    private TouchListView.c onRemove = new TouchListView.c() { // from class: com.android.contacts.activities.FavoriteEditorActivity.2
        @Override // com.android.contacts.list.TouchListView.c
        public void remove(int i) {
            FavoriteEditorActivity.this.mFavoriteMoveListAdapter.remove(FavoriteEditorActivity.this.mFavoriteMoveListAdapter.getItem(i));
            FavoriteEditorActivity.this.mIsUpdateOrder = true;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/FavoriteEditorActivity$FavoriteMoveListAdapter.class */
    public class FavoriteMoveListAdapter extends ArrayAdapter<Long> {
        public FavoriteMoveListAdapter() {
            super(FavoriteEditorActivity.this, 2131427558, FavoriteEditorActivity.this.mListFavoriteToDisplay);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Cursor cursor;
            Throwable th;
            View inflate = FavoriteEditorActivity.this.getLayoutInflater().inflate(2131427558, viewGroup, false);
            long longValue = ((Long) FavoriteEditorActivity.this.mListFavoriteToDisplay.get(i)).longValue();
            inflate.setTag(Long.valueOf(longValue));
            try {
                Cursor query = FavoriteEditorActivity.this.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", PhotoSelectionActivity.PHOTO_URI, SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", PhotoSelectionActivity.PHOTO_URI}, "_id = " + longValue, null, null);
                if (query != null) {
                    try {
                        if (query.getCount() > 0) {
                            query.moveToFirst();
                            String string = query.getString(query.getColumnIndex("display_name"));
                            ((TextView) inflate.findViewById(2131296841)).setText(TextUtils.isEmpty(string) ? FavoriteEditorActivity.this.mUnknownName : string);
                            ImageView imageView = (ImageView) inflate.findViewById(2131296843);
                            if (imageView != null) {
                                imageView.setImageDrawable(null);
                            }
                            k a2 = k.a(FavoriteEditorActivity.this);
                            String string2 = query.getString(query.getColumnIndex(PhotoSelectionActivity.PHOTO_URI));
                            Uri parse = string2 == null ? null : Uri.parse(string2);
                            Uri uri = parse;
                            if (parse == null) {
                                uri = parse;
                                if (!query.isNull(query.getColumnIndex(SpeedDialList.Columns.ISSIM))) {
                                    int i2 = query.getInt(query.getColumnIndex(SpeedDialList.Columns.ISSIM));
                                    uri = parse;
                                    if (i2 > 0) {
                                        uri = Uri.parse("content://sim/" + i2);
                                    }
                                }
                            }
                            k.d dVar = null;
                            if (uri == null) {
                                dVar = new k.d(string, null, true);
                            }
                            a2.a(imageView, uri, imageView.getWidth(), false, true, dVar);
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
                RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131296655);
                final ImageView imageView2 = (ImageView) inflate.findViewById(2131296661);
                if (FavoriteEditorActivity.this.mListFavoriteToRemove.contains(Long.valueOf(longValue))) {
                    imageView2.setSelected(true);
                } else {
                    imageView2.setSelected(false);
                }
                relativeLayout.setTag(Long.valueOf(longValue));
                relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.FavoriteEditorActivity.FavoriteMoveListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        long parseLong = Long.parseLong(String.valueOf(view2.getTag()));
                        if (imageView2.isSelected()) {
                            imageView2.setSelected(false);
                            FavoriteEditorActivity.this.addFavoriteTemp(parseLong);
                            return;
                        }
                        imageView2.setSelected(true);
                        FavoriteEditorActivity.this.removeFavoriteTemp(parseLong);
                    }
                });
                if (!PhoneCapabilityTester.IsAsusDevice()) {
                    ((ImageView) inflate.findViewById(R.id.icon)).setVisibility(8);
                }
                inflate.setBackgroundResource(2131034116);
                return inflate;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/FavoriteEditorActivity$SaveFavoriteTask.class */
    public class SaveFavoriteTask extends AsyncTask<ArrayList<Long>, Void, Void> {
        private Context mCtx;

        SaveFavoriteTask(Context context) {
            this.mCtx = null;
            this.mCtx = context;
        }

        private String getLookup(long j) {
            Throwable th;
            Cursor cursor;
            try {
                cursor = this.mCtx.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"lookup"}, "_id=?", new String[]{String.valueOf(j)}, null);
                String str = null;
                if (cursor != null) {
                    str = null;
                    try {
                        if (cursor.moveToFirst()) {
                            str = cursor.getString(0);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                return str;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(ArrayList<Long>... arrayListArr) {
            ArrayList<Long> arrayList = arrayListArr[0];
            if (arrayList.size() > 0) {
                ListIterator<Long> listIterator = arrayList.listIterator();
                while (listIterator.hasNext()) {
                    long longValue = listIterator.next().longValue();
                    this.mCtx.startService(ContactSaveService.a(this.mCtx, ContactsContract.Contacts.getLookupUri(longValue, getLookup(longValue)), true));
                }
            }
            ArrayList<Long> arrayList2 = arrayListArr[1];
            if (arrayList2.size() <= 0) {
                return null;
            }
            ListIterator<Long> listIterator2 = arrayList2.listIterator();
            while (listIterator2.hasNext()) {
                long longValue2 = listIterator2.next().longValue();
                this.mCtx.startService(ContactSaveService.a(this.mCtx, ContactsContract.Contacts.getLookupUri(longValue2, getLookup(longValue2)), false));
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            FavoriteEditorActivity.this.closeProgressDialog();
            if (this.mCtx != null) {
                ((Activity) this.mCtx).finish();
                this.mCtx = null;
            }
            super.onPostExecute((SaveFavoriteTask) r4);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/FavoriteEditorActivity$UpdateFavoriteOrderTask.class */
    public class UpdateFavoriteOrderTask extends AsyncTask<ArrayList<ContentProviderOperation>, Void, Void> {
        private ContentResolver mCr;

        UpdateFavoriteOrderTask(ContentResolver contentResolver) {
            this.mCr = null;
            this.mCr = contentResolver;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(ArrayList<ContentProviderOperation>... arrayListArr) {
            try {
                this.mCr.applyBatch("com.android.contacts", arrayListArr[0]);
                return null;
            } catch (OperationApplicationException e) {
                Log.e(FavoriteEditorActivity.TAG, String.format("%s: %s", e.toString(), e.getMessage()));
                return null;
            } catch (RemoteException e2) {
                Log.e(FavoriteEditorActivity.TAG, String.format("%s: %s", e2.toString(), e2.getMessage()));
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            this.mCr = null;
            super.onPostExecute((UpdateFavoriteOrderTask) r4);
        }
    }

    private ArrayList<Long> changLongArrayToList(long[] jArr) {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    private long[] changeLongListToArray(ArrayList<Long> arrayList) {
        long[] jArr = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        return jArr;
    }

    private void checkGroupListShowalbe() {
        if (this.mFavoriteMoveListAdapter.getCount() == 0) {
            this.mGroupEmptyView.setVisibility(0);
        } else {
            this.mGroupEmptyView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeProgressDialog() {
        if (this.mDeleteProgress != null) {
            this.mDeleteProgress.cancel();
            this.mDeleteProgress.dismiss();
        }
    }

    public static int getFavoriteCount(Context context) {
        Throwable th;
        Cursor cursor;
        int count;
        try {
            Cursor query = context.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "starred"}, "starred=?", new String[]{"1"}, null);
            if (query != null) {
                try {
                    count = query.getCount();
                    query.close();
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                count = 0;
            }
            if (query != null) {
                query.close();
            }
            return count;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private void saveFavorite() {
        if (this.mIsUpdateOrder) {
            updateFavoriteOrderByBatch(this.mListFavoriteToDisplay);
        }
        if (this.mListFavoriteToAdd.size() > 0 || this.mListFavoriteToRemove.size() > 0) {
            this.mIsSaving = true;
            showProgressDialog();
            new SaveFavoriteTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mListFavoriteToAdd, this.mListFavoriteToRemove);
        }
        if (this.mListFavoriteToAdd.size() == 0 && this.mListFavoriteToRemove.size() == 0) {
            finish();
        }
    }

    private void showProgressDialog() {
        if (this.mDeleteProgress != null && !this.mDeleteProgress.isShowing()) {
            this.mDeleteProgress.show();
        }
    }

    public int addFavoriteTemp(long j) {
        if (this.mListFavoriteToRemove.contains(Long.valueOf(j))) {
            this.mListFavoriteToRemove.remove(Long.valueOf(j));
        } else {
            this.mListFavoriteToAdd.add(Long.valueOf(j));
        }
        this.mIsUpdateOrder = true;
        return 0;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            switch (i) {
                case 20:
                    ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("uri_array");
                    if (parcelableArrayListExtra != null) {
                        Iterator it = parcelableArrayListExtra.iterator();
                        while (it.hasNext()) {
                            long parseLong = Long.parseLong(((Uri) it.next()).getLastPathSegment());
                            addFavoriteTemp(parseLong);
                            this.mFavoriteMoveListAdapter.add(Long.valueOf(parseLong));
                            checkGroupListShowalbe();
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        saveFavorite();
        if (this.mListFavoriteToAdd.size() == 0 && this.mListFavoriteToRemove.size() == 0) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Throwable th;
        Cursor cursor;
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            setContentView(2131427557);
            this.mIsCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || this.mIsCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            if (bundle == null) {
                try {
                    Cursor query = getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, PROJECTION_COLUMNS, "starred=?", new String[]{"1"}, f.d());
                    if (query != null) {
                        try {
                            query.moveToFirst();
                            for (int i = 0; i < query.getCount(); i++) {
                                this.mListFavoriteToDisplay.add(Long.valueOf(query.getLong(query.getColumnIndex("_id"))));
                                query.moveToNext();
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
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            } else {
                this.mFavoriteToAddArray = bundle.getLongArray(KEY_BACKUP_FAVORITE_TO_ADD);
                this.mFavoriteToRemoveArray = bundle.getLongArray(KEY_BACKUP_FAVORITE_TO_REMOVE);
                this.mFavoriteToDisplayArray = bundle.getLongArray(KEY_BACKUP_FAVORITE_TO_DISPLAY);
                this.mListFavoriteToAdd = changLongArrayToList(this.mFavoriteToAddArray);
                this.mListFavoriteToRemove = changLongArrayToList(this.mFavoriteToRemoveArray);
                this.mListFavoriteToDisplay = changLongArrayToList(this.mFavoriteToDisplayArray);
                this.mIsSaving = bundle.getBoolean(KEY_ON_SAVING);
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setTitle(2131755826);
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
            this.mUnknownName = getString(2131755855);
            TouchListView touchListView = (TouchListView) findViewById(2131296840);
            this.mFavoriteMoveListAdapter = new FavoriteMoveListAdapter();
            touchListView.setAdapter((ListAdapter) this.mFavoriteMoveListAdapter);
            touchListView.setDropListener(this.onDrop);
            touchListView.setRemoveListener(this.onRemove);
            this.mGroupEmptyView = (TextView) findViewById(2131297123);
            checkGroupListShowalbe();
            this.mDeleteProgress = new ProgressDialog(this);
            this.mDeleteProgress.setCancelable(false);
            this.mDeleteProgress.setMessage(getString(2131755350));
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492866, menu);
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        closeProgressDialog();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                saveFavorite();
                break;
            case 2131296299:
                Intent intent = new Intent("android.intent.action.MULTI_SELECT_DIALOG_CONTACT_PICKER");
                intent.putExtra("fromFavoriteEditActivity", true);
                intent.putExtra(KEY_BACKUP_FAVORITE_TO_DISPLAY, changeLongListToArray(this.mListFavoriteToDisplay));
                startActivityForResult(intent, 20);
                break;
            case 2131297041:
                super.onBackPressed();
                break;
            case 2131297048:
                saveFavorite();
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131297029);
        MenuItem findItem2 = menu.findItem(2131296299);
        MenuItem findItem3 = menu.findItem(2131297031);
        MenuItem findItem4 = menu.findItem(2131297041);
        MenuItem findItem5 = menu.findItem(2131297048);
        if (findItem2 != null) {
            a.a(this, findItem2);
        }
        if (findItem4 != null) {
            a.a(this, findItem4);
        }
        if (findItem5 != null) {
            a.a(this, findItem5);
        }
        if (findItem != null) {
            findItem.setVisible(false);
        }
        if (findItem2 != null) {
            findItem2.setVisible(true);
        }
        if (findItem3 == null) {
            return true;
        }
        findItem3.setVisible(false);
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mIsSaving) {
            showProgressDialog();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.mFavoriteToAddArray = changeLongListToArray(this.mListFavoriteToAdd);
        this.mFavoriteToRemoveArray = changeLongListToArray(this.mListFavoriteToRemove);
        this.mFavoriteToDisplayArray = changeLongListToArray(this.mListFavoriteToDisplay);
        bundle.putLongArray(KEY_BACKUP_FAVORITE_TO_ADD, this.mFavoriteToAddArray);
        bundle.putLongArray(KEY_BACKUP_FAVORITE_TO_REMOVE, this.mFavoriteToRemoveArray);
        bundle.putLongArray(KEY_BACKUP_FAVORITE_TO_DISPLAY, this.mFavoriteToDisplayArray);
        bundle.putBoolean(KEY_ON_SAVING, this.mIsSaving);
    }

    public int removeFavoriteTemp(long j) {
        if (this.mListFavoriteToAdd.contains(Long.valueOf(j))) {
            this.mListFavoriteToAdd.remove(Long.valueOf(j));
        } else {
            this.mListFavoriteToRemove.add(Long.valueOf(j));
        }
        this.mIsUpdateOrder = true;
        return 0;
    }

    public void updateFavoriteOrderByBatch(List<Long> list) {
        if (!(list == null || list.size() == 0)) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                long longValue = list.get(i2).longValue();
                ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.Contacts.CONTENT_URI);
                newUpdate.withSelection("_id = " + longValue, null);
                if (this.mListFavoriteToRemove.contains(Long.valueOf(longValue))) {
                    newUpdate.withValue("order_favorite", -1);
                } else {
                    i++;
                    newUpdate.withValue("order_favorite", Integer.valueOf(i));
                }
                arrayList.add(newUpdate.build());
            }
            new UpdateFavoriteOrderTask(getContentResolver()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrayList);
        }
    }
}

package com.android.contacts.activities;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.android.contacts.group.f;
import com.android.contacts.group.g;
import com.android.contacts.list.TouchListView;
import com.android.contacts.skin.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGlobalGroupEditorActivity.class */
public class AsusGlobalGroupEditorActivity extends Activity {
    private static final String[] PROJECTION_COLUMNS = {"_id", AsusGlobalGroupsColumns.TITLE, AsusGlobalGroupsColumns.SORT, AsusGlobalGroupsColumns.IS_READ_ONLY};
    private static boolean isDeleting = false;
    private TextView mGroupEmptyView;
    private ProgressDialog mProgressDialog;
    private ListItemMoveListAdapter mListItemMoveListAdapter = null;
    private ArrayList<g> mListToDisplay = new ArrayList<>();
    private TouchListView.b onDrop = new TouchListView.b() { // from class: com.android.contacts.activities.AsusGlobalGroupEditorActivity.1
        @Override // com.android.contacts.list.TouchListView.b
        public void drop(int i, int i2) {
            g item = AsusGlobalGroupEditorActivity.this.mListItemMoveListAdapter.getItem(i);
            g item2 = AsusGlobalGroupEditorActivity.this.mListItemMoveListAdapter.getItem(i2);
            if (!f.c(item2.f) && !f.b(item2.f)) {
                AsusGlobalGroupEditorActivity.this.mListItemMoveListAdapter.remove(item);
                AsusGlobalGroupEditorActivity.this.mListItemMoveListAdapter.insert(item, i2);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGlobalGroupEditorActivity$AsusGlobalGroupsColumns.class */
    public interface AsusGlobalGroupsColumns {
        public static final String IS_READ_ONLY = "group_is_read_only";
        public static final String SORT = "sort";
        public static final String TITLE = "title";
        public static final String _ID = "_id";
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGlobalGroupEditorActivity$EditGroupItemTask.class */
    private class EditGroupItemTask extends AsyncTask<Integer[], Void, Void> {
        EditGroupItemTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Integer[]... numArr) {
            if (AsusGlobalGroupEditorActivity.this.mListToDisplay == null) {
                return null;
            }
            ContentValues contentValues = new ContentValues();
            for (int i = 0; i < AsusGlobalGroupEditorActivity.this.mListToDisplay.size(); i++) {
                if (((g) AsusGlobalGroupEditorActivity.this.mListToDisplay.get(i)).e) {
                    AsusGlobalGroupEditorActivity.this.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups/" + String.valueOf(((g) AsusGlobalGroupEditorActivity.this.mListToDisplay.get(i)).f1419a)), null, null);
                } else {
                    contentValues.clear();
                    contentValues.put(AsusGlobalGroupsColumns.SORT, String.valueOf(i));
                    AsusGlobalGroupEditorActivity.this.getContentResolver().update(Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups"), contentValues, "_id = " + String.valueOf(((g) AsusGlobalGroupEditorActivity.this.mListToDisplay.get(i)).f1419a), null);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            super.onPostExecute((EditGroupItemTask) r4);
            if (AsusGlobalGroupEditorActivity.this.mProgressDialog != null) {
                AsusGlobalGroupEditorActivity.this.mProgressDialog.dismiss();
            }
            boolean unused = AsusGlobalGroupEditorActivity.isDeleting = false;
            AsusGlobalGroupEditorActivity.this.finish();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGlobalGroupEditorActivity$ListItemMoveListAdapter.class */
    class ListItemMoveListAdapter extends ArrayAdapter<g> {
        public ListItemMoveListAdapter() {
            super(AsusGlobalGroupEditorActivity.this, 2131427377, AsusGlobalGroupEditorActivity.this.mListToDisplay);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            boolean z;
            View view2;
            g gVar = (g) AsusGlobalGroupEditorActivity.this.mListToDisplay.get(i);
            if (f.c(gVar.f) || f.b(gVar.f)) {
                view2 = AsusGlobalGroupEditorActivity.this.getLayoutInflater().inflate(2131427378, viewGroup, false);
                z = false;
            } else {
                view2 = AsusGlobalGroupEditorActivity.this.getLayoutInflater().inflate(2131427377, viewGroup, false);
                z = true;
            }
            ((TextView) view2.findViewById(2131296879)).setText(gVar.f1420b);
            CheckedTextView checkedTextView = (CheckedTextView) view2.findViewById(2131296965);
            if (gVar.c.equals("1")) {
                gVar.e = false;
                checkedTextView.setEnabled(false);
                checkedTextView.setBackgroundResource(2131165225);
            } else {
                if (gVar.e) {
                    checkedTextView.setChecked(true);
                }
                checkedTextView.setOnClickListener(new OnListClickListener(i, checkedTextView, gVar));
            }
            if (!z) {
                gVar.e = false;
                checkedTextView.setEnabled(false);
                checkedTextView.setBackgroundResource(2131165225);
            }
            return view2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGlobalGroupEditorActivity$OnListClickListener.class */
    private class OnListClickListener implements View.OnClickListener {
        private CheckedTextView mCheckedTextView;
        private g mData;
        private int mIndex;

        OnListClickListener(int i, CheckedTextView checkedTextView, g gVar) {
            this.mCheckedTextView = checkedTextView;
            this.mData = gVar;
            this.mIndex = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mCheckedTextView.setChecked(!this.mCheckedTextView.isChecked());
            this.mData.e = this.mCheckedTextView.isChecked();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x017a  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.AsusGlobalGroupEditorActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492866, menu);
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.dismiss();
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
            case 2131297041:
                finish();
                break;
            case 2131297048:
                new EditGroupItemTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Integer[0]);
                this.mProgressDialog.show();
                isDeleting = true;
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
            findItem2.setVisible(false);
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
        if (isDeleting) {
            this.mProgressDialog.show();
        }
    }
}

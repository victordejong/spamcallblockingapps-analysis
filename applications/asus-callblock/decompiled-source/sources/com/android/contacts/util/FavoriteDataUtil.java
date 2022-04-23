package com.android.contacts.util;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.FavoriteEditorActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/FavoriteDataUtil.class */
public class FavoriteDataUtil {
    private static final String TAG = "FavoriteDataUtil";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/FavoriteDataUtil$AddFavoriteTask.class */
    public static class AddFavoriteTask extends AsyncTask<ArrayList<Uri>, Void, Void> {
        private Context mCtx;

        AddFavoriteTask(Context context) {
            this.mCtx = null;
            this.mCtx = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(ArrayList<Uri>... arrayListArr) {
            ListIterator<Uri> listIterator = arrayListArr[0].listIterator();
            while (listIterator.hasNext()) {
                this.mCtx.startService(ContactSaveService.a(this.mCtx, listIterator.next(), true));
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            this.mCtx = null;
            super.onPostExecute((AddFavoriteTask) r4);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/FavoriteDataUtil$UpdateFavoriteOrderTask.class */
    private static class UpdateFavoriteOrderTask extends AsyncTask<ArrayList<ContentProviderOperation>, Void, Void> {
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
                Log.e(FavoriteDataUtil.TAG, String.format("%s: %s", e.toString(), e.getMessage()));
                return null;
            } catch (RemoteException e2) {
                Log.e(FavoriteDataUtil.TAG, String.format("%s: %s", e2.toString(), e2.getMessage()));
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            this.mCr = null;
            super.onPostExecute((UpdateFavoriteOrderTask) r4);
        }
    }

    public static void addFavoriteData(Context context, Intent intent) {
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("uri_array");
        if (parcelableArrayListExtra != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = parcelableArrayListExtra.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (uri != null) {
                    String lastPathSegment = uri.getLastPathSegment();
                    arrayList.add(Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "contacts/lookup/" + getLookup(context, lastPathSegment) + "/" + lastPathSegment));
                    arrayList2.add(Long.valueOf(Long.parseLong(lastPathSegment)));
                }
            }
            new AddFavoriteTask(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrayList);
        }
    }

    private static String getLookup(Context context, String str) {
        Cursor query = context.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "lookup"}, "_id=?", new String[]{str}, null);
        String str2 = null;
        if (query != null) {
            str2 = null;
            try {
                if (query.moveToFirst()) {
                    str2 = query.getString(query.getColumnIndex("lookup"));
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        return str2;
    }

    public static void updateFavoriteOrderByBatch(Context context, List<Long> list) {
        if (!(list == null || list.size() == 0)) {
            ArrayList arrayList = new ArrayList();
            int favoriteCount = FavoriteEditorActivity.getFavoriteCount(context);
            for (int i = 0; i < list.size(); i++) {
                long longValue = list.get(i).longValue();
                favoriteCount++;
                ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.Contacts.CONTENT_URI);
                newUpdate.withSelection("_id = " + longValue, null);
                newUpdate.withValue("order_favorite", Integer.valueOf(favoriteCount));
                arrayList.add(newUpdate.build());
            }
            new UpdateFavoriteOrderTask(context.getContentResolver()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, arrayList);
        }
    }
}

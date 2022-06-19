package com.callerid.block.sms;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import com.callerid.block.bean.MessageBean;
import com.callerid.block.main.EZCallApplication;
import d.p.a.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$x.class */
class MessageBoxListActivity$x extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    private WeakReference<Context> f4856a;

    MessageBoxListActivity$x(Context context) {
        this.f4856a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        ArrayList arrayList;
        MessageBoxListActivity messageBoxListActivity = this.f4856a.get();
        if (messageBoxListActivity == null || (arrayList = messageBoxListActivity.y0) == null || arrayList.size() <= 0) {
            return null;
        }
        try {
            ContentResolver contentResolver = messageBoxListActivity.getContentResolver();
            for (int i = 0; i < messageBoxListActivity.y0.size(); i++) {
                contentResolver.delete(Uri.parse("content://mms-sms/conversations/" + MessageBoxListActivity.C0(messageBoxListActivity).getThread_id()), "_id=" + ((MessageBean) messageBoxListActivity.y0.get(i)).getId(), null);
            }
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.ADD_UPDATE_CONTACTS");
            a.b(EZCallApplication.m10163c()).d(intent);
            messageBoxListActivity.y0.clear();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public void onPostExecute(Void r4) {
        super.onPostExecute(r4);
    }
}

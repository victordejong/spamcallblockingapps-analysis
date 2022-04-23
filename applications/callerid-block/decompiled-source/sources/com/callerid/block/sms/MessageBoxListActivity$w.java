package com.callerid.block.sms;

import android.content.Context;
import android.os.AsyncTask;
import com.callerid.block.bean.MessageBean;
import java.lang.ref.WeakReference;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$w.class */
class MessageBoxListActivity$w extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    private WeakReference<Context> f4855a;

    MessageBoxListActivity$w(Context context) {
        this.f4855a = new WeakReference<>(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        MessageBoxListActivity messageBoxListActivity = this.f4855a.get();
        if (messageBoxListActivity == null || MessageBoxListActivity.A0(messageBoxListActivity) == null || MessageBoxListActivity.A0(messageBoxListActivity).size() <= 0 || messageBoxListActivity.y0 == null) {
            return null;
        }
        Iterator it = MessageBoxListActivity.A0(messageBoxListActivity).iterator();
        while (it.hasNext()) {
            ((MessageBean) it.next()).setSelect(false);
        }
        messageBoxListActivity.y0.clear();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void onPostExecute(Void r4) {
        super.onPostExecute(r4);
        MessageBoxListActivity messageBoxListActivity = this.f4855a.get();
        if (messageBoxListActivity != null) {
            MessageBoxListActivity.B0(messageBoxListActivity).notifyDataSetChanged();
        }
    }
}

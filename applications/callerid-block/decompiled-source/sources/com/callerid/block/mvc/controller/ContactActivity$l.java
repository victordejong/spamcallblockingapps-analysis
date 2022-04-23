package com.callerid.block.mvc.controller;

import android.os.AsyncTask;
import android.widget.TextView;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/ContactActivity$l.class */
class ContactActivity$l extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    WeakReference<ContactActivity> f4616a;

    ContactActivity$l(ContactActivity contactActivity) {
        this.f4616a = new WeakReference<>(contactActivity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        ContactActivity contactActivity = this.f4616a.get();
        if (contactActivity == null) {
            return null;
        }
        String j = C1216t0.m9567j(EZCallApplication.m10163c(), ContactActivity.e0(contactActivity).m10045o());
        C1227w.m9527a("getcontactname", "name:" + j);
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void onPostExecute(String str) {
        TextView textView;
        String str2;
        super.onPostExecute(str);
        ContactActivity contactActivity = this.f4616a.get();
        if (contactActivity == null) {
            return;
        }
        if (str != null) {
            ContactActivity.g0(contactActivity).setText(str);
            ContactActivity.e0(contactActivity).m10050l0(str);
            return;
        }
        if (ContactActivity.e0(contactActivity).m10047n() == null || "".equals(ContactActivity.e0(contactActivity).m10047n())) {
            textView = ContactActivity.g0(contactActivity);
            str2 = ContactActivity.e0(contactActivity).m10045o();
        } else {
            textView = ContactActivity.g0(contactActivity);
            str2 = ContactActivity.e0(contactActivity).m10047n();
        }
        textView.setText(str2);
    }
}

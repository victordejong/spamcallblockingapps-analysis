package com.callerid.block.sms;

import android.os.AsyncTask;
import android.os.Build;
import android.view.Window;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1216t0;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$y.class */
class MessageBoxListActivity$y extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private final int f4857a;

    /* renamed from: b */
    WeakReference<MessageBoxListActivity> f4858b;

    /* renamed from: c */
    private int f4859c;

    /* renamed from: d */
    private int f4860d;

    /* renamed from: e */
    private int f4861e;

    MessageBoxListActivity$y(MessageBoxListActivity messageBoxListActivity) {
        this.f4858b = new WeakReference<>(messageBoxListActivity);
        this.f4859c = C1205p0.m9636a(messageBoxListActivity, R$attr.spam_color_title, R$color.spam);
        this.f4857a = C1205p0.m9636a(messageBoxListActivity, R$attr.colorPrimary, R$color.colorPrimary);
        this.f4860d = C1205p0.m9636a(messageBoxListActivity, R$attr.spam_color_primary_dark, R$color.spam);
        this.f4861e = C1205p0.m9636a(messageBoxListActivity, R$attr.colorPrimaryDark, R$color.colorPrimaryDark);
    }

    /* renamed from: a */
    public String doInBackground(Void... voidArr) {
        String str;
        EZSearchContacts m10468d;
        MessageBoxListActivity messageBoxListActivity = this.f4858b.get();
        if (messageBoxListActivity == null || messageBoxListActivity == null) {
            return null;
        }
        try {
            m10468d = C0947d.m10470b().m10468d(MessageBoxListActivity.C0(messageBoxListActivity).getAddress());
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        if (m10468d == null) {
            EZSearchContacts m10468d2 = C0947d.m10470b().m10468d(C1216t0.m9584a0(messageBoxListActivity.getApplicationContext(), MessageBoxListActivity.C0(messageBoxListActivity).getAddress()));
            str = "";
            if (m10468d2 != null) {
                str = m10468d2.getType_label();
            }
            return str;
        }
        str = m10468d.getType_label();
        return str;
    }

    /* renamed from: b */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        MessageBoxListActivity messageBoxListActivity = this.f4858b.get();
        if (messageBoxListActivity == null || str == null) {
            return;
        }
        if (!"".equals(str)) {
            MessageBoxListActivity.C0(messageBoxListActivity).setType_label(str);
            MessageBoxListActivity.F0(messageBoxListActivity, str);
            if (MessageBoxListActivity.E0(messageBoxListActivity) != null && !"".equals(MessageBoxListActivity.E0(messageBoxListActivity))) {
                MessageBoxListActivity.l0(messageBoxListActivity).setText(MessageBoxListActivity.E0(messageBoxListActivity));
                MessageBoxListActivity.l0(messageBoxListActivity).setVisibility(0);
                MessageBoxListActivity.m0(messageBoxListActivity).setBackgroundColor(this.f4859c);
                MessageBoxListActivity.n0(messageBoxListActivity).setBackgroundColor(this.f4859c);
                try {
                    if (Build.VERSION.SDK_INT >= 21) {
                        Window window = messageBoxListActivity.getWindow();
                        window.addFlags(Integer.MIN_VALUE);
                        window.setStatusBarColor(this.f4860d);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            MessageBoxListActivity.C0(messageBoxListActivity).setType_label("");
            MessageBoxListActivity.F0(messageBoxListActivity, "");
            MessageBoxListActivity.m0(messageBoxListActivity).setBackgroundColor(this.f4857a);
            MessageBoxListActivity.n0(messageBoxListActivity).setBackgroundColor(this.f4857a);
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    Window window2 = messageBoxListActivity.getWindow();
                    window2.addFlags(Integer.MIN_VALUE);
                    window2.setStatusBarColor(this.f4861e);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            MessageBoxListActivity.l0(messageBoxListActivity).setVisibility(8);
        }
        MessageBoxListActivity.e0(messageBoxListActivity);
    }
}

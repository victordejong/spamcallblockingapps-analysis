package com.callerid.block.sms;

import android.os.Build;
import android.view.Window;
import android.widget.TextView;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$k.class */
public class MessageBoxListActivity$k implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MessageBoxListActivity f4851b;

    /* renamed from: com.callerid.block.sms.MessageBoxListActivity$k$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$k$a.class */
    class RunnableC1137a implements Runnable {
        RunnableC1137a() {
            MessageBoxListActivity$k.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView;
            if (MessageBoxListActivity.b0(MessageBoxListActivity$k.this.f4851b) == null || "".equals(MessageBoxListActivity.b0(MessageBoxListActivity$k.this.f4851b))) {
                textView = MessageBoxListActivity.t0(MessageBoxListActivity$k.this.f4851b);
            } else {
                MessageBoxListActivity.d0(MessageBoxListActivity$k.this.f4851b).setText(MessageBoxListActivity.b0(MessageBoxListActivity$k.this.f4851b));
                MessageBoxListActivity.t0(MessageBoxListActivity$k.this.f4851b).setVisibility(8);
                textView = MessageBoxListActivity.l0(MessageBoxListActivity$k.this.f4851b);
            }
            textView.setText(MessageBoxListActivity.q0(MessageBoxListActivity$k.this.f4851b));
            MessageBoxListActivity.l0(MessageBoxListActivity$k.this.f4851b).setVisibility(8);
            if (MessageBoxListActivity.C0(MessageBoxListActivity$k.this.f4851b) == null) {
                MessageBoxListActivity.D0(MessageBoxListActivity$k.this.f4851b, new SMSBean());
            }
            MessageBoxListActivity.C0(MessageBoxListActivity$k.this.f4851b).setType_label("");
            MessageBoxListActivity.F0(MessageBoxListActivity$k.this.f4851b, "");
            MessageBoxListActivity.m0(MessageBoxListActivity$k.this.f4851b).setBackgroundColor(MessageBoxListActivity.u0(MessageBoxListActivity$k.this.f4851b));
            MessageBoxListActivity.n0(MessageBoxListActivity$k.this.f4851b).setBackgroundColor(MessageBoxListActivity.u0(MessageBoxListActivity$k.this.f4851b));
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    Window window = MessageBoxListActivity$k.this.f4851b.getWindow();
                    window.addFlags(Integer.MIN_VALUE);
                    window.setStatusBarColor(MessageBoxListActivity.v0(MessageBoxListActivity$k.this.f4851b));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            MessageBoxListActivity.l0(MessageBoxListActivity$k.this.f4851b).setVisibility(8);
            MessageBoxListActivity.e0(MessageBoxListActivity$k.this.f4851b);
        }
    }

    MessageBoxListActivity$k(MessageBoxListActivity messageBoxListActivity) {
        this.f4851b = messageBoxListActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageBoxListActivity.c0(this.f4851b, C1216t0.m9567j(EZCallApplication.m10163c(), MessageBoxListActivity.q0(this.f4851b)));
        this.f4851b.runOnUiThread(new RunnableC1137a());
    }
}

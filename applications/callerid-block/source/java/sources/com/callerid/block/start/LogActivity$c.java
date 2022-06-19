package com.callerid.block.start;

import android.os.Message;
import com.callerid.block.util.C1216t0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/LogActivity$c.class */
class LogActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ LogActivity f4929b;

    LogActivity$c(LogActivity logActivity) {
        this.f4929b = logActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            LogActivity logActivity = this.f4929b;
            LogActivity.a0(logActivity, C1216t0.m9607E(logActivity.getApplicationContext()));
            String b0 = LogActivity.b0(this.f4929b);
            Message message = new Message();
            if (b0 == null) {
                message.what = 0;
                LogActivity.Y(this.f4929b);
            } else if (new JSONObject(b0.toString()).getString("status").equals("1")) {
                message.what = 1;
                message.obj = b0;
                LogActivity.W(this.f4929b);
            }
            LogActivity.d0(this.f4929b).sendMessage(message);
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}

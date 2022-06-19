package com.callerid.block.sms;

import android.database.Cursor;
import android.net.Uri;
import com.callerid.block.util.C1227w;
import com.klinker.android.send_message.C2705c;
import com.klinker.android.send_message.C2709f;
import com.klinker.android.send_message.C2712i;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$c.class */
class MessageBoxListActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Uri f4841b;

    /* renamed from: c */
    final /* synthetic */ String f4842c;

    /* renamed from: d */
    final /* synthetic */ String f4843d;

    /* renamed from: e */
    final /* synthetic */ MessageBoxListActivity f4844e;

    MessageBoxListActivity$c(MessageBoxListActivity messageBoxListActivity, Uri uri, String str, String str2) {
        this.f4844e = messageBoxListActivity;
        this.f4841b = uri;
        this.f4842c = str;
        this.f4843d = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        byte[] Y0;
        try {
            if (this.f4841b != null) {
                Cursor query = this.f4844e.getContentResolver().query(this.f4841b, null, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    str = "";
                } else {
                    String string = query.getString(query.getColumnIndex("_data"));
                    str = string;
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "video_path:" + string);
                        str = string;
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (str != null && !"".equals(str) && (Y0 = this.f4844e.Y0(str)) != null && Y0.length > 0) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "videoByte:" + (Y0.length / 1024) + "K");
                    }
                    C2705c c2705c = new C2705c(this.f4842c, this.f4843d);
                    c2705c.m2105b(Y0);
                    C2709f c2709f = new C2709f();
                    c2709f.m2064u(MessageBoxListActivity.V(this.f4844e).m9947e());
                    c2709f.m2062w(MessageBoxListActivity.V(this.f4844e).m9948d());
                    c2709f.m2063v(MessageBoxListActivity.V(this.f4844e).m9949c());
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "settings:" + MessageBoxListActivity.V(this.f4844e).toString());
                    }
                    c2709f.m2086E(true);
                    new C2712i(this.f4844e, c2709f).m2041o(c2705c, 0L);
                }
            }
            MessageBoxListActivity.Z(this.f4844e, 0);
            MessageBoxListActivity.Y(this.f4844e, (Uri) null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

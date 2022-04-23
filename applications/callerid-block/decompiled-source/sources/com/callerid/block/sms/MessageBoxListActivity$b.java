package com.callerid.block.sms;

import android.graphics.Bitmap;
import android.net.Uri;
import com.callerid.block.util.C1227w;
import com.klinker.android.send_message.C2705c;
import com.klinker.android.send_message.C2709f;
import com.klinker.android.send_message.C2712i;
import java.io.File;
import p118g.p119a.p120a.C3139a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$b.class */
class MessageBoxListActivity$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f4837b;

    /* renamed from: c */
    final /* synthetic */ String f4838c;

    /* renamed from: d */
    final /* synthetic */ String f4839d;

    /* renamed from: e */
    final /* synthetic */ MessageBoxListActivity f4840e;

    MessageBoxListActivity$b(MessageBoxListActivity messageBoxListActivity, String str, String str2, String str3) {
        this.f4840e = messageBoxListActivity;
        this.f4837b = str;
        this.f4838c = str2;
        this.f4839d = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Bitmap bitmap;
        try {
            C2709f fVar = new C2709f();
            fVar.m2064u(MessageBoxListActivity.V(this.f4840e).m9947e());
            fVar.m2062w(MessageBoxListActivity.V(this.f4840e).m9948d());
            fVar.m2063v(MessageBoxListActivity.V(this.f4840e).m9949c());
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "settings:" + MessageBoxListActivity.V(this.f4840e).toString());
            }
            fVar.m2086E(true);
            C2712i iVar = new C2712i(this.f4840e, fVar);
            C2705c cVar = new C2705c(this.f4837b, this.f4838c);
            String str = this.f4839d;
            if (str != null && !"".equals(str)) {
                byte[] Y0 = this.f4840e.Y0(this.f4839d);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "imageSize:" + (Y0.length / 1024) + "K");
                }
                if (Y0 == null || Y0.length <= 307200) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "image_video_uri:" + MessageBoxListActivity.X(this.f4840e).toString());
                    }
                    bitmap = C1140a.m9970a(MessageBoxListActivity.X(this.f4840e), this.f4840e.getApplicationContext());
                } else {
                    C3139a aVar = new C3139a(this.f4840e.getApplicationContext());
                    aVar.m58e(640);
                    aVar.m59d(480);
                    Bitmap a = aVar.m62a(new File(this.f4839d));
                    C3139a aVar2 = new C3139a(this.f4840e.getApplicationContext());
                    aVar2.m58e(640);
                    aVar2.m59d(480);
                    byte[] Y02 = this.f4840e.Y0(aVar2.m61b(new File(this.f4839d)).getPath());
                    bitmap = a;
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "imageBytecompressed:" + (Y02.length / 1024) + "k");
                        bitmap = a;
                    }
                }
                if (bitmap != null) {
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "send mms");
                    }
                    cVar.m2094m(bitmap);
                    iVar.m2041o(cVar, 0L);
                } else if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "compressedImageBitmap:null");
                }
            }
            MessageBoxListActivity.Z(this.f4840e, 0);
            MessageBoxListActivity.a0(this.f4840e, (String) null);
            MessageBoxListActivity.Y(this.f4840e, (Uri) null);
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
        }
    }
}

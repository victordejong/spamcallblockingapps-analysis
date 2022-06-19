package p193e.p194a.p1164r.p1170c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.truecaller.service.SyncPhoneBookService;
import java.util.ArrayList;
import p193e.p194a.p1114o5.C19070o;
import p193e.p194a.p1396y4.C21795e;
/* renamed from: e.a.r.c.k */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/k.class */
public abstract class AbstractC19741k extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ArrayList<CharSequence> charSequenceArrayListExtra = intent.getCharSequenceArrayListExtra("granted");
        if (charSequenceArrayListExtra != null) {
            for (CharSequence charSequence : charSequenceArrayListExtra) {
                String valueOf = String.valueOf(charSequence);
                if (TextUtils.equals(valueOf, "android.permission.READ_CONTACTS")) {
                    SyncPhoneBookService.m34744a(context, false);
                    C21795e.m9056h(context);
                }
                if ("android.permission.READ_CALL_LOG".equals(valueOf)) {
                    Uri uri = C19070o.f53265e;
                    synchronized (C19070o.class) {
                        try {
                            C19070o.f53267g.m14150a(context);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }
}

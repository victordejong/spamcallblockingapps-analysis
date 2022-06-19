package com.freshchat.consumer.sdk.p057j;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import java.util.List;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.ay */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ay.class */
public class C1632ay {
    public static final String TAG = "com.freshchat.consumer.sdk.j.ay";

    /* renamed from: a */
    private static void m40182a(Context context, boolean z) {
        C1466e.m40905i(context).putBoolean("XIAOMI_AUTOSTART_USER_NOTIFIED", z);
    }

    /* renamed from: b */
    private static boolean m40181b(Context context, List<Message> list) {
        boolean z = !C1466e.m40905i(context).getBoolean("XIAOMI_AUTOSTART_USER_NOTIFIED");
        boolean z2 = z;
        if (z) {
            z2 = m40179bf(context);
        }
        boolean z3 = z2;
        if (z2) {
            z3 = z2;
            if (list != null) {
                z3 = z2;
                if (list.size() <= 5) {
                    int i = 0;
                    while (true) {
                        z3 = z2;
                        if (i >= list.size()) {
                            break;
                        }
                        z3 = z2;
                        if (i >= 5) {
                            break;
                        } else if (list.get(i).isUserMessage()) {
                            z3 = false;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        return z3;
    }

    /* renamed from: be */
    public static void m40180be(Context context) {
        try {
            context.startActivity(m40176fd());
        } catch (Exception e) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("Failed to launch AutoStart Screen - ");
            m8728C.append(e.getMessage());
            C1613ai.m40283e(str, m8728C.toString());
        }
    }

    /* renamed from: bf */
    private static boolean m40179bf(Context context) {
        List<ResolveInfo> list;
        try {
            list = context.getPackageManager().queryIntentActivities(m40176fd(), 65536);
        } catch (Exception e) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("Failed to launch AutoStart Screen - ");
            m8728C.append(e.getMessage());
            C1613ai.m40283e(str, m8728C.toString());
            list = null;
        }
        return C1716k.m39902a(list);
    }

    /* renamed from: c */
    public static void m40177c(final Context context, List<Message> list) {
        if (context.getResources().getBoolean(C1298R.bool.freshchat_xiaomi_autostart_prompt_enabled) && C1722p.m39824ew() && m40181b(context, list)) {
            String string = context.getString(C1298R.string.freshchat_xiaomi_auto_start_prompt_message);
            if (C1626as.m40233a(string)) {
                g$a m40834m = C1471i.m40834m(context);
                m40834m.f70854a.f156f = string;
                m40834m.m3660i(C1298R.string.freshchat_xiaomi_auto_start_prompt_positive, new DialogInterface.OnClickListener() { // from class: com.freshchat.consumer.sdk.j.ay.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        C1632ay.m40180be(context);
                        dialogInterface.dismiss();
                    }
                });
                m40834m.m3662g(C1298R.string.freshchat_xiaomi_auto_start_prompt_negative, null);
                m40834m.m3668a().show();
            }
            m40182a(context, true);
        }
    }

    /* renamed from: fd */
    private static Intent m40176fd() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity"));
        return intent;
    }
}

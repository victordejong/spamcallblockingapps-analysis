package com.truecaller.flashsdk.receiver;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/flashsdk/receiver/PhoneStateReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/receiver/PhoneStateReceiver.class */
public final class PhoneStateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        if (l.a(intent.getAction(), "android.intent.action.NEW_OUTGOING_CALL")) {
            Bundle extras = intent.getExtras();
            str = null;
            if (extras != null) {
                str = extras.getString("android.intent.extra.PHONE_NUMBER");
            }
        } else {
            Bundle extras2 = intent.getExtras();
            str = null;
            if (extras2 != null) {
                str = extras2.getString("incoming_number");
            }
        }
        if (!(str == null || str.length() == 0)) {
            AbstractC21631b m9330b = C21632c.m9330b();
            long mo9301q = m9330b.mo9301q(str);
            String valueOf = String.valueOf(mo9301q);
            if (mo9301q == -1 || valueOf.length() <= 7 || str.length() <= 7) {
                return;
            }
            String substring = str.substring(str.length() - 7, str.length());
            l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String substring2 = valueOf.substring(valueOf.length() - 7, valueOf.length());
            l.d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            if (!TextUtils.equals(substring, substring2)) {
                return;
            }
            Object systemService = context.getSystemService(RemoteMessageConst.NOTIFICATION);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).cancel((int) (mo9301q % 1000000000));
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, "com.truecaller.flashsdk.receiver.PhoneStateReceiver"), 2, 1);
            m9330b.mo9307k(mo9301q);
        }
    }
}

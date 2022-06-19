package com.truecaller.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.AbstractC21187w1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/notifications/AnalyticsNotificationReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/AnalyticsNotificationReceiver.class */
public final class AnalyticsNotificationReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (intent == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        ((AbstractC21187w1) applicationContext).mo10154s().mo12617O1().mo18967g(intent);
    }
}

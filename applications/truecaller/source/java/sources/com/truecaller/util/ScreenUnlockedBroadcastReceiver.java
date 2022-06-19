package com.truecaller.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/util/ScreenUnlockedBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/util/ScreenUnlockedBroadcastReceiver.class */
public final class ScreenUnlockedBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        if (!l.a("android.intent.action.USER_PRESENT", intent.getAction())) {
            intent = null;
        }
        if (intent != null) {
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            l.d(mo10154s, "(context.applicationCont…GraphHolder).objectsGraph");
            mo10154s.mo12445b1().mo11854a().mo16129c();
        }
    }
}

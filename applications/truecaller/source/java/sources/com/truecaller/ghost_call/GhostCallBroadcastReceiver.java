package com.truecaller.ghost_call;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1349x.AbstractC21329d0;
import p193e.p194a.p1349x.AbstractC21373l;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/truecaller/ghost_call/GhostCallBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Le/a/x/l;", AbstractC2405c.f7629a, "Le/a/x/l;", "getGhostCallManager", "()Le/a/x/l;", "setGhostCallManager", "(Le/a/x/l;)V", "ghostCallManager", "<init>", "()V", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/GhostCallBroadcastReceiver.class */
public final class GhostCallBroadcastReceiver extends AbstractC21329d0 {
    @Inject

    /* renamed from: c */
    public AbstractC21373l f12260c;

    @Override // p193e.p194a.p1349x.AbstractC21329d0, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        AbstractC21373l abstractC21373l = this.f12260c;
        if (abstractC21373l != null) {
            abstractC21373l.mo9833C();
        } else {
            l.l("ghostCallManager");
            throw null;
        }
    }
}

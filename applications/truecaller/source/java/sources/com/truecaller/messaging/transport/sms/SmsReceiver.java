package com.truecaller.messaging.transport.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p193e.p194a.p195a.p244k.AbstractC6707s;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/truecaller/messaging/transport/sms/SmsReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "Lo3/a;", "Le/a/a/k/t;", "a", "Lo3/a;", "getTransportManager", "()Lo3/a;", "setTransportManager", "(Lo3/a;)V", "transportManager", "<init>", "()V", "messaging-transport_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/sms/SmsReceiver.class */
public final class SmsReceiver extends BroadcastReceiver {
    @Inject

    /* renamed from: a */
    public a<AbstractC6708t> f13862a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (intent == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.messaging.transport.TransportComponentProvider");
        ((AbstractC6707s) applicationContext).mo30565r().mo11149a(this);
        a<AbstractC6708t> aVar = this.f13862a;
        if (aVar != null) {
            ((AbstractC6708t) aVar.get()).mo30564A(0, intent, getResultCode());
        } else {
            l.l("transportManager");
            throw null;
        }
    }
}

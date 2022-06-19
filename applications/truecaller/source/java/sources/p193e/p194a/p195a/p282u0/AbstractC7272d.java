package p193e.p194a.p195a.p282u0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.messaging.insights.SmartNotifBroadcastReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.a.u0.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/u0/d.class */
public abstract class AbstractC7272d extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f23225a = false;

    /* renamed from: b */
    public final Object f23226b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f23225a) {
            synchronized (this.f23226b) {
                if (!this.f23225a) {
                    ((AbstractC7280g) C25225a.m3816y0(context)).mo12227r1((SmartNotifBroadcastReceiver) this);
                    this.f23225a = true;
                }
            }
        }
    }
}

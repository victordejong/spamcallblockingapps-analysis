package p193e.p194a.p1349x;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.ghost_call.GhostCallBroadcastReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.x.d0 */
/* loaded from: classes9-dex2jar.jar:e/a/x/d0.class */
public abstract class AbstractC21329d0 extends BroadcastReceiver {

    /* renamed from: a */
    public volatile boolean f59723a = false;

    /* renamed from: b */
    public final Object f59724b = new Object();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f59723a) {
            synchronized (this.f59724b) {
                if (!this.f59723a) {
                    ((AbstractC21336h) C25225a.m3816y0(context)).mo9879G0((GhostCallBroadcastReceiver) this);
                    this.f59723a = true;
                }
            }
        }
    }
}

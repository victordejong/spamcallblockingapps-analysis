package p000;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.media.AudioAttributesCompat;
import p000.C1322dv;
/* renamed from: dv$b$b */
/* loaded from: classes-dex2jar.jar:dv$b$b.class */
public class dv$b$b extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C1322dv.b f6142a;

    public dv$b$b(C1322dv.b bVar) {
        this.f6142a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AudioAttributesCompat audioAttributesCompat;
        if (!"android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            return;
        }
        synchronized (this.f6142a.d) {
            Log.d("AudioFocusHandler", "Received noisy intent, intent=" + intent + ", registered=" + this.f6142a.k + ", attr=" + this.f6142a.h);
            C1322dv.b bVar = this.f6142a;
            if (!bVar.k || (audioAttributesCompat = bVar.h) == null) {
                return;
            }
            int usage = audioAttributesCompat.getUsage();
            if (usage == 1) {
                this.f6142a.f.E();
            } else if (usage != 14) {
            } else {
                ev evVar = this.f6142a.f;
                evVar.w0(evVar.d0() * 0.2f);
            }
        }
    }
}

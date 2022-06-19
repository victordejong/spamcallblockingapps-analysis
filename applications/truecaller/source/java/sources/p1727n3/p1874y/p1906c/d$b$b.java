package p1727n3.p1874y.p1906c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.media.AudioAttributesCompat;
import androidx.media2.player.MediaPlayer;
import p1727n3.p1874y.p1906c.C27468d;
/* renamed from: n3.y.c.d$b$b */
/* loaded from: classes-dex2jar.jar:n3/y/c/d$b$b.class */
public class d$b$b extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C27468d.b f77320a;

    public d$b$b(C27468d.b bVar) {
        this.f77320a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AudioAttributesCompat audioAttributesCompat;
        if (!"android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            return;
        }
        synchronized (this.f77320a.d) {
            String str = "Received noisy intent, intent=" + intent + ", registered=" + this.f77320a.k + ", attr=" + this.f77320a.h;
            C27468d.b bVar = this.f77320a;
            if (!bVar.k || (audioAttributesCompat = bVar.h) == null) {
                return;
            }
            int m42860b = audioAttributesCompat.m42860b();
            if (m42860b == 1) {
                this.f77320a.f.mo42795S();
            } else if (m42860b != 14) {
            } else {
                MediaPlayer mediaPlayer = this.f77320a.f;
                mediaPlayer.m42779s1(mediaPlayer.m42796Q0() * 0.2f);
            }
        }
    }
}

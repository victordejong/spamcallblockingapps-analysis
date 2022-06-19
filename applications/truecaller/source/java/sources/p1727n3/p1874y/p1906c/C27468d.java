package p1727n3.p1874y.p1906c;

import android.content.Context;
import androidx.media2.player.MediaPlayer;
/* renamed from: n3.y.c.d */
/* loaded from: classes-dex2jar.jar:n3/y/c/d.class */
public class C27468d {

    /* renamed from: a */
    public final AbstractC27469a f77316a;

    /* renamed from: n3.y.c.d$a */
    /* loaded from: classes-dex2jar.jar:n3/y/c/d$a.class */
    public interface AbstractC27469a {
    }

    public C27468d(Context context, MediaPlayer mediaPlayer) {
        this.f77316a = new b(context, mediaPlayer);
    }

    /* renamed from: a */
    public void m233a() {
        b bVar = this.f77316a;
        synchronized (bVar.d) {
            bVar.a();
            bVar.c();
        }
    }
}

package p1727n3.p1874y.p1906c;

import androidx.media2.player.MediaPlayer;
import n3.h.a.f;
import p1727n3.p1790h.p1791a.AbstractC26236a;
/* renamed from: n3.y.c.l0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/l0.class */
public class RunnableC27483l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ f f77376a;

    /* renamed from: b */
    public final /* synthetic */ Object f77377b;

    /* renamed from: c */
    public final /* synthetic */ MediaPlayer.C0275u f77378c;

    /* renamed from: d */
    public final /* synthetic */ MediaPlayer f77379d;

    public RunnableC27483l0(MediaPlayer mediaPlayer, f fVar, Object obj, MediaPlayer.C0275u c0275u) {
        this.f77379d = mediaPlayer;
        this.f77376a = fVar;
        this.f77377b = obj;
        this.f77378c = c0275u;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean remove;
        if (this.f77376a.f73149a instanceof AbstractC26236a.C26239c) {
            synchronized (this.f77379d.f1164e) {
                m mVar = this.f77379d.f1162c;
                Object obj = this.f77377b;
                m mVar2 = mVar;
                synchronized (mVar2.d) {
                    remove = mVar2.c.remove(obj);
                }
                if (remove) {
                    this.f77379d.f1164e.remove(this.f77378c);
                }
            }
        }
    }
}

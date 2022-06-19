package androidx.media2.player;

import androidx.media2.player.MediaPlayer;
import p1727n3.p1790h.p1791a.AbstractC26236a;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$v$a.class */
public class MediaPlayer$v$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaPlayer.v f1215a;

    public MediaPlayer$v$a(MediaPlayer.v vVar) {
        this.f1215a = vVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1215a.f73149a instanceof AbstractC26236a.C26239c) {
            MediaPlayer.v vVar = this.f1215a;
            if (!vVar.i) {
                return;
            }
            vVar.j();
        }
    }
}

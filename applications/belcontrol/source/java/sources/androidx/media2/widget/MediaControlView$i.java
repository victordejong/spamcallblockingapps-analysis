package androidx.media2.widget;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$i.class */
public class MediaControlView$i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1229a;

    public MediaControlView$i(MediaControlView mediaControlView) {
        this.f1229a = mediaControlView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f1229a.d.z() || this.f1229a.w()) {
            return;
        }
        this.f1229a.y0.start();
    }
}

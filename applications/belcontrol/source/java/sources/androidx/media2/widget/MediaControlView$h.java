package androidx.media2.widget;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$h.class */
public class MediaControlView$h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1224a;

    public MediaControlView$h(MediaControlView mediaControlView) {
        this.f1224a = mediaControlView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f1224a.d.z() || this.f1224a.w()) {
            return;
        }
        this.f1224a.x0.start();
        MediaControlView mediaControlView = this.f1224a;
        mediaControlView.r(mediaControlView.I0, mediaControlView.t);
    }
}

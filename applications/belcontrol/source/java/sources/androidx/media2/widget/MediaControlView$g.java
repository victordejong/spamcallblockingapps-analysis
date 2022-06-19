package androidx.media2.widget;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$g.class */
public class MediaControlView$g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1223a;

    public MediaControlView$g(MediaControlView mediaControlView) {
        this.f1223a = mediaControlView;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1223a.w()) {
            return;
        }
        this.f1223a.z0.start();
    }
}

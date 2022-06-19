package androidx.media2.widget;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$e.class */
public class MediaControlView$e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1220a;

    public MediaControlView$e(MediaControlView mediaControlView) {
        this.f1220a = mediaControlView;
    }

    @Override // java.lang.Runnable
    public void run() {
        uw uwVar;
        boolean z = this.f1220a.getVisibility() == 0;
        MediaControlView mediaControlView = this.f1220a;
        if (mediaControlView.w || !z || (uwVar = mediaControlView.d) == null || !uwVar.z()) {
            return;
        }
        long v = this.f1220a.v();
        MediaControlView mediaControlView2 = this.f1220a;
        mediaControlView2.r(mediaControlView2.E0, 1000 - (v % 1000));
    }
}

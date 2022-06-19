package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$n.class */
public class MediaControlView$n implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1237a;

    public MediaControlView$n(MediaControlView mediaControlView) {
        this.f1237a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1237a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        MediaControlView mediaControlView2 = this.f1237a;
        mediaControlView2.removeCallbacks(mediaControlView2.E0);
        long latestSeekPosition = this.f1237a.getLatestSeekPosition();
        MediaControlView mediaControlView3 = this.f1237a;
        long j = latestSeekPosition + 30000;
        mediaControlView3.u(Math.min(j, mediaControlView3.s), true);
        MediaControlView mediaControlView4 = this.f1237a;
        if (j < mediaControlView4.s || mediaControlView4.d.z()) {
            return;
        }
        this.f1237a.E(true);
    }
}

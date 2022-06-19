package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$m.class */
public class MediaControlView$m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1236a;

    public MediaControlView$m(MediaControlView mediaControlView) {
        this.f1236a = mediaControlView;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1236a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        MediaControlView mediaControlView2 = this.f1236a;
        mediaControlView2.removeCallbacks(mediaControlView2.E0);
        MediaControlView mediaControlView3 = this.f1236a;
        boolean z = mediaControlView3.y && mediaControlView3.s != 0;
        this.f1236a.u(Math.max((z ? mediaControlView3.s : mediaControlView3.getLatestSeekPosition()) - 10000, 0L), true);
        if (!z) {
            return;
        }
        this.f1236a.E(false);
    }
}

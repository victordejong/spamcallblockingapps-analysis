package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$u.class */
public class MediaControlView$u implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1244a;

    public MediaControlView$u(MediaControlView mediaControlView) {
        this.f1244a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1244a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.removeCallbacks(mediaControlView.H0);
        MediaControlView mediaControlView2 = this.f1244a;
        mediaControlView2.removeCallbacks(mediaControlView2.I0);
        MediaControlView mediaControlView3 = this.f1244a;
        mediaControlView3.m = 3;
        mediaControlView3.k0.m6321a(mediaControlView3.n0);
        MediaControlView mediaControlView4 = this.f1244a;
        mediaControlView4.e(mediaControlView4.k0);
    }
}

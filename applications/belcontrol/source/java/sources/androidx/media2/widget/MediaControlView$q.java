package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$q.class */
public class MediaControlView$q implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1240a;

    public MediaControlView$q(MediaControlView mediaControlView) {
        this.f1240a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1240a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.removeCallbacks(mediaControlView.H0);
        MediaControlView mediaControlView2 = this.f1240a;
        mediaControlView2.removeCallbacks(mediaControlView2.I0);
        MediaControlView mediaControlView3 = this.f1240a;
        mediaControlView3.m = 2;
        mediaControlView3.l0.m6318c(mediaControlView3.p0);
        MediaControlView mediaControlView4 = this.f1240a;
        mediaControlView4.l0.m6319b(mediaControlView4.n + 1);
        MediaControlView mediaControlView5 = this.f1240a;
        mediaControlView5.e(mediaControlView5.l0);
    }
}

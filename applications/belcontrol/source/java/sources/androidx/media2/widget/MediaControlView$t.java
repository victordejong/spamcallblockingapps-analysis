package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$t.class */
public class MediaControlView$t implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1243a;

    public MediaControlView$t(MediaControlView mediaControlView) {
        this.f1243a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1243a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        MediaControlView mediaControlView2 = this.f1243a;
        mediaControlView2.z = false;
        mediaControlView2.D0.start();
    }
}

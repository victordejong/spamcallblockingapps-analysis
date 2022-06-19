package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$p.class */
public class MediaControlView$p implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1239a;

    public MediaControlView$p(MediaControlView mediaControlView) {
        this.f1239a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1239a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        this.f1239a.d.I();
    }
}

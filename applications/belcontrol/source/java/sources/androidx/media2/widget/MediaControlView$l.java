package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$l.class */
public class MediaControlView$l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1235a;

    public MediaControlView$l(MediaControlView mediaControlView) {
        this.f1235a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1235a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        this.f1235a.z();
    }
}

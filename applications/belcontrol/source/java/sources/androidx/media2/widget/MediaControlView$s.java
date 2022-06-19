package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$s.class */
public class MediaControlView$s implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1242a;

    public MediaControlView$s(MediaControlView mediaControlView) {
        this.f1242a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1242a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        MediaControlView mediaControlView2 = this.f1242a;
        mediaControlView2.z = true;
        mediaControlView2.C0.start();
    }
}

package androidx.media2.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$o.class */
public class MediaControlView$o implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1238a;

    public MediaControlView$o(MediaControlView mediaControlView) {
        this.f1238a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1238a;
        if (mediaControlView.d == null) {
            return;
        }
        mediaControlView.t();
        this.f1238a.d.H();
    }
}

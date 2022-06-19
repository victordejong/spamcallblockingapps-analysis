package androidx.media2.widget;

import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$x.class */
public class MediaControlView$x implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1247a;

    public MediaControlView$x(MediaControlView mediaControlView) {
        this.f1247a = mediaControlView;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        MediaControlView mediaControlView = this.f1247a;
        if (mediaControlView.C) {
            mediaControlView.r(mediaControlView.H0, mediaControlView.t);
        }
    }
}

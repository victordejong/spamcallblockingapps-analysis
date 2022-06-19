package androidx.media2.widget;

import android.content.res.Resources;
import android.view.View;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$r.class */
public class MediaControlView$r implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1241a;

    public MediaControlView$r(MediaControlView mediaControlView) {
        this.f1241a = mediaControlView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaControlView mediaControlView = this.f1241a;
        if (mediaControlView.f == null) {
            return;
        }
        boolean z = !mediaControlView.x;
        ImageButton imageButton = mediaControlView.g0;
        Resources resources = mediaControlView.c;
        int i = z ? yw.ic_fullscreen_exit : yw.ic_fullscreen;
        imageButton.setImageDrawable(resources.getDrawable(i));
        MediaControlView mediaControlView2 = this.f1241a;
        mediaControlView2.O.setImageDrawable(mediaControlView2.c.getDrawable(i));
        View view2 = this.f1241a;
        ((MediaControlView) view2).x = z;
        ((MediaControlView) view2).f.m6322a(view2, z);
    }
}

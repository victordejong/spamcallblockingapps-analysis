package androidx.mediarouter.app;

import android.view.View;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/MediaRouteExpandCollapseButton$a.class */
public class MediaRouteExpandCollapseButton$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaRouteExpandCollapseButton f1276a;

    public MediaRouteExpandCollapseButton$a(MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton) {
        this.f1276a = mediaRouteExpandCollapseButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        ImageButton imageButton;
        MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = this.f1276a;
        boolean z = !mediaRouteExpandCollapseButton.f;
        mediaRouteExpandCollapseButton.f = z;
        if (z) {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.a);
            this.f1276a.a.start();
            imageButton = this.f1276a;
            str = ((MediaRouteExpandCollapseButton) imageButton).d;
        } else {
            mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.b);
            this.f1276a.b.start();
            imageButton = this.f1276a;
            str = ((MediaRouteExpandCollapseButton) imageButton).c;
        }
        imageButton.setContentDescription(str);
        View.OnClickListener onClickListener = this.f1276a.g;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}

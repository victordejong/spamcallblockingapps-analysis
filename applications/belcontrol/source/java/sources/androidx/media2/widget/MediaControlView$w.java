package androidx.media2.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.media2.common.SessionPlayer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$w.class */
public class MediaControlView$w implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1246a;

    public MediaControlView$w(MediaControlView mediaControlView) {
        this.f1246a = mediaControlView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        uw uwVar;
        List list;
        MediaControlView mediaControlView = this.f1246a;
        int i2 = mediaControlView.m;
        if (i2 == 0) {
            if (i != mediaControlView.o && mediaControlView.r0.size() > 0) {
                MediaControlView mediaControlView2 = this.f1246a;
                uwVar = mediaControlView2.d;
                list = mediaControlView2.r0;
                uwVar.E((SessionPlayer.TrackInfo) list.get(i));
            }
            this.f1246a.d();
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                if (i == 0) {
                    mediaControlView.l0.m6318c(mediaControlView.t0);
                    MediaControlView mediaControlView3 = this.f1246a;
                    mediaControlView3.l0.m6319b(mediaControlView3.o);
                    this.f1246a.m = 0;
                } else if (i == 1) {
                    mediaControlView.l0.m6318c(mediaControlView.u0);
                    MediaControlView mediaControlView4 = this.f1246a;
                    mediaControlView4.l0.m6319b(mediaControlView4.p);
                    this.f1246a.m = 1;
                }
                MediaControlView mediaControlView5 = this.f1246a;
                mediaControlView5.e(mediaControlView5.l0);
                return;
            }
            int i3 = mediaControlView.n;
            if (i != i3 + 1) {
                if (i > 0) {
                    uwVar = mediaControlView.d;
                    list = mediaControlView.s0;
                    i--;
                    uwVar.E((SessionPlayer.TrackInfo) list.get(i));
                } else {
                    mediaControlView.d.i((SessionPlayer.TrackInfo) mediaControlView.s0.get(i3));
                }
            }
        } else if (i != mediaControlView.p) {
            this.f1246a.d.F(((Integer) mediaControlView.v0.get(i)).intValue() / 100.0f);
        }
        this.f1246a.d();
    }
}

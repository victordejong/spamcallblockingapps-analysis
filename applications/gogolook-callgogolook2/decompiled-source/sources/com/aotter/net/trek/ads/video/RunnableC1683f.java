package com.aotter.net.trek.ads.video;

import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.VideoView;
import com.aotter.net.trek.model.VideoSession;
/* renamed from: com.aotter.net.trek.ads.video.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/f.class */
public class RunnableC1683f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RunnableC1682e f1260a;

    public RunnableC1683f(RunnableC1682e eVar) {
        this.f1260a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        VideoView videoView;
        int i;
        VideoView videoView2;
        TextView textView;
        VideoSession videoSession;
        VideoSession videoSession2;
        ImageButton imageButton;
        videoView = this.f1260a.f1259b.f1257b.f1235f;
        int currentPosition = videoView.getCurrentPosition();
        i = NativeVideoViewController.f1234e;
        if (currentPosition > i) {
            imageButton = this.f1260a.f1259b.f1257b.f1237h;
            imageButton.setVisibility(0);
        }
        RunnableC1682e eVar = this.f1260a;
        int i2 = eVar.f1258a;
        videoView2 = eVar.f1259b.f1257b.f1235f;
        int currentPosition2 = (i2 - videoView2.getCurrentPosition()) / 1000;
        int i3 = currentPosition2 / 60;
        int i4 = currentPosition2 - (i3 * 60);
        String valueOf = String.valueOf(i3);
        if (i3 < 10) {
            valueOf = "0" + i3;
        }
        String valueOf2 = String.valueOf(i4);
        if (i4 < 10) {
            valueOf2 = "0" + i4;
        }
        textView = this.f1260a.f1259b.f1257b.f1239j;
        textView.setText(valueOf + ":" + valueOf2);
        int ringerMode = this.f1260a.f1259b.f1256a.getRingerMode();
        if (ringerMode == 0 || ringerMode == 1) {
            videoSession = this.f1260a.f1259b.f1257b.f1252w;
            videoSession.setIsMute(true);
        } else if (ringerMode == 2) {
            videoSession2 = this.f1260a.f1259b.f1257b.f1252w;
            videoSession2.setIsMute(false);
        }
    }
}

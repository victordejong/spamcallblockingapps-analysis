package com.aotter.net.trek.ads.video;

import android.media.MediaPlayer;
import android.widget.ImageButton;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
/* renamed from: com.aotter.net.trek.ads.video.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/a.class */
public class C1678a implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoViewController f1253a;

    public C1678a(NativeVideoViewController nativeVideoViewController) {
        this.f1253a = nativeVideoViewController;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        ImageButton imageButton;
        InstreamVideoListener instreamVideoListener;
        InstreamVideoListener instreamVideoListener2;
        imageButton = this.f1253a.f1237h;
        imageButton.setVisibility(0);
        this.f1253a.m36528b(true);
        instreamVideoListener = this.f1253a.f1251v;
        if (instreamVideoListener != null) {
            instreamVideoListener2 = this.f1253a.f1251v;
            instreamVideoListener2.onInstreamVideoCompleted();
        }
    }
}

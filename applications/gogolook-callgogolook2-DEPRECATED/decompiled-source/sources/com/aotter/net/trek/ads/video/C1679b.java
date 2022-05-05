package com.aotter.net.trek.ads.video;

import android.media.MediaPlayer;
import android.widget.ImageButton;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
/* renamed from: com.aotter.net.trek.ads.video.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/b.class */
public class C1679b implements MediaPlayer.OnErrorListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoViewController f1254a;

    public C1679b(NativeVideoViewController nativeVideoViewController) {
        this.f1254a = nativeVideoViewController;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        ImageButton imageButton;
        InstreamVideoListener instreamVideoListener;
        InstreamVideoListener instreamVideoListener2;
        imageButton = this.f1254a.f1237h;
        imageButton.setVisibility(0);
        this.f1254a.m36529a(false);
        instreamVideoListener = this.f1254a.f1251v;
        if (instreamVideoListener == null) {
            return false;
        }
        instreamVideoListener2 = this.f1254a.f1251v;
        instreamVideoListener2.onInstreamVideoPlaybackError();
        return false;
    }
}

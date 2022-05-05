package com.aotter.net.trek.ads.view;

import android.media.MediaPlayer;
import android.widget.MediaController;
/* renamed from: com.aotter.net.trek.ads.view.q */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/q.class */
public class C1706q implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1396a;

    public C1706q(TextureVideoView textureVideoView) {
        this.f1396a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        MediaController mediaController;
        MediaPlayer.OnCompletionListener onCompletionListener;
        MediaPlayer.OnCompletionListener onCompletionListener2;
        MediaPlayer mediaPlayer2;
        MediaController mediaController2;
        this.f1396a.f1318n = 5;
        this.f1396a.f1319o = 5;
        mediaController = this.f1396a.f1325u;
        if (mediaController != null) {
            mediaController2 = this.f1396a.f1325u;
            mediaController2.hide();
        }
        onCompletionListener = this.f1396a.f1326v;
        if (onCompletionListener != null) {
            onCompletionListener2 = this.f1396a.f1326v;
            mediaPlayer2 = this.f1396a.f1321q;
            onCompletionListener2.onCompletion(mediaPlayer2);
        }
    }
}

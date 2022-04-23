package com.aotter.net.trek.ads.view;

import android.app.AlertDialog;
import android.media.MediaPlayer;
import android.widget.MediaController;
/* renamed from: com.aotter.net.trek.ads.view.s */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/s.class */
public class C1708s implements MediaPlayer.OnErrorListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1398a;

    public C1708s(TextureVideoView textureVideoView) {
        this.f1398a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        MediaController mediaController;
        MediaPlayer.OnErrorListener onErrorListener;
        MediaPlayer.OnErrorListener onErrorListener2;
        MediaPlayer mediaPlayer2;
        MediaController mediaController2;
        String unused;
        unused = this.f1398a.f1315d;
        String str = "Error: " + i + "," + i2;
        this.f1398a.f1318n = -1;
        this.f1398a.f1319o = -1;
        mediaController = this.f1398a.f1325u;
        if (mediaController != null) {
            mediaController2 = this.f1398a.f1325u;
            mediaController2.hide();
        }
        onErrorListener = this.f1398a.f1329y;
        if (onErrorListener != null) {
            onErrorListener2 = this.f1398a.f1329y;
            mediaPlayer2 = this.f1398a.f1321q;
            if (onErrorListener2.onError(mediaPlayer2, i, i2)) {
                return true;
            }
        }
        if (this.f1398a.getWindowToken() == null) {
            return true;
        }
        this.f1398a.getContext().getResources();
        new AlertDialog.Builder(this.f1398a.getContext()).setMessage(i == 200 ? 17039381 : 17039377).setPositiveButton(17039376, new DialogInterface$OnClickListenerC1709t(this)).setCancelable(false).show();
        return true;
    }
}

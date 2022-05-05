package com.aotter.net.trek.ads.view;

import android.content.DialogInterface;
import android.media.MediaPlayer;
/* renamed from: com.aotter.net.trek.ads.view.t */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/t.class */
public class DialogInterface$OnClickListenerC1709t implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C1708s f1399a;

    public DialogInterface$OnClickListenerC1709t(C1708s sVar) {
        this.f1399a = sVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MediaPlayer.OnCompletionListener onCompletionListener;
        MediaPlayer.OnCompletionListener onCompletionListener2;
        MediaPlayer mediaPlayer;
        onCompletionListener = this.f1399a.f1398a.f1326v;
        if (onCompletionListener != null) {
            onCompletionListener2 = this.f1399a.f1398a.f1326v;
            mediaPlayer = this.f1399a.f1398a.f1321q;
            onCompletionListener2.onCompletion(mediaPlayer);
        }
    }
}
